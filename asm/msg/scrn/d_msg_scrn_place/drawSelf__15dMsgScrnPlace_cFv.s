lbl_80246A44:
/* 80246A44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80246A48  7C 08 02 A6 */	mflr r0
/* 80246A4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80246A50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80246A54  7C 7F 1B 78 */	mr r31, r3
/* 80246A58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80246A5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80246A60  80 63 5F 50 */	lwz r3, 0x5f50(r3)
/* 80246A64  81 83 00 00 */	lwz r12, 0(r3)
/* 80246A68  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80246A6C  7D 89 03 A6 */	mtctr r12
/* 80246A70  4E 80 04 21 */	bctrl 
/* 80246A74  7F E3 FB 78 */	mr r3, r31
/* 80246A78  C0 22 B2 E8 */	lfs f1, lit_3998(r2)
/* 80246A7C  FC 40 08 90 */	fmr f2, f1
/* 80246A80  C0 62 B2 EC */	lfs f3, lit_3999(r2)
/* 80246A84  4B FF 58 A9 */	bl drawOutFont__14dMsgScrnBase_cFfff
/* 80246A88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80246A8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80246A90  7C 08 03 A6 */	mtlr r0
/* 80246A94  38 21 00 10 */	addi r1, r1, 0x10
/* 80246A98  4E 80 00 20 */	blr 
