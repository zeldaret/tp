lbl_80BF4800:
/* 80BF4800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF4804  7C 08 02 A6 */	mflr r0
/* 80BF4808  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF480C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF4810  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BF4814  41 82 00 1C */	beq lbl_80BF4830
/* 80BF4818  3C A0 80 BF */	lis r5, __vt__10cCcD_GStts@ha /* 0x80BF4B30@ha */
/* 80BF481C  38 05 4B 30 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80BF4B30@l */
/* 80BF4820  90 1F 00 00 */	stw r0, 0(r31)
/* 80BF4824  7C 80 07 35 */	extsh. r0, r4
/* 80BF4828  40 81 00 08 */	ble lbl_80BF4830
/* 80BF482C  4B 6D A5 11 */	bl __dl__FPv
lbl_80BF4830:
/* 80BF4830  7F E3 FB 78 */	mr r3, r31
/* 80BF4834  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF4838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF483C  7C 08 03 A6 */	mtlr r0
/* 80BF4840  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF4844  4E 80 00 20 */	blr 
