lbl_80CD4800:
/* 80CD4800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD4804  7C 08 02 A6 */	mflr r0
/* 80CD4808  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD480C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD4810  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CD4814  41 82 00 1C */	beq lbl_80CD4830
/* 80CD4818  3C A0 80 CD */	lis r5, __vt__10cCcD_GStts@ha
/* 80CD481C  38 05 67 A8 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80CD4820  90 1F 00 00 */	stw r0, 0(r31)
/* 80CD4824  7C 80 07 35 */	extsh. r0, r4
/* 80CD4828  40 81 00 08 */	ble lbl_80CD4830
/* 80CD482C  4B 5F A5 10 */	b __dl__FPv
lbl_80CD4830:
/* 80CD4830  7F E3 FB 78 */	mr r3, r31
/* 80CD4834  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD4838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD483C  7C 08 03 A6 */	mtlr r0
/* 80CD4840  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD4844  4E 80 00 20 */	blr 
