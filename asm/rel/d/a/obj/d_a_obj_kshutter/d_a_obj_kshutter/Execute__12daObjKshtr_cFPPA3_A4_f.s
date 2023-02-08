lbl_80C4852C:
/* 80C4852C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C48530  7C 08 02 A6 */	mflr r0
/* 80C48534  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C48538  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4853C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C48540  7C 7E 1B 78 */	mr r30, r3
/* 80C48544  7C 9F 23 78 */	mr r31, r4
/* 80C48548  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C4854C  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80C48550  28 00 00 01 */	cmplwi r0, 1
/* 80C48554  40 82 00 0C */	bne lbl_80C48560
/* 80C48558  4B FF FE 75 */	bl event_proc_call__12daObjKshtr_cFv
/* 80C4855C  48 00 00 08 */	b lbl_80C48564
lbl_80C48560:
/* 80C48560  4B FF FF 11 */	bl event_proc_call2__12daObjKshtr_cFv
lbl_80C48564:
/* 80C48564  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80C48568  90 1F 00 00 */	stw r0, 0(r31)
/* 80C4856C  7F C3 F3 78 */	mr r3, r30
/* 80C48570  4B FF F5 BD */	bl setBaseMtx__12daObjKshtr_cFv
/* 80C48574  38 60 00 01 */	li r3, 1
/* 80C48578  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4857C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C48580  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C48584  7C 08 03 A6 */	mtlr r0
/* 80C48588  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4858C  4E 80 00 20 */	blr 
