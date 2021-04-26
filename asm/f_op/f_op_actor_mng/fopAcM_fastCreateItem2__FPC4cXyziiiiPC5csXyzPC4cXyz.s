lbl_8001C3E0:
/* 8001C3E0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8001C3E4  7C 08 02 A6 */	mflr r0
/* 8001C3E8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8001C3EC  39 61 00 40 */	addi r11, r1, 0x40
/* 8001C3F0  48 34 5D DD */	bl _savegpr_25
/* 8001C3F4  7C 7B 1B 78 */	mr r27, r3
/* 8001C3F8  7C 9C 23 78 */	mr r28, r4
/* 8001C3FC  7C B9 2B 78 */	mr r25, r5
/* 8001C400  7C DD 33 78 */	mr r29, r6
/* 8001C404  7C FA 3B 78 */	mr r26, r7
/* 8001C408  7D 1E 43 78 */	mr r30, r8
/* 8001C40C  7D 3F 4B 78 */	mr r31, r9
/* 8001C410  80 0D 8B E0 */	lwz r0, Zero__5csXyz(r13)
/* 8001C414  90 01 00 10 */	stw r0, 0x10(r1)
/* 8001C418  A0 0D 8B E4 */	lhz r0, Zero__5csXyz+4(r13)
/* 8001C41C  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8001C420  2C 1C 00 FF */	cmpwi r28, 0xff
/* 8001C424  40 82 00 0C */	bne lbl_8001C430
/* 8001C428  38 60 00 00 */	li r3, 0
/* 8001C42C  48 00 01 6C */	b lbl_8001C598
lbl_8001C430:
/* 8001C430  28 1E 00 00 */	cmplwi r30, 0
/* 8001C434  41 82 00 20 */	beq lbl_8001C454
/* 8001C438  A8 1E 00 00 */	lha r0, 0(r30)
/* 8001C43C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8001C440  A8 1E 00 02 */	lha r0, 2(r30)
/* 8001C444  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8001C448  A8 1E 00 04 */	lha r0, 4(r30)
/* 8001C44C  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8001C450  48 00 00 1C */	b lbl_8001C46C
lbl_8001C454:
/* 8001C454  C0 22 82 2C */	lfs f1, lit_5711(r2)
/* 8001C458  48 24 B5 35 */	bl cM_rndFX__Ff
/* 8001C45C  FC 00 08 1E */	fctiwz f0, f1
/* 8001C460  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8001C464  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8001C468  B0 01 00 12 */	sth r0, 0x12(r1)
lbl_8001C46C:
/* 8001C46C  38 00 00 FF */	li r0, 0xff
/* 8001C470  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8001C474  7F 83 E3 78 */	mr r3, r28
/* 8001C478  48 07 F3 4D */	bl check_itemno__Fi
/* 8001C47C  57 44 C1 0E */	rlwinm r4, r26, 0x18, 4, 7
/* 8001C480  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8001C484  53 20 44 2E */	rlwimi r0, r25, 8, 0x10, 0x17
/* 8001C488  64 00 00 FF */	oris r0, r0, 0xff
/* 8001C48C  7C 9A 03 78 */	or r26, r4, r0
/* 8001C490  2C 1C 00 20 */	cmpwi r28, 0x20
/* 8001C494  41 82 00 D8 */	beq lbl_8001C56C
/* 8001C498  40 80 00 14 */	bge lbl_8001C4AC
/* 8001C49C  2C 1C 00 1E */	cmpwi r28, 0x1e
/* 8001C4A0  41 82 00 18 */	beq lbl_8001C4B8
/* 8001C4A4  40 80 00 74 */	bge lbl_8001C518
/* 8001C4A8  48 00 00 C4 */	b lbl_8001C56C
lbl_8001C4AC:
/* 8001C4AC  2C 1C 00 23 */	cmpwi r28, 0x23
/* 8001C4B0  40 80 00 BC */	bge lbl_8001C56C
/* 8001C4B4  48 00 00 34 */	b lbl_8001C4E8
lbl_8001C4B8:
/* 8001C4B8  38 00 00 00 */	li r0, 0
/* 8001C4BC  90 01 00 08 */	stw r0, 8(r1)
/* 8001C4C0  38 60 01 3F */	li r3, 0x13f
/* 8001C4C4  38 80 FF FF */	li r4, -1
/* 8001C4C8  7F 65 DB 78 */	mr r5, r27
/* 8001C4CC  7F A6 EB 78 */	mr r6, r29
/* 8001C4D0  7F C7 F3 78 */	mr r7, r30
/* 8001C4D4  7F E8 FB 78 */	mr r8, r31
/* 8001C4D8  39 20 FF FF */	li r9, -1
/* 8001C4DC  39 40 00 00 */	li r10, 0
/* 8001C4E0  4B FF D9 25 */	bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 8001C4E4  48 00 00 B4 */	b lbl_8001C598
lbl_8001C4E8:
/* 8001C4E8  38 00 00 00 */	li r0, 0
/* 8001C4EC  90 01 00 08 */	stw r0, 8(r1)
/* 8001C4F0  38 60 02 1B */	li r3, 0x21b
/* 8001C4F4  7F 44 D3 78 */	mr r4, r26
/* 8001C4F8  7F 65 DB 78 */	mr r5, r27
/* 8001C4FC  7F A6 EB 78 */	mr r6, r29
/* 8001C500  7F C7 F3 78 */	mr r7, r30
/* 8001C504  7F E8 FB 78 */	mr r8, r31
/* 8001C508  39 20 FF FF */	li r9, -1
/* 8001C50C  39 40 00 00 */	li r10, 0
/* 8001C510  4B FF D8 F5 */	bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 8001C514  48 00 00 84 */	b lbl_8001C598
lbl_8001C518:
/* 8001C518  3B C0 00 00 */	li r30, 0
/* 8001C51C  3B 80 00 00 */	li r28, 0
lbl_8001C520:
/* 8001C520  93 81 00 08 */	stw r28, 8(r1)
/* 8001C524  38 60 02 18 */	li r3, 0x218
/* 8001C528  7F 44 D3 78 */	mr r4, r26
/* 8001C52C  7F 65 DB 78 */	mr r5, r27
/* 8001C530  7F A6 EB 78 */	mr r6, r29
/* 8001C534  38 E1 00 10 */	addi r7, r1, 0x10
/* 8001C538  7F E8 FB 78 */	mr r8, r31
/* 8001C53C  39 20 FF FF */	li r9, -1
/* 8001C540  39 40 00 00 */	li r10, 0
/* 8001C544  4B FF D8 C1 */	bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 8001C548  C0 22 82 2C */	lfs f1, lit_5711(r2)
/* 8001C54C  48 24 B4 41 */	bl cM_rndFX__Ff
/* 8001C550  FC 00 08 1E */	fctiwz f0, f1
/* 8001C554  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8001C558  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8001C55C  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8001C560  3B DE 00 01 */	addi r30, r30, 1
/* 8001C564  2C 1E 00 02 */	cmpwi r30, 2
/* 8001C568  41 80 FF B8 */	blt lbl_8001C520
lbl_8001C56C:
/* 8001C56C  38 00 00 00 */	li r0, 0
/* 8001C570  90 01 00 08 */	stw r0, 8(r1)
/* 8001C574  38 60 02 18 */	li r3, 0x218
/* 8001C578  7F 44 D3 78 */	mr r4, r26
/* 8001C57C  7F 65 DB 78 */	mr r5, r27
/* 8001C580  7F A6 EB 78 */	mr r6, r29
/* 8001C584  38 E1 00 10 */	addi r7, r1, 0x10
/* 8001C588  7F E8 FB 78 */	mr r8, r31
/* 8001C58C  39 20 FF FF */	li r9, -1
/* 8001C590  39 40 00 00 */	li r10, 0
/* 8001C594  4B FF D8 71 */	bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
lbl_8001C598:
/* 8001C598  39 61 00 40 */	addi r11, r1, 0x40
/* 8001C59C  48 34 5C 7D */	bl _restgpr_25
/* 8001C5A0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8001C5A4  7C 08 03 A6 */	mtlr r0
/* 8001C5A8  38 21 00 40 */	addi r1, r1, 0x40
/* 8001C5AC  4E 80 00 20 */	blr 
