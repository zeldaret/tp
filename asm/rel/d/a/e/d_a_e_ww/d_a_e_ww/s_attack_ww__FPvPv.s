lbl_807E8E6C:
/* 807E8E6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E8E70  7C 08 02 A6 */	mflr r0
/* 807E8E74  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E8E78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E8E7C  7C 7F 1B 78 */	mr r31, r3
/* 807E8E80  7C 1F 20 40 */	cmplw r31, r4
/* 807E8E84  41 82 00 50 */	beq lbl_807E8ED4
/* 807E8E88  4B 82 FE 59 */	bl fopAc_IsActor__FPv
/* 807E8E8C  2C 03 00 00 */	cmpwi r3, 0
/* 807E8E90  41 82 00 44 */	beq lbl_807E8ED4
/* 807E8E94  A8 1F 00 08 */	lha r0, 8(r31)
/* 807E8E98  2C 00 02 09 */	cmpwi r0, 0x209
/* 807E8E9C  40 82 00 38 */	bne lbl_807E8ED4
/* 807E8EA0  28 1F 00 00 */	cmplwi r31, 0
/* 807E8EA4  41 82 00 0C */	beq lbl_807E8EB0
/* 807E8EA8  80 7F 00 04 */	lwz r3, 4(r31)
/* 807E8EAC  48 00 00 08 */	b lbl_807E8EB4
lbl_807E8EB0:
/* 807E8EB0  38 60 FF FF */	li r3, -1
lbl_807E8EB4:
/* 807E8EB4  4B 83 92 85 */	bl fpcM_IsCreating__FUi
/* 807E8EB8  2C 03 00 00 */	cmpwi r3, 0
/* 807E8EBC  40 82 00 18 */	bne lbl_807E8ED4
/* 807E8EC0  88 1F 07 56 */	lbz r0, 0x756(r31)
/* 807E8EC4  28 00 00 00 */	cmplwi r0, 0
/* 807E8EC8  41 82 00 0C */	beq lbl_807E8ED4
/* 807E8ECC  7F E3 FB 78 */	mr r3, r31
/* 807E8ED0  48 00 00 08 */	b lbl_807E8ED8
lbl_807E8ED4:
/* 807E8ED4  38 60 00 00 */	li r3, 0
lbl_807E8ED8:
/* 807E8ED8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E8EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E8EE0  7C 08 03 A6 */	mtlr r0
/* 807E8EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 807E8EE8  4E 80 00 20 */	blr 
