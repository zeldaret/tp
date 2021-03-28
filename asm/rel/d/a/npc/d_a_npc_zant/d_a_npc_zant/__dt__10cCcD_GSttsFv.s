lbl_80B6D804:
/* 80B6D804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6D808  7C 08 02 A6 */	mflr r0
/* 80B6D80C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6D810  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6D814  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B6D818  41 82 00 1C */	beq lbl_80B6D834
/* 80B6D81C  3C A0 80 B7 */	lis r5, __vt__10cCcD_GStts@ha
/* 80B6D820  38 05 EB F8 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80B6D824  90 1F 00 00 */	stw r0, 0(r31)
/* 80B6D828  7C 80 07 35 */	extsh. r0, r4
/* 80B6D82C  40 81 00 08 */	ble lbl_80B6D834
/* 80B6D830  4B 76 15 0C */	b __dl__FPv
lbl_80B6D834:
/* 80B6D834  7F E3 FB 78 */	mr r3, r31
/* 80B6D838  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6D83C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6D840  7C 08 03 A6 */	mtlr r0
/* 80B6D844  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6D848  4E 80 00 20 */	blr 
