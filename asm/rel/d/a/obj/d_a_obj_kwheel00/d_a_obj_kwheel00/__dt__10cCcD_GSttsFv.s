lbl_80C4E63C:
/* 80C4E63C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4E640  7C 08 02 A6 */	mflr r0
/* 80C4E644  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4E648  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4E64C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C4E650  41 82 00 1C */	beq lbl_80C4E66C
/* 80C4E654  3C A0 80 C5 */	lis r5, __vt__10cCcD_GStts@ha
/* 80C4E658  38 05 E9 70 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80C4E65C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C4E660  7C 80 07 35 */	extsh. r0, r4
/* 80C4E664  40 81 00 08 */	ble lbl_80C4E66C
/* 80C4E668  4B 68 06 D4 */	b __dl__FPv
lbl_80C4E66C:
/* 80C4E66C  7F E3 FB 78 */	mr r3, r31
/* 80C4E670  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4E674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4E678  7C 08 03 A6 */	mtlr r0
/* 80C4E67C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4E680  4E 80 00 20 */	blr 
