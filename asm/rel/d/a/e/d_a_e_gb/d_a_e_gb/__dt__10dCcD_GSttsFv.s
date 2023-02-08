lbl_806C6EEC:
/* 806C6EEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C6EF0  7C 08 02 A6 */	mflr r0
/* 806C6EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C6EF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806C6EFC  7C 7F 1B 79 */	or. r31, r3, r3
/* 806C6F00  41 82 00 30 */	beq lbl_806C6F30
/* 806C6F04  3C 60 80 6C */	lis r3, __vt__10dCcD_GStts@ha /* 0x806C78A8@ha */
/* 806C6F08  38 03 78 A8 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x806C78A8@l */
/* 806C6F0C  90 1F 00 00 */	stw r0, 0(r31)
/* 806C6F10  41 82 00 10 */	beq lbl_806C6F20
/* 806C6F14  3C 60 80 6C */	lis r3, __vt__10cCcD_GStts@ha /* 0x806C789C@ha */
/* 806C6F18  38 03 78 9C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x806C789C@l */
/* 806C6F1C  90 1F 00 00 */	stw r0, 0(r31)
lbl_806C6F20:
/* 806C6F20  7C 80 07 35 */	extsh. r0, r4
/* 806C6F24  40 81 00 0C */	ble lbl_806C6F30
/* 806C6F28  7F E3 FB 78 */	mr r3, r31
/* 806C6F2C  4B C0 7E 11 */	bl __dl__FPv
lbl_806C6F30:
/* 806C6F30  7F E3 FB 78 */	mr r3, r31
/* 806C6F34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806C6F38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C6F3C  7C 08 03 A6 */	mtlr r0
/* 806C6F40  38 21 00 10 */	addi r1, r1, 0x10
/* 806C6F44  4E 80 00 20 */	blr 
