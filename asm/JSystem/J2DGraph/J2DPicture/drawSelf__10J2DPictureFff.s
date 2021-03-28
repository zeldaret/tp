lbl_802FDB28:
/* 802FDB28  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802FDB2C  7C 08 02 A6 */	mflr r0
/* 802FDB30  90 01 00 54 */	stw r0, 0x54(r1)
/* 802FDB34  DB E1 00 48 */	stfd f31, 0x48(r1)
/* 802FDB38  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 802FDB3C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802FDB40  7C 7F 1B 78 */	mr r31, r3
/* 802FDB44  FF C0 08 90 */	fmr f30, f1
/* 802FDB48  FF E0 10 90 */	fmr f31, f2
/* 802FDB4C  38 61 00 08 */	addi r3, r1, 8
/* 802FDB50  48 04 89 35 */	bl PSMTXIdentity
/* 802FDB54  7F E3 FB 78 */	mr r3, r31
/* 802FDB58  FC 20 F0 90 */	fmr f1, f30
/* 802FDB5C  FC 40 F8 90 */	fmr f2, f31
/* 802FDB60  38 81 00 08 */	addi r4, r1, 8
/* 802FDB64  81 9F 00 00 */	lwz r12, 0(r31)
/* 802FDB68  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802FDB6C  7D 89 03 A6 */	mtctr r12
/* 802FDB70  4E 80 04 21 */	bctrl 
/* 802FDB74  CB E1 00 48 */	lfd f31, 0x48(r1)
/* 802FDB78  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 802FDB7C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802FDB80  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802FDB84  7C 08 03 A6 */	mtlr r0
/* 802FDB88  38 21 00 50 */	addi r1, r1, 0x50
/* 802FDB8C  4E 80 00 20 */	blr 
