lbl_80A7280C:
/* 80A7280C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A72810  7C 08 02 A6 */	mflr r0
/* 80A72814  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A72818  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A7281C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A72820  41 82 00 1C */	beq lbl_80A7283C
/* 80A72824  3C A0 80 A7 */	lis r5, __vt__10cCcD_GStts@ha
/* 80A72828  38 05 3C 24 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80A7282C  90 1F 00 00 */	stw r0, 0(r31)
/* 80A72830  7C 80 07 35 */	extsh. r0, r4
/* 80A72834  40 81 00 08 */	ble lbl_80A7283C
/* 80A72838  4B 85 C5 04 */	b __dl__FPv
lbl_80A7283C:
/* 80A7283C  7F E3 FB 78 */	mr r3, r31
/* 80A72840  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A72844  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A72848  7C 08 03 A6 */	mtlr r0
/* 80A7284C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A72850  4E 80 00 20 */	blr 
