# Synthetic_Watershed_CGS

Repository to analyze synthetic images for Watershed Oversegmentation studies. The following methods are available:

1. Functions to generate circles, rectangles, squares and ellipses
2. A function to obtain the Watershed segmentation of an image for any given $h_{min}$
3. Functions required for the minima analysis with parabolic surfaces described in Section 3.1.2
4. Functions required for the Voronoi analysis for circles and ellipses
5. $h_{minCrit}$ determination functions for overlapping circles and ellipse. This requires some HPC hardware and is further described in the next subsection.
6. genFigs.m generates all the graphs in this work.

To generate all the synthetic figures in the article, run genFigs.m. The script is documented and all details of the intermediate steps are given. Generation of synthetic images and segmenting them with Watershed with any hmin is described in the steps.

To generate the parabolic surfaces in Section 3.1.2, run findMinimaAbsolute. The instructions to run are given in the boilerplate, the code outputs a list of all minima. This function is applicable to any rectangular geometry, the user is encouraged to experiment with other figures.

To generate maps of hMinCrit, run genhCritMaps.m. Uncomment the necessary lines as described in the code and run as per requirement. All results in the paper can be reproduced with this code.

Computational Requirements:

Most of the code can be run on a standard desktop computer. However, the script to generate the $h_{minCrit}$ maps, getHmap_par(), is best run on a cluster. If a cluster is not available, a dedicated workstation must be used, but the runtime could be much higher for each case. A way to check correctness and use lesser time is to increase the xStep parameter in getHmap_par.m. Larger values of xStep simply omits several points and samples the 2D cartesian grid at a few points only, reducing runtime. 

