lbl_80476B04:
/* 80476B04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80476B08  7C 08 02 A6 */	mflr r0
/* 80476B0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80476B10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80476B14  93 C1 00 08 */	stw r30, 8(r1)
/* 80476B18  7C 7E 1B 78 */	mr r30, r3
/* 80476B1C  38 80 00 00 */	li r4, 0
/* 80476B20  4B FF FF 3D */	bl check_cc_damage_proc_base__12daObjCarry_cFb
/* 80476B24  7C 7F 1B 78 */	mr r31, r3
/* 80476B28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80476B2C  41 82 00 20 */	beq lbl_80476B4C
/* 80476B30  7F C3 F3 78 */	mr r3, r30
/* 80476B34  38 80 00 01 */	li r4, 1
/* 80476B38  38 A0 00 01 */	li r5, 1
/* 80476B3C  38 C0 00 01 */	li r6, 1
/* 80476B40  4B FF FE 01 */	bl obj_break__12daObjCarry_cFbbb
/* 80476B44  7F C3 F3 78 */	mr r3, r30
/* 80476B48  4B BA 31 34 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80476B4C:
/* 80476B4C  7F E3 FB 78 */	mr r3, r31
/* 80476B50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80476B54  83 C1 00 08 */	lwz r30, 8(r1)
/* 80476B58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80476B5C  7C 08 03 A6 */	mtlr r0
/* 80476B60  38 21 00 10 */	addi r1, r1, 0x10
/* 80476B64  4E 80 00 20 */	blr 
