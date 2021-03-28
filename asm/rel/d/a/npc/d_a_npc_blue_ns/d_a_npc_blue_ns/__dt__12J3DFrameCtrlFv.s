lbl_8096C6DC:
/* 8096C6DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096C6E0  7C 08 02 A6 */	mflr r0
/* 8096C6E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096C6E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8096C6EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8096C6F0  41 82 00 1C */	beq lbl_8096C70C
/* 8096C6F4  3C A0 80 97 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 8096C6F8  38 05 CD F0 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 8096C6FC  90 1F 00 00 */	stw r0, 0(r31)
/* 8096C700  7C 80 07 35 */	extsh. r0, r4
/* 8096C704  40 81 00 08 */	ble lbl_8096C70C
/* 8096C708  4B 96 26 34 */	b __dl__FPv
lbl_8096C70C:
/* 8096C70C  7F E3 FB 78 */	mr r3, r31
/* 8096C710  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8096C714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096C718  7C 08 03 A6 */	mtlr r0
/* 8096C71C  38 21 00 10 */	addi r1, r1, 0x10
/* 8096C720  4E 80 00 20 */	blr 
