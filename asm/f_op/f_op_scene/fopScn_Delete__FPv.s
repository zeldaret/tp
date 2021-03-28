lbl_8001EBAC:
/* 8001EBAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001EBB0  7C 08 02 A6 */	mflr r0
/* 8001EBB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001EBB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001EBBC  93 C1 00 08 */	stw r30, 8(r1)
/* 8001EBC0  7C 7F 1B 78 */	mr r31, r3
/* 8001EBC4  80 63 01 AC */	lwz r3, 0x1ac(r3)
/* 8001EBC8  7F E4 FB 78 */	mr r4, r31
/* 8001EBCC  48 00 38 DD */	bl fpcMtd_Delete__FP20process_method_classPv
/* 8001EBD0  7C 7E 1B 78 */	mr r30, r3
/* 8001EBD4  2C 1E 00 01 */	cmpwi r30, 1
/* 8001EBD8  40 82 00 0C */	bne lbl_8001EBE4
/* 8001EBDC  38 7F 01 B0 */	addi r3, r31, 0x1b0
/* 8001EBE0  48 00 05 5D */	bl fopScnTg_QueueTo__FP15scene_tag_class
lbl_8001EBE4:
/* 8001EBE4  7F C3 F3 78 */	mr r3, r30
/* 8001EBE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001EBEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001EBF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001EBF4  7C 08 03 A6 */	mtlr r0
/* 8001EBF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8001EBFC  4E 80 00 20 */	blr 
