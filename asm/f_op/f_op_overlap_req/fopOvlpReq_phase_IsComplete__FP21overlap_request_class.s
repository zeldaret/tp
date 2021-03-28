lbl_8001E854:
/* 8001E854  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E858  7C 08 02 A6 */	mflr r0
/* 8001E85C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E860  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001E864  7C 7F 1B 78 */	mr r31, r3
/* 8001E868  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8001E86C  38 63 00 C4 */	addi r3, r3, 0xc4
/* 8001E870  48 24 7F 65 */	bl cReq_Is_Done__FP18request_base_class
/* 8001E874  2C 03 00 00 */	cmpwi r3, 0
/* 8001E878  41 82 00 14 */	beq lbl_8001E88C
/* 8001E87C  7F E3 FB 78 */	mr r3, r31
/* 8001E880  48 24 7F 81 */	bl cReq_Done__FP18request_base_class
/* 8001E884  38 60 00 02 */	li r3, 2
/* 8001E888  48 00 00 08 */	b lbl_8001E890
lbl_8001E88C:
/* 8001E88C  38 60 00 00 */	li r3, 0
lbl_8001E890:
/* 8001E890  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001E894  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E898  7C 08 03 A6 */	mtlr r0
/* 8001E89C  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E8A0  4E 80 00 20 */	blr 
