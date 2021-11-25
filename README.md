# ec-encodings

This repository contains different implementations of Event Calculus for ASP.
Right now, there is encodings destined for `clingo` and `clingo-dl`. Other will follow.

## Missing feature of Event Calculus :
* Abnormality
* Trajectories
* Indirect consequences of actions

## List of implementations
* **Easy Event Calculus**: A version of EC without advanced features. Inspired by E. Mueller's Discrete Event Calculus and Kim/Lee/Pala translation into SM.
* **Easy Event Calculus with Durations**: An extending of the previous encoding putting duration on actions.
* **Calculus of event**: An implementation inspired from the initial works of Kowalsky, using clingo-dl.
* **Calculus of event with durations**: A variant putting duration on actions.
* **Decreasoner**: An implementation made by Mueller itself. Three variants are proposed :
 * **SEC**: A simplified one from (Kowalski, 1986; Shanahan, 1997, chapter 13)
 * **EC**: The common one from (Miller & Shanahan, 2002)
 * **DEC**: A discrete one from (Mueller, 2004)

## List of future implementations
* Durations inspired by other works from the litterature
* Durations with difference constraints

# Note :
For now, the instance to test **Easy Event Calculus** is single agent path finding. Extention to MAPF is otw
