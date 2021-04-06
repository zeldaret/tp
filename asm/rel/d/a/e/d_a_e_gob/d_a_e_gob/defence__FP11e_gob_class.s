lbl_806D93CC:
/* 806D93CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806D93D0  7C 08 02 A6 */	mflr r0
/* 806D93D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806D93D8  39 61 00 20 */	addi r11, r1, 0x20
/* 806D93DC  4B C8 8E 01 */	bl _savegpr_29
/* 806D93E0  7C 7F 1B 78 */	mr r31, r3
/* 806D93E4  3C 80 80 6E */	lis r4, lit_3763@ha /* 0x806DEE38@ha */
/* 806D93E8  3B C4 EE 38 */	addi r30, r4, lit_3763@l /* 0x806DEE38@l */
/* 806D93EC  3B A0 00 00 */	li r29, 0
/* 806D93F0  38 80 00 01 */	li r4, 1
/* 806D93F4  98 83 0D 20 */	stb r4, 0xd20(r3)
/* 806D93F8  A8 03 06 58 */	lha r0, 0x658(r3)
/* 806D93FC  2C 00 00 01 */	cmpwi r0, 1
/* 806D9400  41 82 00 A4 */	beq lbl_806D94A4
/* 806D9404  40 80 00 D0 */	bge lbl_806D94D4
/* 806D9408  2C 00 00 00 */	cmpwi r0, 0
/* 806D940C  40 80 00 08 */	bge lbl_806D9414
/* 806D9410  48 00 00 C4 */	b lbl_806D94D4
lbl_806D9414:
/* 806D9414  88 9F 0D 21 */	lbz r4, 0xd21(r31)
/* 806D9418  7C 80 07 75 */	extsb. r0, r4
/* 806D941C  40 82 00 1C */	bne lbl_806D9438
/* 806D9420  38 80 00 0E */	li r4, 0xe
/* 806D9424  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 806D9428  38 A0 00 00 */	li r5, 0
/* 806D942C  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 806D9430  4B FF F1 49 */	bl anm_init__FP11e_gob_classifUcf
/* 806D9434  48 00 00 3C */	b lbl_806D9470
lbl_806D9438:
/* 806D9438  7C 80 07 74 */	extsb r0, r4
/* 806D943C  2C 00 00 01 */	cmpwi r0, 1
/* 806D9440  40 82 00 1C */	bne lbl_806D945C
/* 806D9444  38 80 00 0F */	li r4, 0xf
/* 806D9448  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 806D944C  38 A0 00 00 */	li r5, 0
/* 806D9450  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 806D9454  4B FF F1 25 */	bl anm_init__FP11e_gob_classifUcf
/* 806D9458  48 00 00 18 */	b lbl_806D9470
lbl_806D945C:
/* 806D945C  38 80 00 10 */	li r4, 0x10
/* 806D9460  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 806D9464  38 A0 00 00 */	li r5, 0
/* 806D9468  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 806D946C  4B FF F1 0D */	bl anm_init__FP11e_gob_classifUcf
lbl_806D9470:
/* 806D9470  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701FE@ha */
/* 806D9474  38 03 01 FE */	addi r0, r3, 0x01FE /* 0x000701FE@l */
/* 806D9478  90 01 00 08 */	stw r0, 8(r1)
/* 806D947C  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 806D9480  38 81 00 08 */	addi r4, r1, 8
/* 806D9484  38 A0 FF FF */	li r5, -1
/* 806D9488  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 806D948C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806D9490  7D 89 03 A6 */	mtctr r12
/* 806D9494  4E 80 04 21 */	bctrl 
/* 806D9498  38 00 00 01 */	li r0, 1
/* 806D949C  B0 1F 06 58 */	sth r0, 0x658(r31)
/* 806D94A0  48 00 00 34 */	b lbl_806D94D4
lbl_806D94A4:
/* 806D94A4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806D94A8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806D94AC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806D94B0  40 82 00 18 */	bne lbl_806D94C8
/* 806D94B4  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 806D94B8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806D94BC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806D94C0  41 82 00 08 */	beq lbl_806D94C8
/* 806D94C4  38 80 00 00 */	li r4, 0
lbl_806D94C8:
/* 806D94C8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806D94CC  41 82 00 08 */	beq lbl_806D94D4
/* 806D94D0  3B A0 00 01 */	li r29, 1
lbl_806D94D4:
/* 806D94D4  38 7F 05 2C */	addi r3, r31, 0x52c
/* 806D94D8  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 806D94DC  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 806D94E0  4B B9 65 A1 */	bl cLib_addCalc0__FPfff
/* 806D94E4  7F A0 07 75 */	extsb. r0, r29
/* 806D94E8  41 82 00 14 */	beq lbl_806D94FC
/* 806D94EC  38 00 00 02 */	li r0, 2
/* 806D94F0  B0 1F 06 56 */	sth r0, 0x656(r31)
/* 806D94F4  38 00 00 00 */	li r0, 0
/* 806D94F8  B0 1F 06 58 */	sth r0, 0x658(r31)
lbl_806D94FC:
/* 806D94FC  39 61 00 20 */	addi r11, r1, 0x20
/* 806D9500  4B C8 8D 29 */	bl _restgpr_29
/* 806D9504  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806D9508  7C 08 03 A6 */	mtlr r0
/* 806D950C  38 21 00 20 */	addi r1, r1, 0x20
/* 806D9510  4E 80 00 20 */	blr 
