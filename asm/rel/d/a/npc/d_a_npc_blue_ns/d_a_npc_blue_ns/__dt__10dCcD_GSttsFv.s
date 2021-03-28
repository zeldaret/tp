lbl_8096C610:
/* 8096C610  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096C614  7C 08 02 A6 */	mflr r0
/* 8096C618  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096C61C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8096C620  7C 7F 1B 79 */	or. r31, r3, r3
/* 8096C624  41 82 00 30 */	beq lbl_8096C654
/* 8096C628  3C 60 80 97 */	lis r3, __vt__10dCcD_GStts@ha
/* 8096C62C  38 03 CE 2C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 8096C630  90 1F 00 00 */	stw r0, 0(r31)
/* 8096C634  41 82 00 10 */	beq lbl_8096C644
/* 8096C638  3C 60 80 97 */	lis r3, __vt__10cCcD_GStts@ha
/* 8096C63C  38 03 CE 20 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 8096C640  90 1F 00 00 */	stw r0, 0(r31)
lbl_8096C644:
/* 8096C644  7C 80 07 35 */	extsh. r0, r4
/* 8096C648  40 81 00 0C */	ble lbl_8096C654
/* 8096C64C  7F E3 FB 78 */	mr r3, r31
/* 8096C650  4B 96 26 EC */	b __dl__FPv
lbl_8096C654:
/* 8096C654  7F E3 FB 78 */	mr r3, r31
/* 8096C658  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8096C65C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096C660  7C 08 03 A6 */	mtlr r0
/* 8096C664  38 21 00 10 */	addi r1, r1, 0x10
/* 8096C668  4E 80 00 20 */	blr 
