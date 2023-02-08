lbl_805DC854:
/* 805DC854  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DC858  7C 08 02 A6 */	mflr r0
/* 805DC85C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DC860  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DC864  7C 7F 1B 79 */	or. r31, r3, r3
/* 805DC868  41 82 00 1C */	beq lbl_805DC884
/* 805DC86C  3C A0 80 5E */	lis r5, __vt__10cCcD_GStts@ha /* 0x805DD9F0@ha */
/* 805DC870  38 05 D9 F0 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x805DD9F0@l */
/* 805DC874  90 1F 00 00 */	stw r0, 0(r31)
/* 805DC878  7C 80 07 35 */	extsh. r0, r4
/* 805DC87C  40 81 00 08 */	ble lbl_805DC884
/* 805DC880  4B CF 24 BD */	bl __dl__FPv
lbl_805DC884:
/* 805DC884  7F E3 FB 78 */	mr r3, r31
/* 805DC888  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DC88C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DC890  7C 08 03 A6 */	mtlr r0
/* 805DC894  38 21 00 10 */	addi r1, r1, 0x10
/* 805DC898  4E 80 00 20 */	blr 
