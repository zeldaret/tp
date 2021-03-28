lbl_8001EEE4:
/* 8001EEE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001EEE8  7C 08 02 A6 */	mflr r0
/* 8001EEEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001EEF0  80 03 00 40 */	lwz r0, 0x40(r3)
/* 8001EEF4  2C 00 00 01 */	cmpwi r0, 1
/* 8001EEF8  41 82 00 10 */	beq lbl_8001EF08
/* 8001EEFC  80 63 00 54 */	lwz r3, 0x54(r3)
/* 8001EF00  48 00 24 59 */	bl fpcEx_SearchByID__FUi
/* 8001EF04  48 00 16 91 */	bl fopScnPause_Disable__FP11scene_class
lbl_8001EF08:
/* 8001EF08  38 00 00 00 */	li r0, 0
/* 8001EF0C  90 0D 87 60 */	stw r0, l_fopScnRq_IsUsingOfOverlap(r13)
/* 8001EF10  38 60 00 02 */	li r3, 2
/* 8001EF14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001EF18  7C 08 03 A6 */	mtlr r0
/* 8001EF1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8001EF20  4E 80 00 20 */	blr 
