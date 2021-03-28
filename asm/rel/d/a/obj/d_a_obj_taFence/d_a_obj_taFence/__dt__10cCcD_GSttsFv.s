lbl_80D05FB8:
/* 80D05FB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D05FBC  7C 08 02 A6 */	mflr r0
/* 80D05FC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D05FC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D05FC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D05FCC  41 82 00 1C */	beq lbl_80D05FE8
/* 80D05FD0  3C A0 80 D0 */	lis r5, __vt__10cCcD_GStts@ha
/* 80D05FD4  38 05 62 B8 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80D05FD8  90 1F 00 00 */	stw r0, 0(r31)
/* 80D05FDC  7C 80 07 35 */	extsh. r0, r4
/* 80D05FE0  40 81 00 08 */	ble lbl_80D05FE8
/* 80D05FE4  4B 5C 8D 58 */	b __dl__FPv
lbl_80D05FE8:
/* 80D05FE8  7F E3 FB 78 */	mr r3, r31
/* 80D05FEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D05FF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D05FF4  7C 08 03 A6 */	mtlr r0
/* 80D05FF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D05FFC  4E 80 00 20 */	blr 
