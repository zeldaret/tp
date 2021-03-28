lbl_8004ACC0:
/* 8004ACC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004ACC4  7C 08 02 A6 */	mflr r0
/* 8004ACC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004ACCC  48 00 00 8D */	bl getModel__18dPa_modelEcallBackFP14JPABaseEmitter
/* 8004ACD0  28 03 00 00 */	cmplwi r3, 0
/* 8004ACD4  41 82 00 08 */	beq lbl_8004ACDC
/* 8004ACD8  4B FF FA D5 */	bl setup__Q218dPa_modelEcallBack7model_cFv
lbl_8004ACDC:
/* 8004ACDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004ACE0  7C 08 03 A6 */	mtlr r0
/* 8004ACE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8004ACE8  4E 80 00 20 */	blr 
