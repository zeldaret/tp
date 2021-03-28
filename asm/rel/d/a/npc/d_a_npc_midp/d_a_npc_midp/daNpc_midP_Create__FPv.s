lbl_80A72754:
/* 80A72754  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A72758  7C 08 02 A6 */	mflr r0
/* 80A7275C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A72760  4B FF E6 31 */	bl create__12daNpc_midP_cFv
/* 80A72764  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A72768  7C 08 03 A6 */	mtlr r0
/* 80A7276C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A72770  4E 80 00 20 */	blr 
