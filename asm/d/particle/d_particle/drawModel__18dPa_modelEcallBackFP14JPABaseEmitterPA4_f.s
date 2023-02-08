lbl_8004ACEC:
/* 8004ACEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004ACF0  7C 08 02 A6 */	mflr r0
/* 8004ACF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004ACF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004ACFC  7C 9F 23 78 */	mr r31, r4
/* 8004AD00  48 00 00 59 */	bl getModel__18dPa_modelEcallBackFP14JPABaseEmitter
/* 8004AD04  28 03 00 00 */	cmplwi r3, 0
/* 8004AD08  41 82 00 0C */	beq lbl_8004AD14
/* 8004AD0C  7F E4 FB 78 */	mr r4, r31
/* 8004AD10  4B FF FB CD */	bl draw__Q218dPa_modelEcallBack7model_cFPA4_f
lbl_8004AD14:
/* 8004AD14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004AD18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004AD1C  7C 08 03 A6 */	mtlr r0
/* 8004AD20  38 21 00 10 */	addi r1, r1, 0x10
/* 8004AD24  4E 80 00 20 */	blr 
