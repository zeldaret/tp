lbl_80246924:
/* 80246924  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80246928  7C 08 02 A6 */	mflr r0
/* 8024692C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80246930  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80246934  7C 7F 1B 78 */	mr r31, r3
/* 80246938  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 8024693C  38 83 02 8C */	addi r4, r3, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 80246940  C0 24 00 BC */	lfs f1, 0xbc(r4)
/* 80246944  80 7F 00 08 */	lwz r3, 8(r31)
/* 80246948  80 63 00 04 */	lwz r3, 4(r3)
/* 8024694C  C0 04 00 90 */	lfs f0, 0x90(r4)
/* 80246950  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80246954  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 80246958  81 83 00 00 */	lwz r12, 0(r3)
/* 8024695C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80246960  7D 89 03 A6 */	mtctr r12
/* 80246964  4E 80 04 21 */	bctrl 
/* 80246968  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 8024696C  38 83 02 8C */	addi r4, r3, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 80246970  C0 24 01 A4 */	lfs f1, 0x1a4(r4)
/* 80246974  80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 80246978  80 63 00 04 */	lwz r3, 4(r3)
/* 8024697C  C0 04 01 9C */	lfs f0, 0x19c(r4)
/* 80246980  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80246984  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 80246988  81 83 00 00 */	lwz r12, 0(r3)
/* 8024698C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80246990  7D 89 03 A6 */	mtctr r12
/* 80246994  4E 80 04 21 */	bctrl 
/* 80246998  80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 8024699C  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 802469A0  38 84 02 8C */	addi r4, r4, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 802469A4  C0 24 01 8C */	lfs f1, 0x18c(r4)
/* 802469A8  C0 44 01 94 */	lfs f2, 0x194(r4)
/* 802469AC  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 802469B0  EC 42 00 28 */	fsubs f2, f2, f0
/* 802469B4  48 00 DB FD */	bl paneTrans__8CPaneMgrFff
/* 802469B8  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 802469BC  38 83 02 8C */	addi r4, r3, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 802469C0  C0 24 01 C4 */	lfs f1, 0x1c4(r4)
/* 802469C4  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 802469C8  80 63 00 04 */	lwz r3, 4(r3)
/* 802469CC  C0 04 01 BC */	lfs f0, 0x1bc(r4)
/* 802469D0  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 802469D4  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 802469D8  81 83 00 00 */	lwz r12, 0(r3)
/* 802469DC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802469E0  7D 89 03 A6 */	mtctr r12
/* 802469E4  4E 80 04 21 */	bctrl 
/* 802469E8  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 802469EC  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 802469F0  38 84 02 8C */	addi r4, r4, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 802469F4  C0 24 01 AC */	lfs f1, 0x1ac(r4)
/* 802469F8  C0 44 01 B4 */	lfs f2, 0x1b4(r4)
/* 802469FC  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80246A00  EC 42 00 28 */	fsubs f2, f2, f0
/* 80246A04  48 00 DB AD */	bl paneTrans__8CPaneMgrFff
/* 80246A08  7F E3 FB 78 */	mr r3, r31
/* 80246A0C  4B FF 5B 69 */	bl isTalkNow__14dMsgScrnBase_cFv
/* 80246A10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80246A14  41 82 00 1C */	beq lbl_80246A30
/* 80246A18  7F E3 FB 78 */	mr r3, r31
/* 80246A1C  C0 22 B2 EC */	lfs f1, lit_3999(r2)
/* 80246A20  81 9F 00 00 */	lwz r12, 0(r31)
/* 80246A24  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80246A28  7D 89 03 A6 */	mtctr r12
/* 80246A2C  4E 80 04 21 */	bctrl 
lbl_80246A30:
/* 80246A30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80246A34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80246A38  7C 08 03 A6 */	mtlr r0
/* 80246A3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80246A40  4E 80 00 20 */	blr 
