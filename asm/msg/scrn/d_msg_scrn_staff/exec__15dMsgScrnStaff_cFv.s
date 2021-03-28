lbl_80246EE8:
/* 80246EE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80246EEC  7C 08 02 A6 */	mflr r0
/* 80246EF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80246EF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80246EF8  7C 7F 1B 78 */	mr r31, r3
/* 80246EFC  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 80246F00  38 83 02 8C */	addi r4, r3, g_MsgObject_HIO_c@l
/* 80246F04  C0 24 00 BC */	lfs f1, 0xbc(r4)
/* 80246F08  80 7F 00 08 */	lwz r3, 8(r31)
/* 80246F0C  80 63 00 04 */	lwz r3, 4(r3)
/* 80246F10  C0 04 00 90 */	lfs f0, 0x90(r4)
/* 80246F14  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80246F18  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 80246F1C  81 83 00 00 */	lwz r12, 0(r3)
/* 80246F20  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80246F24  7D 89 03 A6 */	mtctr r12
/* 80246F28  4E 80 04 21 */	bctrl 
/* 80246F2C  7F E3 FB 78 */	mr r3, r31
/* 80246F30  4B FF 56 45 */	bl isTalkNow__14dMsgScrnBase_cFv
/* 80246F34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80246F38  41 82 00 1C */	beq lbl_80246F54
/* 80246F3C  7F E3 FB 78 */	mr r3, r31
/* 80246F40  C0 22 B2 FC */	lfs f1, lit_3877(r2)
/* 80246F44  81 9F 00 00 */	lwz r12, 0(r31)
/* 80246F48  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80246F4C  7D 89 03 A6 */	mtctr r12
/* 80246F50  4E 80 04 21 */	bctrl 
lbl_80246F54:
/* 80246F54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80246F58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80246F5C  7C 08 03 A6 */	mtlr r0
/* 80246F60  38 21 00 10 */	addi r1, r1, 0x10
/* 80246F64  4E 80 00 20 */	blr 
