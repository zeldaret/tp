lbl_80D6611C:
/* 80D6611C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D66120  7C 08 02 A6 */	mflr r0
/* 80D66124  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D66128  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D6612C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D66130  41 82 00 30 */	beq lbl_80D66160
/* 80D66134  3C 60 80 D6 */	lis r3, __vt__10dCcD_GStts@ha
/* 80D66138  38 03 62 DC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80D6613C  90 1F 00 00 */	stw r0, 0(r31)
/* 80D66140  41 82 00 10 */	beq lbl_80D66150
/* 80D66144  3C 60 80 D6 */	lis r3, __vt__10cCcD_GStts@ha
/* 80D66148  38 03 62 D0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80D6614C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D66150:
/* 80D66150  7C 80 07 35 */	extsh. r0, r4
/* 80D66154  40 81 00 0C */	ble lbl_80D66160
/* 80D66158  7F E3 FB 78 */	mr r3, r31
/* 80D6615C  4B 56 8B E0 */	b __dl__FPv
lbl_80D66160:
/* 80D66160  7F E3 FB 78 */	mr r3, r31
/* 80D66164  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D66168  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D6616C  7C 08 03 A6 */	mtlr r0
/* 80D66170  38 21 00 10 */	addi r1, r1, 0x10
/* 80D66174  4E 80 00 20 */	blr 
