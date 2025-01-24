import sys
if sys.prefix == '/usr':
    sys.real_prefix = sys.prefix
    sys.prefix = sys.exec_prefix = '/home/szaravy/RoverVIEW/TrailblazerML/install/rover_teleop_twist_joy'
