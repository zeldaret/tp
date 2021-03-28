lbl_80B2C6F0:
/* 80B2C6F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2C6F4  7C 08 02 A6 */	mflr r0
/* 80B2C6F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2C6FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2C700  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B2C704  41 82 00 1C */	beq lbl_80B2C720
/* 80B2C708  3C A0 80 B3 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80B2C70C  38 05 DB A0 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80B2C710  90 1F 00 00 */	stw r0, 0(r31)
/* 80B2C714  7C 80 07 35 */	extsh. r0, r4
/* 80B2C718  40 81 00 08 */	ble lbl_80B2C720
/* 80B2C71C  4B 7A 26 20 */	b __dl__FPv
lbl_80B2C720:
/* 80B2C720  7F E3 FB 78 */	mr r3, r31
/* 80B2C724  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2C728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2C72C  7C 08 03 A6 */	mtlr r0
/* 80B2C730  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2C734  4E 80 00 20 */	blr 
