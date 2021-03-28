lbl_8004ABC4:
/* 8004ABC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004ABC8  7C 08 02 A6 */	mflr r0
/* 8004ABCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004ABD0  80 6D 89 18 */	lwz r3, mModel__18dPa_modelEcallBack(r13)
/* 8004ABD4  28 03 00 00 */	cmplwi r3, 0
/* 8004ABD8  41 82 00 18 */	beq lbl_8004ABF0
/* 8004ABDC  3C 80 80 05 */	lis r4, __dt__Q218dPa_modelEcallBack7model_cFv@ha
/* 8004ABE0  38 84 AB 88 */	addi r4, r4, __dt__Q218dPa_modelEcallBack7model_cFv@l
/* 8004ABE4  48 31 70 89 */	bl __destroy_new_array
/* 8004ABE8  38 00 00 00 */	li r0, 0
/* 8004ABEC  90 0D 89 18 */	stw r0, mModel__18dPa_modelEcallBack(r13)
lbl_8004ABF0:
/* 8004ABF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004ABF4  7C 08 03 A6 */	mtlr r0
/* 8004ABF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8004ABFC  4E 80 00 20 */	blr 
