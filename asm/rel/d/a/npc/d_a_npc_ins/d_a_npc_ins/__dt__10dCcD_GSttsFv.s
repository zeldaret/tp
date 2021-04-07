lbl_80A13BD8:
/* 80A13BD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A13BDC  7C 08 02 A6 */	mflr r0
/* 80A13BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A13BE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A13BE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A13BEC  41 82 00 30 */	beq lbl_80A13C1C
/* 80A13BF0  3C 60 80 A1 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80A1459C@ha */
/* 80A13BF4  38 03 45 9C */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80A1459C@l */
/* 80A13BF8  90 1F 00 00 */	stw r0, 0(r31)
/* 80A13BFC  41 82 00 10 */	beq lbl_80A13C0C
/* 80A13C00  3C 60 80 A1 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80A14590@ha */
/* 80A13C04  38 03 45 90 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80A14590@l */
/* 80A13C08  90 1F 00 00 */	stw r0, 0(r31)
lbl_80A13C0C:
/* 80A13C0C  7C 80 07 35 */	extsh. r0, r4
/* 80A13C10  40 81 00 0C */	ble lbl_80A13C1C
/* 80A13C14  7F E3 FB 78 */	mr r3, r31
/* 80A13C18  4B 8B B1 25 */	bl __dl__FPv
lbl_80A13C1C:
/* 80A13C1C  7F E3 FB 78 */	mr r3, r31
/* 80A13C20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A13C24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A13C28  7C 08 03 A6 */	mtlr r0
/* 80A13C2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A13C30  4E 80 00 20 */	blr 
