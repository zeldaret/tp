lbl_80C63360:
/* 80C63360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C63364  7C 08 02 A6 */	mflr r0
/* 80C63368  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6336C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C63370  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C63374  41 82 00 08 */	beq lbl_80C6337C
/* 80C63378  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_80C6337C:
/* 80C6337C  3C 80 80 C6 */	lis r4, l_arcName@ha /* 0x80C66990@ha */
/* 80C63380  38 84 69 90 */	addi r4, r4, l_arcName@l /* 0x80C66990@l */
/* 80C63384  80 84 00 00 */	lwz r4, 0(r4)
/* 80C63388  4B 3C 9B 35 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C6338C  7C 60 1B 78 */	mr r0, r3
/* 80C63390  2C 00 00 04 */	cmpwi r0, 4
/* 80C63394  40 82 01 20 */	bne lbl_80C634B4
/* 80C63398  38 60 00 00 */	li r3, 0
/* 80C6339C  38 A0 00 12 */	li r5, 0x12
/* 80C633A0  38 80 00 23 */	li r4, 0x23
/* 80C633A4  38 00 00 03 */	li r0, 3
/* 80C633A8  7C 09 03 A6 */	mtctr r0
lbl_80C633AC:
/* 80C633AC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C633B0  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80C633B4  2C 00 00 0F */	cmpwi r0, 0xf
/* 80C633B8  40 82 00 10 */	bne lbl_80C633C8
/* 80C633BC  38 03 06 28 */	addi r0, r3, 0x628
/* 80C633C0  7C BF 01 2E */	stwx r5, r31, r0
/* 80C633C4  48 00 00 0C */	b lbl_80C633D0
lbl_80C633C8:
/* 80C633C8  38 03 06 28 */	addi r0, r3, 0x628
/* 80C633CC  7C 9F 01 2E */	stwx r4, r31, r0
lbl_80C633D0:
/* 80C633D0  38 63 00 04 */	addi r3, r3, 4
/* 80C633D4  42 00 FF D8 */	bdnz lbl_80C633AC
/* 80C633D8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C633DC  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 80C633E0  2C 00 00 0F */	cmpwi r0, 0xf
/* 80C633E4  41 82 00 1C */	beq lbl_80C63400
/* 80C633E8  90 1F 24 80 */	stw r0, 0x2480(r31)
/* 80C633EC  80 7F 06 28 */	lwz r3, 0x628(r31)
/* 80C633F0  80 1F 24 80 */	lwz r0, 0x2480(r31)
/* 80C633F4  7C 03 02 14 */	add r0, r3, r0
/* 80C633F8  90 1F 06 28 */	stw r0, 0x628(r31)
/* 80C633FC  48 00 00 0C */	b lbl_80C63408
lbl_80C63400:
/* 80C63400  38 00 00 00 */	li r0, 0
/* 80C63404  90 1F 24 80 */	stw r0, 0x2480(r31)
lbl_80C63408:
/* 80C63408  80 7F 24 80 */	lwz r3, 0x2480(r31)
/* 80C6340C  80 1F 06 28 */	lwz r0, 0x628(r31)
/* 80C63410  7C 63 00 50 */	subf r3, r3, r0
/* 80C63414  38 03 FF EF */	addi r0, r3, -17
/* 80C63418  90 1F 24 84 */	stw r0, 0x2484(r31)
/* 80C6341C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C63420  54 03 C7 3E */	rlwinm r3, r0, 0x18, 0x1c, 0x1f
/* 80C63424  2C 03 00 0F */	cmpwi r3, 0xf
/* 80C63428  41 82 00 10 */	beq lbl_80C63438
/* 80C6342C  80 1F 06 2C */	lwz r0, 0x62c(r31)
/* 80C63430  7C 00 1A 14 */	add r0, r0, r3
/* 80C63434  90 1F 06 2C */	stw r0, 0x62c(r31)
lbl_80C63438:
/* 80C63438  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C6343C  54 03 A7 3E */	rlwinm r3, r0, 0x14, 0x1c, 0x1f
/* 80C63440  2C 03 00 0F */	cmpwi r3, 0xf
/* 80C63444  41 82 00 10 */	beq lbl_80C63454
/* 80C63448  80 1F 06 30 */	lwz r0, 0x630(r31)
/* 80C6344C  7C 00 1A 14 */	add r0, r0, r3
/* 80C63450  90 1F 06 30 */	stw r0, 0x630(r31)
lbl_80C63454:
/* 80C63454  38 60 00 00 */	li r3, 0
/* 80C63458  38 00 00 03 */	li r0, 3
/* 80C6345C  7C 09 03 A6 */	mtctr r0
lbl_80C63460:
/* 80C63460  7C BF 1A 14 */	add r5, r31, r3
/* 80C63464  80 85 06 28 */	lwz r4, 0x628(r5)
/* 80C63468  38 04 00 01 */	addi r0, r4, 1
/* 80C6346C  90 05 06 10 */	stw r0, 0x610(r5)
/* 80C63470  38 63 00 04 */	addi r3, r3, 4
/* 80C63474  42 00 FF EC */	bdnz lbl_80C63460
/* 80C63478  7F E3 FB 78 */	mr r3, r31
/* 80C6347C  3C 80 80 C6 */	lis r4, l_arcName@ha /* 0x80C66990@ha */
/* 80C63480  38 84 69 90 */	addi r4, r4, l_arcName@l /* 0x80C66990@l */
/* 80C63484  80 84 00 00 */	lwz r4, 0(r4)
/* 80C63488  38 A0 00 08 */	li r5, 8
/* 80C6348C  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C63490  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C63494  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000F500@ha */
/* 80C63498  38 E7 F5 00 */	addi r7, r7, 0xF500 /* 0x0000F500@l */
/* 80C6349C  39 00 00 00 */	li r8, 0
/* 80C634A0  4B 41 53 1D */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C634A4  7C 60 1B 78 */	mr r0, r3
/* 80C634A8  2C 00 00 05 */	cmpwi r0, 5
/* 80C634AC  40 82 00 08 */	bne lbl_80C634B4
/* 80C634B0  48 00 00 08 */	b lbl_80C634B8
lbl_80C634B4:
/* 80C634B4  7C 03 03 78 */	mr r3, r0
lbl_80C634B8:
/* 80C634B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C634BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C634C0  7C 08 03 A6 */	mtlr r0
/* 80C634C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C634C8  4E 80 00 20 */	blr 
