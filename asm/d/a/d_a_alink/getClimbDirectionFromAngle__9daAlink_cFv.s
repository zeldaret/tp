lbl_800FE3C4:
/* 800FE3C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FE3C8  7C 08 02 A6 */	mflr r0
/* 800FE3CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FE3D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FE3D4  A8 83 04 E6 */	lha r4, 0x4e6(r3)
/* 800FE3D8  A8 03 2F E2 */	lha r0, 0x2fe2(r3)
/* 800FE3DC  7C 04 00 50 */	subf r0, r4, r0
/* 800FE3E0  7C 1F 07 34 */	extsh r31, r0
/* 800FE3E4  7F E3 FB 78 */	mr r3, r31
/* 800FE3E8  48 26 6C E9 */	bl abs
/* 800FE3EC  2C 03 70 00 */	cmpwi r3, 0x7000
/* 800FE3F0  40 81 00 0C */	ble lbl_800FE3FC
/* 800FE3F4  38 60 00 01 */	li r3, 1
/* 800FE3F8  48 00 00 2C */	b lbl_800FE424
lbl_800FE3FC:
/* 800FE3FC  2C 1F 10 00 */	cmpwi r31, 0x1000
/* 800FE400  41 80 00 0C */	blt lbl_800FE40C
/* 800FE404  38 60 00 02 */	li r3, 2
/* 800FE408  48 00 00 1C */	b lbl_800FE424
lbl_800FE40C:
/* 800FE40C  6F E3 80 00 */	xoris r3, r31, 0x8000
/* 800FE410  20 1F F0 00 */	subfic r0, r31, -4096
/* 800FE414  7C 00 18 14 */	addc r0, r0, r3
/* 800FE418  7C 60 01 10 */	subfe r3, r0, r0
/* 800FE41C  38 00 00 03 */	li r0, 3
/* 800FE420  7C 03 18 38 */	and r3, r0, r3
lbl_800FE424:
/* 800FE424  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FE428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FE42C  7C 08 03 A6 */	mtlr r0
/* 800FE430  38 21 00 10 */	addi r1, r1, 0x10
/* 800FE434  4E 80 00 20 */	blr 
