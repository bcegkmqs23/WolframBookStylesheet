CellPrint@Cell["\"a\" -> \"b\"",
	"Code",
	Evaluatable -> True,
	CellEvaluationFunction -> (Function[{fnlabel,fntext}, 
		SelectionMove[NextCell[CellStyle -> "Chapter"], Before, Cell];
		NotebookWrite[
			EvaluationNotebook[], 
			Cell[
				BoxData@RowBox@{
					fntext,
					Cell[
						BoxData@ButtonBox[
							Cell[
								TextData@{
										"[",
										CounterBox[
											"FootnoteText"
										, BoxID -> {"FootnoteNum", fnlabel}],
										"]"
									}
							, "Link"]
						, ButtonFunction :> NotebookLocate["FootnoteLabel"<>fnlabel]
						, Appearance -> "Frameless"
						, Evaluator -> Automatic
						, Method -> "Preemptive"]
					]
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
								TextData@{
									"[", 
									FrontEndExecute@FrontEnd`BoxReferenceRead@FE`BoxReference[
										EvaluationNotebook[],
										{{"FootnoteNum", fnlabel}}
										, FE`BoxOffset -> {FE`BoxChild[1]}
										, FE`SearchStart -> "StartFromBeginning"
									],
									"]"
								}
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
	]@@ToExpression@#&)
	, CellFrameLabels -> {{"Footnote:", None}, {None, None}}
]