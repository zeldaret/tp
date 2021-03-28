lbl_801066EC:
/* 801066EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801066F0  7C 08 02 A6 */	mflr r0
/* 801066F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801066F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801066FC  7C 7F 1B 78 */	mr r31, r3
/* 80106700  38 80 00 F8 */	li r4, 0xf8
/* 80106704  3C A0 80 39 */	lis r5, m__19daAlinkHIO_board_c0@ha
/* 80106708  38 A5 E8 70 */	addi r5, r5, m__19daAlinkHIO_board_c0@l
/* 8010670C  38 A5 00 28 */	addi r5, r5, 0x28
/* 80106710  4B FA 69 E5 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 80106714  7F E3 FB 78 */	mr r3, r31
/* 80106718  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020094@ha */
/* 8010671C  38 84 00 94 */	addi r4, r4, 0x0094 /* 0x00020094@l */
/* 80106720  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80106724  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 80106728  7D 89 03 A6 */	mtctr r12
/* 8010672C  4E 80 04 21 */	bctrl 
/* 80106730  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80106734  D0 21 00 08 */	stfs f1, 8(r1)
/* 80106738  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8010673C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80106740  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80106744  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80106748  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010674C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80106750  38 80 00 02 */	li r4, 2
/* 80106754  38 A0 00 0F */	li r5, 0xf
/* 80106758  38 C1 00 08 */	addi r6, r1, 8
/* 8010675C  4B F6 92 C9 */	bl StartShock__12dVibration_cFii4cXyz
/* 80106760  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80106764  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80106768  7C 08 03 A6 */	mtlr r0
/* 8010676C  38 21 00 20 */	addi r1, r1, 0x20
/* 80106770  4E 80 00 20 */	blr 
