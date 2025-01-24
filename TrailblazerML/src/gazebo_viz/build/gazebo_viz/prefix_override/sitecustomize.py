import sys
if sys.prefix == '/usr':
    sys.real_prefix = sys.prefix
    sys.prefix = sys.exec_prefix = '/home/szaravy/RoverVIEW/TrailblazerML/src/gazebo_viz/install/gazebo_viz'
