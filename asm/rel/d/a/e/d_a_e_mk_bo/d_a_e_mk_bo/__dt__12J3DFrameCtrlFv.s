lbl_8071F120:
/* 8071F120  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8071F124  7C 08 02 A6 */	mflr r0
/* 8071F128  90 01 00 14 */	stw r0, 0x14(r1)
/* 8071F12C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8071F130  7C 7F 1B 79 */	or. r31, r3, r3
/* 8071F134  41 82 00 1C */	beq lbl_8071F150
/* 8071F138  3C A0 80 72 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 8071F13C  38 05 F8 0C */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 8071F140  90 1F 00 00 */	stw r0, 0(r31)
/* 8071F144  7C 80 07 35 */	extsh. r0, r4
/* 8071F148  40 81 00 08 */	ble lbl_8071F150
/* 8071F14C  4B BA FB F0 */	b __dl__FPv
lbl_8071F150:
/* 8071F150  7F E3 FB 78 */	mr r3, r31
/* 8071F154  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8071F158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8071F15C  7C 08 03 A6 */	mtlr r0
/* 8071F160  38 21 00 10 */	addi r1, r1, 0x10
/* 8071F164  4E 80 00 20 */	blr 
