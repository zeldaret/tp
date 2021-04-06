lbl_8023CB98:
/* 8023CB98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023CB9C  7C 08 02 A6 */	mflr r0
/* 8023CBA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023CBA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023CBA8  7C 7F 1B 78 */	mr r31, r3
/* 8023CBAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8023CBB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8023CBB4  80 63 5F 50 */	lwz r3, 0x5f50(r3)
/* 8023CBB8  81 83 00 00 */	lwz r12, 0(r3)
/* 8023CBBC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8023CBC0  7D 89 03 A6 */	mtctr r12
/* 8023CBC4  4E 80 04 21 */	bctrl 
/* 8023CBC8  7F E3 FB 78 */	mr r3, r31
/* 8023CBCC  C0 22 B1 B4 */	lfs f1, lit_3916(r2)
/* 8023CBD0  FC 40 08 90 */	fmr f2, f1
/* 8023CBD4  C0 62 B1 B0 */	lfs f3, lit_3854(r2)
/* 8023CBD8  4B FF F7 55 */	bl drawOutFont__14dMsgScrnBase_cFfff
/* 8023CBDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023CBE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023CBE4  7C 08 03 A6 */	mtlr r0
/* 8023CBE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8023CBEC  4E 80 00 20 */	blr 
