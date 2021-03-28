lbl_80CB8704:
/* 80CB8704  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB8708  7C 08 02 A6 */	mflr r0
/* 80CB870C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB8710  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB8714  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CB8718  41 82 00 1C */	beq lbl_80CB8734
/* 80CB871C  3C A0 80 CC */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80CB8720  38 05 8D 70 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80CB8724  90 1F 00 00 */	stw r0, 0(r31)
/* 80CB8728  7C 80 07 35 */	extsh. r0, r4
/* 80CB872C  40 81 00 08 */	ble lbl_80CB8734
/* 80CB8730  4B 61 66 0C */	b __dl__FPv
lbl_80CB8734:
/* 80CB8734  7F E3 FB 78 */	mr r3, r31
/* 80CB8738  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB873C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB8740  7C 08 03 A6 */	mtlr r0
/* 80CB8744  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB8748  4E 80 00 20 */	blr 
