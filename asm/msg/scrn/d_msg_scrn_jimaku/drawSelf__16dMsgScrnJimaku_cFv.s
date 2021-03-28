lbl_80244D34:
/* 80244D34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80244D38  7C 08 02 A6 */	mflr r0
/* 80244D3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80244D40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80244D44  7C 7F 1B 78 */	mr r31, r3
/* 80244D48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80244D4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80244D50  80 63 5F 50 */	lwz r3, 0x5f50(r3)
/* 80244D54  81 83 00 00 */	lwz r12, 0(r3)
/* 80244D58  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80244D5C  7D 89 03 A6 */	mtctr r12
/* 80244D60  4E 80 04 21 */	bctrl 
/* 80244D64  7F E3 FB 78 */	mr r3, r31
/* 80244D68  C0 22 B2 B0 */	lfs f1, lit_3941(r2)
/* 80244D6C  FC 40 08 90 */	fmr f2, f1
/* 80244D70  C0 62 B2 B8 */	lfs f3, lit_4021(r2)
/* 80244D74  4B FF 75 B9 */	bl drawOutFont__14dMsgScrnBase_cFfff
/* 80244D78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80244D7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80244D80  7C 08 03 A6 */	mtlr r0
/* 80244D84  38 21 00 10 */	addi r1, r1, 0x10
/* 80244D88  4E 80 00 20 */	blr 
