lbl_80CE55A8:
/* 80CE55A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE55AC  7C 08 02 A6 */	mflr r0
/* 80CE55B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE55B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE55B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CE55BC  41 82 00 1C */	beq lbl_80CE55D8
/* 80CE55C0  3C A0 80 CE */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80CE55C4  38 05 6B 04 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80CE55C8  90 1F 00 00 */	stw r0, 0(r31)
/* 80CE55CC  7C 80 07 35 */	extsh. r0, r4
/* 80CE55D0  40 81 00 08 */	ble lbl_80CE55D8
/* 80CE55D4  4B 5E 97 68 */	b __dl__FPv
lbl_80CE55D8:
/* 80CE55D8  7F E3 FB 78 */	mr r3, r31
/* 80CE55DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE55E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE55E4  7C 08 03 A6 */	mtlr r0
/* 80CE55E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE55EC  4E 80 00 20 */	blr 
