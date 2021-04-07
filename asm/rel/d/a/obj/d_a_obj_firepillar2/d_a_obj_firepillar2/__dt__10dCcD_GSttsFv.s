lbl_80BEA448:
/* 80BEA448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEA44C  7C 08 02 A6 */	mflr r0
/* 80BEA450  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEA454  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEA458  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BEA45C  41 82 00 30 */	beq lbl_80BEA48C
/* 80BEA460  3C 60 80 BF */	lis r3, __vt__10dCcD_GStts@ha /* 0x80BEB694@ha */
/* 80BEA464  38 03 B6 94 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80BEB694@l */
/* 80BEA468  90 1F 00 00 */	stw r0, 0(r31)
/* 80BEA46C  41 82 00 10 */	beq lbl_80BEA47C
/* 80BEA470  3C 60 80 BF */	lis r3, __vt__10cCcD_GStts@ha /* 0x80BEB688@ha */
/* 80BEA474  38 03 B6 88 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80BEB688@l */
/* 80BEA478  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BEA47C:
/* 80BEA47C  7C 80 07 35 */	extsh. r0, r4
/* 80BEA480  40 81 00 0C */	ble lbl_80BEA48C
/* 80BEA484  7F E3 FB 78 */	mr r3, r31
/* 80BEA488  4B 6E 48 B5 */	bl __dl__FPv
lbl_80BEA48C:
/* 80BEA48C  7F E3 FB 78 */	mr r3, r31
/* 80BEA490  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEA494  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEA498  7C 08 03 A6 */	mtlr r0
/* 80BEA49C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEA4A0  4E 80 00 20 */	blr 
