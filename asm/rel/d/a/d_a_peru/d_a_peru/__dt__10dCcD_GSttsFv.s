lbl_80D4B874:
/* 80D4B874  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4B878  7C 08 02 A6 */	mflr r0
/* 80D4B87C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4B880  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4B884  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D4B888  41 82 00 30 */	beq lbl_80D4B8B8
/* 80D4B88C  3C 60 80 D5 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80D4C6D8@ha */
/* 80D4B890  38 03 C6 D8 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80D4C6D8@l */
/* 80D4B894  90 1F 00 00 */	stw r0, 0(r31)
/* 80D4B898  41 82 00 10 */	beq lbl_80D4B8A8
/* 80D4B89C  3C 60 80 D5 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80D4C6CC@ha */
/* 80D4B8A0  38 03 C6 CC */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80D4C6CC@l */
/* 80D4B8A4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D4B8A8:
/* 80D4B8A8  7C 80 07 35 */	extsh. r0, r4
/* 80D4B8AC  40 81 00 0C */	ble lbl_80D4B8B8
/* 80D4B8B0  7F E3 FB 78 */	mr r3, r31
/* 80D4B8B4  4B 58 34 89 */	bl __dl__FPv
lbl_80D4B8B8:
/* 80D4B8B8  7F E3 FB 78 */	mr r3, r31
/* 80D4B8BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4B8C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4B8C4  7C 08 03 A6 */	mtlr r0
/* 80D4B8C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4B8CC  4E 80 00 20 */	blr 
