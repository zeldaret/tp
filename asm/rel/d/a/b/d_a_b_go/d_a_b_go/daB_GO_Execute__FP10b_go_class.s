lbl_806037E8:
/* 806037E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806037EC  7C 08 02 A6 */	mflr r0
/* 806037F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806037F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806037F8  7C 7F 1B 78 */	mr r31, r3
/* 806037FC  A8 63 06 68 */	lha r3, 0x668(r3)
/* 80603800  38 03 00 01 */	addi r0, r3, 1
/* 80603804  B0 1F 06 68 */	sth r0, 0x668(r31)
/* 80603808  38 60 00 00 */	li r3, 0
/* 8060380C  38 00 00 04 */	li r0, 4
/* 80603810  7C 09 03 A6 */	mtctr r0
lbl_80603814:
/* 80603814  38 A3 06 88 */	addi r5, r3, 0x688
/* 80603818  7C 9F 2A AE */	lhax r4, r31, r5
/* 8060381C  2C 04 00 00 */	cmpwi r4, 0
/* 80603820  41 82 00 0C */	beq lbl_8060382C
/* 80603824  38 04 FF FF */	addi r0, r4, -1
/* 80603828  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_8060382C:
/* 8060382C  38 63 00 02 */	addi r3, r3, 2
/* 80603830  42 00 FF E4 */	bdnz lbl_80603814
/* 80603834  A8 7F 06 90 */	lha r3, 0x690(r31)
/* 80603838  2C 03 00 00 */	cmpwi r3, 0
/* 8060383C  41 82 00 0C */	beq lbl_80603848
/* 80603840  38 03 FF FF */	addi r0, r3, -1
/* 80603844  B0 1F 06 90 */	sth r0, 0x690(r31)
lbl_80603848:
/* 80603848  7F E3 FB 78 */	mr r3, r31
/* 8060384C  4B FF FD ED */	bl action__FP10b_go_class
/* 80603850  7F E3 FB 78 */	mr r3, r31
/* 80603854  4B FF FA C9 */	bl damage_check__FP10b_go_class
/* 80603858  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060385C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80603860  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80603864  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80603868  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8060386C  4B D4 30 7D */	bl PSMTXTrans
/* 80603870  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80603874  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80603878  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8060387C  4B A0 8B B9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80603880  3C 60 80 60 */	lis r3, l_HIO@ha /* 0x80604150@ha */
/* 80603884  38 63 41 50 */	addi r3, r3, l_HIO@l /* 0x80604150@l */
/* 80603888  C0 23 00 08 */	lfs f1, 8(r3)
/* 8060388C  FC 40 08 90 */	fmr f2, f1
/* 80603890  FC 60 08 90 */	fmr f3, f1
/* 80603894  4B A0 95 A5 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80603898  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8060389C  80 83 00 04 */	lwz r4, 4(r3)
/* 806038A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806038A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806038A8  38 84 00 24 */	addi r4, r4, 0x24
/* 806038AC  4B D4 2C 05 */	bl PSMTXCopy
/* 806038B0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806038B4  7C 03 07 74 */	extsb r3, r0
/* 806038B8  4B A2 97 B5 */	bl dComIfGp_getReverb__Fi
/* 806038BC  7C 65 1B 78 */	mr r5, r3
/* 806038C0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806038C4  38 80 00 00 */	li r4, 0
/* 806038C8  4B A0 D7 E9 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 806038CC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806038D0  4B A0 D9 1D */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 806038D4  38 60 00 01 */	li r3, 1
/* 806038D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806038DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806038E0  7C 08 03 A6 */	mtlr r0
/* 806038E4  38 21 00 10 */	addi r1, r1, 0x10
/* 806038E8  4E 80 00 20 */	blr 
