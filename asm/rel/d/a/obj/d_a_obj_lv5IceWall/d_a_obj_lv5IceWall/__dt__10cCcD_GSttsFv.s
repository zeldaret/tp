lbl_80C6C508:
/* 80C6C508  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6C50C  7C 08 02 A6 */	mflr r0
/* 80C6C510  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6C514  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6C518  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C6C51C  41 82 00 1C */	beq lbl_80C6C538
/* 80C6C520  3C A0 80 C7 */	lis r5, __vt__10cCcD_GStts@ha
/* 80C6C524  38 05 C7 AC */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80C6C528  90 1F 00 00 */	stw r0, 0(r31)
/* 80C6C52C  7C 80 07 35 */	extsh. r0, r4
/* 80C6C530  40 81 00 08 */	ble lbl_80C6C538
/* 80C6C534  4B 66 28 08 */	b __dl__FPv
lbl_80C6C538:
/* 80C6C538  7F E3 FB 78 */	mr r3, r31
/* 80C6C53C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6C540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6C544  7C 08 03 A6 */	mtlr r0
/* 80C6C548  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6C54C  4E 80 00 20 */	blr 
