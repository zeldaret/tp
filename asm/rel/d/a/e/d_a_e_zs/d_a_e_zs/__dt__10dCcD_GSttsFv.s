lbl_80834C38:
/* 80834C38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80834C3C  7C 08 02 A6 */	mflr r0
/* 80834C40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80834C44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80834C48  7C 7F 1B 79 */	or. r31, r3, r3
/* 80834C4C  41 82 00 30 */	beq lbl_80834C7C
/* 80834C50  3C 60 80 83 */	lis r3, __vt__10dCcD_GStts@ha
/* 80834C54  38 03 54 44 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80834C58  90 1F 00 00 */	stw r0, 0(r31)
/* 80834C5C  41 82 00 10 */	beq lbl_80834C6C
/* 80834C60  3C 60 80 83 */	lis r3, __vt__10cCcD_GStts@ha
/* 80834C64  38 03 54 38 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80834C68  90 1F 00 00 */	stw r0, 0(r31)
lbl_80834C6C:
/* 80834C6C  7C 80 07 35 */	extsh. r0, r4
/* 80834C70  40 81 00 0C */	ble lbl_80834C7C
/* 80834C74  7F E3 FB 78 */	mr r3, r31
/* 80834C78  4B A9 A0 C4 */	b __dl__FPv
lbl_80834C7C:
/* 80834C7C  7F E3 FB 78 */	mr r3, r31
/* 80834C80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80834C84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80834C88  7C 08 03 A6 */	mtlr r0
/* 80834C8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80834C90  4E 80 00 20 */	blr 
