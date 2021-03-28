lbl_80878E60:
/* 80878E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80878E64  7C 08 02 A6 */	mflr r0
/* 80878E68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80878E6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80878E70  7C 7F 1B 78 */	mr r31, r3
/* 80878E74  38 80 00 08 */	li r4, 8
/* 80878E78  48 00 00 95 */	bl fopAcM_CheckCondition__FP10fopAc_ac_cUl
/* 80878E7C  28 03 00 00 */	cmplwi r3, 0
/* 80878E80  40 82 00 28 */	bne lbl_80878EA8
/* 80878E84  38 60 05 80 */	li r3, 0x580
/* 80878E88  7F E4 FB 78 */	mr r4, r31
/* 80878E8C  48 00 00 79 */	bl __nw__FUlPv
/* 80878E90  28 03 00 00 */	cmplwi r3, 0
/* 80878E94  41 82 00 08 */	beq lbl_80878E9C
/* 80878E98  48 00 00 3D */	bl __ct__6daMP_cFv
lbl_80878E9C:
/* 80878E9C  7F E3 FB 78 */	mr r3, r31
/* 80878EA0  38 80 00 08 */	li r4, 8
/* 80878EA4  48 00 00 21 */	bl fopAcM_OnCondition__FP10fopAc_ac_cUl
lbl_80878EA8:
/* 80878EA8  7F E3 FB 78 */	mr r3, r31
/* 80878EAC  4B FF FD 7D */	bl daMP_c_Init__6daMP_cFv
/* 80878EB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80878EB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80878EB8  7C 08 03 A6 */	mtlr r0
/* 80878EBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80878EC0  4E 80 00 20 */	blr 
