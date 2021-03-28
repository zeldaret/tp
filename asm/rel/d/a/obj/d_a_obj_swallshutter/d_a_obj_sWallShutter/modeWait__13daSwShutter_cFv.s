lbl_80598748:
/* 80598748  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059874C  7C 08 02 A6 */	mflr r0
/* 80598750  90 01 00 14 */	stw r0, 0x14(r1)
/* 80598754  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80598758  7C 7F 1B 78 */	mr r31, r3
/* 8059875C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80598760  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80598764  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80598768  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8059876C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80598770  7C 05 07 74 */	extsb r5, r0
/* 80598774  4B A9 CB EC */	b isSwitch__10dSv_info_cCFii
/* 80598778  2C 03 00 00 */	cmpwi r3, 0
/* 8059877C  41 82 00 0C */	beq lbl_80598788
/* 80598780  7F E3 FB 78 */	mr r3, r31
/* 80598784  48 00 00 19 */	bl init_modeMoveDownInit__13daSwShutter_cFv
lbl_80598788:
/* 80598788  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059878C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80598790  7C 08 03 A6 */	mtlr r0
/* 80598794  38 21 00 10 */	addi r1, r1, 0x10
/* 80598798  4E 80 00 20 */	blr 
