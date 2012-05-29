(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 8.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc.                                               *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       835,         17]
NotebookDataLength[    175677,       4026]
NotebookOptionsPosition[    174813,       3986]
NotebookOutlinePosition[    175170,       4002]
CellTagsIndexPosition[    175127,       3999]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Wulffmaker v.1.0 (beta)", "Title",
 CellChangeTimes->{{3.5184451290815563`*^9, 3.518445138694195*^9}, {
   3.547215622356022*^9, 3.547215624681027*^9}, {3.547216057813406*^9, 
   3.5472160597412987`*^9}, 3.547217091440813*^9}],

Cell["\<\
Brought to you by Rachel V. Zucker & W. Craig Carter
Please direct questions, comments, and bug reports to rzucker@mit.edu\
\>", "Subsubtitle",
 CellChangeTimes->{{3.518445150958107*^9, 3.518445204025096*^9}, {
  3.518445591350183*^9, 3.518445595113935*^9}, {3.518520646159315*^9, 
  3.5185206550535793`*^9}}],

Cell[CellGroupData[{

Cell["Introduction", "Subsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.518447108352004*^9, 3.518447131263427*^9}, {
  3.519059793403633*^9, 3.519059797232799*^9}, {3.546691469192992*^9, 
  3.5466914696703367`*^9}}],

Cell["Current Capabilities", "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.518447148436452*^9, 3.5184472131322947`*^9}, {
   3.518448893367828*^9, 3.518448893773073*^9}, 3.5184501348073997`*^9}],

Cell[TextData[{
 "Wulffmaker v.1.0 is designed to display the shape of crystals in three \
dimensions. It is an improved version of the older progam ",
 StyleBox["Wulffman",
  FontSlant->"Italic"],
 ", and is platform-independant. The user can select any crystallographic \
symmetry and specify crystallographic axes (a, b, c) and angles (\[Alpha], \
\[Beta], \[Gamma]), up to 12 symmetrically distinct facets (\
\[OpenCurlyDoubleQuote]facet families\[CloseCurlyDoubleQuote]), and assigns \
each family a surface energy (\[Gamma]). The facet families are identified by \
their normal vector in Miller indices, {h k l}. The user also controls some \
aspects of the Wulff shape plot, including colors, opacity, and whether to \
display the crystallographic axes. \[OpenCurlyDoubleQuote]Zone axis\
\[CloseCurlyDoubleQuote] is the viewing direction (orthagonal to your \
screen), and \[OpenCurlyDoubleQuote]vertical \
direction\[CloseCurlyDoubleQuote] is the crystallographic direction pointing \
to the top of your screen. By clicking an dragging on the plot its self, it \
can be rotated."
}], "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.518445876710065*^9, 3.518446348026244*^9}, {
   3.518446379223979*^9, 3.518446401099177*^9}, {3.5184464359577103`*^9, 
   3.518446632578114*^9}, {3.518446756193521*^9, 3.5184467589283447`*^9}, {
   3.5184469460781116`*^9, 3.518447099491424*^9}, 3.518447131263651*^9, {
   3.518447166390895*^9, 3.518447173488578*^9}, {3.518447237741197*^9, 
   3.51844745084159*^9}, {3.518447516538354*^9, 3.518447795671555*^9}, {
   3.5184478456057158`*^9, 3.51844789611029*^9}, {3.5184479551926126`*^9, 
   3.518448095307148*^9}, {3.5184481271659803`*^9, 3.5184483896193953`*^9}, 
   3.518448419649967*^9, 3.5184501348076067`*^9, {3.51851953441136*^9, 
   3.51851953481138*^9}, {3.519060115114377*^9, 3.519060140527372*^9}, {
   3.5466913362789783`*^9, 3.54669138420216*^9}, {3.547216144403792*^9, 
   3.547216147929626*^9}}],

Cell["Using Wulffmaker", "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.518450018332622*^9, 3.51845002195302*^9}, {
   3.5184501026251698`*^9, 3.518450102985705*^9}, 3.5184501348080883`*^9, {
   3.547216160812276*^9, 3.547216164596195*^9}}],

Cell[TextData[{
 "The controls for lattice symmetry, point group, number of facet families \
used, and plotting options appear above the Wulff shape. The default lattice \
symmetry is Cubic, the default point group is \[OpenCurlyDoubleQuote]m",
 Cell[BoxData[
  FormBox[
   OverscriptBox["3", "_"], TraditionalForm]],
  FormatType->"TraditionalForm"],
 "m\[CloseCurlyDoubleQuote], and the default number of facet families is 3. \
Only the point groups consistent with the selected lattice symmetry are \
available in the point group menu. The point groups are identified by their \
International symbol, in abbreviated form. Changing these values will resent \
the controls for facet family, \[Gamma], and color, so it is best to select \
these variables first before moving on to each specific facet family, \
\[Gamma], and color.\n\nThe controls for facet family, \[Gamma], and color \
appear to the left of the Wulff shape. By default, Wulffmaker starts with 3 \
facet families: {0, 0, 1}, {1, 1, 1}, and {1, 1, 0}, and when more facet \
families are added, the default values are random {h k l}\[CloseCurlyQuote]s. \
You are free to select whatever {h k l}\[CloseCurlyQuote]s you like, and may \
change any of the \[Gamma]\[CloseCurlyQuote]s and colors. By expanding the \
slider controls for \[Gamma] (this is done by clicking on the \
\[OpenCurlyDoubleQuote]+\[OpenCurlyDoubleQuote] symbol next to the current \
value of \[Gamma], which defaults to 1), you can continuously change the \
surface energy of a plane as an anamation. You can also manually type in the \
desired \[Gamma] in the input field, even if it is outside the range of the \
slider.\n\t\nThe crystallographic controls (a, b, c) and (\[Alpha], \[Beta], \
\[Gamma]) appear to the right of the Wulff shape. Only the crystallographic \
controls that are \[OpenCurlyDoubleQuote]free variables\
\[CloseCurlyDoubleQuote] under the selected lattice symmetry are available. \
The axes default to having length 1 and the angles default to 90 degrees, but \
can be freely changed. For ay symmetry other than cubic, selecting these \
variables is essential to representing the Wulff shape correctly.\n\nYou may \
modify the source code, but we strongly suggest that modified vesions be \
saved with a different name so that you can always revert to the original. \
Example modifications include changing the default {h k l} values, changing \
the types of controls available on Wulffmaker, or changing default colors. \n\
\nIf the shape specified by the facet families and point symmetry is not a \
closed volume, Wulffmaker will return \[OpenCurlyDoubleQuote]$Aborted\
\[CloseCurlyDoubleQuote] or an error (indicated by the plot area turning pink \
and red text below the user interface). By adding more facet families, one \
can find a closed shape. "
}], "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.518450032818315*^9, 3.518450046797674*^9}, 
   3.518450134808251*^9, {3.5185206706940403`*^9, 3.518520684749442*^9}, {
   3.5185207221890907`*^9, 3.518520741580729*^9}, {3.518520884444277*^9, 
   3.5185209072772007`*^9}, {3.547216171973255*^9, 3.547216280158394*^9}, {
   3.547216394461073*^9, 3.547216621275281*^9}, {3.547216710074752*^9, 
   3.5472167220201187`*^9}}],

Cell["Known Issues", "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.51844717796574*^9, 3.518447188328124*^9}, 
   3.518450134808395*^9}],

Cell["\<\
If the lattice symmetry is changed, the point group does not automatically \
switch to an allowed point group in the new lattice symmetry. As a result, \
the shape displayed immediately after a change to a new lattice symmetry will \
be wrong, or may even return an error (indicated by the graphics field \
turning pink). To display the correct shape, the user must select a point \
group from the menu. Wulffmaker should recover once a compatible point group \
is chosen.

If too many facet families are included (>~20, depending on how powerful your \
computer is), the calculation may abort, even without an apparent error. \
Future versions should correct this issue.\
\>", "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.518446836233048*^9, 3.518446904138329*^9}, {
   3.5184469399917383`*^9, 3.518446941700807*^9}, 3.518447131263824*^9, {
   3.5184471916875343`*^9, 3.518447193886733*^9}, {3.518447460447277*^9, 
   3.518447491015839*^9}, 3.518448421687047*^9, {3.5184486955227823`*^9, 
   3.51844887534451*^9}, {3.518450069120241*^9, 3.518450096356513*^9}, {
   3.546691398747869*^9, 3.5466914516713943`*^9}, {3.547216105813833*^9, 
   3.547216122254467*^9}, {3.547216745884967*^9, 3.54721674985877*^9}}]
}, Closed]],

