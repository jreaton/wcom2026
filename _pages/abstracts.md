---
layout: page
title: Abstracts
# subtitle: Talk abstracts
permalink: /abstracts/
---

<!-- _To add an abstract, copy one block below. The `{: #talk-N }` line is the anchor
that the Schedule page links to — keep its id matching the `abstract_id` in
`_data/schedule.yml`._ -->


<div class="abstract" markdown="1">
###  First-order methods for nonconvex–nonconcave minimax optimization under a local Kurdyka–Łojasiewicz condition
{: #talk-1 }
<p class="by">Zhaosong Lu - University of Minnesota</p>
 We study a class of nonconvex–nonconcave minimax problems in which the inner maximization problem satisfies a local Kurdyka–Łojasiewicz (KL) condition that may vary with the outer minimization variable. In contrast to the global KL or PL conditions commonly assumed in the literature—which are significantly stronger and often too restrictive in practice—this local KL condition accommodates a broader range of practical scenarios. However, it also introduces new analytical challenges. In particular, as an optimization algorithm approaches a stationary point, the region over which the KL condition holds may shrink, leading to a more intricate and potentially ill-conditioned landscape. To address this challenge, we show that the associated maximal function is locally generalized Hölder smooth. Leveraging this key property, we develop an inexact proximal gradient method for solving the minimax problem, where the inexact gradient of the maximal function is computed by applying a proximal gradient or sequential convex programming method to a KL-structured subproblem. Under mild assumptions, we establish complexity guarantees for computing an approximate stationary point of the minimax problem.

This is joint work with Xiangyuan Wang (University of Minnesota).
</div>


<div class="abstract" markdown="1">
### Local Linear Convergence of Gradient Methods for Overparameterized Gaussian Mixtures
{: #talk-2 }
<p class="by">Vasilis Charisopoulos — University of Washington</p>
Learning Gaussian mixture models is a foundational problem in machine learning. Recent work suggests that overparameterization (i.e., using more than the minimal number of parameters necessary to recover the "correct" model) is essential for avoiding spurious local optima, but can dramatically slow down the rate of convergence of gradient-based methods. In this talk, I will present a locally accelerated first-order method for learning overparameterized GMMs that converges geometrically — improving exponentially over prior work — by exploiting the manifold structure of the loss near optimal solutions.

Joint work with Jingxing (Jesse) Wang and Maryam Fazel.
</div>



<div class="abstract" markdown="1">
### Aggregate Proximal Method for Structured Stochastic Optimization: Convergence and Manifold Identification 
{: #talk-3 }
<p class="by">Konstantin Golobokov - University of Washington</p>
Many learning problems seek models that are both accurate and structured, for example, sparse or quantized, using stochastic gradients. We study the composite problem $\min_x \psi(x):=f(x)+\phi(x)$, where $f$ is smooth, possibly nonconvex, and accessed through stochastic gradients, while $\phi$ is convex, nonsmooth, and structure-inducing. The aggregate proximal stochastic-gradient method (AProx) accumulates learning-rate-weighted stochastic gradients and applies $\operatorname{prox}_{\gamma_k\phi}$, where $\gamma_k$ is the cumulative learning rate. By casting AProx as a dual-averaging majorant scheme, we introduce a Lyapunov function based on the gap between the majorizing model evaluated at a solution and at the next iterate, and use it to develop a unified convergence analysis. Under standard stochastic-approximation assumptions and a global strong Minty-type aiming condition, we prove almost-sure last-iterate convergence to the unique critical point and asymptotic stationarity. Under light-tailed noise, we derive localized high-probability bounds, including an $O(K^{-1/2})$ rate for the best-iterate squared distance with horizon-scaled constant stepsizes. Under partial smoothness and nondegeneracy, AProx identifies the active manifold after finitely many iterations almost surely. We extend the asymptotic convergence and identification guarantees to a momentum variant under compatible schedules. Experiments on sparse regression and ResNet-20 training illustrate structure recovery without the separately tuned fixed proximal parameter used by alternative methods.
</div>


<div class="abstract" markdown="1">
### Barzilai-Borwein Steps (BB-steps) for Solving Nonsmooth Optimization Problems
{: #talk-4 }
<p class="by">Milagros Loreto - University of Washington Bothell</p>
<!--
Abstract TBD
-->

</div>

<div class="abstract" markdown="1">
### Exact Conjugation and Biconjugation of Nonconvex Piecewise Linear-Quadratic Functions
{: #talk-5 }
<p class="by">Yves Lucet - University of British Colubmia Okanagan</p>
Piecewise linear-quadratic (PLQ) functions are piecewise functions defined on a polyhedral subdivision on each of which the restriction of the function is quadratic. They are closed under Fenchel conjugation when convex, and expressive enough to represent most functions. This talk reports on an effort to push exact computation of the Legendre-Fenchel conjugate, and of biconjugation -- the closed convex envelope co f = f** -- past the convex case, to arbitrary nonconvex PLQ (and more general piecewise) functions in one, two, and higher dimensions.

We first focus on bivariate PLQ functions and aggregate several codes into an exact computation package finding that conjugates of nonconvex bivariate PLQ functions are quadratic on conic subdivisions while biconjugates are semi-algebraic but can still be represented exactly using rational numbers. Along the way, we assembled a database of functions with their conjugates and biconjugate that are of independent interest.

We then provide general symbolic computation by first porting Borwein & Hamilton SCAT package to compute conjugate of (multi-dimensional) convex functions to Python. Then we generalized it to a SNAT package that removes the convexity assumption.

We provide illustrations and examples of some unexpected results.
</div>



<div class="abstract" markdown="1">
### Geospatial Healthcare Resource Allocation Problems with Optimization
{: #talk-6 }
<p class="by">Shan Liu - University of Washington</p>
Many healthcare resource allocation problems can be framed as geospatial network design problems that balance equity and efficiency in the allocation of scarce resources. This talk will highlight research that uses healthcare data, advanced analytics, and optimization to inform system-level resource allocation at the county and state levels. We first consider the challenge of minimizing turnaround time for HIV viral load testing in Kenya by strategically placing point-of-care testing machines within a hub-and-spoke network. To support implementation, we developed a user-friendly decision-support tool for Kenyan health administrators, along with a queueing-location-allocation model that accounts for stochastic demand and incorporates Conditional Value at Risk within an integer programming framework. We then turn to Washington State, where we assess disparities in access to high-quality trauma care across sociodemographic groups. We develop geospatial and non-geospatial quality metrics and an optimization model that reconfigures hospital functions to improve trauma care quality while explicitly addressing fairness. Together, these projects demonstrate how optimization and advanced analytics can help design healthcare systems that provide timely, location-appropriate access to critical services while balancing efficiency, quality, and equity.  
</div>


<div class="abstract" markdown="1">
### Superiorization-Based Computed Tomography Reconstruction using Neural Networks
{: #talk-7 }
<p class="by">Thomas Humphries - University of Washingon Bothell</p>
Computed Tomography (CT) image reconstruction is typically formulated as approximately solving a large linear system of equations, which is equivalent to a convex feasibility problem. In the presence of noisy or incomplete data, standard iterative methods such as the simultaneous algebraic reconstruction technique (SART) fail to give satisfactory results, necessitating the use of prior information within the reconstruction algorithm. One heuristic approach for incorporating such information is the superiorization methodology (SM), in which iterates are perturbed between each feasibility-seeking step, typically in a descent direction of some penalty function. Under reasonable assumptions about the basic algorithm, the "superiorized" version will eventually converge to a solution which meets the same level of constraints compatibility as the basic algorithm.

Recently there has been significant interest in the use of techniques from deep learning to improve the quality of CT images reconstructed from noisy or incomplete data. In this work we investigate two approaches to incorporate neural networks within the SM. The first is a plug-and-play approach, in which the network is trained separately from the iterative algorithm, and then applied in between feasibility-seeking iterations to introduce perturbations, which are forced to gradually decrease in size to ensure convergence. The second approaches uses the idea of algorithm unrolling to train the basic algorithm with neural network-induced perturbations together as a single network, by fixing a total number of iterations. The output is subsequently used to initialize the basic algorithm for a small number of iterations, to ensure a desired level of constraints compatibility. Our numerical experiments indicate that while both methods involve roughly the same number of network parameters and achieve the same level of constraints compatibility, the unrolling approach provides significantly better image quality.
</div>

<div class="abstract" markdown="1">
### TBD
{: #talk-8 }
<p class="by">Jeremy Chiu - Simon Fraser University </p>
<!--
Abstract TBD
-->
</div>


<div class="abstract" markdown="1">
### Generalized Raking: Formulation, Extensions, and Software 
{: #talk-9 }
<p class="by">Aleksandr Aravkin  - University of Washington</p>
Raking is a critical tool for adjusting inputs to match known totals—arising naturally in calibrating survey weights to census data and reconciling estimates in global health modeling. We review the underlying optimization problem, casting raking as minimizing entropic distance subject to linear constraints, and show a new raking package that captures many high-interest modern extensions, such as uncertainty-weighted raking. We illustrate using simple synthetics and show how the package was used to solve  a complex high-dimensional raking problem that reconciles granular mortality estimates (by race, county and cause) with state all-race mortality estimates from the Global Burden of Disease study. 
</div>

<div class="abstract" markdown="1">
### An Optimize-then-Classify Framework for Designing Population-level Treatment Guidelines
{: #talk-10 }
<p class="by">Gian-Gabriel Garcia - University of Washington</p>
Evidence-based guidelines play an important role in how chronic diseases are managed, as these recommendations are widely disseminated and widely implemented. However, these guidelines are often one-size-fits-most, failing to consider patient-to-patient differences. Personalized medicine has shown significant potential to improve health outcomes over guidelines. However, the implementation of personalized medicine may be challenging to implement or result in unwanted practice variation. To optimally balance between personalized medicine and clinical guidelines, we propose an optimize-then-classify framework to design treatment guidelines that are stratified across $G$ groups for a population of patients wherein each person is modeled according to their own contextual Markov Decision Process. We characterize the structural properties of this framework and propose exact and heuristic methods to solve the problem. Using a case study on hypertension treatment, we demonstrate that our guidelines – with only a small number of stratifications – can perform almost as well as fully personalized treatment policies while greatly outperforming several benchmarks.
</div>

 
<div class="abstract" markdown="1">
### TBD
{: #talk-11 }
<p class="by">Michael Friedlander - University of British Columbia </p>
<!--
Abstract TBD
-->
</div>
 

