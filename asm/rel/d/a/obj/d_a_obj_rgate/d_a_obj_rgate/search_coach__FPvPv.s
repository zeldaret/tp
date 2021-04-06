lbl_80CB9C98:
/* 80CB9C98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB9C9C  7C 08 02 A6 */	mflr r0
/* 80CB9CA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB9CA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB9CA8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CB9CAC  41 82 00 24 */	beq lbl_80CB9CD0
/* 80CB9CB0  4B 35 F0 31 */	bl fopAc_IsActor__FPv
/* 80CB9CB4  2C 03 00 00 */	cmpwi r3, 0
/* 80CB9CB8  41 82 00 18 */	beq lbl_80CB9CD0
/* 80CB9CBC  A8 1F 00 0E */	lha r0, 0xe(r31)
/* 80CB9CC0  2C 00 00 56 */	cmpwi r0, 0x56
/* 80CB9CC4  40 82 00 0C */	bne lbl_80CB9CD0
/* 80CB9CC8  7F E3 FB 78 */	mr r3, r31
/* 80CB9CCC  48 00 00 08 */	b lbl_80CB9CD4
lbl_80CB9CD0:
/* 80CB9CD0  38 60 00 00 */	li r3, 0
lbl_80CB9CD4:
/* 80CB9CD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB9CD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB9CDC  7C 08 03 A6 */	mtlr r0
/* 80CB9CE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB9CE4  4E 80 00 20 */	blr 
