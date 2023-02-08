lbl_8030446C:
/* 8030446C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80304470  7C 08 02 A6 */	mflr r0
/* 80304474  90 01 00 24 */	stw r0, 0x24(r1)
/* 80304478  39 61 00 20 */	addi r11, r1, 0x20
/* 8030447C  48 05 DD 59 */	bl _savegpr_27
/* 80304480  7C 7D 1B 78 */	mr r29, r3
/* 80304484  7C 9B 23 78 */	mr r27, r4
/* 80304488  48 00 02 A1 */	bl isRemove__12J2DPictureExCFUc
/* 8030448C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80304490  40 82 00 0C */	bne lbl_8030449C
/* 80304494  38 60 00 00 */	li r3, 0
/* 80304498  48 00 01 58 */	b lbl_803045F0
lbl_8030449C:
/* 8030449C  80 7D 01 50 */	lwz r3, 0x150(r29)
/* 803044A0  80 03 00 28 */	lwz r0, 0x28(r3)
/* 803044A4  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 803044A8  80 63 00 70 */	lwz r3, 0x70(r3)
/* 803044AC  81 83 00 00 */	lwz r12, 0(r3)
/* 803044B0  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 803044B4  7D 89 03 A6 */	mtctr r12
/* 803044B8  4E 80 04 21 */	bctrl 
/* 803044BC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 803044C0  38 1C 00 01 */	addi r0, r28, 1
/* 803044C4  7C 63 00 50 */	subf r3, r3, r0
/* 803044C8  30 03 FF FF */	addic r0, r3, -1
/* 803044CC  7F E0 19 10 */	subfe r31, r0, r3
/* 803044D0  7F A3 EB 78 */	mr r3, r29
/* 803044D4  7F 64 DB 78 */	mr r4, r27
/* 803044D8  C0 22 C8 C4 */	lfs f1, lit_1784(r2)
/* 803044DC  38 A0 00 01 */	li r5, 1
/* 803044E0  38 C0 00 00 */	li r6, 0
/* 803044E4  48 00 18 DD */	bl shiftSetBlendRatio__12J2DPictureExFUcfbb
/* 803044E8  7F A3 EB 78 */	mr r3, r29
/* 803044EC  7F 64 DB 78 */	mr r4, r27
/* 803044F0  C0 22 C8 C4 */	lfs f1, lit_1784(r2)
/* 803044F4  38 A0 00 00 */	li r5, 0
/* 803044F8  38 C0 00 00 */	li r6, 0
/* 803044FC  48 00 18 C5 */	bl shiftSetBlendRatio__12J2DPictureExFUcfbb
/* 80304500  80 7D 01 50 */	lwz r3, 0x150(r29)
/* 80304504  7F 9E E3 78 */	mr r30, r28
/* 80304508  38 1C FF FF */	addi r0, r28, -1
/* 8030450C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80304510  90 03 00 28 */	stw r0, 0x28(r3)
/* 80304514  80 7D 01 50 */	lwz r3, 0x150(r29)
/* 80304518  80 63 00 70 */	lwz r3, 0x70(r3)
/* 8030451C  57 64 06 3E */	clrlwi r4, r27, 0x18
/* 80304520  81 83 00 00 */	lwz r12, 0(r3)
/* 80304524  81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 80304528  7D 89 03 A6 */	mtctr r12
/* 8030452C  4E 80 04 21 */	bctrl 
/* 80304530  38 1C FF FF */	addi r0, r28, -1
/* 80304534  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80304538  28 04 00 01 */	cmplwi r4, 1
/* 8030453C  41 82 00 20 */	beq lbl_8030455C
/* 80304540  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80304544  30 03 FF FF */	addic r0, r3, -1
/* 80304548  7C 60 19 10 */	subfe r3, r0, r3
/* 8030454C  38 03 00 01 */	addi r0, r3, 1
/* 80304550  7C 04 02 14 */	add r0, r4, r0
/* 80304554  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 80304558  48 00 00 18 */	b lbl_80304570
lbl_8030455C:
/* 8030455C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80304560  30 03 FF FF */	addic r0, r3, -1
/* 80304564  7C 60 19 10 */	subfe r3, r0, r3
/* 80304568  38 03 00 01 */	addi r0, r3, 1
/* 8030456C  54 1C 06 3E */	clrlwi r28, r0, 0x18
lbl_80304570:
/* 80304570  80 7D 01 50 */	lwz r3, 0x150(r29)
/* 80304574  80 63 00 70 */	lwz r3, 0x70(r3)
/* 80304578  7F 84 E3 78 */	mr r4, r28
/* 8030457C  81 83 00 00 */	lwz r12, 0(r3)
/* 80304580  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 80304584  7D 89 03 A6 */	mtctr r12
/* 80304588  4E 80 04 21 */	bctrl 
/* 8030458C  7F A3 EB 78 */	mr r3, r29
/* 80304590  38 1E FF FF */	addi r0, r30, -1
/* 80304594  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80304598  7F 85 E3 78 */	mr r5, r28
/* 8030459C  7F E6 FB 78 */	mr r6, r31
/* 803045A0  48 00 0D 0D */	bl setTevOrder__12J2DPictureExFUcUcb
/* 803045A4  7F A3 EB 78 */	mr r3, r29
/* 803045A8  38 1E FF FF */	addi r0, r30, -1
/* 803045AC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 803045B0  7F 85 E3 78 */	mr r5, r28
/* 803045B4  7F E6 FB 78 */	mr r6, r31
/* 803045B8  48 00 0E 29 */	bl setTevStage__12J2DPictureExFUcUcb
/* 803045BC  7F A3 EB 78 */	mr r3, r29
/* 803045C0  38 1E FF FF */	addi r0, r30, -1
/* 803045C4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 803045C8  48 00 13 61 */	bl setTevKColor__12J2DPictureExFUc
/* 803045CC  7F A3 EB 78 */	mr r3, r29
/* 803045D0  38 1E FF FF */	addi r0, r30, -1
/* 803045D4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 803045D8  48 00 16 99 */	bl setTevKColorSel__12J2DPictureExFUc
/* 803045DC  7F A3 EB 78 */	mr r3, r29
/* 803045E0  38 1E FF FF */	addi r0, r30, -1
/* 803045E4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 803045E8  48 00 17 31 */	bl setTevKAlphaSel__12J2DPictureExFUc
/* 803045EC  38 60 00 01 */	li r3, 1
lbl_803045F0:
/* 803045F0  39 61 00 20 */	addi r11, r1, 0x20
/* 803045F4  48 05 DC 2D */	bl _restgpr_27
/* 803045F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803045FC  7C 08 03 A6 */	mtlr r0
/* 80304600  38 21 00 20 */	addi r1, r1, 0x20
/* 80304604  4E 80 00 20 */	blr 
