lbl_80C51F54:
/* 80C51F54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C51F58  7C 08 02 A6 */	mflr r0
/* 80C51F5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C51F60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C51F64  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C51F68  41 82 00 30 */	beq lbl_80C51F98
/* 80C51F6C  3C 60 80 C5 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80C52150@ha */
/* 80C51F70  38 03 21 50 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80C52150@l */
/* 80C51F74  90 1F 00 00 */	stw r0, 0(r31)
/* 80C51F78  41 82 00 10 */	beq lbl_80C51F88
/* 80C51F7C  3C 60 80 C5 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80C52144@ha */
/* 80C51F80  38 03 21 44 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80C52144@l */
/* 80C51F84  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C51F88:
/* 80C51F88  7C 80 07 35 */	extsh. r0, r4
/* 80C51F8C  40 81 00 0C */	ble lbl_80C51F98
/* 80C51F90  7F E3 FB 78 */	mr r3, r31
/* 80C51F94  4B 67 CD A9 */	bl __dl__FPv
lbl_80C51F98:
/* 80C51F98  7F E3 FB 78 */	mr r3, r31
/* 80C51F9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C51FA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C51FA4  7C 08 03 A6 */	mtlr r0
/* 80C51FA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C51FAC  4E 80 00 20 */	blr 
