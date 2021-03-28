lbl_801CA7A4:
/* 801CA7A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CA7A8  7C 08 02 A6 */	mflr r0
/* 801CA7AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CA7B0  A8 83 02 14 */	lha r4, 0x214(r3)
/* 801CA7B4  38 04 00 01 */	addi r0, r4, 1
/* 801CA7B8  B0 03 02 14 */	sth r0, 0x214(r3)
/* 801CA7BC  A8 03 02 14 */	lha r0, 0x214(r3)
/* 801CA7C0  2C 00 00 00 */	cmpwi r0, 0
/* 801CA7C4  40 81 00 0C */	ble lbl_801CA7D0
/* 801CA7C8  38 80 00 18 */	li r4, 0x18
/* 801CA7CC  48 00 0F 05 */	bl setProcess__12dMenu_Fmap_cFUc
lbl_801CA7D0:
/* 801CA7D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CA7D4  7C 08 03 A6 */	mtlr r0
/* 801CA7D8  38 21 00 10 */	addi r1, r1, 0x10
/* 801CA7DC  4E 80 00 20 */	blr 
