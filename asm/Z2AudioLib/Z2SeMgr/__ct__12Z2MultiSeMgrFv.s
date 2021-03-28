lbl_802AEB04:
/* 802AEB04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AEB08  7C 08 02 A6 */	mflr r0
/* 802AEB0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AEB10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AEB14  7C 7F 1B 78 */	mr r31, r3
/* 802AEB18  48 00 01 A5 */	bl resetMultiSePos__12Z2MultiSeMgrFv
/* 802AEB1C  7F E3 FB 78 */	mr r3, r31
/* 802AEB20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AEB24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AEB28  7C 08 03 A6 */	mtlr r0
/* 802AEB2C  38 21 00 10 */	addi r1, r1, 0x10
/* 802AEB30  4E 80 00 20 */	blr 
