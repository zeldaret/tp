lbl_809A9C2C:
/* 809A9C2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A9C30  7C 08 02 A6 */	mflr r0
/* 809A9C34  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A9C38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A9C3C  7C 7F 1B 79 */	or. r31, r3, r3
/* 809A9C40  41 82 00 30 */	beq lbl_809A9C70
/* 809A9C44  3C 60 80 9B */	lis r3, __vt__10dCcD_GStts@ha /* 0x809AA9A0@ha */
/* 809A9C48  38 03 A9 A0 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x809AA9A0@l */
/* 809A9C4C  90 1F 00 00 */	stw r0, 0(r31)
/* 809A9C50  41 82 00 10 */	beq lbl_809A9C60
/* 809A9C54  3C 60 80 9B */	lis r3, __vt__10cCcD_GStts@ha /* 0x809AA994@ha */
/* 809A9C58  38 03 A9 94 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x809AA994@l */
/* 809A9C5C  90 1F 00 00 */	stw r0, 0(r31)
lbl_809A9C60:
/* 809A9C60  7C 80 07 35 */	extsh. r0, r4
/* 809A9C64  40 81 00 0C */	ble lbl_809A9C70
/* 809A9C68  7F E3 FB 78 */	mr r3, r31
/* 809A9C6C  4B 92 50 D1 */	bl __dl__FPv
lbl_809A9C70:
/* 809A9C70  7F E3 FB 78 */	mr r3, r31
/* 809A9C74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A9C78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A9C7C  7C 08 03 A6 */	mtlr r0
/* 809A9C80  38 21 00 10 */	addi r1, r1, 0x10
/* 809A9C84  4E 80 00 20 */	blr 
