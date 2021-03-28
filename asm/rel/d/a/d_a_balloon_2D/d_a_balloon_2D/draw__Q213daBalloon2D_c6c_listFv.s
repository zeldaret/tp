lbl_806534CC:
/* 806534CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806534D0  7C 08 02 A6 */	mflr r0
/* 806534D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806534D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806534DC  7C 7F 1B 78 */	mr r31, r3
/* 806534E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806534E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806534E8  80 63 5F 50 */	lwz r3, 0x5f50(r3)
/* 806534EC  81 83 00 00 */	lwz r12, 0(r3)
/* 806534F0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806534F4  7D 89 03 A6 */	mtctr r12
/* 806534F8  4E 80 04 21 */	bctrl 
/* 806534FC  80 7F 00 04 */	lwz r3, 4(r31)
/* 80653500  48 00 0A 05 */	bl drawMeter__13daBalloon2D_cFv
/* 80653504  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80653508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8065350C  7C 08 03 A6 */	mtlr r0
/* 80653510  38 21 00 10 */	addi r1, r1, 0x10
/* 80653514  4E 80 00 20 */	blr 
