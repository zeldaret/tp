lbl_80476764:
/* 80476764  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80476768  7C 08 02 A6 */	mflr r0
/* 8047676C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80476770  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80476774  93 C1 00 08 */	stw r30, 8(r1)
/* 80476778  7C 7E 1B 78 */	mr r30, r3
/* 8047677C  4B FF FE 9D */	bl check_bg_damage_proc_base__12daObjCarry_cFv
/* 80476780  7C 7F 1B 78 */	mr r31, r3
/* 80476784  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80476788  41 82 00 20 */	beq lbl_804767A8
/* 8047678C  7F C3 F3 78 */	mr r3, r30
/* 80476790  38 80 00 01 */	li r4, 1
/* 80476794  38 A0 00 01 */	li r5, 1
/* 80476798  38 C0 00 01 */	li r6, 1
/* 8047679C  48 00 01 A5 */	bl obj_break__12daObjCarry_cFbbb
/* 804767A0  7F C3 F3 78 */	mr r3, r30
/* 804767A4  4B BA 34 D8 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_804767A8:
/* 804767A8  7F E3 FB 78 */	mr r3, r31
/* 804767AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804767B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804767B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804767B8  7C 08 03 A6 */	mtlr r0
/* 804767BC  38 21 00 10 */	addi r1, r1, 0x10
/* 804767C0  4E 80 00 20 */	blr 
