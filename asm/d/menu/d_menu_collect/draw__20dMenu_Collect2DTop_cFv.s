lbl_801B77A4:
/* 801B77A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B77A8  7C 08 02 A6 */	mflr r0
/* 801B77AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B77B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B77B4  93 C1 00 08 */	stw r30, 8(r1)
/* 801B77B8  7C 7E 1B 78 */	mr r30, r3
/* 801B77BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B77C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B77C4  83 E3 5F 50 */	lwz r31, 0x5f50(r3)
/* 801B77C8  7F E3 FB 78 */	mr r3, r31
/* 801B77CC  81 9F 00 00 */	lwz r12, 0(r31)
/* 801B77D0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801B77D4  7D 89 03 A6 */	mtctr r12
/* 801B77D8  4E 80 04 21 */	bctrl 
/* 801B77DC  80 7E 00 04 */	lwz r3, 4(r30)
/* 801B77E0  80 63 00 8C */	lwz r3, 0x8c(r3)
/* 801B77E4  C0 22 A5 28 */	lfs f1, lit_4481(r2)
/* 801B77E8  FC 40 08 90 */	fmr f2, f1
/* 801B77EC  C0 62 A5 C4 */	lfs f3, lit_7944(r2)
/* 801B77F0  C0 82 A5 C8 */	lfs f4, lit_7945(r2)
/* 801B77F4  38 80 00 00 */	li r4, 0
/* 801B77F8  38 A0 00 00 */	li r5, 0
/* 801B77FC  38 C0 00 00 */	li r6, 0
/* 801B7800  81 83 00 00 */	lwz r12, 0(r3)
/* 801B7804  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 801B7808  7D 89 03 A6 */	mtctr r12
/* 801B780C  4E 80 04 21 */	bctrl 
/* 801B7810  80 7E 00 04 */	lwz r3, 4(r30)
/* 801B7814  80 63 00 90 */	lwz r3, 0x90(r3)
/* 801B7818  28 03 00 00 */	cmplwi r3, 0
/* 801B781C  41 82 00 08 */	beq lbl_801B7824
/* 801B7820  48 03 F1 99 */	bl _draw__12dMenu_save_cFv
lbl_801B7824:
/* 801B7824  80 7E 00 04 */	lwz r3, 4(r30)
/* 801B7828  80 63 00 94 */	lwz r3, 0x94(r3)
/* 801B782C  28 03 00 00 */	cmplwi r3, 0
/* 801B7830  41 82 00 08 */	beq lbl_801B7838
/* 801B7834  48 02 BE 99 */	bl _draw__14dMenu_Option_cFv
lbl_801B7838:
/* 801B7838  80 7E 00 04 */	lwz r3, 4(r30)
/* 801B783C  80 63 00 98 */	lwz r3, 0x98(r3)
/* 801B7840  28 03 00 00 */	cmplwi r3, 0
/* 801B7844  41 82 00 08 */	beq lbl_801B784C
/* 801B7848  48 02 5C C5 */	bl _draw__14dMenu_Letter_cFv
lbl_801B784C:
/* 801B784C  80 7E 00 04 */	lwz r3, 4(r30)
/* 801B7850  80 63 00 9C */	lwz r3, 0x9c(r3)
/* 801B7854  28 03 00 00 */	cmplwi r3, 0
/* 801B7858  41 82 00 08 */	beq lbl_801B7860
/* 801B785C  48 00 D8 F1 */	bl _draw__15dMenu_Fishing_cFv
lbl_801B7860:
/* 801B7860  80 7E 00 04 */	lwz r3, 4(r30)
/* 801B7864  80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 801B7868  28 03 00 00 */	cmplwi r3, 0
/* 801B786C  41 82 00 08 */	beq lbl_801B7874
/* 801B7870  48 03 FF 41 */	bl _draw__13dMenu_Skill_cFv
lbl_801B7874:
/* 801B7874  80 7E 00 04 */	lwz r3, 4(r30)
/* 801B7878  80 63 00 A4 */	lwz r3, 0xa4(r3)
/* 801B787C  28 03 00 00 */	cmplwi r3, 0
/* 801B7880  41 82 00 08 */	beq lbl_801B7888
/* 801B7884  48 02 0E DD */	bl _draw__14dMenu_Insect_cFv
lbl_801B7888:
/* 801B7888  80 7E 00 04 */	lwz r3, 4(r30)
/* 801B788C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 801B7890  28 03 00 00 */	cmplwi r3, 0
/* 801B7894  41 82 00 14 */	beq lbl_801B78A8
/* 801B7898  C0 22 A5 28 */	lfs f1, lit_4481(r2)
/* 801B789C  FC 40 08 90 */	fmr f2, f1
/* 801B78A0  7F E4 FB 78 */	mr r4, r31
/* 801B78A4  48 14 16 31 */	bl draw__9J2DScreenFffPC14J2DGrafContext
lbl_801B78A8:
/* 801B78A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B78AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B78B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B78B4  7C 08 03 A6 */	mtlr r0
/* 801B78B8  38 21 00 10 */	addi r1, r1, 0x10
/* 801B78BC  4E 80 00 20 */	blr 
