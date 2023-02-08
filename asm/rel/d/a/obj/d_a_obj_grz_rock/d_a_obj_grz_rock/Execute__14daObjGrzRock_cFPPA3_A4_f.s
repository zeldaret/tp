lbl_80C1514C:
/* 80C1514C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C15150  7C 08 02 A6 */	mflr r0
/* 80C15154  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C15158  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1515C  7C 7F 1B 78 */	mr r31, r3
/* 80C15160  88 03 08 01 */	lbz r0, 0x801(r3)
/* 80C15164  28 00 00 00 */	cmplwi r0, 0
/* 80C15168  41 82 00 18 */	beq lbl_80C15180
/* 80C1516C  4B FF FB 85 */	bl setPrtcl__14daObjGrzRock_cFv
/* 80C15170  7F E3 FB 78 */	mr r3, r31
/* 80C15174  4B 40 4B 09 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80C15178  38 60 00 01 */	li r3, 1
/* 80C1517C  48 00 00 14 */	b lbl_80C15190
lbl_80C15180:
/* 80C15180  38 1F 05 6C */	addi r0, r31, 0x56c
/* 80C15184  90 04 00 00 */	stw r0, 0(r4)
/* 80C15188  4B FF FA 51 */	bl setBaseMtx__14daObjGrzRock_cFv
/* 80C1518C  38 60 00 01 */	li r3, 1
lbl_80C15190:
/* 80C15190  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C15194  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C15198  7C 08 03 A6 */	mtlr r0
/* 80C1519C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C151A0  4E 80 00 20 */	blr 
