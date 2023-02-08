lbl_80D25100:
/* 80D25100  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D25104  7C 08 02 A6 */	mflr r0
/* 80D25108  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D2510C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D25110  7C 7F 1B 78 */	mr r31, r3
/* 80D25114  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80D25118  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D2511C  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80D25120  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D25124  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80D25128  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D2512C  3C 60 80 D2 */	lis r3, lit_4103@ha /* 0x80D26BC0@ha */
/* 80D25130  C0 03 6B C0 */	lfs f0, lit_4103@l(r3)  /* 0x80D26BC0@l */
/* 80D25134  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D25138  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D2513C  38 7F 09 44 */	addi r3, r31, 0x944
/* 80D25140  38 81 00 08 */	addi r4, r1, 8
/* 80D25144  4B 54 A0 99 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80D25148  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2514C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D25150  38 63 23 3C */	addi r3, r3, 0x233c
/* 80D25154  38 9F 08 20 */	addi r4, r31, 0x820
/* 80D25158  4B 53 FA 51 */	bl Set__4cCcSFP8cCcD_Obj
/* 80D2515C  7F E3 FB 78 */	mr r3, r31
/* 80D25160  48 00 06 85 */	bl event_proc_call__14daObjVolcBom_cFv
/* 80D25164  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D25168  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D2516C  7C 08 03 A6 */	mtlr r0
/* 80D25170  38 21 00 20 */	addi r1, r1, 0x20
/* 80D25174  4E 80 00 20 */	blr 
