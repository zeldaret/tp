lbl_80BEB448:
/* 80BEB448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEB44C  7C 08 02 A6 */	mflr r0
/* 80BEB450  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEB454  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEB458  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BEB45C  41 82 00 1C */	beq lbl_80BEB478
/* 80BEB460  3C A0 80 BF */	lis r5, __vt__10cCcD_GStts@ha /* 0x80BEB688@ha */
/* 80BEB464  38 05 B6 88 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80BEB688@l */
/* 80BEB468  90 1F 00 00 */	stw r0, 0(r31)
/* 80BEB46C  7C 80 07 35 */	extsh. r0, r4
/* 80BEB470  40 81 00 08 */	ble lbl_80BEB478
/* 80BEB474  4B 6E 38 C9 */	bl __dl__FPv
lbl_80BEB478:
/* 80BEB478  7F E3 FB 78 */	mr r3, r31
/* 80BEB47C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEB480  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEB484  7C 08 03 A6 */	mtlr r0
/* 80BEB488  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEB48C  4E 80 00 20 */	blr 
