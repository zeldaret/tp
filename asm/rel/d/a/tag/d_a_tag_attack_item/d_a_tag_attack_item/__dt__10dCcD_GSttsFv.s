lbl_805A2BEC:
/* 805A2BEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A2BF0  7C 08 02 A6 */	mflr r0
/* 805A2BF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A2BF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A2BFC  7C 7F 1B 79 */	or. r31, r3, r3
/* 805A2C00  41 82 00 30 */	beq lbl_805A2C30
/* 805A2C04  3C 60 80 5A */	lis r3, __vt__10dCcD_GStts@ha /* 0x805A33C0@ha */
/* 805A2C08  38 03 33 C0 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x805A33C0@l */
/* 805A2C0C  90 1F 00 00 */	stw r0, 0(r31)
/* 805A2C10  41 82 00 10 */	beq lbl_805A2C20
/* 805A2C14  3C 60 80 5A */	lis r3, __vt__10cCcD_GStts@ha /* 0x805A33B4@ha */
/* 805A2C18  38 03 33 B4 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x805A33B4@l */
/* 805A2C1C  90 1F 00 00 */	stw r0, 0(r31)
lbl_805A2C20:
/* 805A2C20  7C 80 07 35 */	extsh. r0, r4
/* 805A2C24  40 81 00 0C */	ble lbl_805A2C30
/* 805A2C28  7F E3 FB 78 */	mr r3, r31
/* 805A2C2C  4B D2 C1 11 */	bl __dl__FPv
lbl_805A2C30:
/* 805A2C30  7F E3 FB 78 */	mr r3, r31
/* 805A2C34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A2C38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A2C3C  7C 08 03 A6 */	mtlr r0
/* 805A2C40  38 21 00 10 */	addi r1, r1, 0x10
/* 805A2C44  4E 80 00 20 */	blr 
