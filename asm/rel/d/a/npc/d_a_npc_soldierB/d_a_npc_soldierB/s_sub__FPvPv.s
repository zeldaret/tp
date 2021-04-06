lbl_80AF4CA4:
/* 80AF4CA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF4CA8  7C 08 02 A6 */	mflr r0
/* 80AF4CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF4CB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF4CB4  7C 7F 1B 78 */	mr r31, r3
/* 80AF4CB8  4B 52 40 29 */	bl fopAc_IsActor__FPv
/* 80AF4CBC  2C 03 00 00 */	cmpwi r3, 0
/* 80AF4CC0  41 82 00 24 */	beq lbl_80AF4CE4
/* 80AF4CC4  A8 1F 00 08 */	lha r0, 8(r31)
/* 80AF4CC8  2C 00 02 8C */	cmpwi r0, 0x28c
/* 80AF4CCC  40 82 00 18 */	bne lbl_80AF4CE4
/* 80AF4CD0  88 1F 0E 18 */	lbz r0, 0xe18(r31)
/* 80AF4CD4  28 00 00 00 */	cmplwi r0, 0
/* 80AF4CD8  40 82 00 0C */	bne lbl_80AF4CE4
/* 80AF4CDC  7F E3 FB 78 */	mr r3, r31
/* 80AF4CE0  48 00 00 08 */	b lbl_80AF4CE8
lbl_80AF4CE4:
/* 80AF4CE4  38 60 00 00 */	li r3, 0
lbl_80AF4CE8:
/* 80AF4CE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF4CEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF4CF0  7C 08 03 A6 */	mtlr r0
/* 80AF4CF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF4CF8  4E 80 00 20 */	blr 
