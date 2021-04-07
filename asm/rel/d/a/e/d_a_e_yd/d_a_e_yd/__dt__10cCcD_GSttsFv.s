lbl_807F7484:
/* 807F7484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F7488  7C 08 02 A6 */	mflr r0
/* 807F748C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F7490  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807F7494  7C 7F 1B 79 */	or. r31, r3, r3
/* 807F7498  41 82 00 1C */	beq lbl_807F74B4
/* 807F749C  3C A0 80 7F */	lis r5, __vt__10cCcD_GStts@ha /* 0x807F7CD4@ha */
/* 807F74A0  38 05 7C D4 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x807F7CD4@l */
/* 807F74A4  90 1F 00 00 */	stw r0, 0(r31)
/* 807F74A8  7C 80 07 35 */	extsh. r0, r4
/* 807F74AC  40 81 00 08 */	ble lbl_807F74B4
/* 807F74B0  4B AD 78 8D */	bl __dl__FPv
lbl_807F74B4:
/* 807F74B4  7F E3 FB 78 */	mr r3, r31
/* 807F74B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807F74BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F74C0  7C 08 03 A6 */	mtlr r0
/* 807F74C4  38 21 00 10 */	addi r1, r1, 0x10
/* 807F74C8  4E 80 00 20 */	blr 
