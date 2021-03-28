lbl_8001EC00:
/* 8001EC00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001EC04  7C 08 02 A6 */	mflr r0
/* 8001EC08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001EC0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001EC10  7C 7F 1B 78 */	mr r31, r3
/* 8001EC14  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8001EC18  7C 00 07 75 */	extsb. r0, r0
/* 8001EC1C  40 82 00 38 */	bne lbl_8001EC54
/* 8001EC20  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8001EC24  80 03 00 20 */	lwz r0, 0x20(r3)
/* 8001EC28  90 1F 01 AC */	stw r0, 0x1ac(r31)
/* 8001EC2C  38 7F 01 B0 */	addi r3, r31, 0x1b0
/* 8001EC30  7F E4 FB 78 */	mr r4, r31
/* 8001EC34  48 00 05 55 */	bl fopScnTg_Init__FP15scene_tag_classPv
/* 8001EC38  38 7F 01 B0 */	addi r3, r31, 0x1b0
/* 8001EC3C  48 00 05 21 */	bl fopScnTg_ToQueue__FP15scene_tag_class
/* 8001EC40  80 7F 00 AC */	lwz r3, 0xac(r31)
/* 8001EC44  28 03 00 00 */	cmplwi r3, 0
/* 8001EC48  41 82 00 0C */	beq lbl_8001EC54
/* 8001EC4C  80 03 00 00 */	lwz r0, 0(r3)
/* 8001EC50  90 1F 00 B0 */	stw r0, 0xb0(r31)
lbl_8001EC54:
/* 8001EC54  80 7F 01 AC */	lwz r3, 0x1ac(r31)
/* 8001EC58  7F E4 FB 78 */	mr r4, r31
/* 8001EC5C  48 00 38 71 */	bl fpcMtd_Create__FP20process_method_classPv
/* 8001EC60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001EC64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001EC68  7C 08 03 A6 */	mtlr r0
/* 8001EC6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8001EC70  4E 80 00 20 */	blr 
