lbl_8045B44C:
/* 8045B44C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045B450  7C 08 02 A6 */	mflr r0
/* 8045B454  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045B458  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045B45C  7C 7F 1B 78 */	mr r31, r3
/* 8045B460  A0 03 0C D0 */	lhz r0, 0xcd0(r3)
/* 8045B464  28 00 00 01 */	cmplwi r0, 1
/* 8045B468  41 82 00 14 */	beq lbl_8045B47C
/* 8045B46C  28 00 00 02 */	cmplwi r0, 2
/* 8045B470  41 82 00 0C */	beq lbl_8045B47C
/* 8045B474  38 60 00 00 */	li r3, 0
/* 8045B478  48 00 00 A8 */	b lbl_8045B520
lbl_8045B47C:
/* 8045B47C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045B480  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045B484  A0 1F 0C CC */	lhz r0, 0xccc(r31)
/* 8045B488  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8045B48C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8045B490  7C 05 07 74 */	extsb r5, r0
/* 8045B494  4B BD 9E CD */	bl isSwitch__10dSv_info_cCFii
/* 8045B498  2C 03 00 00 */	cmpwi r3, 0
/* 8045B49C  40 82 00 80 */	bne lbl_8045B51C
/* 8045B4A0  A0 1F 0C CC */	lhz r0, 0xccc(r31)
/* 8045B4A4  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 8045B4A8  28 04 00 FF */	cmplwi r4, 0xff
/* 8045B4AC  41 82 00 68 */	beq lbl_8045B514
/* 8045B4B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045B4B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045B4B8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8045B4BC  7C 05 07 74 */	extsb r5, r0
/* 8045B4C0  4B BD 9E A1 */	bl isSwitch__10dSv_info_cCFii
/* 8045B4C4  2C 03 00 00 */	cmpwi r3, 0
/* 8045B4C8  41 82 00 14 */	beq lbl_8045B4DC
/* 8045B4CC  A0 1F 0C CA */	lhz r0, 0xcca(r31)
/* 8045B4D0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8045B4D4  28 00 00 FF */	cmplwi r0, 0xff
/* 8045B4D8  41 82 00 3C */	beq lbl_8045B514
lbl_8045B4DC:
/* 8045B4DC  A0 1F 0C CC */	lhz r0, 0xccc(r31)
/* 8045B4E0  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 8045B4E4  28 04 00 FF */	cmplwi r4, 0xff
/* 8045B4E8  41 82 00 34 */	beq lbl_8045B51C
/* 8045B4EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045B4F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045B4F4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8045B4F8  7C 05 07 74 */	extsb r5, r0
/* 8045B4FC  4B BD 9E 65 */	bl isSwitch__10dSv_info_cCFii
/* 8045B500  2C 03 00 00 */	cmpwi r3, 0
/* 8045B504  40 82 00 18 */	bne lbl_8045B51C
/* 8045B508  A0 1F 0C CA */	lhz r0, 0xcca(r31)
/* 8045B50C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8045B510  40 82 00 0C */	bne lbl_8045B51C
lbl_8045B514:
/* 8045B514  38 60 00 01 */	li r3, 1
/* 8045B518  48 00 00 08 */	b lbl_8045B520
lbl_8045B51C:
/* 8045B51C  38 60 00 00 */	li r3, 0
lbl_8045B520:
/* 8045B520  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045B524  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045B528  7C 08 03 A6 */	mtlr r0
/* 8045B52C  38 21 00 10 */	addi r1, r1, 0x10
/* 8045B530  4E 80 00 20 */	blr 
