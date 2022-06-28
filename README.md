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

