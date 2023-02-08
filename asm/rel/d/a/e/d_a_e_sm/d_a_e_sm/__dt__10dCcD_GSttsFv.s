lbl_80797F60:
/* 80797F60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80797F64  7C 08 02 A6 */	mflr r0
/* 80797F68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80797F6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80797F70  7C 7F 1B 79 */	or. r31, r3, r3
/* 80797F74  41 82 00 30 */	beq lbl_80797FA4
/* 80797F78  3C 60 80 7A */	lis r3, __vt__10dCcD_GStts@ha /* 0x80798920@ha */
/* 80797F7C  38 03 89 20 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80798920@l */
/* 80797F80  90 1F 00 00 */	stw r0, 0(r31)
/* 80797F84  41 82 00 10 */	beq lbl_80797F94
/* 80797F88  3C 60 80 7A */	lis r3, __vt__10cCcD_GStts@ha /* 0x80798914@ha */
/* 80797F8C  38 03 89 14 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80798914@l */
/* 80797F90  90 1F 00 00 */	stw r0, 0(r31)
lbl_80797F94:
/* 80797F94  7C 80 07 35 */	extsh. r0, r4
/* 80797F98  40 81 00 0C */	ble lbl_80797FA4
/* 80797F9C  7F E3 FB 78 */	mr r3, r31
/* 80797FA0  4B B3 6D 9D */	bl __dl__FPv
lbl_80797FA4:
/* 80797FA4  7F E3 FB 78 */	mr r3, r31
/* 80797FA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80797FAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80797FB0  7C 08 03 A6 */	mtlr r0
/* 80797FB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80797FB8  4E 80 00 20 */	blr 
