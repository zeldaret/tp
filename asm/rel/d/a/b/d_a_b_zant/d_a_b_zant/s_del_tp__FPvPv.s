lbl_8064AC20:
/* 8064AC20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8064AC24  7C 08 02 A6 */	mflr r0
/* 8064AC28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8064AC2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8064AC30  7C 7F 1B 78 */	mr r31, r3
/* 8064AC34  4B 9C E0 AD */	bl fopAc_IsActor__FPv
/* 8064AC38  2C 03 00 00 */	cmpwi r3, 0
/* 8064AC3C  41 82 00 38 */	beq lbl_8064AC74
/* 8064AC40  28 1F 00 00 */	cmplwi r31, 0
/* 8064AC44  41 82 00 0C */	beq lbl_8064AC50
/* 8064AC48  80 7F 00 04 */	lwz r3, 4(r31)
/* 8064AC4C  48 00 00 08 */	b lbl_8064AC54
lbl_8064AC50:
/* 8064AC50  38 60 FF FF */	li r3, -1
lbl_8064AC54:
/* 8064AC54  4B 9D 74 E5 */	bl fpcM_IsCreating__FUi
/* 8064AC58  2C 03 00 00 */	cmpwi r3, 0
/* 8064AC5C  40 82 00 18 */	bne lbl_8064AC74
/* 8064AC60  A8 1F 00 08 */	lha r0, 8(r31)
/* 8064AC64  2C 00 00 30 */	cmpwi r0, 0x30
/* 8064AC68  40 82 00 0C */	bne lbl_8064AC74
/* 8064AC6C  7F E3 FB 78 */	mr r3, r31
/* 8064AC70  4B 9C F0 0D */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_8064AC74:
/* 8064AC74  38 60 00 00 */	li r3, 0
/* 8064AC78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8064AC7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8064AC80  7C 08 03 A6 */	mtlr r0
/* 8064AC84  38 21 00 10 */	addi r1, r1, 0x10
/* 8064AC88  4E 80 00 20 */	blr 
