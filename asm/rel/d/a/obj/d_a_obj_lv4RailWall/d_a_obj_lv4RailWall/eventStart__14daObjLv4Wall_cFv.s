lbl_80C613D0:
/* 80C613D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C613D4  7C 08 02 A6 */	mflr r0
/* 80C613D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C613DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C613E0  7C 7F 1B 78 */	mr r31, r3
/* 80C613E4  3C 60 80 C6 */	lis r3, lit_3710@ha /* 0x80C61B3C@ha */
/* 80C613E8  C0 23 1B 3C */	lfs f1, lit_3710@l(r3)  /* 0x80C61B3C@l */
/* 80C613EC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C613F0  3C 60 80 C6 */	lis r3, lit_3882@ha /* 0x80C61BA0@ha */
/* 80C613F4  C0 03 1B A0 */	lfs f0, lit_3882@l(r3)  /* 0x80C61BA0@l */
/* 80C613F8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C613FC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C61400  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C61404  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C61408  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C6140C  38 80 00 04 */	li r4, 4
/* 80C61410  38 A0 00 0F */	li r5, 0xf
/* 80C61414  38 C1 00 08 */	addi r6, r1, 8
/* 80C61418  4B 40 E6 F9 */	bl StartQuake__12dVibration_cFii4cXyz
/* 80C6141C  7F E3 FB 78 */	mr r3, r31
/* 80C61420  4B FF FB E5 */	bl mode_init_move__14daObjLv4Wall_cFv
/* 80C61424  38 60 00 01 */	li r3, 1
/* 80C61428  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C6142C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C61430  7C 08 03 A6 */	mtlr r0
/* 80C61434  38 21 00 20 */	addi r1, r1, 0x20
/* 80C61438  4E 80 00 20 */	blr 
