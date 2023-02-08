lbl_80BCA700:
/* 80BCA700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCA704  7C 08 02 A6 */	mflr r0
/* 80BCA708  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCA70C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCA710  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BCA714  41 82 00 1C */	beq lbl_80BCA730
/* 80BCA718  3C A0 80 BD */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80BCC72C@ha */
/* 80BCA71C  38 05 C7 2C */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80BCC72C@l */
/* 80BCA720  90 1F 00 00 */	stw r0, 0(r31)
/* 80BCA724  7C 80 07 35 */	extsh. r0, r4
/* 80BCA728  40 81 00 08 */	ble lbl_80BCA730
/* 80BCA72C  4B 70 46 11 */	bl __dl__FPv
lbl_80BCA730:
/* 80BCA730  7F E3 FB 78 */	mr r3, r31
/* 80BCA734  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCA738  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCA73C  7C 08 03 A6 */	mtlr r0
/* 80BCA740  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCA744  4E 80 00 20 */	blr 
