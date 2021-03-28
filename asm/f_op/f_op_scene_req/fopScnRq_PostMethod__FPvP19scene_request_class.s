lbl_8001EF6C:
/* 8001EF6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001EF70  7C 08 02 A6 */	mflr r0
/* 8001EF74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001EF78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001EF7C  7C 7F 1B 78 */	mr r31, r3
/* 8001EF80  80 04 00 64 */	lwz r0, 0x64(r4)
/* 8001EF84  28 00 00 00 */	cmplwi r0, 0
/* 8001EF88  41 82 00 10 */	beq lbl_8001EF98
/* 8001EF8C  48 00 15 BD */	bl fopScnPause_Enable__FP11scene_class
/* 8001EF90  80 7F 00 04 */	lwz r3, 4(r31)
/* 8001EF94  4B FF F5 AD */	bl fopOvlpM_ToldAboutID__FUi
lbl_8001EF98:
/* 8001EF98  38 60 00 01 */	li r3, 1
/* 8001EF9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001EFA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001EFA4  7C 08 03 A6 */	mtlr r0
/* 8001EFA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8001EFAC  4E 80 00 20 */	blr 
