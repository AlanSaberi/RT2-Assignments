#!/usr/bin/env python3

import rospy
import math
#from assignment_2_2023.msg import msga
from assignment_2_2023.srv import Ave_pos_vel, Ave_pos_velResponse

# Global variables to store the calculated values
average_velocity = 0
distance = 0

# Function to calculate distance
def calculate_distance(target_pos_x, target_pos_y, current_pos_x, current_pos_y):
    """
    Calculates the Euclidean distance between the target position and the current position.

    Args:
        target_pos_x (float): X-coordinate of the target position.
        target_pos_y (float): Y-coordinate of the target position.
        current_pos_x (float): X-coordinate of the current position.
        current_pos_y (float): Y-coordinate of the current position.

    Returns:
        float: Euclidean distance between the two positions.
    """
    return math.sqrt((target_pos_x - current_pos_x) ** 2 + (target_pos_y - current_pos_y) ** 2)

# Function to calculate average velocity
def calculate_average_velocity(recent_velocity_readings, window_size):
    """
    Calculates the average velocity based on recent velocity readings.

    Args:
        recent_velocity_readings (list of float): List of recent velocity readings.
        window_size (int): Size of the window for averaging.

    Returns:
        float: Average velocity.
    """
    return sum(recent_velocity_readings) / min(len(recent_velocity_readings), window_size)

# Function to update global values
def update_global_values(calculated_distance, calculated_avg_velocity):
    """
    Updates the global variables for distance and average velocity.

    Args:
        calculated_distance (float): Calculated distance.
        calculated_avg_velocity (float): Calculated average velocity.
    """
    global distance, average_velocity
    distance = calculated_distance
    average_velocity = calculated_avg_velocity

# Function to process incoming messages
def calculate_distance_and_average_velocity(msg):
    """
    Processes incoming messages to calculate distance and average velocity.

    Args:
        msg (assignment_2_2023.msg.msga): Message containing position and velocity data.
    """
    target_pos_x = rospy.get_param('/des_pos_x', 0)
    target_pos_y = rospy.get_param('/des_pos_y', 0)
    current_pos_x = msg.positionx
    current_pos_y = msg.positiony

    calculated_distance = calculate_distance(target_pos_x, target_pos_y, current_pos_x, current_pos_y)

    velocity_window_size = rospy.get_param('/window_size', 10)
    recent_velocity_readings = msg.velocityx[-velocity_window_size:] if isinstance(msg.velocityx, list) else [msg.velocityx]
    calculated_avg_velocity = calculate_average_velocity(recent_velocity_readings, velocity_window_size)

    update_global_values(calculated_distance, calculated_avg_velocity)

# Function to handle service requests
def handle_service_request(_):
    """
    Handles service requests and returns the calculated distance and average velocity.

    Args:
        _: Unused request message.

    Returns:
        assignment_2_2023.srv.Ave_pos_velResponse: Response message with distance and average velocity.
    """
    return Ave_pos_velResponse(distance, average_velocity)

# Function to initialize the ROS service and subscriber
def initialize_service_and_subscriber():
    """
    Initializes the ROS service for providing distance and average velocity information,
    and subscribes to the position and velocity topic.
    """
    rospy.Service("info_service", Ave_pos_vel, handle_service_request)
    rospy.loginfo("Service 'info_service' is ready.")
    rospy.Subscriber("/pos_vel", msga, calculate_distance_and_average_velocity)

# Main function
def main():

    rospy.init_node('info_service')
    initialize_service_and_subscriber()
    rospy.spin()

if __name__ == "__main__":
    main()

