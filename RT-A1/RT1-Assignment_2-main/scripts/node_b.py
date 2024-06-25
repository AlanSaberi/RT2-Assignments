#!/usr/bin/env python3

import rospy
from assignment_2_2023.srv import Input, InputResponse

# Function to read the last target positions from parameters
def read_target_positions():
    """
    
    Reads the last target positions from ROS parameters.

    Returns:
        float, float: Last target positions in x and y coordinates.
    """
    last_target_pos_x = rospy.get_param('/des_pos_x', 0)
    last_target_pos_y = rospy.get_param('/des_pos_y', 0)
    return last_target_pos_x, last_target_pos_y

# Function to create and return the response message
def create_service_response(last_target_pos_x, last_target_pos_y):
    """
    Creates and returns the response message for the service request.

    Args:
        last_target_pos_x (float): Last target position in x coordinate.
        last_target_pos_y (float): Last target position in y coordinate.

    Returns:
        assignment_2_2023.srv.InputResponse: Response message with target positions.
    """
    response = InputResponse()
    response.inputx = last_target_pos_x
    response.inputy = last_target_pos_y
    return response

# Function to handle service requests
def handle_service_request(_):
    """
    Handles the service request by reading the last target positions and creating a response message.

    Args:
        : Unused request message.

    Returns:
        assignment_2_2023.srv.InputResponse: Response message with last target positions.
    """
    last_target_pos_x, last_target_pos_y = read_target_positions()
    return create_service_response(last_target_pos_x, last_target_pos_y)

# Function to initialize the ROS service
def initialize_service():
    """
    Initializes the ROS service for reading last target positions.
    """
    rospy.Service('input', Input, handle_service_request)
    rospy.loginfo("Service 'input' is ready.")

# Main function
def main():

    rospy.init_node('last_target_service')
    initialize_service()
    rospy.spin()

if __name__ == "__main__":
    main()

