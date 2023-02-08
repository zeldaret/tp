lbl_80756C50:
/* 80756C50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80756C54  7C 08 02 A6 */	mflr r0
/* 80756C58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80756C5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80756C60  7C 7F 1B 79 */	or. r31, r3, r3
/* 80756C64  41 82 00 30 */	beq lbl_80756C94
/* 80756C68  3C 60 80 75 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80757D68@ha */
/* 80756C6C  38 03 7D 68 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80757D68@l */
/* 80756C70  90 1F 00 00 */	stw r0, 0(r31)
/* 80756C74  41 82 00 10 */	beq lbl_80756C84
/* 80756C78  3C 60 80 75 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80757D5C@ha */
/* 80756C7C  38 03 7D 5C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80757D5C@l */
/* 80756C80  90 1F 00 00 */	stw r0, 0(r31)
lbl_80756C84:
/* 80756C84  7C 80 07 35 */	extsh. r0, r4
/* 80756C88  40 81 00 0C */	ble lbl_80756C94
/* 80756C8C  7F E3 FB 78 */	mr r3, r31
/* 80756C90  4B B7 80 AD */	bl __dl__FPv
lbl_80756C94:
/* 80756C94  7F E3 FB 78 */	mr r3, r31
/* 80756C98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80756C9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80756CA0  7C 08 03 A6 */	mtlr r0
/* 80756CA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80756CA8  4E 80 00 20 */	blr 
