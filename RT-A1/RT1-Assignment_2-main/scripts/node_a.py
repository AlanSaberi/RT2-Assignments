#!/usr/bin/env python3

import rospy
from nav_msgs.msg import Odometry
import actionlib
#from assignment_2_2023.msg import msga  # Updated message type
from assignment_2_2023.msg import PlanningAction, PlanningGoal

# Function to initialize ROS publisher with the new message type
def initialize_publisher():
    """
    Initializes a ROS publisher with the custom message type.

    Returns:
        rospy.Publisher: Publisher object for '/pos_vel' topic.
    """
    return rospy.Publisher("/pos_vel", msga, queue_size=1)  # Updated message type

# Function to initialize action client
def initialize_action_client():
    """
    Initializes an action client to interact with the 'reaching_goal' action server.

    Returns:
        actionlib.SimpleActionClient: Action client object.
    """
    client = actionlib.SimpleActionClient('/reaching_goal', assignment_2_2023.msg.PlanningAction)
    client.wait_for_server()
    return client

# Function to subscribe to odometry
def subscribe_to_odometry(pub):
    """
    Subscribes to the '/odom' topic to receive odometry data and publishes position and velocity data.

    Args:
        pub (rospy.Publisher): Publisher object for '/pos_vel' topic.
    """
    rospy.Subscriber("/odom", Odometry, publish_position_velocity, callback_args=pub)

# Function to process user command
def process_user_command(client):
    """
    Processes user commands to set new goals or cancel current goals.

    Args:
        client (actionlib.SimpleActionClient): Action client object.

    Returns:
        assignment_2_2023.msg.PlanningGoal or None: New goal if set, None if canceled or invalid input.
    """
    command = input("Press 'y' to set a new goal or 'c' to cancel the current goal: ")
    if command == 'y':
        return set_new_goal(client)
    elif command == 'c':
        return cancel_current_goal(client)
    else:
        rospy.logwarn("Invalid command. Please enter 'y' or 'c'.")
        return None

# Function to set new goal
def set_new_goal(client):
    """
    Sets a new goal for the robot's movement based on user input.

    Args:
        client (actionlib.SimpleActionClient): Action client object.

    Returns:
        assignment_2_2023.msg.PlanningGoal or None: New goal if set, None if invalid input.
    """
    try:
        input_x = float(input("Enter the x-coordinate for the new goal: "))
        input_y = float(input("Enter the y-coordinate for the new goal: "))
    except ValueError:
        rospy.logwarn("Please enter a valid number.")
        return None

    goal = PlanningGoal()
    goal.target_pose.pose.position.x = input_x
    goal.target_pose.pose.position.y = input_y
    client.send_goal(goal)
    return goal

# Function to cancel current goal
def cancel_current_goal(client):
    """
    Cancels the current goal if one exists.

    Args:
        client (actionlib.SimpleActionClient): Action client object.
    """
    client.cancel_goal()
    rospy.loginfo("Current goal has been cancelled")

# Function to log goal status
def log_goal_status(goal):
    """
    Logs the status of the current goal.

    Args:
        goal (assignment_2_2023.msg.PlanningGoal or None): Current goal object or None if no goal set.
    """
    if goal:
        rospy.loginfo("Current goal: target_x = %f, target_y = %f", goal.target_pose.pose.position.x, goal.target_pose.pose.position.y)

# Function to publish position and velocity using the updated message type
def publish_position_velocity(msg, pub):
    """
    Publishes the robot's position and velocity using the custom message type.

    Args:
        msg (nav_msgs.msg.Odometry): Odometry message containing position and velocity data.
        pub (rospy.Publisher): Publisher object for '/pos_vel' topic.
    """
    position_and_velocity_data = msga()  # Updated message type and variable name
    position_and_velocity_data.positionx = msg.pose.pose.position.x
    position_and_velocity_data.positiony = msg.pose.pose.position.y
    position_and_velocity_data.velocityx = msg.twist.twist.linear.x
    position_and_velocity_data.velocityz = msg.twist.twist.angular.z
    pub.publish(position_and_velocity_data)

# Main function
def main():
    """
    Main function to initialize ROS node, initialize publisher and action client,
    subscribe to odometry data, and process user commands.
    """
    rospy.init_node('set_target_client')
    pub = initialize_publisher()
    client = initialize_action_client()
    subscribe_to_odometry(pub)

    while not rospy.is_shutdown():
        goal = process_user_command(client)
        log_goal_status(goal)

if __name__ == '__main__':
    main()

