lbl_80C144F8:
/* 80C144F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C144FC  7C 08 02 A6 */	mflr r0
/* 80C14500  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C14504  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C14508  93 C1 00 08 */	stw r30, 8(r1)
/* 80C1450C  7C 7E 1B 78 */	mr r30, r3
/* 80C14510  38 7E 06 64 */	addi r3, r30, 0x664
/* 80C14514  4B 3F 8F 14 */	b play__14mDoExt_baseAnmFv
/* 80C14518  7C 7F 1B 78 */	mr r31, r3
/* 80C1451C  38 7E 06 D4 */	addi r3, r30, 0x6d4
/* 80C14520  4B 3F 8F 08 */	b play__14mDoExt_baseAnmFv
/* 80C14524  2C 1F 00 01 */	cmpwi r31, 1
/* 80C14528  40 82 00 14 */	bne lbl_80C1453C
/* 80C1452C  2C 03 00 01 */	cmpwi r3, 1
/* 80C14530  40 82 00 0C */	bne lbl_80C1453C
/* 80C14534  7F C3 F3 78 */	mr r3, r30
/* 80C14538  4B FF FC 5D */	bl init_modeWait__12daGrdWater_cFv
lbl_80C1453C:
/* 80C1453C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C14540  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C14544  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C14548  7C 08 03 A6 */	mtlr r0
/* 80C1454C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C14550  4E 80 00 20 */	blr 
