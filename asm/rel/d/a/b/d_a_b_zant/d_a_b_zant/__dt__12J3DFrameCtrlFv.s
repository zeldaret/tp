lbl_8064E128:
/* 8064E128  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8064E12C  7C 08 02 A6 */	mflr r0
/* 8064E130  90 01 00 14 */	stw r0, 0x14(r1)
/* 8064E134  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8064E138  7C 7F 1B 79 */	or. r31, r3, r3
/* 8064E13C  41 82 00 1C */	beq lbl_8064E158
/* 8064E140  3C A0 80 65 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x8064F550@ha */
/* 8064E144  38 05 F5 50 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x8064F550@l */
/* 8064E148  90 1F 00 00 */	stw r0, 0(r31)
/* 8064E14C  7C 80 07 35 */	extsh. r0, r4
/* 8064E150  40 81 00 08 */	ble lbl_8064E158
/* 8064E154  4B C8 0B E9 */	bl __dl__FPv
lbl_8064E158:
/* 8064E158  7F E3 FB 78 */	mr r3, r31
/* 8064E15C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8064E160  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8064E164  7C 08 03 A6 */	mtlr r0
/* 8064E168  38 21 00 10 */	addi r1, r1, 0x10
/* 8064E16C  4E 80 00 20 */	blr 
