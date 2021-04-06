lbl_80A96358:
/* 80A96358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9635C  7C 08 02 A6 */	mflr r0
/* 80A96360  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A96364  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A96368  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9636C  41 82 00 1C */	beq lbl_80A96388
/* 80A96370  3C A0 80 A9 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80A9795C@ha */
/* 80A96374  38 05 79 5C */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80A9795C@l */
/* 80A96378  90 1F 00 00 */	stw r0, 0(r31)
/* 80A9637C  7C 80 07 35 */	extsh. r0, r4
/* 80A96380  40 81 00 08 */	ble lbl_80A96388
/* 80A96384  4B 83 89 B9 */	bl __dl__FPv
lbl_80A96388:
/* 80A96388  7F E3 FB 78 */	mr r3, r31
/* 80A9638C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A96390  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A96394  7C 08 03 A6 */	mtlr r0
/* 80A96398  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9639C  4E 80 00 20 */	blr 
