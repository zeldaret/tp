lbl_80D195CC:
/* 80D195CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D195D0  7C 08 02 A6 */	mflr r0
/* 80D195D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D195D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D195DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D195E0  41 82 00 1C */	beq lbl_80D195FC
/* 80D195E4  3C A0 80 D2 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80D195E8  38 05 B8 CC */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80D195EC  90 1F 00 00 */	stw r0, 0(r31)
/* 80D195F0  7C 80 07 35 */	extsh. r0, r4
/* 80D195F4  40 81 00 08 */	ble lbl_80D195FC
/* 80D195F8  4B 5B 57 44 */	b __dl__FPv
lbl_80D195FC:
/* 80D195FC  7F E3 FB 78 */	mr r3, r31
/* 80D19600  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D19604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D19608  7C 08 03 A6 */	mtlr r0
/* 80D1960C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D19610  4E 80 00 20 */	blr 
