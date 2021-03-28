lbl_8023CA88:
/* 8023CA88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023CA8C  7C 08 02 A6 */	mflr r0
/* 8023CA90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023CA94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023CA98  7C 7F 1B 78 */	mr r31, r3
/* 8023CA9C  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 8023CAA0  38 83 02 8C */	addi r4, r3, g_MsgObject_HIO_c@l
/* 8023CAA4  C0 24 00 C4 */	lfs f1, 0xc4(r4)
/* 8023CAA8  80 7F 00 08 */	lwz r3, 8(r31)
/* 8023CAAC  80 63 00 04 */	lwz r3, 4(r3)
/* 8023CAB0  C0 04 00 98 */	lfs f0, 0x98(r4)
/* 8023CAB4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8023CAB8  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 8023CABC  81 83 00 00 */	lwz r12, 0(r3)
/* 8023CAC0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8023CAC4  7D 89 03 A6 */	mtctr r12
/* 8023CAC8  4E 80 04 21 */	bctrl 
/* 8023CACC  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 8023CAD0  38 83 02 8C */	addi r4, r3, g_MsgObject_HIO_c@l
/* 8023CAD4  C0 24 01 A8 */	lfs f1, 0x1a8(r4)
/* 8023CAD8  80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 8023CADC  80 63 00 04 */	lwz r3, 4(r3)
/* 8023CAE0  C0 04 01 A0 */	lfs f0, 0x1a0(r4)
/* 8023CAE4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8023CAE8  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 8023CAEC  81 83 00 00 */	lwz r12, 0(r3)
/* 8023CAF0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8023CAF4  7D 89 03 A6 */	mtctr r12
/* 8023CAF8  4E 80 04 21 */	bctrl 
/* 8023CAFC  80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 8023CB00  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha
/* 8023CB04  38 84 02 8C */	addi r4, r4, g_MsgObject_HIO_c@l
/* 8023CB08  C0 24 01 90 */	lfs f1, 0x190(r4)
/* 8023CB0C  C0 44 01 98 */	lfs f2, 0x198(r4)
/* 8023CB10  48 01 7A A1 */	bl paneTrans__8CPaneMgrFff
/* 8023CB14  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 8023CB18  38 83 02 8C */	addi r4, r3, g_MsgObject_HIO_c@l
/* 8023CB1C  C0 24 01 C8 */	lfs f1, 0x1c8(r4)
/* 8023CB20  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 8023CB24  80 63 00 04 */	lwz r3, 4(r3)
/* 8023CB28  C0 04 01 C0 */	lfs f0, 0x1c0(r4)
/* 8023CB2C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8023CB30  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 8023CB34  81 83 00 00 */	lwz r12, 0(r3)
/* 8023CB38  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8023CB3C  7D 89 03 A6 */	mtctr r12
/* 8023CB40  4E 80 04 21 */	bctrl 
/* 8023CB44  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 8023CB48  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha
/* 8023CB4C  38 84 02 8C */	addi r4, r4, g_MsgObject_HIO_c@l
/* 8023CB50  C0 24 01 B0 */	lfs f1, 0x1b0(r4)
/* 8023CB54  C0 44 01 B8 */	lfs f2, 0x1b8(r4)
/* 8023CB58  48 01 7A 59 */	bl paneTrans__8CPaneMgrFff
/* 8023CB5C  7F E3 FB 78 */	mr r3, r31
/* 8023CB60  4B FF FA 15 */	bl isTalkNow__14dMsgScrnBase_cFv
/* 8023CB64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8023CB68  41 82 00 1C */	beq lbl_8023CB84
/* 8023CB6C  7F E3 FB 78 */	mr r3, r31
/* 8023CB70  C0 22 B1 B0 */	lfs f1, lit_3854(r2)
/* 8023CB74  81 9F 00 00 */	lwz r12, 0(r31)
/* 8023CB78  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8023CB7C  7D 89 03 A6 */	mtctr r12
/* 8023CB80  4E 80 04 21 */	bctrl 
lbl_8023CB84:
/* 8023CB84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023CB88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023CB8C  7C 08 03 A6 */	mtlr r0
/* 8023CB90  38 21 00 10 */	addi r1, r1, 0x10
/* 8023CB94  4E 80 00 20 */	blr 
