lbl_80B0D458:
/* 80B0D458  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B0D45C  7C 08 02 A6 */	mflr r0
/* 80B0D460  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B0D464  39 61 00 20 */	addi r11, r1, 0x20
/* 80B0D468  4B 85 4D 6D */	bl _savegpr_27
/* 80B0D46C  7C 7D 1B 78 */	mr r29, r3
/* 80B0D470  7C 9E 23 78 */	mr r30, r4
/* 80B0D474  7C BF 2B 78 */	mr r31, r5
/* 80B0D478  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 80B0D47C  54 00 06 A4 */	rlwinm r0, r0, 0, 0x1a, 0x12
/* 80B0D480  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80B0D484  54 9C 18 38 */	slwi r28, r4, 3
/* 80B0D488  3C 80 80 B1 */	lis r4, l_bckGetParamList@ha /* 0x80B10A80@ha */
/* 80B0D48C  38 84 0A 80 */	addi r4, r4, l_bckGetParamList@l /* 0x80B10A80@l */
/* 80B0D490  7C A4 E0 2E */	lwzx r5, r4, r28
/* 80B0D494  2C 05 00 00 */	cmpwi r5, 0
/* 80B0D498  41 80 00 18 */	blt lbl_80B0D4B0
/* 80B0D49C  3C 80 80 B1 */	lis r4, l_arcName@ha /* 0x80B10AB8@ha */
/* 80B0D4A0  38 84 0A B8 */	addi r4, r4, l_arcName@l /* 0x80B10AB8@l */
/* 80B0D4A4  80 84 00 00 */	lwz r4, 0(r4)
/* 80B0D4A8  4B 64 56 85 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B0D4AC  48 00 00 08 */	b lbl_80B0D4B4
lbl_80B0D4B0:
/* 80B0D4B0  38 60 00 00 */	li r3, 0
lbl_80B0D4B4:
/* 80B0D4B4  7C 7B 1B 78 */	mr r27, r3
/* 80B0D4B8  3C 60 80 B1 */	lis r3, l_bckGetParamList@ha /* 0x80B10A80@ha */
/* 80B0D4BC  38 03 0A 80 */	addi r0, r3, l_bckGetParamList@l /* 0x80B10A80@l */
/* 80B0D4C0  7C 60 E2 14 */	add r3, r0, r28
/* 80B0D4C4  83 83 00 04 */	lwz r28, 4(r3)
/* 80B0D4C8  38 60 00 00 */	li r3, 0
/* 80B0D4CC  2C 1E 00 01 */	cmpwi r30, 1
/* 80B0D4D0  41 82 00 30 */	beq lbl_80B0D500
/* 80B0D4D4  40 80 00 48 */	bge lbl_80B0D51C
/* 80B0D4D8  2C 1E 00 00 */	cmpwi r30, 0
/* 80B0D4DC  40 80 00 08 */	bge lbl_80B0D4E4
/* 80B0D4E0  48 00 00 3C */	b lbl_80B0D51C
lbl_80B0D4E4:
/* 80B0D4E4  7F A3 EB 78 */	mr r3, r29
/* 80B0D4E8  38 80 00 00 */	li r4, 0
/* 80B0D4EC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B0D4F0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B0D4F4  7D 89 03 A6 */	mtctr r12
/* 80B0D4F8  4E 80 04 21 */	bctrl 
/* 80B0D4FC  48 00 00 24 */	b lbl_80B0D520
lbl_80B0D500:
/* 80B0D500  7F A3 EB 78 */	mr r3, r29
/* 80B0D504  38 80 00 00 */	li r4, 0
/* 80B0D508  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B0D50C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B0D510  7D 89 03 A6 */	mtctr r12
/* 80B0D514  4E 80 04 21 */	bctrl 
/* 80B0D518  48 00 00 08 */	b lbl_80B0D520
lbl_80B0D51C:
/* 80B0D51C  3B 60 00 00 */	li r27, 0
lbl_80B0D520:
/* 80B0D520  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B0D524  40 82 00 0C */	bne lbl_80B0D530
/* 80B0D528  38 60 00 00 */	li r3, 0
/* 80B0D52C  48 00 00 60 */	b lbl_80B0D58C
lbl_80B0D530:
/* 80B0D530  28 1B 00 00 */	cmplwi r27, 0
/* 80B0D534  40 82 00 0C */	bne lbl_80B0D540
/* 80B0D538  38 60 00 01 */	li r3, 1
/* 80B0D53C  48 00 00 50 */	b lbl_80B0D58C
lbl_80B0D540:
/* 80B0D540  7F A3 EB 78 */	mr r3, r29
/* 80B0D544  7F 64 DB 78 */	mr r4, r27
/* 80B0D548  3C A0 80 B1 */	lis r5, lit_4358@ha /* 0x80B10964@ha */
/* 80B0D54C  C0 25 09 64 */	lfs f1, lit_4358@l(r5)  /* 0x80B10964@l */
/* 80B0D550  7F 85 E3 78 */	mr r5, r28
/* 80B0D554  38 C0 00 00 */	li r6, 0
/* 80B0D558  38 E0 FF FF */	li r7, -1
/* 80B0D55C  7F E8 FB 78 */	mr r8, r31
/* 80B0D560  4B 64 57 21 */	bl setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib
/* 80B0D564  2C 03 00 00 */	cmpwi r3, 0
/* 80B0D568  41 82 00 20 */	beq lbl_80B0D588
/* 80B0D56C  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80B0D570  60 00 01 40 */	ori r0, r0, 0x140
/* 80B0D574  90 1D 09 9C */	stw r0, 0x99c(r29)
/* 80B0D578  38 00 00 00 */	li r0, 0
/* 80B0D57C  B0 1D 09 E4 */	sth r0, 0x9e4(r29)
/* 80B0D580  38 60 00 01 */	li r3, 1
/* 80B0D584  48 00 00 08 */	b lbl_80B0D58C
lbl_80B0D588:
/* 80B0D588  38 60 00 00 */	li r3, 0
lbl_80B0D58C:
/* 80B0D58C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B0D590  4B 85 4C 91 */	bl _restgpr_27
/* 80B0D594  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B0D598  7C 08 03 A6 */	mtlr r0
/* 80B0D59C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B0D5A0  4E 80 00 20 */	blr 
