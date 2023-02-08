lbl_80CC6BC8:
/* 80CC6BC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC6BCC  7C 08 02 A6 */	mflr r0
/* 80CC6BD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC6BD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC6BD8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CC6BDC  41 82 00 1C */	beq lbl_80CC6BF8
/* 80CC6BE0  3C A0 80 CD */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80CC95F4@ha */
/* 80CC6BE4  38 05 95 F4 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80CC95F4@l */
/* 80CC6BE8  90 1F 00 00 */	stw r0, 0(r31)
/* 80CC6BEC  7C 80 07 35 */	extsh. r0, r4
/* 80CC6BF0  40 81 00 08 */	ble lbl_80CC6BF8
/* 80CC6BF4  4B 60 81 49 */	bl __dl__FPv
lbl_80CC6BF8:
/* 80CC6BF8  7F E3 FB 78 */	mr r3, r31
/* 80CC6BFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC6C00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC6C04  7C 08 03 A6 */	mtlr r0
/* 80CC6C08  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC6C0C  4E 80 00 20 */	blr 
