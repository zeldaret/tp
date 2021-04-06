lbl_807E1F54:
/* 807E1F54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E1F58  7C 08 02 A6 */	mflr r0
/* 807E1F5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E1F60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E1F64  7C 7F 1B 79 */	or. r31, r3, r3
/* 807E1F68  41 82 00 30 */	beq lbl_807E1F98
/* 807E1F6C  3C 60 80 7E */	lis r3, __vt__10dCcD_GStts@ha /* 0x807E3504@ha */
/* 807E1F70  38 03 35 04 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x807E3504@l */
/* 807E1F74  90 1F 00 00 */	stw r0, 0(r31)
/* 807E1F78  41 82 00 10 */	beq lbl_807E1F88
/* 807E1F7C  3C 60 80 7E */	lis r3, __vt__10cCcD_GStts@ha /* 0x807E34F8@ha */
/* 807E1F80  38 03 34 F8 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x807E34F8@l */
/* 807E1F84  90 1F 00 00 */	stw r0, 0(r31)
lbl_807E1F88:
/* 807E1F88  7C 80 07 35 */	extsh. r0, r4
/* 807E1F8C  40 81 00 0C */	ble lbl_807E1F98
/* 807E1F90  7F E3 FB 78 */	mr r3, r31
/* 807E1F94  4B AE CD A9 */	bl __dl__FPv
lbl_807E1F98:
/* 807E1F98  7F E3 FB 78 */	mr r3, r31
/* 807E1F9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E1FA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E1FA4  7C 08 03 A6 */	mtlr r0
/* 807E1FA8  38 21 00 10 */	addi r1, r1, 0x10
/* 807E1FAC  4E 80 00 20 */	blr 
