  A Mars Rover application

  ------------------------------------


        A squad of robotic rovers are to be landed by NASA on a plateau on Mars. This plateau, which is curiously 
        rectangular, must be navigated by the rovers so that their on-board cameras can get a complete view of 
        the surrounding terrain to send back to Earth.

        A rover's position and location is represented by a combination of x and y co-ordinates and a letter 
        representing one of the four cardinal compass points. The plateau is divided up into a grid to simplify 
        navigation. An example position might be 0, 0, N, which means the rover is in the bottom left corner and 
        facing North.

        In order to control a rover, NASA sends a simple string of letters. The possible letters are 'L', 'R' 
        and 'M'. 'L' and 'R' makes the rover spin 90 degrees left or right respectively, without moving from its 
        current spot. 'M' means move forward one grid point, and maintain the same heading.
        Assume that the square directly North from (x, y) is (x, y+1).

  INPUT
 
  -------------------------------


        The first line of input is the upper-right coordinates of the plateau, the lower-left coordinates are 
        assumed to be 0,0.

        The rest of the input is information pertaining to the rovers that have been deployed. Each rover has two 
        lines of input. The first line gives the rover's position, and the second line is a series of instructions 
        telling the rover how to explore the plateau.

        The position is made up of two integers and a letter separated by spaces, corresponding to the x and y 
        co-ordinates and the rover's orientation.

        Each rover will be finished sequentially, which means that the second rover won't start to move until the 
        first one has finished moving.


  OUTPUT
  ----------------------------



        The output for each rover should be its final co-ordinates and heading. 


<table>
  <tr>
     <th>Test Input</th><th>Expected Output</th>
  </tr>
  <tr>
    <td>
	<table>
		<td>5 5</td>
		<td>1 2 N</td>
		<td>LMLMLMLMM</td>
	<tr>
		<td></td>
		<td>3 3 E</td>
		<td>MMRMMRMRRM</td>
	</tr>
	</table>
    </td>

    <td>
	<table>
		<td>1 3 N</td>
	<tr>
		<td>5 1 E</td>
	</tr>
	</table>
    </td>
  </tr>
</table>

 Assumptions made for the assignment
 ----------------------------------------
 

        * The land of mars [which has to be covered] is said to be rectangular in shape. So the first task is to 
          divide the region into a grid. This is a basic maths graph. The origin is at coordinates (0,0) and the 
          value of X-axis increases as one goes east and the value of Y-axis increases as one goes up north.

        * The grid is made not by joining the boundry walls of the rectangular region but by joining the central 
          points. So, if the coordinates are mentioned as (0,0) then it doesn't mean it is the lower-left most 
          corner of the grid rather it means that it is the central point of the lower-left most block in the gid.

        * As the rover moves from one point to the next, for example from coordinates (0,0) to (1,0) then the rover 
          is actually moving from the central point (0,0) of one grid block to central point (1,0) of adjoining block. 

        * A rover moves from one central point to another in one go and it can only go to the adjoining block. 
          It can not fly and land somewhere else. 

        * A rover must land in the centre of a block and for the purpose of this assignment I am going to assume 
          that it does so without fail. 

        * A rover can see across all four sides. Thanks to its 360 degree super cool camera mounted on the top. 

        * Once a rover lands in a block, then that block gets photographed instantly and no further movement or 
          effort has to be made to photograph that region. 

        * The person operating the rover has basic knowledge of maths and the X and Y axis, so as to be able to 
          find a perfect position to land the next rover and to find the path for the current rover being operated.