Cell[CellGroupData[{

Cell["Source code", "Section",
 CellChangeTimes->{{3.518283671960793*^9, 3.518283679285681*^9}, {
   3.518445688293679*^9, 3.518445689494059*^9}, 3.541756322015625*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"(*", " ", 
    RowBox[{
    "Adjust", " ", "the", " ", "default", " ", "display", " ", "here"}], " ", 
    "*)"}],
   FontSize->16], " ", "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"in", " ", "the", " ", "three", " ", "functions", " ", "below"}], 
    ",", " ", 
    RowBox[{"i", " ", "is", " ", "the", " ", 
     SuperscriptBox["i", "th"], " ", "facet", " ", "family"}], ",", " ", 
    RowBox[{
     RowBox[{"and", " ", "j"}], " ", "=", " ", 
     RowBox[{"1", " ", "refers", " ", "to", " ", 
      StyleBox["h",
       FontSlant->"Italic"]}]}], ",", " ", 
    RowBox[{"j", " ", "=", " ", 
     RowBox[{"2", " ", "refers", " ", "to", " ", 
      StyleBox["k",
       FontSlant->"Italic"]}]}], ",", " ", 
    RowBox[{
     RowBox[{"and", " ", "j"}], " ", "=", " ", 
     RowBox[{"3", " ", "refers", " ", "to", " ", 
      RowBox[{
       StyleBox["l",
        FontSlant->"Italic"], "."}]}]}]}], " ", "*)"}], " ", 
  "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
    "if", " ", "you", " ", "want", " ", "to", " ", "modify", " ", "the", " ", 
     "default", " ", 
     RowBox[{"(", 
      RowBox[{"h", " ", "k", " ", "l"}], ")"}], " ", "values"}], ",", " ", 
    RowBox[{"do", " ", "it", " ", "with", " ", 
     RowBox[{"pickIndex", "."}]}]}], " ", "*)"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"pickIndex", "[", 
     RowBox[{"i_", ",", "j_"}], "]"}], ":=", "\[IndentingNewLine]", 
    RowBox[{"Which", "[", 
     RowBox[{
      RowBox[{"i", "\[Equal]", "1"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Which", "[", 
       RowBox[{
        RowBox[{"j", "\[Equal]", "1"}], ",", 
        RowBox[{"(*", " ", 
         RowBox[{
          SubscriptBox["h", "1"], " ", "="}], " ", "*)"}], " ", "0", ",", 
        RowBox[{"j", "\[Equal]", "2"}], ",", 
        RowBox[{"(*", " ", 
         RowBox[{
          SubscriptBox["k", "1"], " ", "="}], " ", "*)"}], " ", "0", ",", 
        RowBox[{"j", "\[Equal]", "3"}], ",", 
        RowBox[{"(*", " ", 
         RowBox[{
          SubscriptBox["l", "1"], " ", "="}], " ", "*)"}], "  ", "1", ",", 
        "True", ",", "1"}], "]"}], ",", "\[IndentingNewLine]", 
      RowBox[{"i", "\[Equal]", "2"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Which", "[", 
       RowBox[{
        RowBox[{"j", "\[Equal]", "1"}], ",", " ", 
        RowBox[{"(*", " ", 
         RowBox[{
          SubscriptBox["h", "2"], " ", "="}], " ", "*)"}], " ", "1", ",", 
        RowBox[{"j", "\[Equal]", "2"}], ",", " ", "1", ",", 
        RowBox[{"j", "\[Equal]", "3"}], ",", " ", "1", ",", "True", ",", 
        "1"}], "]"}], ",", "\[IndentingNewLine]", 
      RowBox[{"i", "\[Equal]", "3"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Which", "[", 
       RowBox[{
        RowBox[{"j", "\[Equal]", "1"}], ",", " ", "1", ",", 
        RowBox[{"j", "\[Equal]", "2"}], ",", " ", "1", ",", 
        RowBox[{"j", "\[Equal]", "3"}], ",", " ", "0", ",", "True", ",", 
        "1"}], "]"}], ",", "\[IndentingNewLine]", "True", ",", " ", 
      "\[IndentingNewLine]", 
      RowBox[{"RandomInteger", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "3"}], ",", "3"}], "}"}], "]"}]}], "]"}]}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "modify", " ", "the", " ", "default", " ", "display", " ", "colors", " ", 
     "with", " ", "pickColor"}], " ", "*)"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"pickColor", "[", "i_", "]"}], ":=", "\[IndentingNewLine]", 
    RowBox[{"Which", "[", 
     RowBox[{
      RowBox[{"i", "\[Equal]", "1"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Darker", "@", "Magenta"}], ",", "\[IndentingNewLine]", 
      RowBox[{"i", "\[Equal]", "2"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Darker", "@", "Cyan"}], ",", "\[IndentingNewLine]", 
      RowBox[{"i", "\[Equal]", "3"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Darker", "@", "Yellow"}], ",", "\[IndentingNewLine]", "True", 
      ",", "\[IndentingNewLine]", 
      RowBox[{"Hue", "[", 
       RowBox[{
        RowBox[{"RandomReal", "[", "]"}], ",", "1", ",", 
        RowBox[{"2", "/", "3"}]}], "]"}]}], "]"}]}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "modify", " ", "the", " ", "default", " ", "surface", " ", "energy", " ", 
     "values", " ", "with", " ", "pickGamma"}], " ", "*)"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"pickGamma", "[", "i_", "]"}], " ", ":=", "\[IndentingNewLine]", 
    RowBox[{"Which", "[", 
     RowBox[{
      RowBox[{"i", " ", "\[Equal]", " ", "1"}], ",", "\[IndentingNewLine]", 
      "1", ",", " ", "\[IndentingNewLine]", 
      RowBox[{"i", " ", "\[Equal]", " ", "2"}], ",", "\[IndentingNewLine]", 
      "1", ",", "\[IndentingNewLine]", 
      RowBox[{"i", " ", "\[Equal]", " ", "3"}], ",", "\[IndentingNewLine]", 
      "1", ",", "\[IndentingNewLine]", "True", ",", "\[IndentingNewLine]", 
      "1"}], "]"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
     RowBox[{"modify", " ", "the", " ", "deafult", " ", "symmetry"}], ",", 
     " ", "n", ",", " ", "opacity", ",", " ", 
     RowBox[{
     "whether", " ", "to", " ", "show", " ", "crystallographic", " ", 
      "axes"}], ",", " ", 
     RowBox[{"the", " ", "zone", " ", "axis"}], ",", " ", 
     RowBox[{"and", " ", "the", " ", "vertical", " ", "direction"}]}], " ", 
    "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultLattice", " ", "=", " ", "\"\<Cubic\>\""}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
    "defaultPointGroup", " ", "=", " ", 
     "\"\<m\!\(\*OverscriptBox[\(3\), \(_\)]\)m\>\""}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultn", " ", "=", " ", "3"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultOpacity", " ", "=", " ", "0.85"}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultShowAxes", " ", "=", " ", "True"}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultZA", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{"5", ",", "1", ",", " ", "1"}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultVert", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], ";"}], 
   "\[IndentingNewLine]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.541759304729084*^9, 3.541759782895699*^9}, {
   3.5417602453203077`*^9, 3.5417602457220573`*^9}, {3.543744184473143*^9, 
   3.5437442104807673`*^9}, {3.5463597984760723`*^9, 3.546359806604787*^9}, {
   3.5472155934945507`*^9, 3.547215613390933*^9}, {3.547216641765665*^9, 
   3.547216664350789*^9}, 3.547216838999878*^9, {3.547217040792111*^9, 
   3.5472170446629753`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "this", " ", "cell", " ", "contols", " ", "the", " ", "space", " ", "and", 
    " ", "point", " ", 
    RowBox[{"symmetries", ".", " ", "It"}], " ", "also", " ", "determines", 
    " ", "what", " ", "is", " ", "displayed", " ", "in", " ", "The", " ", 
    "Wulffenator", " ", 
    RowBox[{"GUI", "."}]}], " ", "*)"}], "\[IndentingNewLine]", " ", 
  "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
    "this", " ", "is", " ", "a", " ", "list", " ", "of", " ", "the", " ", 
     "minimum", " ", "symmetry", " ", "operations", " ", "required", " ", 
     "to", " ", "define", " ", "the", " ", "32", " ", "crystallographic", " ",
      "point", " ", 
     RowBox[{"groups", ".", " ", "you"}], " ", "may", " ", "add", " ", 
     "symmetries", " ", "here", " ", "if", " ", "you", " ", "want", " ", 
     "non"}], "-", 
    RowBox[{"crystallographic", " ", 
     RowBox[{"ones", "."}]}]}], " ", "*)"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"g1", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{"IdentityMatrix", "[", "3", "]"}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"gm", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g1bar", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"IdentityMatrix", "[", "3", "]"}]}]}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g2", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{"Pi", ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g2sm", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{"Pi", ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"gmm2", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "1", ",", "0"}], "}"}], "]"}], ",", " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", "0"}], "}"}], "]"}]}], "}"}]}], 
    ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g222", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{"Pi", ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{"Pi", ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"gmmm", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], "]"}], ",", " ", 
       
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}], "]"}], ",", " ", 
       
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g4", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "2"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g4bar", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"(", 
         RowBox[{"RotationMatrix", "[", 
          RowBox[{
           RowBox[{"Pi", "/", "2"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], 
         ")"}]}]}], "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g4sm", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "2"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g422", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "2"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{"Pi", ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g4mm", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "2"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g4bar2m", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"(", 
         RowBox[{"RotationMatrix", "[", 
          RowBox[{
           RowBox[{"Pi", "/", "2"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], 
         ")"}]}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{"Pi", ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g4smmm", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "2"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}], "]"}], ",", " ", 
       
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g3", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"2", " ", 
          RowBox[{"Pi", "/", "3"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g3bar", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"(", " ", 
         RowBox[{"RotationMatrix", "[", 
          RowBox[{
           RowBox[{"2", " ", 
            RowBox[{"Pi", "/", "3"}]}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], 
         ")"}]}]}], "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g32", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", "  ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"2", " ", 
          RowBox[{"Pi", "/", "3"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       "  ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{"Pi", ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g3m", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", "  ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"2", " ", 
          RowBox[{"Pi", "/", "3"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", "0"}], "}"}], "]"}]}], "}"}]}], 
    ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g3barm", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"(", " ", 
         RowBox[{"RotationMatrix", "[", 
          RowBox[{
           RowBox[{"2", " ", 
            RowBox[{"Pi", "/", "3"}]}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], 
         ")"}]}], ",", " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", "0"}], "}"}], "]"}]}], "}"}]}], 
    ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g6", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "3"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g6bar", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"(", 
         RowBox[{"RotationMatrix", "[", 
          RowBox[{
           RowBox[{"Pi", "/", "3"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], 
         ")"}]}]}], "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g6sm", " ", "=", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "3"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g622", " ", "=", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "3"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{"Pi", ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g6mm", " ", "=", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "3"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g6barm2", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"(", 
         RowBox[{"RotationMatrix", "[", 
          RowBox[{
           RowBox[{"Pi", "/", "3"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], 
         ")"}]}], ",", " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g6smmm", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "3"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}], "]"}], ",", " ", 
       
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g23", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{"Pi", ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"2", 
          RowBox[{"Pi", "/", "3"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "1", ",", " ", "1"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"gm3bar", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], "]"}], ",", " ", 
       
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"2", 
          RowBox[{"Pi", "/", "3"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "1", ",", " ", "1"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g432", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "2"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"2", 
          RowBox[{"Pi", "/", "3"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "1", ",", " ", "1"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g4bar3m", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"(", 
         RowBox[{"RotationMatrix", "[", 
          RowBox[{
           RowBox[{"Pi", "/", "2"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], 
         ")"}]}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"2", 
          RowBox[{"Pi", "/", "3"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "1", ",", " ", "1"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"gm3barm", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], "]"}], ",", " ", 
       
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"2", 
          RowBox[{"Pi", "/", "3"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "1", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "1", ",", " ", "0"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "these", " ", "are", " ", "the", " ", "space", " ", "group", " ", 
     "options", " ", "displayed", " ", "in", " ", "the", " ", "gui"}], " ", 
    "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"symList", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
      "\"\<Cubic\>\"", ",", " ", "\"\<Hexagonal\>\"", ",", " ", 
       "\"\<Tetragonal\>\"", ",", " ", "\"\<Orthorhombic\>\"", ",", " ", 
       "\"\<Monoclinic\>\"", ",", " ", "\"\<Triclinic\>\""}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "these", " ", "link", " ", "the", " ", "text", " ", "symbol", " ", "for", 
     " ", "a", " ", "space", " ", "group", " ", "to", " ", "the", " ", 
     "symmetry", " ", "operations"}], " ", "*)"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"triclinicset", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{"g1", ",", " ", "g1bar"}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"groupSet", "[", "\"\<Triclinic\>\"", "]"}], "=", "  ", 
     RowBox[{"{", 
      RowBox[{
      "\"\<1\>\"", ",", " ", "\"\<\!\(\*OverscriptBox[\(1\), \(_\)]\)\>\""}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<1\>\"", "]"}], " ", "=", " ", 
     "g1"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<\!\(\*OverscriptBox[\(1\), \(_\)]\)\>\"", 
      "]"}], " ", "=", " ", "g1bar"}], ";"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"monoclinicset", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{"g2", ",", " ", "gm", ",", " ", "g2sm"}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"groupSet", "[", "\"\<Monoclinic\>\"", "]"}], "=", "  ", 
     RowBox[{"{", 
      RowBox[{"\"\<2\>\"", ",", " ", "\"\<m\>\"", ",", " ", "\"\<2/m\>\""}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<2\>\"", "]"}], " ", "=", " ", 
     "g2"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<m\>\"", "]"}], " ", "=", " ", 
     "gm"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<2/m\>\"", "]"}], " ", "=", " ", 
     "g2sm"}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"orthorhombicset", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{"g222", ",", " ", "gmm2", ",", " ", "gmmm"}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"groupSet", "[", "\"\<Orthorhombic\>\"", "]"}], "=", "   ", 
     RowBox[{"{", 
      RowBox[{
      "\"\<222\>\"", ",", " ", "\"\<mm2\>\"", ",", " ", "\"\<mmm\>\""}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<222\>\"", "]"}], " ", "=", " ", 
     "g222"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<mm2\>\"", "]"}], " ", "=", " ", 
     "gmm2"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<mmm\>\"", "]"}], " ", "=", " ", 
     "gmmm"}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"tetragonalset", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
      "g4", ",", " ", "g4bar", ",", " ", "g4sm", ",", " ", "g422", ",", " ", 
       "g4mm", ",", " ", "g4bar2m", ",", " ", "g4smmm"}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"groupSet", "[", "\"\<Tetragonal\>\"", "]"}], "=", "  ", 
     RowBox[{"{", 
      RowBox[{
      "\"\<4\>\"", ",", " ", "\"\<\!\(\*OverscriptBox[\(4\), \(_\)]\)\>\"", 
       ",", " ", "\"\<4/m\>\"", ",", " ", "\"\<422\>\"", ",", " ", 
       "\"\<4mm\>\"", ",", " ", 
       "\"\<\!\(\*OverscriptBox[\(4\), \(_\)]\)2m\>\"", ",", " ", 
       "\"\<4/mmm\>\""}], "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<4\>\"", "]"}], " ", "=", " ", 
     "g4"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<\!\(\*OverscriptBox[\(4\), \(_\)]\)\>\"", 
      "]"}], " ", "=", " ", "g4bar"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<4/m\>\"", "]"}], " ", "=", " ", 
     "g4sm"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<422\>\"", "]"}], " ", "=", " ", 
     "g422"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<4mm\>\"", "]"}], " ", "=", " ", 
     "g4mm"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<\!\(\*OverscriptBox[\(4\), \(_\)]\)2m\>\"",
       "]"}], " ", "=", " ", "g4bar2m"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<4/mmm\>\"", "]"}], " ", "=", " ", 
     "g4smmm"}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"hexagonalset", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
      "g3", ",", " ", "g3bar", ",", " ", "g32", ",", " ", "g3m", ",", " ", 
       "g3barm", ",", " ", "g6", ",", " ", "g6bar", ",", " ", "g6sm", ",", 
       " ", "g622", ",", " ", "g6mm", ",", " ", "g6barm2", ",", " ", 
       "g6smmm"}], "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"groupSet", "[", "\"\<Hexagonal\>\"", "]"}], "=", "  ", 
     RowBox[{"{", 
      RowBox[{
      "\"\<3\>\"", ",", " ", "\"\<\!\(\*OverscriptBox[\(3\), \(_\)]\)\>\"", 
       ",", " ", "\"\<32\>\"", ",", " ", "\"\<3m\>\"", ",", " ", 
       "\"\<\!\(\*OverscriptBox[\(3\), \(_\)]\)m\>\"", ",", " ", "\"\<6\>\"", 
       ",", " ", "\"\<\!\(\*OverscriptBox[\(6\), \(_\)]\)\>\"", ",", " ", 
       "\"\<6/m\>\"", ",", " ", "\"\<622\>\"", ",", " ", "\"\<6mm\>\"", ",", 
       " ", "\"\<\!\(\*OverscriptBox[\(6\), \(_\)]\)m2\>\"", ",", " ", 
       "\"\<6/mmm\>\""}], "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<3\>\"", "]"}], " ", "=", " ", 
     "g3"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<\!\(\*OverscriptBox[\(3\), \(_\)]\)\>\"", 
      "]"}], " ", "=", " ", "g3bar"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<32\>\"", "]"}], " ", "=", " ", 
     "g32"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<3m\>\"", "]"}], " ", "=", " ", 
     "g3m"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<\!\(\*OverscriptBox[\(3\), \(_\)]\)m\>\"", 
      "]"}], " ", "=", " ", "g3barm"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<6\>\"", "]"}], " ", "=", " ", 
     "g6"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<\!\(\*OverscriptBox[\(6\), \(_\)]\)\>\"", 
      "]"}], " ", "=", " ", "g6bar"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<6/m\>\"", "]"}], " ", "=", " ", 
     "g6sm"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<622\>\"", "]"}], " ", "=", " ", 
     "g622"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<6mm\>\"", "]"}], " ", "=", " ", 
     "g6mm"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<\!\(\*OverscriptBox[\(6\), \(_\)]\)m2\>\"",
       "]"}], " ", "=", " ", "g6barm2"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<6/mmm\>\"", "]"}], " ", "=", " ", 
     "g6smmm"}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"cubicset", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
      "g23", ",", " ", "gm3bar", ",", " ", "g432", ",", " ", "g4bar3m", ",", 
       " ", "gm3barm"}], "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"groupSet", "[", "\"\<Cubic\>\"", "]"}], "=", "  ", 
     RowBox[{"{", 
      RowBox[{
      "\"\<23\>\"", ",", " ", "\"\<m\!\(\*OverscriptBox[\(3\), \(_\)]\)\>\"", 
       ",", " ", "\"\<432\>\"", ",", " ", 
       "\"\<\!\(\*OverscriptBox[\(4\), \(_\)]\)3m\>\"", ",", " ", 
       "\"\<m\!\(\*OverscriptBox[\(3\), \(_\)]\)m\>\""}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<Cubic\>\"", "]"}], " ", "=", " ", 
     "g23"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<23\>\"", "]"}], " ", "=", " ", 
     "g23"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<m\!\(\*OverscriptBox[\(3\), \(_\)]\)\>\"", 
      "]"}], " ", "=", " ", "gm3bar"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<432\>\"", "]"}], " ", "=", " ", 
     "g432"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<\!\(\*OverscriptBox[\(4\), \(_\)]\)3m\>\"",
       "]"}], " ", "=", " ", "g4bar3m"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<m\!\(\*OverscriptBox[\(3\), \(_\)]\)m\>\"",
       "]"}], " ", "=", " ", "gm3barm"}], ";"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"atext", "=", " ", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<a\>\"", ",", "16"}], "]"}], "]"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"btext", "=", " ", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<b\>\"", ",", "16"}], "]"}], "]"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"ctext", "=", " ", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<c\>\"", ",", "16"}], "]"}], "]"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"\[Alpha]text", "=", " ", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<\[Alpha]\>\"", ",", "16"}], "]"}], "]"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"\[Beta]text", "=", " ", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<\[Beta]\>\"", ",", "16"}], "]"}], "]"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"\[Gamma]text", "=", " ", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<\[Gamma]\>\"", ",", "16"}], "]"}], "]"}]}], ";"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "these", " ", "determine", " ", "what", " ", "space", " ", "group", " ", 
     "parameters", " ", "are", " ", "displayed", " ", "in", " ", "the", " ", 
     RowBox[{"gui", "."}]}], " ", "*)"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"tricliniccontrols", "[", "symmetry_", "]"}], " ", ":=", "  ", 
     RowBox[{"Sequence", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"a", ",", " ", "1", ",", "atext"}], "}"}], ",", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"b", ",", " ", "1", ",", "btext"}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"c", ",", " ", "1", ",", "ctext"}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"\[Alpha]", ",", " ", "90", ",", "\[Alpha]text"}], "}"}], 
         ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"\[Beta]", ",", " ", "90", ",", "\[Beta]text"}], "}"}], ",",
          " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"\[Gamma]", ",", " ", "90", ",", "\[Gamma]text"}], "}"}], 
         ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}]}], 
      "]"}]}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"triclinicconstants", "[", "symmetry_", "]"}], " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
     "a", ",", " ", "b", ",", " ", "c", ",", " ", "\[Alpha]", ",", " ", 
      "\[Beta]", ",", " ", "\[Gamma]"}], "}"}]}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"monocliniccontrols", "[", "symmetry_", "]"}], " ", ":=", "  ", 
     RowBox[{"Sequence", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"a", ",", " ", "1", ",", "atext"}], "}"}], ",", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"b", ",", " ", "1", ",", "btext"}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"c", ",", " ", "1", ",", "ctext"}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"\[Beta]", ",", " ", "90", ",", "\[Beta]text"}], "}"}], ",",
          " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}]}], 
      "]"}]}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"monoclinicconstants", "[", "symmetry_", "]"}], " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
     "a", ",", " ", "b", ",", " ", "c", ",", " ", "90", ",", " ", "\[Beta]", 
      ",", " ", "90"}], "}"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"orthorhombiccontrols", "[", "symmetry_", "]"}], " ", ":=", "  ", 
     RowBox[{"Sequence", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"a", ",", " ", "1", ",", "atext"}], "}"}], ",", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"b", ",", " ", "1", ",", "btext"}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"c", ",", " ", "1", ",", "ctext"}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}]}], 
      "]"}]}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"orthorhombicconstants", "[", "symmetry_", "]"}], " ", ":=", " ", 
    
    RowBox[{"{", 
     RowBox[{
     "a", ",", " ", "b", ",", " ", "c", ",", " ", "90", ",", " ", "90", ",", 
      " ", "90"}], "}"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"tetragonalcontrols", "[", "symmetry_", "]"}], " ", ":=", "  ", 
     RowBox[{"Sequence", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"a", ",", " ", "1", ",", "atext"}], "}"}], ",", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"c", ",", " ", "1", ",", "ctext"}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}]}], 
      "]"}]}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"tetragonalconstants", "[", "symmetry_", "]"}], " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
     "a", ",", " ", "a", ",", " ", "c", ",", " ", "90", ",", "90", ",", " ", 
      "90"}], "}"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"hexagonalcontrols", "[", "symmetry_", "]"}], " ", ":=", "  ", 
     RowBox[{"Sequence", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"a", ",", " ", "1", ",", "atext"}], "}"}], ",", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"c", ",", " ", "1", ",", "ctext"}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}]}], 
      "]"}]}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"hexagonalconstants", "[", "symmetry_", "]"}], " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
     "a", ",", " ", "a", ",", " ", "c", ",", " ", "90", ",", " ", "90", ",", 
      " ", "120"}], "}"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"cubiccontrols", "[", "symmetry_", "]"}], " ", ":=", "  ", 
     RowBox[{"Sequence", "[", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"a", ",", " ", "1", ",", "atext"}], "}"}], ",", 
        RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], 
      "]"}]}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"cubicconstants", "[", "symmetry_", "]"}], " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
     "a", ",", " ", "a", ",", " ", "a", ",", " ", "90", ",", " ", "90", ",", 
      " ", "90"}], "}"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"whichcontrols", "[", "sym_", "]"}], " ", ":=", " ", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"StringMatchQ", "[", 
       RowBox[{"\"\<Hexagonal\>\"", ",", " ", "sym"}], "]"}], ",", " ", 
      RowBox[{"hexagonalcontrols", "[", "sym", "]"}], ",", " ", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"StringMatchQ", "[", 
         RowBox[{"\"\<Cubic\>\"", ",", " ", "sym"}], "]"}], ",", " ", 
        RowBox[{"cubiccontrols", "[", "sym", "]"}], ",", " ", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"StringMatchQ", "[", 
           RowBox[{"\"\<Tetragonal\>\"", ",", " ", "sym"}], "]"}], ",", " ", 
          RowBox[{"tetragonalcontrols", "[", "sym", "]"}], ",", " ", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"StringMatchQ", "[", 
             RowBox[{"\"\<Orthorhombic\>\"", ",", " ", "sym"}], "]"}], ",", 
            " ", 
            RowBox[{"orthorhombiccontrols", "[", "sym", "]"}], ",", " ", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"StringMatchQ", "[", 
               RowBox[{"\"\<Monoclinic\>\"", ",", " ", "sym"}], "]"}], ",", 
              " ", 
              RowBox[{"monocliniccontrols", "[", "sym", "]"}], ",", " ", 
              RowBox[{"tricliniccontrols", "[", "sym", "]"}]}], "]"}]}], 
           "]"}]}], "]"}]}], "]"}]}], "]"}]}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"geomgen", "[", "sym_", "]"}], " ", ":=", "  ", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"StringMatchQ", "[", 
       RowBox[{"\"\<Hexagonal\>\"", ",", " ", "sym"}], "]"}], ",", " ", 
      RowBox[{"hexagonalconstants", "[", "sym", "]"}], ",", " ", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"StringMatchQ", "[", 
         RowBox[{"\"\<Cubic\>\"", ",", " ", "sym"}], "]"}], ",", " ", 
        RowBox[{"cubicconstants", "[", "sym", "]"}], ",", " ", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"StringMatchQ", "[", 
           RowBox[{"\"\<Tetragonal\>\"", ",", " ", "sym"}], "]"}], ",", " ", 
          RowBox[{"tetragonalconstants", "[", "sym", "]"}], ",", " ", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"StringMatchQ", "[", 
             RowBox[{"\"\<Orthorhombic\>\"", ",", " ", "sym"}], "]"}], ",", 
            " ", 
            RowBox[{"orthorhombicconstants", "[", "sym", "]"}], ",", " ", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"StringMatchQ", "[", 
               RowBox[{"\"\<Monoclinic\>\"", ",", " ", "sym"}], "]"}], ",", 
              " ", 
              RowBox[{"monoclinicconstants", "[", "sym", "]"}], ",", " ", 
              RowBox[{"triclinicconstants", "[", "sym", "]"}]}], "]"}]}], 
           "]"}]}], "]"}]}], "]"}]}], "]"}]}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"hkl", "[", "1", "]"}], " ", "=", " ", "\"\< h\>\""}], ";", 
    RowBox[{
     RowBox[{"hkl", "[", "2", "]"}], "=", "\"\< k\>\""}], ";", 
    RowBox[{
     RowBox[{"hkl", "[", "3", "]"}], "=", "\"\< l\>\""}], ";"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"hkl", "[", "1", "]"}], " ", "=", " ", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<h\>\"", ",", "Italic", ",", "16"}], "]"}], "]"}]}], " ", 
    ";", 
    RowBox[{
     RowBox[{"hkl", "[", "2", "]"}], "=", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<k\>\"", ",", "Italic", ",", "16"}], "]"}], "]"}]}], ";", 
    RowBox[{
     RowBox[{"hkl", "[", "3", "]"}], "=", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<l\>\"", ",", "Italic", ",", "16"}], "]"}], "]"}]}], ";"}],
    "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "these", " ", "functions", " ", "expedite", " ", "the", " ", "wulff", " ",
      "shape", " ", 
     RowBox[{"calculation", ":", " ", 
      RowBox[{
      "the", " ", "first", " ", "tests", " ", "whether", " ", "a", " ", 
       "particular", " ", "vector", " ", "is", " ", "excluded", " ", "from", 
       " ", "the", " ", "wulff", " ", "shape", " ", "by", " ", "another", " ", 
       RowBox[{"vector", ".", " ", "The"}], " ", "second", " ", "finds", " ", 
       "the", " ", "nearest", " ", "neighboring", " ", "facets", " ", "to", 
       " ", "a", " ", "given", " ", 
       RowBox[{"facet", ".", " ", "The"}], " ", "last", " ", "finds", " ", 
       "the", " ", "intersection", " ", "point", " ", "of", " ", "3", " ", 
       RowBox[{"planes", "."}]}]}]}], " ", "*)"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"outsideWulffCompiled", " ", "=", " ", "\[IndentingNewLine]", 
     RowBox[{"Compile", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"baseV", ",", "_Real", ",", "1"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"testV", ",", "_Real", ",", "1"}], "}"}]}], "}"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"baseV", "[", 
           RowBox[{"[", "1", "]"}], "]"}], " ", 
          RowBox[{"testV", "[", 
           RowBox[{"[", "1", "]"}], "]"}]}], " ", "+", " ", 
         RowBox[{
          RowBox[{"baseV", "[", 
           RowBox[{"[", "2", "]"}], "]"}], " ", 
          RowBox[{"testV", "[", 
           RowBox[{"[", "2", "]"}], "]"}]}], " ", "+", "  ", 
         RowBox[{
          RowBox[{"baseV", "[", 
           RowBox[{"[", "3", "]"}], "]"}], " ", 
          RowBox[{"testV", "[", 
           RowBox[{"[", "3", "]"}], "]"}]}]}], "  ", ">", " ", 
        "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{
          RowBox[{"baseV", "[", 
           RowBox[{"[", "1", "]"}], "]"}], "^", "2"}], " ", "+", " ", 
         RowBox[{
          RowBox[{"baseV", "[", 
           RowBox[{"[", "2", "]"}], "]"}], "^", "2"}], " ", "+", 
         RowBox[{
          RowBox[{"baseV", "[", 
           RowBox[{"[", "3", "]"}], "]"}], "^", "2"}]}]}]}], " ", "]"}]}], 
    ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"neighborQ", "[", 
      RowBox[{"id_", ",", " ", "glist_"}], "]"}], " ", ":=", " ", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
        "dots", ",", " ", "sorted", ",", " ", "neighbors", ",", " ", "fin"}], 
        "}"}], ",", " ", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"dots", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"glist", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ".", 
              RowBox[{"Normalize", "[", 
               RowBox[{"glist", "[", 
                RowBox[{"[", 
                 RowBox[{"id", ",", " ", "1"}], "]"}], "]"}], "]"}]}], ",", 
             " ", "i"}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "glist", "]"}]}], "}"}]}], "]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"sorted", " ", "=", " ", 
         RowBox[{"Sort", "[", 
          RowBox[{"dots", ",", " ", 
           RowBox[{
            RowBox[{
             RowBox[{"#1", "[", 
              RowBox[{"[", "1", "]"}], "]"}], " ", ">", " ", 
             RowBox[{"#2", "[", 
              RowBox[{"[", "1", "]"}], "]"}]}], " ", "&"}]}], "]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"neighbors", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"sorted", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Min", "[", 
              RowBox[{
               RowBox[{"Max", "[", 
                RowBox[{
                 RowBox[{"Ceiling", "[", 
                  RowBox[{
                   RowBox[{"Length", "[", "glist", "]"}], "/", "6"}], "]"}], 
                 ",", " ", "11"}], "]"}], ",", " ", 
               RowBox[{"Length", "[", "glist", "]"}]}], "]"}]}], "}"}]}], 
          "]"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"fin", " ", "=", " ", 
         RowBox[{"Select", "[", 
          RowBox[{"neighbors", ",", " ", 
           RowBox[{
            RowBox[{"!", 
             RowBox[{"SameQ", "[", 
              RowBox[{"#", ",", " ", "id"}], "]"}]}], " ", "&"}]}], 
          "]"}]}]}]}], "\[IndentingNewLine]", "]"}]}], ";"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"Clear", "[", "findvert", "]"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"findvert", " ", "=", 
     RowBox[{"Compile", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"a", ",", "_Real", ",", "1"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"b", ",", "_Real", ",", "1"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"c", ",", "_Real", ",", "1"}], "}"}]}], "}"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Block", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"denom", "=", 
           RowBox[{
            RowBox[{
             RowBox[{
             "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], " ", 
             RowBox[{
             "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], " ", 
             RowBox[{
             "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}], 
            "-", 
            RowBox[{
             RowBox[{
             "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], " ", 
             RowBox[{
             "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], " ", 
             RowBox[{
             "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}], 
            "-", 
            RowBox[{
             RowBox[{
             "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], " ", 
             RowBox[{
             "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], " ", 
             RowBox[{
             "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}], 
            "+", 
            RowBox[{
             RowBox[{
             "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], " ", 
             RowBox[{
             "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], " ", 
             RowBox[{
             "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}], 
            "+", 
            RowBox[{
             RowBox[{
             "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], " ", 
             RowBox[{
             "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], " ", 
             RowBox[{
             "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}]}], 
            "-", 
            RowBox[{
             RowBox[{
             "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], " ", 
             RowBox[{
             "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], " ", 
             RowBox[{
             "c", "\[LeftDoubleBracket]", "3", 
              "\[RightDoubleBracket]"}]}]}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"Abs", "[", "denom", "]"}], " ", "<", " ", 
            ".000000000001"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"1000000.0", ",", "1000000.", ",", "1000000."}], "}"}], 
           ",", " ", "\[IndentingNewLine]", 
           RowBox[{"{", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"]}]}], ")"}], "/", "denom"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"]}], "+", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"]}]}], ")"}], "/", "denom"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 RowBox[{"-", 
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "2", 
                   "\[RightDoubleBracket]"}]}], " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"]}], "-", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"]}]}], ")"}], "/", "denom"}]}], "\[IndentingNewLine]", 
            "}"}]}], "]"}]}], "\[IndentingNewLine]", "]"}]}], 
      "\[IndentingNewLine]", "]"}]}], ";"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.518971935417313*^9, 3.518971964294887*^9}, {
   3.518972026388856*^9, 3.518972296793899*^9}, 3.54175632203125*^9, {
   3.541758948171887*^9, 3.5417589915069723`*^9}, {3.541759288686508*^9, 
   3.541759299162407*^9}, {3.541759654196686*^9, 3.541759655698884*^9}, {
   3.5417597898719063`*^9, 3.5417598083257513`*^9}, {3.5466243282041187`*^9, 
   3.546624338720175*^9}, {3.546624387964138*^9, 3.546624426866848*^9}, 
   3.5466244650778427`*^9, {3.5472156303374367`*^9, 3.5472156522368927`*^9}, {
   3.5472167775972853`*^9, 3.5472168001104794`*^9}, {3.547216863567585*^9, 
   3.54721689563745*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "this", " ", "calculates", " ", "the", " ", "Wulff", " ", "shape"}], " ", 
   "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"wulffmaker", "[", 
     RowBox[{"argument_", ",", " ", 
      RowBox[{"opacity_:", "1"}], ",", " ", 
      RowBox[{"showAxes_:", "True"}], ",", " ", "vpr_", ",", " ", "vvr_"}], 
     "]"}], " ", ":=", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "norms", ",", " ", "ds", ",", " ", "colors", ",", " ", "symstring", 
        ",", " ", "geometry", ",", " ", "sym", ",", " ", "geometr", ",", " ", 
        "aa", ",", " ", "bb", ",", " ", "cc", ",", " ", "\[Alpha]\[Alpha]", 
        ",", " ", "\[Beta]\[Beta]", ",", " ", "\[Gamma]\[Gamma]", ",", " ", 
        "avect", ",", " ", "bvect", ",", " ", "cvect", ",", " ", "normsr", 
        ",", " ", "normsxyz", ",", " ", "symop", ",", " ", "dmult", ",", " ", 
        "colz", ",", " ", "gams", ",", " ", "eliminatedQ", ",", " ", 
        "survivingGroups", ",", " ", "newColors", ",", " ", "newGsPre", ",", 
        " ", "newGs", ",", " ", "neighbors", ",", " ", "verts", ",", " ", 
        "verts2", ",", " ", "vertTest", ",", " ", "degs", ",", " ", "axes", 
        ",", " ", "rotMats", ",", " ", "rotatedVerts", ",", " ", 
        "sortedVerts", ",", "wulffshape"}], "}"}], ",", "\[IndentingNewLine]",
       "\[IndentingNewLine]", 
      RowBox[{"(*", " ", "definitions", " ", "*)"}], "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"norms", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Normalize", "[", 
           RowBox[{"argument", "[", 
            RowBox[{"[", 
             RowBox[{"1", ",", " ", "i"}], "]"}], "]"}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", 
             RowBox[{"argument", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"ds", " ", "=", " ", 
        RowBox[{"argument", "[", 
         RowBox[{"[", "2", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"colors", " ", "=", " ", 
        RowBox[{"argument", "[", 
         RowBox[{"[", "3", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"symstring", " ", "=", " ", 
        RowBox[{"argument", "[", 
         RowBox[{"[", "4", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"geometry", " ", "=", " ", 
        RowBox[{"argument", "[", 
         RowBox[{"[", "5", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"sym", " ", "=", " ", 
        RowBox[{"symmetryMatrices", "[", "symstring", "]"}]}], ";", 
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{
        "converting", " ", "the", " ", "inputs", " ", "from", " ", 
         "crystallographic", " ", "axes", " ", "to", " ", "cartesian", " ", 
         "axes"}], " ", "*)"}], "\[IndentingNewLine]", 
       RowBox[{"aa", " ", "=", " ", 
        RowBox[{"geometry", "[", 
         RowBox[{"[", "1", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"bb", " ", "=", " ", 
        RowBox[{"geometry", "[", 
         RowBox[{"[", "2", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"cc", " ", "=", " ", 
        RowBox[{"geometry", "[", 
         RowBox[{"[", "3", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"\[Alpha]\[Alpha]", " ", "=", " ", 
        RowBox[{
         RowBox[{"geometry", "[", 
          RowBox[{"[", "4", "]"}], "]"}], " ", 
         RowBox[{"Pi", "/", "180"}]}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"\[Beta]\[Beta]", " ", "=", " ", 
        RowBox[{
         RowBox[{"geometry", "[", 
          RowBox[{"[", "5", "]"}], "]"}], " ", 
         RowBox[{"Pi", "/", "180"}]}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"\[Gamma]\[Gamma]", " ", "=", " ", 
        RowBox[{
         RowBox[{"geometry", "[", 
          RowBox[{"[", "6", "]"}], "]"}], " ", 
         RowBox[{"Pi", "/", "180"}]}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"avect", " ", "=", " ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"aa", " ", 
           RowBox[{"Sin", "[", "\[Beta]\[Beta]", "]"}]}], ",", " ", "0", ",", 
          " ", 
          RowBox[{"aa", " ", 
           RowBox[{"Cos", "[", "\[Beta]\[Beta]", "]"}]}]}], "}"}]}], ";", " ",
        "\[IndentingNewLine]", 
       RowBox[{"bvect", " ", "=", " ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"bb", " ", 
           RowBox[{"Sin", "[", "\[Alpha]\[Alpha]", "]"}], " ", 
           RowBox[{"Cos", "[", "\[Gamma]\[Gamma]", "]"}]}], ",", " ", 
          RowBox[{"bb", " ", 
           RowBox[{"Sin", "[", "\[Alpha]\[Alpha]", "]"}], " ", 
           RowBox[{"Sin", "[", "\[Gamma]\[Gamma]", "]"}]}], ",", " ", 
          RowBox[{"bb", " ", 
           RowBox[{"Cos", "[", "\[Alpha]\[Alpha]", "]"}]}]}], "}"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"cvect", " ", "=", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "cc"}], "}"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"normsxyz", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"norms", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], " ", "avect"}], " ",
            "+", " ", 
           RowBox[{
            RowBox[{"norms", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], " ", "bvect"}], " ",
            "+", " ", 
           RowBox[{
            RowBox[{"norms", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], " ", "cvect"}]}], 
          ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "1", ",", " ", 
            RowBox[{"Length", "[", "norms", "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{
         RowBox[{
         "performing", " ", "symmetry", " ", "operations", " ", "repeatedly", 
          " ", "to", " ", "find", " ", "all", " ", "symmetric", " ", 
          "eqivalents"}], ",", " ", 
         RowBox[{
         "and", " ", "the", " ", "corresponding", " ", "colors", " ", "and", 
          " ", "gamma", " ", "values", " ", "and", " ", "vectors"}]}], " ", 
        "*)"}], "\[IndentingNewLine]", 
       RowBox[{"symop", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"FixedPoint", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"Simplify", "@", 
              RowBox[{"Union", "[", 
               RowBox[{"Partition", "[", 
                RowBox[{
                 RowBox[{"Flatten", "[", 
                  RowBox[{"Table", "[", 
                   RowBox[{
                    RowBox[{"sym", ".", " ", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "i", "]"}], "]"}]}], ",", " ", 
                    RowBox[{"{", 
                    RowBox[{"i", ",", " ", "1", ",", " ", 
                    RowBox[{"Length", "[", "#", "]"}]}], "}"}]}], "]"}], 
                  "]"}], ",", " ", "3"}], "]"}], "]"}]}], " ", "&"}], ",", 
            RowBox[{"sym", ".", 
             RowBox[{"normsxyz", "[", 
              RowBox[{"[", "j", "]"}], "]"}]}]}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"j", ",", " ", "1", ",", " ", 
            RowBox[{"Length", "[", "normsxyz", "]"}]}], "}"}]}], "]"}]}], ";",
        "\[IndentingNewLine]", 
       RowBox[{"dmult", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"ds", "[", 
           RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "1", ",", " ", 
            RowBox[{"Length", "[", "ds", "]"}]}], "}"}], ",", "  ", 
          RowBox[{"{", 
           RowBox[{"j", ",", " ", "1", ",", " ", 
            RowBox[{"Length", "[", 
             RowBox[{"symop", "[", 
              RowBox[{"[", "i", "]"}], "]"}], " ", "]"}]}], "}"}]}], "]"}]}], 
       ";", "\[IndentingNewLine]", 
       RowBox[{"colz", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"colors", "[", 
           RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "1", ",", " ", 
            RowBox[{"Length", "[", "ds", "]"}]}], "}"}], ",", "  ", 
          RowBox[{"{", 
           RowBox[{"j", ",", " ", "1", ",", " ", 
            RowBox[{"Length", "[", 
             RowBox[{"symop", "[", 
              RowBox[{"[", "i", "]"}], "]"}], " ", "]"}]}], "}"}]}], "]"}]}], 
       ";", "\[IndentingNewLine]", 
       RowBox[{"gams", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"dmult", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], " ", 
           RowBox[{"Normalize", "[", 
            RowBox[{"symop", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], "]"}]}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "1", ",", " ", 
            RowBox[{"Length", "[", "normsxyz", "]"}]}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"j", ",", " ", "1", ",", " ", 
            RowBox[{"Length", "[", 
             RowBox[{"symop", "[", 
              RowBox[{"[", "i", "]"}], "]"}], " ", "]"}]}], " ", "}"}]}], 
         "]"}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{
         RowBox[{
         "test", " ", "whether", " ", "a", " ", "particular", " ", "facet", 
          " ", 
          RowBox[{"family", "'"}], "s", " ", "gamma", " ", "is", " ", "too", 
          " ", "large", " ", "to", " ", "appear", " ", "on", " ", "the", " ", 
          "wulff", " ", "shape"}], ",", " ", 
         RowBox[{
          RowBox[{
           RowBox[{
           "and", " ", "remove", " ", "them", " ", "from", " ", "the", " ", 
            "list", " ", "of", " ", "facets"}], " ", "&"}], " ", "their", " ",
           "properties"}]}], " ", "*)"}], "\[IndentingNewLine]", 
       RowBox[{"eliminatedQ", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"outsideWulffCompiled", "[", 
           RowBox[{
            RowBox[{"gams", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], ",", " ", 
            RowBox[{"gams", "[", 
             RowBox[{"[", 
              RowBox[{"k", ",", " ", "1"}], "]"}], "]"}]}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"k", ",", " ", 
            RowBox[{"Length", "[", "gams", "]"}]}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"k", " ", "\[Equal]", " ", "1"}], ",", " ", 
              RowBox[{"Table", "[", 
               RowBox[{"a", ",", " ", 
                RowBox[{"{", 
                 RowBox[{"a", ",", " ", "2", ",", " ", 
                  RowBox[{"Length", "[", "gams", "]"}]}], "}"}]}], "]"}], ",",
               " ", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"k", " ", "\[Equal]", " ", 
                 RowBox[{"Length", "[", "gams", "]"}]}], ",", " ", 
                RowBox[{"Table", "[", 
                 RowBox[{"a", ",", " ", 
                  RowBox[{"{", 
                   RowBox[{"a", ",", " ", "1", ",", " ", 
                    RowBox[{"k", "-", "1"}]}], "}"}]}], "]"}], ",", " ", 
                RowBox[{"Join", "[", 
                 RowBox[{
                  RowBox[{"Table", "[", 
                   RowBox[{"a", ",", " ", 
                    RowBox[{"{", 
                    RowBox[{"a", ",", " ", 
                    RowBox[{"k", "-", "1"}]}], "}"}]}], "]"}], ",", " ", 
                  RowBox[{"Table", "[", 
                   RowBox[{"a", ",", " ", 
                    RowBox[{"{", 
                    RowBox[{"a", ",", " ", 
                    RowBox[{"k", "+", "1"}], ",", " ", 
                    RowBox[{"Length", "[", "gams", "]"}]}], "}"}]}], "]"}]}], 
                 "]"}]}], "]"}]}], "]"}]}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"j", ",", " ", 
            RowBox[{"Length", "[", 
             RowBox[{"gams", "[", 
              RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"survivingGroups", " ", "=", " ", 
        RowBox[{"Select", "[", 
         RowBox[{
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"MemberQ", "[", 
               RowBox[{
                RowBox[{"Flatten", "[", 
                 RowBox[{"eliminatedQ", "[", 
                  RowBox[{"[", "i", "]"}], "]"}], "]"}], ",", " ", "True"}], 
               "]"}], ",", " ", "Null", ",", " ", "i"}], "]"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"i", ",", " ", 
              RowBox[{"Length", "[", "gams", "]"}]}], "}"}]}], "]"}], ",", 
          " ", "NumericQ"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"newColors", " ", "=", " ", 
        RowBox[{"Flatten", "@", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"colz", "[", 
            RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", "survivingGroups"}], "}"}]}], "]"}]}]}], 
       ";", "\[IndentingNewLine]", 
       RowBox[{"newGsPre", " ", "=", " ", 
        RowBox[{"Flatten", "[", 
         RowBox[{
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"gams", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], ",", " ", "i"}], 
             "}"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"i", ",", " ", "survivingGroups"}], "}"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"j", ",", " ", 
              RowBox[{"Length", "[", 
               RowBox[{"gams", "[", 
                RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}], ",", 
          " ", "1"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"newGs", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Join", "[", 
           RowBox[{
            RowBox[{"newGsPre", "[", 
             RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
            RowBox[{"{", "i", "}"}]}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "newGsPre", "]"}]}], "}"}]}], "]"}]}], ";",
        "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{
         RowBox[{
         "find", " ", "the", " ", "nearest", " ", "neighbors", " ", "to", " ",
           "each", " ", "facet", " ", "on", " ", "the", " ", "wulf", " ", 
          RowBox[{"shape", ".", " ", "then"}], " ", "find", " ", "all", " ", 
          "possible", " ", "vertices", " ", "composed", " ", "of", " ", "3", 
          " ", "facets"}], ",", " ", 
         RowBox[{
         "where", " ", "the", " ", "3", " ", "facets", " ", "are", " ", 
          "nearest", " ", "neighbors"}]}], " ", "*)"}], "\[IndentingNewLine]", 
       RowBox[{"neighbors", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"neighborQ", "[", 
           RowBox[{"i", ",", " ", "newGs"}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "newGs", "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"verts", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"findvert", "[", 
             RowBox[{
              RowBox[{"newGs", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
              RowBox[{"newGs", "[", 
               RowBox[{"[", 
                RowBox[{
                 RowBox[{"neighbors", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], ",", " ", 
                 "1"}], "]"}], "]"}], ",", " ", 
              RowBox[{"newGs", "[", 
               RowBox[{"[", 
                RowBox[{
                 RowBox[{"neighbors", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", " ", "k"}], "]"}], "]"}], ",", " ", 
                 "1"}], "]"}], "]"}]}], "]"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"newGs", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], ",", " ", 
              RowBox[{"neighbors", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], ",", " ", 
              RowBox[{"neighbors", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "k"}], "]"}], "]"}]}], "}"}]}], "}"}], 
          ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "newGs", "]"}]}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"j", ",", " ", 
            RowBox[{
             RowBox[{"Length", "[", 
              RowBox[{"neighbors", "[", 
               RowBox[{"[", "i", "]"}], "]"}], "]"}], "-", "1"}]}], "}"}], 
          ",", " ", 
          RowBox[{"{", 
           RowBox[{"k", ",", " ", 
            RowBox[{"j", "+", "1"}], ",", " ", 
            RowBox[{"Length", "[", 
             RowBox[{"neighbors", "[", 
              RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"verts2", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Select", "[", 
           RowBox[{
            RowBox[{"Flatten", "[", 
             RowBox[{
              RowBox[{"verts", "[", 
               RowBox[{"[", "i", "]"}], "]"}], ",", " ", "1"}], "]"}], ",", 
            " ", 
            RowBox[{
             RowBox[{"VectorQ", "[", 
              RowBox[{"#", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "]"}], " ", "&"}]}], "]"}], 
          ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "verts", "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{
        "select", " ", "only", " ", "the", " ", "vertices", " ", "that", " ", 
         "fall", " ", "on", " ", "the", " ", "wulff", " ", "shape", " ", "by",
          " ", "eliminating", " ", "those", " ", "that", " ", "are", " ", 
         "too", " ", "far", " ", "away"}], " ", "*)"}], "\[IndentingNewLine]", 
       RowBox[{"vertTest", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Select", "[", 
           RowBox[{
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"MemberQ", "[", 
                 RowBox[{
                  RowBox[{"Table", "[", 
                   RowBox[{
                    RowBox[{"outsideWulffCompiled", "[", 
                    RowBox[{
                    RowBox[{"newGs", "[", 
                    RowBox[{"[", 
                    RowBox[{"j", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
                    RowBox[{"verts2", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "k", ",", " ", "1"}], "]"}], 
                    "]"}]}], "]"}], ",", " ", 
                    RowBox[{"{", 
                    RowBox[{"j", ",", " ", 
                    RowBox[{"Length", "[", "newGs", "]"}]}], "}"}]}], "]"}], 
                  ",", " ", "True"}], "]"}], ",", " ", "Null", ",", " ", 
                RowBox[{"verts2", "[", 
                 RowBox[{"[", 
                  RowBox[{"i", ",", " ", "k"}], "]"}], "]"}]}], "]"}], ",", 
              "  ", 
              RowBox[{"{", 
               RowBox[{"k", ",", " ", 
                RowBox[{"Length", "[", 
                 RowBox[{"verts2", "[", 
                  RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}], 
            ",", " ", 
            RowBox[{
             RowBox[{"!", 
              RowBox[{"SameQ", "[", 
               RowBox[{"Null", ",", " ", "#"}], "]"}]}], " ", "&"}]}], "]"}], 
          ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "verts2", "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{
        "the", " ", "vertices", " ", "are", " ", "initially", " ", "in", " ", 
         "a", " ", "random", " ", 
         RowBox[{"order", ".", " ", "the"}], " ", "following", " ", "puts", 
         " ", "them", " ", "in", " ", "order", " ", "so", " ", "a", " ", 
         "polygon", " ", "can", " ", "be", " ", "formed", " ", "with", " ", 
         "them", " ", "by", " ", "rotating", " ", "them", " ", "to", " ", 
         "be", " ", "parallel", " ", "to", " ", "the", " ", "xy", " ", 
         "plane", " ", "and", " ", "then", " ", "sorting", " ", "them", " ", 
         "by", " ", "ArcTan"}], " ", "*)"}], "\[IndentingNewLine]", 
       RowBox[{"rotMats", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{
               RowBox[{"newGs", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ".", 
               RowBox[{"{", 
                RowBox[{"0.", ",", " ", "0.", ",", " ", "1."}], "}"}]}], "/", 
              
              RowBox[{"Norm", "[", 
               RowBox[{"newGs", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "]"}]}], " ", 
             "\[Equal]", " ", 
             RowBox[{"-", "1"}]}], ",", " ", 
            RowBox[{"RotationMatrix", "[", 
             RowBox[{"Pi", ",", " ", 
              RowBox[{"{", 
               RowBox[{"1.", ",", " ", "0.", ",", " ", "0."}], "}"}]}], "]"}],
             ",", 
            RowBox[{"RotationMatrix", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"newGs", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
               RowBox[{"{", 
                RowBox[{"0.", ",", " ", "0.", ",", " ", "1."}], "}"}]}], 
              "}"}], "]"}]}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "newGs", "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"rotatedVerts", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"rotMats", "[", 
              RowBox[{"[", "i", "]"}], "]"}], ".", 
             RowBox[{"vertTest", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "j", ",", " ", "1"}], "]"}], "]"}]}], 
            ",", " ", "j"}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "vertTest", "]"}]}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"j", ",", " ", 
            RowBox[{"Length", "[", 
             RowBox[{"vertTest", "[", 
              RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"sortedVerts", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Sort", "[", 
           RowBox[{
            RowBox[{"rotatedVerts", "[", 
             RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"ArcTan", "[", 
               RowBox[{
                RowBox[{"#1", "[", 
                 RowBox[{"[", 
                  RowBox[{"1", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
                RowBox[{"#1", "[", 
                 RowBox[{"[", 
                  RowBox[{"1", ",", " ", "2"}], "]"}], "]"}]}], "]"}], " ", 
              ">", " ", 
              RowBox[{"ArcTan", "[", 
               RowBox[{
                RowBox[{"#2", "[", 
                 RowBox[{"[", 
                  RowBox[{"1", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
                RowBox[{"#2", "[", 
                 RowBox[{"[", 
                  RowBox[{"1", ",", " ", "2"}], "]"}], "]"}]}], "]"}]}], " ", 
             "&"}]}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "rotatedVerts", "]"}]}], "}"}]}], "]"}]}], 
       ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{"this", " ", "generates", " ", "the", " ", "graphics"}], " ", 
        "*)"}], "\[IndentingNewLine]", 
       RowBox[{"wulffshape", " ", "=", " ", 
        RowBox[{"Graphics3D", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Opacity", "[", "opacity", "]"}], ",", 
            RowBox[{"Flatten", "[", 
             RowBox[{
              RowBox[{"Table", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"Flatten", "[", "newColors", "]"}], "[", 
                   RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
                  RowBox[{"Polygon", "[", 
                   RowBox[{"Join", "[", 
                    RowBox[{
                    RowBox[{"Table", "[", 
                    RowBox[{
                    RowBox[{"vertTest", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", 
                    RowBox[{"sortedVerts", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "j", ",", " ", "2"}], "]"}], "]"}],
                     ",", " ", "1"}], "]"}], "]"}], ",", " ", 
                    RowBox[{"{", 
                    RowBox[{"j", ",", " ", 
                    RowBox[{"Length", "[", 
                    RowBox[{"vertTest", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}], 
                    ",", " ", 
                    RowBox[{"{", 
                    RowBox[{"vertTest", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", 
                    RowBox[{"sortedVerts", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "1", ",", " ", "2"}], "]"}], "]"}],
                     ",", " ", "1"}], "]"}], "]"}], "}"}]}], "]"}], "]"}]}], 
                 "}"}], ",", " ", 
                RowBox[{"{", 
                 RowBox[{"i", ",", " ", 
                  RowBox[{"Length", "[", "vertTest", "]"}]}], "}"}]}], "]"}], 
              ",", " ", "1"}], "]"}]}], "}"}], ",", 
          RowBox[{"Lighting", "\[Rule]", "\"\<Neutral\>\""}], ",", " ", 
          RowBox[{"ViewPoint", " ", "\[Rule]", " ", 
           RowBox[{"10", " ", "vpr"}]}], ",", " ", 
          RowBox[{"ViewVertical", " ", "\[Rule]", " ", "vvr"}], ",", " ", 
          RowBox[{"ImageSize", "\[Rule]", " ", "Large"}], ",", 
          RowBox[{"Boxed", "\[Rule]", " ", "False"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"!", "showAxes"}], ",", "wulffshape", ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Show", "[", 
          RowBox[{"wulffshape", ",", " ", 
           RowBox[{"Graphics3D", "[", 
            RowBox[{"{", 
             RowBox[{"Red", ",", 
              RowBox[{"Arrowheads", "[", "0.05", "]"}], ",", 
              RowBox[{"Arrow", "[", 
               RowBox[{"Tube", "[", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"0", ",", " ", "0", ",", " ", "0"}], "}"}], ",", 
                   " ", 
                   RowBox[{"2", " ", 
                    RowBox[{"Normalize", "[", "avect", "]"}]}]}], "}"}], ",", 
                 "0.025"}], "]"}], "]"}]}], "}"}], "]"}], ",", " ", 
           RowBox[{"Graphics3D", "[", 
            RowBox[{"{", 
             RowBox[{"Green", ",", 
              RowBox[{"Arrowheads", "[", "0.05", "]"}], ",", 
              RowBox[{"Arrow", "[", 
               RowBox[{"Tube", "[", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"0", ",", " ", "0", ",", " ", "0"}], "}"}], ",", 
                   " ", 
                   RowBox[{"2", " ", 
                    RowBox[{"Normalize", "[", "bvect", "]"}]}]}], "}"}], ",", 
                 "0.025"}], "]"}], "]"}]}], "}"}], "]"}], ",", " ", 
           RowBox[{"Graphics3D", "[", 
            RowBox[{"{", 
             RowBox[{"Blue", ",", 
              RowBox[{"Arrowheads", "[", "0.05", "]"}], ",", 
              RowBox[{"Arrow", "[", 
               RowBox[{"Tube", "[", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"0", ",", " ", "0", ",", " ", "0"}], "}"}], ",", 
                   " ", 
                   RowBox[{"2", " ", 
                    RowBox[{"Normalize", "[", "cvect", "]"}]}]}], "}"}], ",", 
                 "0.025"}], "]"}], "]"}]}], "}"}], "]"}]}], "]"}]}], 
        "\[IndentingNewLine]", "]"}]}]}], "\[IndentingNewLine]", "]"}]}], 
   "\[IndentingNewLine]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.518281844344057*^9, 3.518281848965012*^9}, {
   3.518283079343421*^9, 3.518283086508216*^9}, {3.518283272062297*^9, 
   3.518283278564147*^9}, {3.5189723649387703`*^9, 3.5189724020777063`*^9}, {
   3.518972608740649*^9, 3.518972619100197*^9}, {3.5189726501988373`*^9, 
   3.5189727135244703`*^9}, {3.518972745570682*^9, 3.518972914106412*^9}, {
   3.519059070651495*^9, 3.5190590714444447`*^9}, 3.541756322046875*^9, {
   3.541759002654953*^9, 3.541759003295383*^9}, {3.541759269915968*^9, 
   3.541759276124866*^9}, {3.541760395767477*^9, 3.541760452540688*^9}, {
   3.5417610068920393`*^9, 3.5417610394852533`*^9}, {3.5417612626509047`*^9, 
   3.541761279857033*^9}, {3.546623968855193*^9, 3.5466242776911993`*^9}, {
   3.547215675258374*^9, 3.5472157359023533`*^9}, {3.54721680738655*^9, 
   3.547216816159371*^9}, {3.547216905403667*^9, 3.54721696554393*^9}}]
}, Closed]],

Cell[CellGroupData[{

Cell["Wulffmaker", "Section",
 CellChangeTimes->{{3.541759252542234*^9, 3.5417592560275784`*^9}, {
  3.5472170869784193`*^9, 3.547217088496443*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "this", " ", "generates", " ", "the", " ", "user", " ", "interface"}], " ",
    "*)"}], "\[IndentingNewLine]", 
  RowBox[{"Module", "[", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "normal", ",", "magnitudes", ",", "colors", ",", "a", ",", "b", ",", "c",
       ",", "\[Alpha]", ",", "\[Beta]", ",", "\[Gamma]"}], "}"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"With", "[", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"argument", " ", "=", 
           RowBox[{"{", "\[IndentingNewLine]", " ", 
            RowBox[{
             RowBox[{"Table", "[", 
              RowBox[{
               RowBox[{"normal", "[", 
                RowBox[{"i", ",", "j"}], "]"}], ",", " ", 
               RowBox[{"{", 
                RowBox[{"i", ",", " ", "1", ",", " ", "n"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"j", ",", "1", ",", "3"}], "}"}]}], "]"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Table", "[", 
              RowBox[{
               RowBox[{"magnitudes", "[", "i", "]"}], ",", 
               RowBox[{"{", 
                RowBox[{"i", ",", "1", ",", "n"}], "}"}]}], "]"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Table", "[", 
              RowBox[{
               RowBox[{"colors", "[", "i", "]"}], ",", 
               RowBox[{"{", 
                RowBox[{"i", ",", "1", ",", "n"}], "}"}]}], "]"}], ",", 
             "\[IndentingNewLine]", "currentSymmetry", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"geomgen", "[", "symmetry", "]"}]}], 
            "\[IndentingNewLine]", "}"}]}], ",", "\[IndentingNewLine]", 
          RowBox[{"gc", "=", " ", 
           RowBox[{"whichcontrols", "[", "symmetry", "]"}]}], ",", 
          "\[IndentingNewLine]", " ", 
          RowBox[{"controls", " ", "=", " ", 
           RowBox[{"Sequence", " ", "@@", "\[IndentingNewLine]", 
            RowBox[{"Riffle", "[", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"Flatten", "[", "\[IndentingNewLine]", " ", 
               RowBox[{
                RowBox[{"Table", "[", "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{"Which", "[", "\[IndentingNewLine]", 
                   RowBox[{
                    RowBox[{"j", "\[LessEqual]", " ", "3"}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"normal", "[", 
                    RowBox[{"i", ",", "j"}], "]"}], ",", " ", 
                    RowBox[{"pickIndex", "[", 
                    RowBox[{"i", ",", "j"}], "]"}], ",", 
                    RowBox[{"hkl", "[", "j", "]"}]}], "}"}], ",", 
                    RowBox[{"ControlPlacement", "\[Rule]", " ", "Left"}]}], 
                    "}"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"j", "\[Equal]", " ", "4"}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"colors", "[", "i", "]"}], ",", 
                    RowBox[{"pickColor", "[", "i", "]"}], ",", "\"\<\>\""}], 
                    "}"}], ",", 
                    RowBox[{"Hue", "[", "0.1", "]"}], ",", 
                    RowBox[{"ControlPlacement", "\[Rule]", " ", "Left"}]}], 
                    "}"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"j", "\[GreaterEqual]", " ", "5"}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"magnitudes", "[", "i", "]"}], ",", 
                    RowBox[{"pickGamma", "[", "i", "]"}], ",", 
                    RowBox[{"Text", "[", 
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<\[Gamma]\>\"", ",", "16"}], "]"}], "]"}]}], 
                    "}"}], ",", " ", "0.4", ",", " ", "2", ",", 
                    RowBox[{"Appearance", "\[Rule]", " ", "\"\<Labeled\>\""}],
                     ",", 
                    RowBox[{"ControlPlacement", "\[Rule]", " ", "Left"}]}], 
                    "}"}]}], "\[IndentingNewLine]", "]"}], ",", 
                  "\[IndentingNewLine]", " ", 
                  RowBox[{"{", 
                   RowBox[{"i", ",", " ", "1", ",", " ", "n"}], "}"}], ",", 
                  "\[IndentingNewLine]", 
                  RowBox[{"{", 
                   RowBox[{"j", ",", "1", ",", "5"}], "}"}]}], 
                 "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", ",", 
                "\[IndentingNewLine]", "1"}], "]"}], "\[IndentingNewLine]", 
              ",", "Delimiter", ",", "6"}], "\[IndentingNewLine]", 
             "]"}]}]}]}], "\[IndentingNewLine]", "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Manipulate", "[", " ", 
         RowBox[{
          RowBox[{"Manipulate", "[", 
           RowBox[{
            RowBox[{"wulffmaker", "[", " ", 
             RowBox[{
             "argument", ",", "opacity", ",", "showAxes", ",", " ", "vp", ",",
               " ", "vv"}], "]"}], ",", " ", "controls"}], "]"}], ",", "gc"}],
          "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"symmetry", ",", "defaultLattice", ",", 
          RowBox[{"Text", "[", 
           RowBox[{"Style", "[", 
            RowBox[{"\"\<Lattice\>\"", ",", "16"}], "]"}], "]"}]}], "}"}], 
        ",", "symList"}], "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"currentSymmetry", ",", "defaultPointGroup", ",", 
          RowBox[{"Text", "[", 
           RowBox[{"Style", "[", 
            RowBox[{"\"\<Point Group\>\"", ",", "16"}], "]"}], "]"}]}], "}"}],
         ",", " ", 
        RowBox[{"groupSet", "[", "symmetry", "]"}], ",", 
        RowBox[{"ControlType", "\[Rule]", " ", "PopupMenu"}]}], "}"}], ",", 
      "\[IndentingNewLine]", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"n", ",", "defaultn", ",", 
          RowBox[{"Text", "[", 
           RowBox[{"Style", "[", 
            RowBox[{"\"\<Facet Families\>\"", ",", "16"}], "]"}], "]"}]}], 
         "}"}], ",", 
        RowBox[{"Range", "[", "30", "]"}]}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"opacity", ",", "defaultOpacity", ",", 
          RowBox[{"Text", "[", 
           RowBox[{"Style", "[", 
            RowBox[{"\"\<Opacity\>\"", ",", "16"}], "]"}], "]"}]}], "}"}], 
        ",", "0", ",", "1"}], "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"showAxes", ",", "defaultShowAxes", ",", 
          RowBox[{"Text", "[", 
           RowBox[{"Style", "[", 
            RowBox[{"\"\<Show Axes\>\"", ",", "16"}], "]"}], "]"}]}], "}"}], 
        ",", 
        RowBox[{"{", 
         RowBox[{"True", ",", "False"}], "}"}]}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"vp", ",", " ", "defaultZA", ",", " ", 
          RowBox[{"Text", "[", 
           RowBox[{"Style", "[", 
            RowBox[{"\"\<Zone Axis\>\"", ",", " ", "16"}], "]"}], "]"}]}], 
         "}"}], ",", " ", 
        RowBox[{"ControlType", " ", "\[Rule]", " ", "InputField"}], ",", " ", 
        
        RowBox[{"ControlPlacement", " ", "\[Rule]", " ", "Top"}]}], "}"}], 
      ",", " ", "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"vv", ",", " ", "defaultVert", ",", " ", 
          RowBox[{"Text", "[", 
           RowBox[{"Style", "[", 
            RowBox[{"\"\<Vertical Direction\>\"", ",", " ", "16"}], "]"}], 
           "]"}]}], "}"}], ",", " ", 
        RowBox[{"ControlType", " ", "\[Rule]", " ", "InputField"}], ",", " ", 
        
        RowBox[{"ControlPlacement", " ", "\[Rule]", " ", "Top"}]}], "}"}], 
      ",", "\[IndentingNewLine]", 
      RowBox[{"FrameLabel", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"None", ",", "None", ",", 
         RowBox[{"Text", "[", 
          RowBox[{"Style", "[", 
           RowBox[{"\"\<Wulffmaker\>\"", ",", "Italic", ",", "32"}], "]"}], 
          "]"}]}], "}"}]}], ",", 
      RowBox[{"SaveDefinitions", "\[Rule]", " ", "True"}], ",", 
      RowBox[{"BaseStyle", "\[Rule]", " ", "Large"}]}], "]"}]}], 
   "\[IndentingNewLine]", "]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.54176016012558*^9, 3.541760165934205*^9}, {
   3.541760349643058*^9, 3.541760371241598*^9}, {3.54176046708435*^9, 
   3.5417604720989532`*^9}, {3.54176059138869*^9, 3.541760657726593*^9}, {
   3.541760715666634*^9, 3.541760850508567*^9}, {3.541760898661131*^9, 
   3.541760912505417*^9}, {3.5417609458097563`*^9, 3.541760986536326*^9}, {
   3.541761068261409*^9, 3.541761069101313*^9}, {3.541761195377431*^9, 
   3.541761243443984*^9}, {3.54176129557321*^9, 3.541761326468266*^9}, {
   3.5437441412503357`*^9, 3.543744171974971*^9}, {3.5439382624350452`*^9, 
   3.543938263535564*^9}, {3.54635941971443*^9, 3.5463594642802277`*^9}, {
   3.546622585392272*^9, 3.5466225889998083`*^9}, {3.5472157520090923`*^9, 
   3.547215782652728*^9}, 3.547215900013783*^9, {3.5472159508633833`*^9, 
   3.547215951317255*^9}, {3.5472169788418427`*^9, 3.5472169859418488`*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`currentSymmetry$$ = 
    "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m", $CellContext`n$$ = 
    3, $CellContext`opacity$$ = 0.85, $CellContext`showAxes$$ = 
    True, $CellContext`symmetry$$ = "Cubic", $CellContext`vp$$ = {5, 1, 
    1}, $CellContext`vv$$ = {0, 0, 1}, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`symmetry$$], "Cubic", 
       Text[
        Style["Lattice", 16]]}, {
      "Cubic", "Hexagonal", "Tetragonal", "Orthorhombic", "Monoclinic", 
       "Triclinic"}}, {{
       Hold[$CellContext`currentSymmetry$$], 
       "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m", 
       Text[
        Style["Point Group", 16]]}, 
      Dynamic[
       $CellContext`groupSet[$CellContext`symmetry$$]]}, {{
       Hold[$CellContext`n$$], 3, 
       Text[
        Style["Facet Families", 16]]}, {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12,
       13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 
      30}}, {{
       Hold[$CellContext`opacity$$], 0.85, 
       Text[
        Style["Opacity", 16]]}, 0, 1}, {{
       Hold[$CellContext`showAxes$$], True, 
       Text[
        Style["Show Axes", 16]]}, {True, False}}, {{
       Hold[$CellContext`vp$$], {5, 1, 1}, 
       Text[
        Style["Zone Axis", 16]]}}, {{
       Hold[$CellContext`vv$$], {0, 0, 1}, 
       Text[
        Style["Vertical Direction", 16]]}}}, Typeset`size$$ = {
    1129., {361., 371.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`symmetry$12691$$ = 
    0, $CellContext`n$12692$$ = 0, $CellContext`opacity$12693$$ = 
    0, $CellContext`showAxes$12694$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`currentSymmetry$$ = 
        "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m", $CellContext`n$$ = 
        3, $CellContext`opacity$$ = 0.85, $CellContext`showAxes$$ = 
        True, $CellContext`symmetry$$ = 
        "Cubic", $CellContext`vp$$ = {5, 1, 1}, $CellContext`vv$$ = {0, 0, 
         1}}, "ControllerVariables" :> {
        Hold[$CellContext`symmetry$$, $CellContext`symmetry$12691$$, 0], 
        Hold[$CellContext`n$$, $CellContext`n$12692$$, 0], 
        Hold[$CellContext`opacity$$, $CellContext`opacity$12693$$, 0], 
        Hold[$CellContext`showAxes$$, $CellContext`showAxes$12694$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> With[{$CellContext`argument$ = {
           Table[
            $CellContext`normal$12689[$CellContext`i, $CellContext`j], \
{$CellContext`i, 1, $CellContext`n$$}, {$CellContext`j, 1, 3}], 
           Table[
            $CellContext`magnitudes$12689[$CellContext`i], {$CellContext`i, 
             1, $CellContext`n$$}], 
           Table[
            $CellContext`colors$12689[$CellContext`i], {$CellContext`i, 
             1, $CellContext`n$$}], $CellContext`currentSymmetry$$, 
           $CellContext`geomgen[$CellContext`symmetry$$]}, $CellContext`gc$ = \
$CellContext`whichcontrols[$CellContext`symmetry$$], $CellContext`controls$ = 
         Apply[Sequence, 
           Riffle[
            Flatten[
             Table[
              Which[$CellContext`j <= 3, {{
                 $CellContext`normal$12689[$CellContext`i, $CellContext`j], 
                 $CellContext`pickIndex[$CellContext`i, $CellContext`j], 
                 $CellContext`hkl[$CellContext`j]}, ControlPlacement -> 
                Left}, $CellContext`j == 4, {{
                 $CellContext`colors$12689[$CellContext`i], 
                 $CellContext`pickColor[$CellContext`i], ""}, 
                Hue[0.1], ControlPlacement -> Left}, $CellContext`j >= 5, {{
                 $CellContext`magnitudes$12689[$CellContext`i], 
                 $CellContext`pickGamma[$CellContext`i], 
                 Text[
                  Style["\[Gamma]", 16]]}, 0.4, 2, Appearance -> "Labeled", 
                ControlPlacement -> Left}], {$CellContext`i, 
               1, $CellContext`n$$}, {$CellContext`j, 1, 5}], 1], Delimiter, 
            6]]}, 
        Manipulate[
         Manipulate[
          $CellContext`wulffmaker[$CellContext`argument$, \
$CellContext`opacity$$, $CellContext`showAxes$$, $CellContext`vp$$, \
$CellContext`vv$$], $CellContext`controls$], $CellContext`gc$]], 
      "Specifications" :> {{{$CellContext`symmetry$$, "Cubic", 
          Text[
           Style["Lattice", 16]]}, {
         "Cubic", "Hexagonal", "Tetragonal", "Orthorhombic", "Monoclinic", 
          "Triclinic"}}, {{$CellContext`currentSymmetry$$, 
          "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m", 
          Text[
           Style["Point Group", 16]]}, 
         Dynamic[
          $CellContext`groupSet[$CellContext`symmetry$$]], ControlType -> 
         PopupMenu}, {{$CellContext`n$$, 3, 
          Text[
           Style["Facet Families", 16]]}, {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 
         12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 
         29, 30}}, {{$CellContext`opacity$$, 0.85, 
          Text[
           Style["Opacity", 16]]}, 0, 1}, {{$CellContext`showAxes$$, True, 
          Text[
           Style["Show Axes", 16]]}, {
         True, False}}, {{$CellContext`vp$$, {5, 1, 1}, 
          Text[
           Style["Zone Axis", 16]]}, ControlType -> InputField, 
         ControlPlacement -> Top}, {{$CellContext`vv$$, {0, 0, 1}, 
          Text[
           Style["Vertical Direction", 16]]}, ControlType -> InputField, 
         ControlPlacement -> Top}}, "Options" :> {FrameLabel -> {None, None, 
          Text[
           Style["Wulffmaker", Italic, 32]]}, BaseStyle -> Large}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{1180., {512., 523.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({
      Attributes[$CellContext`normal$12689] = {Temporary}, $CellContext`i = 1,
        Attributes[$CellContext`magnitudes$12689] = {Temporary}, 
       Attributes[$CellContext`colors$12689] = {
        Temporary}, $CellContext`geomgen[
         Pattern[$CellContext`sym, 
          Blank[]]] := If[
         StringMatchQ["Hexagonal", $CellContext`sym], 
         $CellContext`hexagonalconstants[$CellContext`sym], 
         If[
          StringMatchQ["Cubic", $CellContext`sym], 
          $CellContext`cubicconstants[$CellContext`sym], 
          If[
           StringMatchQ["Tetragonal", $CellContext`sym], 
           $CellContext`tetragonalconstants[$CellContext`sym], 
           If[
            StringMatchQ["Orthorhombic", $CellContext`sym], 
            $CellContext`orthorhombicconstants[$CellContext`sym], 
            If[
             StringMatchQ["Monoclinic", $CellContext`sym], 
             $CellContext`monoclinicconstants[$CellContext`sym], 
             $CellContext`triclinicconstants[$CellContext`sym]]]]]], \
$CellContext`hexagonalconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := {$CellContext`a, $CellContext`a, $CellContext`c, 90, 
         90, 120}, $CellContext`cubicconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := {$CellContext`a, $CellContext`a, $CellContext`a, 90, 
         90, 90}, $CellContext`tetragonalconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := {$CellContext`a, $CellContext`a, $CellContext`c, 90, 
         90, 90}, $CellContext`orthorhombicconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := {$CellContext`a, $CellContext`b, $CellContext`c, 90, 
         90, 90}, $CellContext`monoclinicconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := {$CellContext`a, $CellContext`b, $CellContext`c, 
         90, $CellContext`\[Beta], 90}, $CellContext`triclinicconstants[
         Pattern[$CellContext`symmetry, 
          
          Blank[]]] := {$CellContext`a, $CellContext`b, $CellContext`c, \
$CellContext`\[Alpha], $CellContext`\[Beta], $CellContext`\[Gamma]}, \
$CellContext`whichcontrols[
         Pattern[$CellContext`sym, 
          Blank[]]] := If[
         StringMatchQ["Hexagonal", $CellContext`sym], 
         $CellContext`hexagonalcontrols[$CellContext`sym], 
         If[
          StringMatchQ["Cubic", $CellContext`sym], 
          $CellContext`cubiccontrols[$CellContext`sym], 
          If[
           StringMatchQ["Tetragonal", $CellContext`sym], 
           $CellContext`tetragonalcontrols[$CellContext`sym], 
           If[
            StringMatchQ["Orthorhombic", $CellContext`sym], 
            $CellContext`orthorhombiccontrols[$CellContext`sym], 
            If[
             StringMatchQ["Monoclinic", $CellContext`sym], 
             $CellContext`monocliniccontrols[$CellContext`sym], 
             $CellContext`tricliniccontrols[$CellContext`sym]]]]]], \
$CellContext`hexagonalcontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := 
       Sequence[{{$CellContext`a, 1, $CellContext`atext}, ControlPlacement -> 
          Right}, {{$CellContext`c, 1, $CellContext`ctext}, ControlPlacement -> 
          Right}], $CellContext`atext = Text[
         Style["a", 16]], $CellContext`ctext = Text[
         Style["c", 16]], $CellContext`cubiccontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := 
       Sequence[{{$CellContext`a, 1, $CellContext`atext}, ControlPlacement -> 
          Right}], $CellContext`tetragonalcontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := 
       Sequence[{{$CellContext`a, 1, $CellContext`atext}, ControlPlacement -> 
          Right}, {{$CellContext`c, 1, $CellContext`ctext}, ControlPlacement -> 
          Right}], $CellContext`orthorhombiccontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := 
       Sequence[{{$CellContext`a, 1, $CellContext`atext}, ControlPlacement -> 
          Right}, {{$CellContext`b, 1, $CellContext`btext}, ControlPlacement -> 
          Right}, {{$CellContext`c, 1, $CellContext`ctext}, ControlPlacement -> 
          Right}], $CellContext`btext = Text[
         Style["b", 16]], $CellContext`monocliniccontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := 
       Sequence[{{$CellContext`a, 1, $CellContext`atext}, ControlPlacement -> 
          Right}, {{$CellContext`b, 1, $CellContext`btext}, ControlPlacement -> 
          Right}, {{$CellContext`c, 1, $CellContext`ctext}, ControlPlacement -> 
          Right}, {{$CellContext`\[Beta], 90, $CellContext`\[Beta]text}, 
          ControlPlacement -> Right}], $CellContext`\[Beta]text = Text[
         Style["\[Beta]", 16]], $CellContext`tricliniccontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := 
       Sequence[{{$CellContext`a, 1, $CellContext`atext}, ControlPlacement -> 
          Right}, {{$CellContext`b, 1, $CellContext`btext}, ControlPlacement -> 
          Right}, {{$CellContext`c, 1, $CellContext`ctext}, ControlPlacement -> 
          Right}, {{$CellContext`\[Alpha], 90, $CellContext`\[Alpha]text}, 
          ControlPlacement -> 
          Right}, {{$CellContext`\[Beta], 90, $CellContext`\[Beta]text}, 
          ControlPlacement -> 
          Right}, {{$CellContext`\[Gamma], 90, $CellContext`\[Gamma]text}, 
          ControlPlacement -> Right}], $CellContext`\[Alpha]text = Text[
         Style["\[Alpha]", 16]], $CellContext`\[Gamma]text = Text[
         Style["\[Gamma]", 16]], $CellContext`pickIndex[
         Pattern[$CellContext`i, 
          Blank[]], 
         Pattern[$CellContext`j, 
          Blank[]]] := Which[$CellContext`i == 1, 
         Which[$CellContext`j == 1, 0, $CellContext`j == 2, 0, $CellContext`j == 
          3, 1, True, 1], $CellContext`i == 2, 
         Which[$CellContext`j == 1, 1, $CellContext`j == 2, 1, $CellContext`j == 
          3, 1, True, 1], $CellContext`i == 3, 
         Which[$CellContext`j == 1, 1, $CellContext`j == 2, 1, $CellContext`j == 
          3, 0, True, 1], True, 
         RandomInteger[{-3, 3}]], $CellContext`hkl[1] = Text[
         Style["h", Italic, 16]], $CellContext`hkl[2] = Text[
         Style["k", Italic, 16]], $CellContext`hkl[3] = Text[
         Style["l", Italic, 16]], $CellContext`pickColor[
         Pattern[$CellContext`i, 
          Blank[]]] := Which[$CellContext`i == 1, 
         Darker[Magenta], $CellContext`i == 2, 
         Darker[Cyan], $CellContext`i == 3, 
         Darker[Yellow], True, 
         Hue[
          RandomReal[], 1, 2/3]], $CellContext`pickGamma[
         Pattern[$CellContext`i, 
          Blank[]]] := 
       Which[$CellContext`i == 1, 1, $CellContext`i == 2, 1, $CellContext`i == 
         3, 1, True, 1], $CellContext`wulffmaker[
         Pattern[$CellContext`argument, 
          Blank[]], 
         Optional[
          Pattern[$CellContext`opacity, 
           Blank[]], 1], 
         Optional[
          Pattern[$CellContext`showAxes, 
           Blank[]], True], 
         Pattern[$CellContext`vpr, 
          Blank[]], 
         Pattern[$CellContext`vvr, 
          Blank[]]] := 
       Module[{$CellContext`norms, $CellContext`ds, $CellContext`colors, \
$CellContext`symstring, $CellContext`geometry, $CellContext`sym, \
$CellContext`geometr, $CellContext`aa, $CellContext`bb, $CellContext`cc, \
$CellContext`\[Alpha]\[Alpha], $CellContext`\[Beta]\[Beta], $CellContext`\
\[Gamma]\[Gamma], $CellContext`avect, $CellContext`bvect, $CellContext`cvect, \
$CellContext`normsr, $CellContext`normsxyz, $CellContext`symop, \
$CellContext`dmult, $CellContext`colz, $CellContext`gams, \
$CellContext`eliminatedQ, $CellContext`survivingGroups, \
$CellContext`newColors, $CellContext`newGsPre, $CellContext`newGs, \
$CellContext`neighbors, $CellContext`verts, $CellContext`verts2, \
$CellContext`vertTest, $CellContext`degs, $CellContext`axes, \
$CellContext`rotMats, $CellContext`rotatedVerts, $CellContext`sortedVerts, \
$CellContext`wulffshape}, $CellContext`norms = Table[
            Normalize[
             Part[$CellContext`argument, 1, $CellContext`i]], {$CellContext`i, 
             Length[
              Part[$CellContext`argument, 1]]}]; $CellContext`ds = 
          Part[$CellContext`argument, 2]; $CellContext`colors = 
          Part[$CellContext`argument, 3]; $CellContext`symstring = 
          Part[$CellContext`argument, 4]; $CellContext`geometry = 
          Part[$CellContext`argument, 
            5]; $CellContext`sym = \
$CellContext`symmetryMatrices[$CellContext`symstring]; $CellContext`aa = 
          Part[$CellContext`geometry, 1]; $CellContext`bb = 
          Part[$CellContext`geometry, 2]; $CellContext`cc = 
          Part[$CellContext`geometry, 3]; $CellContext`\[Alpha]\[Alpha] = 
          Part[$CellContext`geometry, 4] (Pi/
            180); $CellContext`\[Beta]\[Beta] = 
          Part[$CellContext`geometry, 5] (Pi/
            180); $CellContext`\[Gamma]\[Gamma] = 
          Part[$CellContext`geometry, 6] (Pi/
            180); $CellContext`avect = {$CellContext`aa 
            Sin[$CellContext`\[Beta]\[Beta]], 0, $CellContext`aa 
            Cos[$CellContext`\[Beta]\[Beta]]}; $CellContext`bvect = \
{$CellContext`bb Sin[$CellContext`\[Alpha]\[Alpha]] 
            Cos[$CellContext`\[Gamma]\[Gamma]], $CellContext`bb 
            Sin[$CellContext`\[Alpha]\[Alpha]] 
            Sin[$CellContext`\[Gamma]\[Gamma]], $CellContext`bb 
            Cos[$CellContext`\[Alpha]\[Alpha]]}; $CellContext`cvect = {
           0, 0, $CellContext`cc}; $CellContext`normsxyz = 
          Table[Part[$CellContext`norms, $CellContext`i, 
               1] $CellContext`avect + 
            Part[$CellContext`norms, $CellContext`i, 2] $CellContext`bvect + 
            Part[$CellContext`norms, $CellContext`i, 
               3] $CellContext`cvect, {$CellContext`i, 1, 
             Length[$CellContext`norms]}]; $CellContext`symop = Table[
            FixedPoint[Simplify[
              Union[
               Partition[
                Flatten[
                 Table[
                  Dot[$CellContext`sym, 
                   Part[#, $CellContext`i]], {$CellContext`i, 1, 
                   Length[#]}]], 3]]]& , 
             Dot[$CellContext`sym, 
              Part[$CellContext`normsxyz, $CellContext`j]]], {$CellContext`j, 
             1, 
             Length[$CellContext`normsxyz]}]; $CellContext`dmult = Table[
            Part[$CellContext`ds, $CellContext`i], {$CellContext`i, 1, 
             Length[$CellContext`ds]}, {$CellContext`j, 1, 
             Length[
              Part[$CellContext`symop, $CellContext`i]]}]; $CellContext`colz = 
          Table[
            Part[$CellContext`colors, $CellContext`i], {$CellContext`i, 1, 
             Length[$CellContext`ds]}, {$CellContext`j, 1, 
             Length[
              Part[$CellContext`symop, $CellContext`i]]}]; $CellContext`gams = 
          Table[Part[$CellContext`dmult, $CellContext`i, $CellContext`j] 
            Normalize[
              
              Part[$CellContext`symop, $CellContext`i, $CellContext`j]], \
{$CellContext`i, 1, 
             Length[$CellContext`normsxyz]}, {$CellContext`j, 1, 
             Length[
              
              Part[$CellContext`symop, $CellContext`i]]}]; \
$CellContext`eliminatedQ = Table[
            $CellContext`outsideWulffCompiled[
             Part[$CellContext`gams, $CellContext`i, $CellContext`j], 
             Part[$CellContext`gams, $CellContext`k, 1]], {$CellContext`k, 
             Length[$CellContext`gams]}, {$CellContext`i, 
             If[$CellContext`k == 1, 
              Table[$CellContext`a, {$CellContext`a, 2, 
                Length[$CellContext`gams]}], 
              If[$CellContext`k == Length[$CellContext`gams], 
               Table[$CellContext`a, {$CellContext`a, 1, $CellContext`k - 1}], 
               Join[
                Table[$CellContext`a, {$CellContext`a, $CellContext`k - 1}], 
                Table[$CellContext`a, {$CellContext`a, $CellContext`k + 1, 
                  Length[$CellContext`gams]}]]]]}, {$CellContext`j, 
             Length[
              
              Part[$CellContext`gams, $CellContext`i]]}]; \
$CellContext`survivingGroups = Select[
            Table[
             If[
              MemberQ[
               Flatten[
                Part[$CellContext`eliminatedQ, $CellContext`i]], True], 
              Null, $CellContext`i], {$CellContext`i, 
              Length[$CellContext`gams]}], NumericQ]; $CellContext`newColors = 
          Flatten[
            Table[
             
             Part[$CellContext`colz, $CellContext`i], {$CellContext`i, \
$CellContext`survivingGroups}]]; $CellContext`newGsPre = Flatten[
            Table[{
              
              Part[$CellContext`gams, $CellContext`i, $CellContext`j], \
$CellContext`i}, {$CellContext`i, $CellContext`survivingGroups}, \
{$CellContext`j, 
              Length[
               Part[$CellContext`gams, $CellContext`i]]}], 
            1]; $CellContext`newGs = Table[
            Join[
             
             Part[$CellContext`newGsPre, $CellContext`i], {$CellContext`i}], \
{$CellContext`i, 
             Length[$CellContext`newGsPre]}]; $CellContext`neighbors = Table[
            $CellContext`neighborQ[$CellContext`i, $CellContext`newGs], \
{$CellContext`i, 
             Length[$CellContext`newGs]}]; $CellContext`verts = Table[{
             $CellContext`findvert[
              Part[$CellContext`newGs, $CellContext`i, 1], 
              Part[$CellContext`newGs, 
               Part[$CellContext`neighbors, $CellContext`i, $CellContext`j], 
               1], 
              Part[$CellContext`newGs, 
               Part[$CellContext`neighbors, $CellContext`i, $CellContext`k], 
               1]], {
              Part[$CellContext`newGs, $CellContext`i, 3], 
              Part[$CellContext`neighbors, $CellContext`i, $CellContext`j], 
              
              Part[$CellContext`neighbors, $CellContext`i, $CellContext`k]}}, \
{$CellContext`i, 
             Length[$CellContext`newGs]}, {$CellContext`j, Length[
               Part[$CellContext`neighbors, $CellContext`i]] - 
             1}, {$CellContext`k, $CellContext`j + 1, 
             Length[
              
              Part[$CellContext`neighbors, $CellContext`i]]}]; \
$CellContext`verts2 = Table[
            Select[
             Flatten[
              Part[$CellContext`verts, $CellContext`i], 1], VectorQ[
              Part[#, 1]]& ], {$CellContext`i, 
             Length[$CellContext`verts]}]; $CellContext`vertTest = Table[
            Select[
             Table[
              If[
               MemberQ[
                Table[
                 $CellContext`outsideWulffCompiled[
                  Part[$CellContext`newGs, $CellContext`j, 1], 
                  
                  Part[$CellContext`verts2, $CellContext`i, $CellContext`k, 
                   1]], {$CellContext`j, 
                  Length[$CellContext`newGs]}], True], Null, 
               
               Part[$CellContext`verts2, $CellContext`i, $CellContext`k]], \
{$CellContext`k, 
               Length[
                Part[$CellContext`verts2, $CellContext`i]]}], Not[
             Null === #]& ], {$CellContext`i, 
             Length[$CellContext`verts2]}]; $CellContext`rotMats = Table[
            If[Dot[
                Part[$CellContext`newGs, $CellContext`i, 1], {0., 0., 1.}]/
              Norm[
               Part[$CellContext`newGs, $CellContext`i, 1]] == -1, 
             RotationMatrix[Pi, {1., 0., 0.}], 
             RotationMatrix[{
               Part[$CellContext`newGs, $CellContext`i, 1], {0., 0., 
               1.}}]], {$CellContext`i, 
             Length[$CellContext`newGs]}]; $CellContext`rotatedVerts = 
          Table[{
             Dot[
              Part[$CellContext`rotMats, $CellContext`i], 
              
              Part[$CellContext`vertTest, $CellContext`i, $CellContext`j, 
               1]], $CellContext`j}, {$CellContext`i, 
             Length[$CellContext`vertTest]}, {$CellContext`j, 
             Length[
              
              Part[$CellContext`vertTest, $CellContext`i]]}]; \
$CellContext`sortedVerts = Table[
            Sort[
             Part[$CellContext`rotatedVerts, $CellContext`i], ArcTan[
               Part[#, 1, 1], 
               Part[#, 1, 2]] > ArcTan[
               Part[#2, 1, 1], 
               Part[#2, 1, 2]]& ], {$CellContext`i, 
             Length[$CellContext`rotatedVerts]}]; $CellContext`wulffshape = 
          Graphics3D[{
             Opacity[$CellContext`opacity], 
             Flatten[
              Table[{
                Part[
                 Flatten[$CellContext`newColors], $CellContext`i], 
                Polygon[
                 Join[
                  Table[
                   Part[$CellContext`vertTest, $CellContext`i, 
                    
                    Part[$CellContext`sortedVerts, $CellContext`i, \
$CellContext`j, 2], 1], {$CellContext`j, 
                    Length[
                    Part[$CellContext`vertTest, $CellContext`i]]}], {
                   Part[$CellContext`vertTest, $CellContext`i, 
                    Part[$CellContext`sortedVerts, $CellContext`i, 1, 2], 
                    1]}]]}, {$CellContext`i, 
                Length[$CellContext`vertTest]}], 1]}, Lighting -> "Neutral", 
            ViewPoint -> 10 $CellContext`vpr, 
            ViewVertical -> $CellContext`vvr, ImageSize -> Large, Boxed -> 
            False]; If[
           Not[$CellContext`showAxes], $CellContext`wulffshape, 
           Show[$CellContext`wulffshape, 
            Graphics3D[{Red, 
              Arrowheads[0.05], 
              Arrow[
               Tube[{{0, 0, 0}, 2 Normalize[$CellContext`avect]}, 0.025]]}], 
            Graphics3D[{Green, 
              Arrowheads[0.05], 
              Arrow[
               Tube[{{0, 0, 0}, 2 Normalize[$CellContext`bvect]}, 0.025]]}], 
            Graphics3D[{Blue, 
              Arrowheads[0.05], 
              Arrow[
               
               Tube[{{0, 0, 0}, 2 Normalize[$CellContext`cvect]}, 
                0.025]]}]]]], $CellContext`symmetryMatrices["1"] = {{{1, 0, 
        0}, {0, 1, 0}, {0, 0, 1}}}, $CellContext`symmetryMatrices["2"] = {{{1,
         0, 0}, {0, 1, 0}, {0, 0, 1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 
        0, -1}}}, $CellContext`symmetryMatrices["222"] = {{{1, 0, 0}, {0, 1, 
        0}, {0, 0, 1}}, {{1, 0, 0}, {0, -1, 0}, {0, 0, -1}}, {{-1, 0, 0}, {0, 
        1, 0}, {0, 0, -1}}}, $CellContext`symmetryMatrices["23"] = {{{1, 0, 
        0}, {0, 1, 0}, {0, 0, 1}}, {{1, 0, 0}, {0, -1, 0}, {0, 0, -1}}, {{0, 
        0, 1}, {1, 0, 0}, {0, 1, 0}}}, $CellContext`symmetryMatrices[
        "2/m"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 1}}, {{-1, 0, 0}, {0, 1, 0}, {
        0, 0, -1}}, {{1, 0, 0}, {0, -1, 0}, {0, 0, 
        1}}}, $CellContext`symmetryMatrices[
        "3"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{(-1)/2, -Sqrt[3]/2, 0}, {Sqrt[3]/2, (-1)/2, 0}, {0, 0, 
          1}}}, $CellContext`symmetryMatrices[
        "32"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{(-1)/2, -Sqrt[3]/2, 0}, {Sqrt[3]/2, (-1)/2, 0}, {0, 0, 1}}, {{
         1, 0, 0}, {0, -1, 0}, {0, 0, -1}}}, $CellContext`symmetryMatrices[
        "3m"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{(-1)/2, -Sqrt[3]/2, 0}, {Sqrt[3]/2, (-1)/2, 0}, {0, 0, 
          1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}}, $CellContext`symmetryMatrices["4"] = {{{1, 0, 0}, {0, 1, 0}, {
        0, 0, 1}}, {{0, -1, 0}, {1, 0, 0}, {0, 0, 
        1}}}, $CellContext`symmetryMatrices["422"] = {{{1, 0, 0}, {0, 1, 0}, {
        0, 0, 1}}, {{0, -1, 0}, {1, 0, 0}, {0, 0, 1}}, {{1, 0, 0}, {0, -1, 
        0}, {0, 0, -1}}}, $CellContext`symmetryMatrices["432"] = {{{1, 0, 
        0}, {0, 1, 0}, {0, 0, 1}}, {{0, -1, 0}, {1, 0, 0}, {0, 0, 1}}, {{0, 0,
         1}, {1, 0, 0}, {0, 1, 0}}}, $CellContext`symmetryMatrices[
        "4/m"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 1}}, {{0, -1, 0}, {1, 0, 0}, {
        0, 0, 1}}, {{1, 0, 0}, {0, 1, 0}, {0, 
        0, -1}}}, $CellContext`symmetryMatrices["4mm"] = {{{1, 0, 0}, {0, 1, 
        0}, {0, 0, 1}}, {{0, -1, 0}, {1, 0, 0}, {0, 0, 1}}, {{-1, 0, 0}, {0, 
        1, 0}, {0, 0, 1}}}, $CellContext`symmetryMatrices["4/mmm"] = {{{1, 0, 
        0}, {0, 1, 0}, {0, 0, 1}}, {{0, -1, 0}, {1, 0, 0}, {0, 0, 1}}, {{1, 0,
         0}, {0, 1, 0}, {0, 0, -1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 0, 
        1}}}, $CellContext`symmetryMatrices[
        "6"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{1/2, -Sqrt[3]/2, 0}, {Sqrt[3]/2, 1/2, 0}, {0, 0, 
          1}}}, $CellContext`symmetryMatrices[
        "622"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{1/2, -Sqrt[3]/2, 0}, {Sqrt[3]/2, 1/2, 0}, {0, 0, 1}}, {{1, 0, 
         0}, {0, -1, 0}, {0, 0, -1}}}, $CellContext`symmetryMatrices[
        "6/m"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{1/2, -Sqrt[3]/2, 0}, {Sqrt[3]/2, 1/2, 0}, {0, 0, 1}}, {{1, 0, 
         0}, {0, 1, 0}, {0, 0, -1}}}, $CellContext`symmetryMatrices[
        "6mm"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{1/2, -Sqrt[3]/2, 0}, {Sqrt[3]/2, 1/2, 0}, {0, 0, 1}}, {{-1, 0,
          0}, {0, 1, 0}, {0, 0, 1}}}, $CellContext`symmetryMatrices[
        "6/mmm"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{1/2, -Sqrt[3]/2, 0}, {Sqrt[3]/2, 1/2, 0}, {0, 0, 1}}, {{1, 0, 
         0}, {0, 1, 0}, {0, 0, -1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}}, $CellContext`symmetryMatrices["Cubic"] = {{{1, 0, 0}, {0, 1, 
        0}, {0, 0, 1}}, {{1, 0, 0}, {0, -1, 0}, {0, 0, -1}}, {{0, 0, 1}, {1, 
        0, 0}, {0, 1, 0}}}, $CellContext`symmetryMatrices["m"] = {{{1, 0, 
        0}, {0, 1, 0}, {0, 0, 1}}, {{1, 0, 0}, {0, -1, 0}, {0, 0, 
        1}}}, $CellContext`symmetryMatrices["mm2"] = {{{1, 0, 0}, {0, 1, 0}, {
        0, 0, 1}}, {{1, 0, 0}, {0, -1, 0}, {0, 0, 1}}, {{-1, 0, 0}, {0, 1, 
        0}, {0, 0, 1}}}, $CellContext`symmetryMatrices["mmm"] = {{{1, 0, 0}, {
        0, 1, 0}, {0, 0, 1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 0, 1}}, {{1, 0, 
        0}, {0, -1, 0}, {0, 0, 1}}, {{1, 0, 0}, {0, 1, 0}, {0, 
        0, -1}}}, $CellContext`symmetryMatrices[
        "m\!\(\*OverscriptBox[\(3\), \(_\)]\)"] = {{{1, 0, 0}, {0, 1, 0}, {0, 
        0, 1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 0, 1}}, {{0, 0, 1}, {1, 0, 0}, {0,
         1, 0}}}, $CellContext`symmetryMatrices[
        "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m"] = {{{1, 0, 0}, {0, 1, 0}, {0,
         0, 1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 0, 1}}, {{0, 0, 1}, {1, 0, 0}, {
        0, 1, 0}}, {{0, -1, 0}, {-1, 0, 0}, {0, 0, 
        1}}}, $CellContext`symmetryMatrices[
        "\!\(\*OverscriptBox[\(1\), \(_\)]\)"] = {{{1, 0, 0}, {0, 1, 0}, {0, 
        0, 1}}, {{-1, 0, 0}, {0, -1, 0}, {0, 
        0, -1}}}, $CellContext`symmetryMatrices[
        "\!\(\*OverscriptBox[\(3\), \(_\)]\)"] = {{{1, 0, 0}, {0, 1, 0}, {0, 
         0, 1}}, {{1/2, Sqrt[3]/2, 0}, {-Sqrt[3]/2, 1/2, 0}, {0, 
          0, -1}}}, $CellContext`symmetryMatrices[
        "\!\(\*OverscriptBox[\(3\), \(_\)]\)m"] = {{{1, 0, 0}, {0, 1, 0}, {0, 
         0, 1}}, {{1/2, Sqrt[3]/2, 0}, {-Sqrt[3]/2, 1/2, 0}, {0, 
          0, -1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}}, $CellContext`symmetryMatrices[
        "\!\(\*OverscriptBox[\(4\), \(_\)]\)"] = {{{1, 0, 0}, {0, 1, 0}, {0, 
        0, 1}}, {{0, 1, 0}, {-1, 0, 0}, {0, 
        0, -1}}}, $CellContext`symmetryMatrices[
        "\!\(\*OverscriptBox[\(4\), \(_\)]\)2m"] = {{{1, 0, 0}, {0, 1, 0}, {0,
         0, 1}}, {{0, 1, 0}, {-1, 0, 0}, {0, 0, -1}}, {{1, 0, 0}, {0, -1, 
        0}, {0, 0, -1}}}, $CellContext`symmetryMatrices[
        "\!\(\*OverscriptBox[\(4\), \(_\)]\)3m"] = {{{1, 0, 0}, {0, 1, 0}, {0,
         0, 1}}, {{0, 1, 0}, {-1, 0, 0}, {0, 0, -1}}, {{0, 0, 1}, {1, 0, 0}, {
        0, 1, 0}}}, $CellContext`symmetryMatrices[
        "\!\(\*OverscriptBox[\(6\), \(_\)]\)"] = {{{1, 0, 0}, {0, 1, 0}, {0, 
         0, 1}}, {{(-1)/2, Sqrt[3]/2, 0}, {-Sqrt[3]/2, (-1)/2, 0}, {0, 
          0, -1}}}, $CellContext`symmetryMatrices[
        "\!\(\*OverscriptBox[\(6\), \(_\)]\)m2"] = {{{1, 0, 0}, {0, 1, 0}, {0,
          0, 1}}, {{(-1)/2, Sqrt[3]/2, 0}, {-Sqrt[3]/2, (-1)/2, 0}, {0, 
          0, -1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}}, $CellContext`outsideWulffCompiled = 
       CompiledFunction[{8, 8., 5468}, {{
           Blank[Real], 1}, {
           Blank[Real], 1}}, {{3, 1, 0}, {3, 1, 1}, {1, 0, 
         0}}, {{2, {2, 0, 1}}, {1, {2, 0, 0}}, {7., {3, 0, 7}}, {
          3, {2, 0, 2}}}, {1, 3, 8, 0, 
         2}, {{38, 0, 0, 0, 0, 0}, {38, 0, 0, 1, 0, 1}, {38, 0, 0, 2, 0, 2}, {
          38, 1, 0, 0, 0, 3}, {16, 0, 3, 4}, {38, 1, 0, 1, 0, 3}, {16, 1, 3, 
          5}, {38, 1, 0, 2, 0, 3}, {16, 2, 3, 6}, {13, 4, 5, 6, 4}, {40, 56, 
          3, 0, 0, 3, 0, 5}, {40, 56, 3, 0, 1, 3, 0, 6}, {40, 56, 3, 0, 2, 3, 
          0, 3}, {13, 5, 6, 3, 5}, {27, 7, 7, 4, 5, 0}, {1}}, 
         Function[{$CellContext`baseV, $CellContext`testV}, 
          
          Block[{Compile`$23, Compile`$36, Compile`$40}, 
           Compile`$23 = Part[$CellContext`baseV, 1]; 
           Compile`$36 = Part[$CellContext`baseV, 2]; 
           Compile`$40 = Part[$CellContext`baseV, 3]; 
           Compile`$23 Part[$CellContext`testV, 1] + 
             Compile`$36 Part[$CellContext`testV, 2] + 
             Compile`$40 Part[$CellContext`testV, 3] > 
            Compile`$23^2 + Compile`$36^2 + Compile`$40^2]], Evaluate], 
       Attributes[Compile`$23] = {Temporary}, 
       Attributes[Compile`$36] = {Temporary}, 
       Attributes[Compile`$40] = {Temporary}, $CellContext`neighborQ[
         Pattern[$CellContext`id, 
          Blank[]], 
         Pattern[$CellContext`glist, 
          Blank[]]] := 
       Module[{$CellContext`dots, $CellContext`sorted, \
$CellContext`neighbors, $CellContext`fin}, $CellContext`dots = Table[{
             Dot[
              Part[$CellContext`glist, $CellContext`i, 1], 
              Normalize[
               
               Part[$CellContext`glist, $CellContext`id, 
                1]]], $CellContext`i}, {$CellContext`i, 
             Length[$CellContext`glist]}]; $CellContext`sorted = 
          Sort[$CellContext`dots, Part[#, 1] > 
            Part[#2, 1]& ]; $CellContext`neighbors = Table[
            Part[$CellContext`sorted, $CellContext`i, 2], {$CellContext`i, 
             Min[
              Max[
               Ceiling[Length[$CellContext`glist]/6], 11], 
              Length[$CellContext`glist]]}]; $CellContext`fin = 
          Select[$CellContext`neighbors, 
            Not[# === $CellContext`id]& ]], $CellContext`findvert = 
       CompiledFunction[{8, 8., 5468}, {{
           Blank[Real], 1}, {
           Blank[Real], 1}, {
           Blank[Real], 1}}, {{3, 1, 0}, {3, 1, 1}, {3, 1, 2}, {3, 1, 
         5}}, {{1.*^-12, {3, 0, 8}}, {{1.*^6, 1.*^6, 1.*^6}, {3, 1, 3}}, {
          2, {2, 0, 1}}, {1, {2, 0, 2}}, {7., {3, 0, 9}}, {3, {2, 0, 0}}}, {1,
          3, 43, 0, 
         6}, {{38, 0, 0, 0, 0, 0}, {38, 1, 0, 1, 0, 1}, {38, 2, 0, 2, 0, 2}, {
          16, 0, 1, 2, 0}, {38, 0, 0, 1, 0, 1}, {38, 1, 0, 0, 0, 2}, {38, 2, 
          0, 2, 0, 3}, {16, 1, 2, 3, 1}, {19, 1, 2}, {38, 0, 0, 0, 0, 1}, {38,
           1, 0, 2, 0, 3}, {38, 2, 0, 1, 0, 4}, {16, 1, 3, 4, 1}, {19, 1, 
          3}, {38, 0, 0, 2, 0, 1}, {38, 1, 0, 0, 0, 4}, {38, 2, 0, 1, 0, 5}, {
          16, 1, 4, 5, 1}, {38, 0, 0, 1, 0, 4}, {38, 1, 0, 2, 0, 5}, {38, 2, 
          0, 0, 0, 6}, {16, 4, 5, 6, 4}, {38, 0, 0, 2, 0, 5}, {38, 1, 0, 1, 0,
           6}, {38, 2, 0, 0, 0, 7}, {16, 5, 6, 7, 5}, {19, 5, 6}, {13, 0, 2, 
          3, 1, 4, 6, 0}, {40, 38, 3, 0, 0, 3, 0, 2}, {27, 3, 9, 2, 8, 0}, {2,
           0, 3}, {42, "CopyTensor", 3, 1, 3, 3, 1, 5}, {3, 109}, {38, 2, 0, 
          2, 0, 2}, {40, 56, 3, 0, 2, 3, 0, 4}, {38, 0, 0, 0, 0, 6}, {38, 1, 
          0, 1, 0, 5}, {38, 2, 0, 1, 0, 7}, {38, 1, 0, 0, 0, 3}, {38, 0, 0, 1,
           0, 1}, {40, 56, 3, 0, 7, 3, 0, 10}, {38, 1, 0, 2, 0, 11}, {40, 56, 
          3, 0, 11, 3, 0, 12}, {38, 0, 0, 2, 0, 13}, {40, 56, 3, 0, 13, 3, 0, 
          14}, {38, 2, 0, 0, 0, 15}, {40, 56, 3, 0, 1, 3, 0, 16}, {40, 56, 3, 
          0, 6, 3, 0, 17}, {40, 56, 3, 0, 5, 3, 0, 18}, {40, 56, 3, 0, 3, 3, 
          0, 19}, {40, 56, 3, 0, 15, 3, 0, 20}, {40, 58, 3, 0, 0, 3, 0, 21}, {
          16, 6, 5, 4, 22}, {16, 1, 3, 4, 23}, {19, 23, 24}, {16, 6, 12, 7, 
          23}, {19, 23, 25}, {16, 6, 18, 7, 23}, {19, 23, 26}, {16, 14, 3, 7, 
          23}, {16, 16, 3, 7, 27}, {16, 17, 3, 7, 28}, {16, 6, 19, 7, 29}, {
          19, 29, 30}, {16, 6, 5, 10, 29}, {16, 1, 3, 10, 31}, {19, 31, 32}, {
          16, 1, 12, 15, 31}, {16, 14, 5, 15, 33}, {19, 33, 34}, {16, 16, 5, 
          15, 33}, {19, 33, 35}, {16, 17, 5, 15, 33}, {19, 33, 36}, {16, 1, 
          18, 15, 33}, {16, 1, 19, 15, 37}, {16, 6, 5, 20, 38}, {16, 1, 3, 20,
           39}, {19, 39, 40}, {13, 22, 24, 25, 26, 23, 27, 28, 30, 29, 32, 31,
           34, 35, 36, 33, 37, 38, 40, 22}, {16, 22, 21, 22}, {16, 6, 12, 2, 
          24}, {16, 6, 18, 2, 25}, {16, 14, 3, 2, 26}, {19, 26, 23}, {16, 16, 
          3, 2, 26}, {19, 26, 27}, {16, 17, 3, 2, 26}, {19, 26, 28}, {16, 6, 
          19, 2, 26}, {16, 6, 11, 4, 30}, {19, 30, 29}, {16, 13, 3, 4, 30}, {
          16, 6, 11, 10, 32}, {19, 32, 31}, {16, 13, 3, 10, 32}, {16, 14, 11, 
          15, 34}, {16, 16, 11, 15, 35}, {16, 17, 11, 15, 36}, {16, 13, 12, 
          15, 33}, {19, 33, 37}, {16, 13, 18, 15, 33}, {19, 33, 38}, {16, 13, 
          19, 15, 33}, {19, 33, 40}, {16, 6, 11, 20, 33}, {19, 33, 39}, {16, 
          13, 3, 20, 33}, {13, 24, 25, 23, 27, 28, 26, 29, 30, 31, 32, 34, 35,
           36, 37, 38, 40, 39, 33, 24}, {16, 24, 21, 24}, {19, 1, 25}, {16, 
          25, 12, 2, 25}, {16, 14, 5, 2, 23}, {16, 16, 5, 2, 27}, {16, 17, 5, 
          2, 28}, {16, 1, 18, 2, 26}, {19, 26, 29}, {16, 1, 19, 2, 26}, {19, 
          26, 30}, {16, 1, 11, 4, 26}, {16, 13, 5, 4, 31}, {19, 31, 32}, {16, 
          14, 11, 7, 31}, {19, 31, 34}, {16, 16, 11, 7, 31}, {19, 31, 35}, {
          16, 17, 11, 7, 31}, {19, 31, 36}, {16, 13, 12, 7, 31}, {16, 13, 18, 
          7, 37}, {16, 13, 19, 7, 38}, {16, 1, 11, 10, 40}, {16, 13, 5, 10, 
          39}, {19, 39, 33}, {16, 1, 11, 20, 39}, {16, 13, 5, 20, 41}, {19, 
          41, 42}, {13, 25, 23, 27, 28, 29, 30, 26, 32, 34, 35, 36, 31, 37, 
          38, 40, 33, 39, 42, 25}, {16, 25, 21, 25}, {34, 22, 24, 25, 3, 4}, {
          42, "CopyTensor", 3, 1, 4, 3, 1, 5}, {1}}, 
         Function[{$CellContext`a, $CellContext`b, $CellContext`c}, 
          
          Block[{Compile`$37, Compile`$39, Compile`$29, Compile`$30, 
            Compile`$56, Compile`$48, Compile`$46, Compile`$75, Compile`$54, 
            Compile`$55, Compile`$63, Compile`$64, Compile`$79, Compile`$66, 
            Compile`$69, Compile`$60, Compile`$71, Compile`$89, Compile`$94}, 
           
           
           Block[{$CellContext`denom = 
             Part[$CellContext`a, 3] Part[$CellContext`b, 2] 
               Part[$CellContext`c, 1] - Part[$CellContext`a, 2] 
              Part[$CellContext`b, 3] Part[$CellContext`c, 1] - 
              Part[$CellContext`a, 3] Part[$CellContext`b, 1] 
              Part[$CellContext`c, 2] + 
              Part[$CellContext`a, 1] Part[$CellContext`b, 3] 
               Part[$CellContext`c, 2] + 
              Part[$CellContext`a, 2] Part[$CellContext`b, 1] 
               Part[$CellContext`c, 3] - Part[$CellContext`a, 1] 
              Part[$CellContext`b, 2] Part[$CellContext`c, 3]}, 
            If[
            Abs[$CellContext`denom] < 1.*^-12, {1.*^6, 1.*^6, 1.*^6}, 
             Compile`$37 = Part[$CellContext`c, 1]; 
             Compile`$39 = Compile`$37^2; 
             Compile`$29 = Part[$CellContext`a, 3]; 
             Compile`$30 = Part[$CellContext`b, 2]; 
             Compile`$56 = Part[$CellContext`c, 2]; 
             Compile`$48 = Part[$CellContext`b, 3]; 
             Compile`$46 = Part[$CellContext`a, 2]; 
             Compile`$75 = Compile`$56^2; 
             Compile`$54 = Part[$CellContext`b, 1]; 
             Compile`$55 = Compile`$54^2; 
             Compile`$63 = Part[$CellContext`a, 1]; 
             Compile`$64 = Compile`$63^2; 
             Compile`$79 = Part[$CellContext`c, 3]; 
             Compile`$66 = Compile`$46^2; Compile`$69 = Compile`$29^2; 
             Compile`$60 = Compile`$30^2; Compile`$71 = Compile`$48^2; 
             Compile`$89 = Compile`$79^2; 
             Compile`$94 = $CellContext`denom^(-1); {(
                Compile`$29 Compile`$30 Compile`$39 - Compile`$46 Compile`$48 
                Compile`$39 - Compile`$29 Compile`$55 Compile`$56 - 
                Compile`$29 Compile`$60 Compile`$56 + 
                Compile`$64 Compile`$48 Compile`$56 + 
                Compile`$66 Compile`$48 Compile`$56 + 
                Compile`$69 Compile`$48 Compile`$56 - Compile`$29 Compile`$71 
                Compile`$56 + Compile`$29 Compile`$30 Compile`$75 - 
                Compile`$46 Compile`$48 Compile`$75 + 
                Compile`$46 Compile`$55 Compile`$79 - Compile`$64 Compile`$30 
                Compile`$79 - Compile`$66 Compile`$30 Compile`$79 - 
                Compile`$69 Compile`$30 Compile`$79 + 
                Compile`$46 Compile`$60 Compile`$79 + 
                Compile`$46 Compile`$71 Compile`$79 + 
                Compile`$29 Compile`$30 Compile`$89 - Compile`$46 Compile`$48 
                Compile`$89) 
               Compile`$94, (Compile`$29 Compile`$55 Compile`$37 + 
                Compile`$29 Compile`$60 Compile`$37 - Compile`$64 Compile`$48 
                Compile`$37 - Compile`$66 Compile`$48 Compile`$37 - 
                Compile`$69 Compile`$48 Compile`$37 + 
                Compile`$29 Compile`$71 Compile`$37 - Compile`$29 Compile`$54 
                Compile`$39 + Compile`$63 Compile`$48 Compile`$39 - 
                Compile`$29 Compile`$54 Compile`$75 + 
                Compile`$63 Compile`$48 Compile`$75 + 
                Compile`$64 Compile`$54 Compile`$79 + 
                Compile`$66 Compile`$54 Compile`$79 + 
                Compile`$69 Compile`$54 Compile`$79 - Compile`$63 Compile`$55 
                Compile`$79 - Compile`$63 Compile`$60 Compile`$79 - 
                Compile`$63 Compile`$71 Compile`$79 - Compile`$29 Compile`$54 
                Compile`$89 + Compile`$63 Compile`$48 Compile`$89) 
               Compile`$94, ((-Compile`$46) Compile`$55 Compile`$37 + 
                Compile`$64 Compile`$30 Compile`$37 + 
                Compile`$66 Compile`$30 Compile`$37 + 
                Compile`$69 Compile`$30 Compile`$37 - Compile`$46 Compile`$60 
                Compile`$37 - Compile`$46 Compile`$71 Compile`$37 + 
                Compile`$46 Compile`$54 Compile`$39 - Compile`$63 Compile`$30 
                Compile`$39 - Compile`$64 Compile`$54 Compile`$56 - 
                Compile`$66 Compile`$54 Compile`$56 - Compile`$69 Compile`$54 
                Compile`$56 + Compile`$63 Compile`$55 Compile`$56 + 
                Compile`$63 Compile`$60 Compile`$56 + 
                Compile`$63 Compile`$71 Compile`$56 + 
                Compile`$46 Compile`$54 Compile`$75 - Compile`$63 Compile`$30 
                Compile`$75 + Compile`$46 Compile`$54 Compile`$89 - 
                Compile`$63 Compile`$30 Compile`$89) Compile`$94}]]]], 
         Evaluate], Attributes[Compile`$37] = {Temporary}, 
       Attributes[Compile`$39] = {Temporary}, 
       Attributes[Compile`$29] = {Temporary}, 
       Attributes[Compile`$30] = {Temporary}, 
       Attributes[Compile`$56] = {Temporary}, 
       Attributes[Compile`$48] = {Temporary}, 
       Attributes[Compile`$46] = {Temporary}, 
       Attributes[Compile`$75] = {Temporary}, 
       Attributes[Compile`$54] = {Temporary}, 
       Attributes[Compile`$55] = {Temporary}, 
       Attributes[Compile`$63] = {Temporary}, 
       Attributes[Compile`$64] = {Temporary}, 
       Attributes[Compile`$79] = {Temporary}, 
       Attributes[Compile`$66] = {Temporary}, 
       Attributes[Compile`$69] = {Temporary}, 
       Attributes[Compile`$60] = {Temporary}, 
       Attributes[Compile`$71] = {Temporary}, 
       Attributes[Compile`$89] = {Temporary}, 
       Attributes[Compile`$94] = {Temporary}, $CellContext`groupSet[
        "Cubic"] = {
        "23", "m\!\(\*OverscriptBox[\(3\), \(_\)]\)", "432", 
         "\!\(\*OverscriptBox[\(4\), \(_\)]\)3m", 
         "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m"}, $CellContext`groupSet[
        "Hexagonal"] = {
        "3", "\!\(\*OverscriptBox[\(3\), \(_\)]\)", "32", "3m", 
         "\!\(\*OverscriptBox[\(3\), \(_\)]\)m", "6", 
         "\!\(\*OverscriptBox[\(6\), \(_\)]\)", "6/m", "622", "6mm", 
         "\!\(\*OverscriptBox[\(6\), \(_\)]\)m2", 
         "6/mmm"}, $CellContext`groupSet["Monoclinic"] = {
        "2", "m", "2/m"}, $CellContext`groupSet["Orthorhombic"] = {
        "222", "mm2", "mmm"}, $CellContext`groupSet["Tetragonal"] = {
        "4", "\!\(\*OverscriptBox[\(4\), \(_\)]\)", "4/m", "422", "4mm", 
         "\!\(\*OverscriptBox[\(4\), \(_\)]\)2m", 
         "4/mmm"}, $CellContext`groupSet["Triclinic"] = {
        "1", "\!\(\*OverscriptBox[\(1\), \(_\)]\)"}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False,
   FontSize->Large],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.546624476648452*^9, 3.547215446410071*^9, {3.547215890607608*^9, 
   3.5472159031473303`*^9}, 3.547215951898821*^9, 3.5472170735836973`*^9}]
}, {2}]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1268, 968},
WindowMargins->{{Automatic, 39}, {Automatic, 0}},
FrontEndVersion->"8.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (February 23, \
2011)",
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
Cell[1257, 32, 232, 3, 76, "Title"],
Cell[1492, 37, 319, 6, 43, "Subsubtitle"],
Cell[CellGroupData[{
Cell[1836, 47, 253, 4, 34, "Subsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[2092, 53, 240, 3, 24, "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[2335, 58, 1985, 31, 71, "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[4323, 91, 285, 4, 24, "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[4611, 97, 3273, 48, 254, "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[7887, 147, 181, 3, 24, "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[8071, 152, 1256, 20, 71, "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}]
}, Closed]],
Cell[CellGroupData[{
Cell[9364, 177, 168, 2, 37, "Section"],
Cell[9535, 181, 6967, 164, 775, "Input",
 InitializationCell->True],
Cell[16505, 347, 73750, 1878, 2915, "Input",
 InitializationCell->True],
Cell[90258, 2227, 30804, 712, 1138, "Input",
 InitializationCell->True]
}, Closed]],
Cell[CellGroupData[{
Cell[121099, 2944, 148, 2, 37, "Section"],
Cell[CellGroupData[{
Cell[121272, 2950, 9764, 214, 673, "Input",
 InitializationCell->True],
Cell[131039, 3166, 43737, 815, 1052, "Output"]
}, {2}]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature BwTFfyiQc8lDQCgVQb8AwaBf *)
