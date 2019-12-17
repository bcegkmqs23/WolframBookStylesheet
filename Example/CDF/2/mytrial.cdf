(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.2' *)

(***************************************************************************)
(*                                                                         *)
(*                                                                         *)
(*  Under the Wolfram FreeCDF terms of use, this file and its content are  *)
(*  bound by the Creative Commons BY-SA Attribution-ShareAlike license.    *)
(*                                                                         *)
(*        For additional information concerning CDF licensing, see:        *)
(*                                                                         *)
(*         www.wolfram.com/cdf/adopting-cdf/licensing-options.html         *)
(*                                                                         *)
(*                                                                         *)
(***************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1088,         20]
NotebookDataLength[      5340,        152]
NotebookOptionsPosition[      5830,        148]
NotebookOutlinePosition[      6187,        164]
CellTagsIndexPosition[      6144,        161]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"ContourPlot", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"q1", "/", 
       RowBox[{"Norm", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"x", ",", "y"}], "}"}], "-", 
         RowBox[{"p", "[", 
          RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}], "+", 
      RowBox[{"q2", "/", 
       RowBox[{"Norm", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"x", ",", "y"}], "}"}], "-", 
         RowBox[{"p", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], "]"}]}]}], ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", 
       RowBox[{"-", "2"}], ",", "2"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"y", ",", 
       RowBox[{"-", "2"}], ",", "2"}], "}"}], ",", 
     RowBox[{"Contours", "\[Rule]", "10"}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"q1", ",", 
       RowBox[{"-", "1"}]}], "}"}], ",", 
     RowBox[{"-", "3"}], ",", "3"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"q2", ",", "1"}], "}"}], ",", 
     RowBox[{"-", "3"}], ",", "3"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"p", ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "1"}], ",", "0"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"1", ",", "0"}], "}"}]}], "}"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", "1"}], ",", 
       RowBox[{"-", "1"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"1", ",", "1"}], "}"}], ",", "Locator"}], "}"}], ",", 
   RowBox[{"Deployed", "\[Rule]", "True"}]}], "]"}]], "Input",ExpressionUUID->\
"bf2c95c1-b02d-476d-bf98-a373079bb2a0"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`p$$ = {{-1, 0}, {1, 
    0}}, $CellContext`q1$$ = -1, $CellContext`q2$$ = 1, Typeset`show$$ = True,
     Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"\:65e0\:6807\:9898\"", Typeset`specs$$ = {{{
       Hold[$CellContext`q1$$], -1}, -3, 3}, {{
       Hold[$CellContext`q2$$], 1}, -3, 3}, {{
       Hold[$CellContext`p$$], {{-1, 0}, {1, 0}}}, {-1, -1}, {1, 1}}}, 
    Typeset`size$$ = {360., {178., 183.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`q1$3699$$ = 0, $CellContext`q2$3700$$ = 
    0, $CellContext`p$3701$$ = {0, 0}}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`p$$ = {{-1, 0}, {1, 
         0}}, $CellContext`q1$$ = -1, $CellContext`q2$$ = 1}, 
      "ControllerVariables" :> {
        Hold[$CellContext`q1$$, $CellContext`q1$3699$$, 0], 
        Hold[$CellContext`q2$$, $CellContext`q2$3700$$, 0], 
        Hold[$CellContext`p$$, $CellContext`p$3701$$, {0, 0}]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      ContourPlot[$CellContext`q1$$/
         Norm[{$CellContext`x, $CellContext`y} - 
          Part[$CellContext`p$$, 1]] + $CellContext`q2$$/
         Norm[{$CellContext`x, $CellContext`y} - 
          Part[$CellContext`p$$, 2]], {$CellContext`x, -2, 
         2}, {$CellContext`y, -2, 2}, Contours -> 10], 
      "Specifications" :> {{{$CellContext`q1$$, -1}, -3, 
         3}, {{$CellContext`q2$$, 1}, -3, 
         3}, {{$CellContext`p$$, {{-1, 0}, {1, 0}}}, {-1, -1}, {1, 1}, 
         ControlType -> Locator}}, "Options" :> {Deployed -> True}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{417., {243., 249.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.785492623373022*^9},ExpressionUUID->"65c7739e-5766-444f-81f1-\
35d7aca64243"]
}, Open  ]]
},
WindowSize->{775, 553},
WindowMargins->{{244, Automatic}, {Automatic, 54}},
FrontEndVersion->"11.2 for Microsoft Windows (64-bit) (2017\:5e7410\:67082\
\:65e5)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1510, 35, 1752, 56, 127, "Input",ExpressionUUID->"bf2c95c1-b02d-476d-bf98-a373079bb2a0"],
Cell[3265, 93, 2549, 52, 511, "Output",ExpressionUUID->"65c7739e-5766-444f-81f1-35d7aca64243"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature rv0BKWKSPUst0BKdGsOkKJkS *)
