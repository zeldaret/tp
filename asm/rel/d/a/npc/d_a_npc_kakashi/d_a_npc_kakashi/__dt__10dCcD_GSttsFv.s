lbl_8054E518:
/* 8054E518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054E51C  7C 08 02 A6 */	mflr r0
/* 8054E520  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054E524  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054E528  7C 7F 1B 79 */	or. r31, r3, r3
/* 8054E52C  41 82 00 30 */	beq lbl_8054E55C
/* 8054E530  3C 60 80 55 */	lis r3, __vt__10dCcD_GStts@ha
/* 8054E534  38 03 F0 80 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 8054E538  90 1F 00 00 */	stw r0, 0(r31)
/* 8054E53C  41 82 00 10 */	beq lbl_8054E54C
/* 8054E540  3C 60 80 55 */	lis r3, __vt__10cCcD_GStts@ha
/* 8054E544  38 03 F0 74 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 8054E548  90 1F 00 00 */	stw r0, 0(r31)
lbl_8054E54C:
/* 8054E54C  7C 80 07 35 */	extsh. r0, r4
/* 8054E550  40 81 00 0C */	ble lbl_8054E55C
/* 8054E554  7F E3 FB 78 */	mr r3, r31
/* 8054E558  4B D8 07 E4 */	b __dl__FPv
lbl_8054E55C:
/* 8054E55C  7F E3 FB 78 */	mr r3, r31
/* 8054E560  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054E564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054E568  7C 08 03 A6 */	mtlr r0
/* 8054E56C  38 21 00 10 */	addi r1, r1, 0x10
/* 8054E570  4E 80 00 20 */	blr 
