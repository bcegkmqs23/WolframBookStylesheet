CellPrint@Cell["\"a\" -> \"b\"",
	"Code",
	Evaluatable -> True,
	CellEvaluationFunction -> (Apply[Function[{fnlabel,fntext}, 
		SelectionMove[EvaluationCell[], After, Cell];
		SelectionMove[PreviousCell[CellStyle -> "FootnoteDocker"], After, Cell];
		NotebookWrite[
			EvaluationNotebook[], 
			Cell[
				BoxData@RowBox@{
					Cell[
						BoxData@ButtonBox[
							Cell[
								TagBox[
									RowBox@{"[", CounterBox@"FootnoteText", "]"}
								, BoxID -> {"FootnoteNum", fnlabel}]
							, "Link"]
						, ButtonFunction :> NotebookLocate["FootnoteLabel"<>fnlabel]
						, Appearance -> "Frameless"
						, Evaluator -> Automatic
						, Method -> "Preemptive"]
					],
					fntext
				}
				, "FootnoteText"
				, CellTags -> {"FootnoteText"<>fnlabel}
			]
		];
		NotebookWrite[
			EvaluationCell[], 
			Cell[
				BoxData@ButtonBox[
					Cell[
						BoxData@DynamicBox@Refresh[
							Cell[
								BoxData@FrontEndExecute@FrontEnd`BoxReferenceRead@FE`BoxReference[
									EvaluationNotebook[],
									{{"FootnoteNum", fnlabel}}
									, FE`BoxOffset -> {FE`BoxChild[1]}
									, FE`SearchStart -> "StartFromBeginning"
								]
							]
						, UpdateInterval -> 1]
					, "Link"]
					, ButtonFunction :> NotebookLocate["FootnoteText"<>fnlabel]
					, Appearance -> "Frameless"
					, Evaluator -> Automatic
					, Method -> "Preemptive"
				]
				, "FootnoteNum"
				, CellTags -> {"FootnoteLabel"<>fnlabel}
			]
		]
	],ToExpression@#]&)
	, CellFrameLabels -> {{"Footnote:", None}, {None, None}}
]
