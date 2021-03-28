lbl_8013DA8C:
/* 8013DA8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013DA90  7C 08 02 A6 */	mflr r0
/* 8013DA94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013DA98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013DA9C  93 C1 00 08 */	stw r30, 8(r1)
/* 8013DAA0  7C 7E 1B 78 */	mr r30, r3
/* 8013DAA4  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8013DAA8  38 00 00 04 */	li r0, 4
/* 8013DAAC  98 03 2F 99 */	stb r0, 0x2f99(r3)
/* 8013DAB0  7F E3 FB 78 */	mr r3, r31
/* 8013DAB4  48 02 0A 19 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013DAB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013DABC  41 82 00 4C */	beq lbl_8013DB08
/* 8013DAC0  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 8013DAC4  2C 00 00 00 */	cmpwi r0, 0
/* 8013DAC8  41 82 00 30 */	beq lbl_8013DAF8
/* 8013DACC  7F C3 F3 78 */	mr r3, r30
/* 8013DAD0  38 80 00 08 */	li r4, 8
/* 8013DAD4  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8013DAD8  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 8013DADC  A8 BE 30 0E */	lha r5, 0x300e(r30)
/* 8013DAE0  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 8013DAE4  4B FE BC 21 */	bl setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
/* 8013DAE8  38 00 00 00 */	li r0, 0
/* 8013DAEC  98 1E 1F D4 */	stb r0, 0x1fd4(r30)
/* 8013DAF0  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 8013DAF4  48 00 00 48 */	b lbl_8013DB3C
lbl_8013DAF8:
/* 8013DAF8  7F C3 F3 78 */	mr r3, r30
/* 8013DAFC  38 80 00 00 */	li r4, 0
/* 8013DB00  4B FE C0 45 */	bl checkNextActionWolf__9daAlink_cFi
/* 8013DB04  48 00 00 38 */	b lbl_8013DB3C
lbl_8013DB08:
/* 8013DB08  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 8013DB0C  2C 00 00 00 */	cmpwi r0, 0
/* 8013DB10  40 82 00 2C */	bne lbl_8013DB3C
/* 8013DB14  7F E3 FB 78 */	mr r3, r31
/* 8013DB18  C0 22 97 B8 */	lfs f1, lit_52470(r2)
/* 8013DB1C  48 1E A9 11 */	bl checkPass__12J3DFrameCtrlFf
/* 8013DB20  2C 03 00 00 */	cmpwi r3, 0
/* 8013DB24  41 82 00 18 */	beq lbl_8013DB3C
/* 8013DB28  80 7E 28 10 */	lwz r3, 0x2810(r30)
/* 8013DB2C  28 03 00 00 */	cmplwi r3, 0
/* 8013DB30  41 82 00 0C */	beq lbl_8013DB3C
/* 8013DB34  38 80 00 00 */	li r4, 0
/* 8013DB38  4B ED F0 11 */	bl fopAcM_setCarryNow__FP10fopAc_ac_ci
lbl_8013DB3C:
/* 8013DB3C  38 60 00 01 */	li r3, 1
/* 8013DB40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013DB44  83 C1 00 08 */	lwz r30, 8(r1)
/* 8013DB48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013DB4C  7C 08 03 A6 */	mtlr r0
/* 8013DB50  38 21 00 10 */	addi r1, r1, 0x10
/* 8013DB54  4E 80 00 20 */	blr 
