lbl_801F2708:
/* 801F2708  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F270C  7C 08 02 A6 */	mflr r0
/* 801F2710  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F2714  39 61 00 20 */	addi r11, r1, 0x20
/* 801F2718  48 16 FA C5 */	bl _savegpr_29
/* 801F271C  7C 7F 1B 78 */	mr r31, r3
/* 801F2720  48 00 22 09 */	bl headerTxtChangeAnm__12dMenu_save_cFv
/* 801F2724  7C 7D 1B 78 */	mr r29, r3
/* 801F2728  7F E3 FB 78 */	mr r3, r31
/* 801F272C  48 00 3B 4D */	bl ketteiTxtDispAnm__12dMenu_save_cFv
/* 801F2730  7C 7E 1B 78 */	mr r30, r3
/* 801F2734  7F E3 FB 78 */	mr r3, r31
/* 801F2738  48 00 39 E9 */	bl modoruTxtDispAnm__12dMenu_save_cFv
/* 801F273C  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 801F2740  88 84 00 3D */	lbz r4, 0x3d(r4)
/* 801F2744  30 04 FF FF */	addic r0, r4, -1
/* 801F2748  7C 00 21 10 */	subfe r0, r0, r4
/* 801F274C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801F2750  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 801F2754  28 00 00 01 */	cmplwi r0, 1
/* 801F2758  40 82 00 5C */	bne lbl_801F27B4
/* 801F275C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801F2760  28 00 00 01 */	cmplwi r0, 1
/* 801F2764  40 82 00 50 */	bne lbl_801F27B4
/* 801F2768  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F276C  28 00 00 01 */	cmplwi r0, 1
/* 801F2770  40 82 00 44 */	bne lbl_801F27B4
/* 801F2774  28 04 00 01 */	cmplwi r4, 1
/* 801F2778  40 82 00 3C */	bne lbl_801F27B4
/* 801F277C  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 801F2780  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 801F2784  80 64 00 00 */	lwz r3, 0(r4)
/* 801F2788  80 04 00 04 */	lwz r0, 4(r4)
/* 801F278C  90 7F 01 C4 */	stw r3, 0x1c4(r31)
/* 801F2790  90 1F 01 C8 */	stw r0, 0x1c8(r31)
/* 801F2794  80 04 00 08 */	lwz r0, 8(r4)
/* 801F2798  90 1F 01 CC */	stw r0, 0x1cc(r31)
/* 801F279C  38 00 00 06 */	li r0, 6
/* 801F27A0  98 1F 01 B5 */	stb r0, 0x1b5(r31)
/* 801F27A4  38 00 00 09 */	li r0, 9
/* 801F27A8  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F27AC  38 00 00 00 */	li r0, 0
/* 801F27B0  98 1F 01 BF */	stb r0, 0x1bf(r31)
lbl_801F27B4:
/* 801F27B4  39 61 00 20 */	addi r11, r1, 0x20
/* 801F27B8  48 16 FA 71 */	bl _restgpr_29
/* 801F27BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F27C0  7C 08 03 A6 */	mtlr r0
/* 801F27C4  38 21 00 20 */	addi r1, r1, 0x20
/* 801F27C8  4E 80 00 20 */	blr 
