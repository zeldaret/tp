lbl_80246F68:
/* 80246F68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80246F6C  7C 08 02 A6 */	mflr r0
/* 80246F70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80246F74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80246F78  7C 7F 1B 78 */	mr r31, r3
/* 80246F7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80246F80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80246F84  80 63 5F 50 */	lwz r3, 0x5f50(r3)
/* 80246F88  81 83 00 00 */	lwz r12, 0(r3)
/* 80246F8C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80246F90  7D 89 03 A6 */	mtctr r12
/* 80246F94  4E 80 04 21 */	bctrl 
/* 80246F98  7F E3 FB 78 */	mr r3, r31
/* 80246F9C  C0 22 B2 F8 */	lfs f1, lit_3842(r2)
/* 80246FA0  FC 40 08 90 */	fmr f2, f1
/* 80246FA4  C0 62 B2 FC */	lfs f3, lit_3877(r2)
/* 80246FA8  4B FF 53 85 */	bl drawOutFont__14dMsgScrnBase_cFfff
/* 80246FAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80246FB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80246FB4  7C 08 03 A6 */	mtlr r0
/* 80246FB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80246FBC  4E 80 00 20 */	blr 
