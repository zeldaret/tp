lbl_80021510:
/* 80021510  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80021514  7C 08 02 A6 */	mflr r0
/* 80021518  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002151C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80021520  7C 7F 1B 78 */	mr r31, r3
/* 80021524  38 7F 00 18 */	addi r3, r31, 0x18
/* 80021528  80 9F 00 A0 */	lwz r4, 0xa0(r31)
/* 8002152C  A0 BF 00 A4 */	lhz r5, 0xa4(r31)
/* 80021530  A0 DF 00 A6 */	lhz r6, 0xa6(r31)
/* 80021534  48 00 07 A1 */	bl fpcLyTg_ToQueue__FP26layer_management_tag_classUiUsUs
/* 80021538  2C 03 00 01 */	cmpwi r3, 1
/* 8002153C  40 82 00 14 */	bne lbl_80021550
/* 80021540  7F E3 FB 78 */	mr r3, r31
/* 80021544  4B FF FE D5 */	bl fpcEx_ToLineQ__FP18base_process_class
/* 80021548  38 60 00 01 */	li r3, 1
/* 8002154C  48 00 00 08 */	b lbl_80021554
lbl_80021550:
/* 80021550  38 60 00 00 */	li r3, 0
lbl_80021554:
/* 80021554  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80021558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002155C  7C 08 03 A6 */	mtlr r0
/* 80021560  38 21 00 10 */	addi r1, r1, 0x10
/* 80021564  4E 80 00 20 */	blr 
