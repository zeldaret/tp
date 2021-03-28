lbl_8013B424:
/* 8013B424  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013B428  7C 08 02 A6 */	mflr r0
/* 8013B42C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013B430  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013B434  93 C1 00 08 */	stw r30, 8(r1)
/* 8013B438  7C 7E 1B 78 */	mr r30, r3
/* 8013B43C  4B FE E6 45 */	bl checkWolfGroundSpecialMode__9daAlink_cFv
/* 8013B440  2C 03 00 00 */	cmpwi r3, 0
/* 8013B444  41 82 00 0C */	beq lbl_8013B450
/* 8013B448  38 60 00 01 */	li r3, 1
/* 8013B44C  48 00 00 C4 */	b lbl_8013B510
lbl_8013B450:
/* 8013B450  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8013B454  38 7E 33 98 */	addi r3, r30, 0x3398
/* 8013B458  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013B45C  3C 80 80 39 */	lis r4, m__23daAlinkHIO_wlMoveNoP_c0@ha
/* 8013B460  38 84 EF 28 */	addi r4, r4, m__23daAlinkHIO_wlMoveNoP_c0@l
/* 8013B464  C0 44 00 10 */	lfs f2, 0x10(r4)
/* 8013B468  48 13 52 D9 */	bl cLib_chaseF__FPfff
/* 8013B46C  7F E3 FB 78 */	mr r3, r31
/* 8013B470  48 02 30 5D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013B474  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013B478  41 82 00 14 */	beq lbl_8013B48C
/* 8013B47C  7F C3 F3 78 */	mr r3, r30
/* 8013B480  38 80 00 00 */	li r4, 0
/* 8013B484  4B FE E6 C1 */	bl checkNextActionWolf__9daAlink_cFi
/* 8013B488  48 00 00 84 */	b lbl_8013B50C
lbl_8013B48C:
/* 8013B48C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8013B490  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wlAtRoll_c0@ha
/* 8013B494  38 63 F5 58 */	addi r3, r3, m__22daAlinkHIO_wlAtRoll_c0@l
/* 8013B498  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8013B49C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013B4A0  40 81 00 14 */	ble lbl_8013B4B4
/* 8013B4A4  7F C3 F3 78 */	mr r3, r30
/* 8013B4A8  38 80 00 01 */	li r4, 1
/* 8013B4AC  4B FE E6 99 */	bl checkNextActionWolf__9daAlink_cFi
/* 8013B4B0  48 00 00 5C */	b lbl_8013B50C
lbl_8013B4B4:
/* 8013B4B4  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 8013B4B8  2C 00 00 00 */	cmpwi r0, 0
/* 8013B4BC  40 82 00 50 */	bne lbl_8013B50C
/* 8013B4C0  C0 02 93 24 */	lfs f0, lit_7450(r2)
/* 8013B4C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013B4C8  4C 41 13 82 */	cror 2, 1, 2
/* 8013B4CC  40 82 00 40 */	bne lbl_8013B50C
/* 8013B4D0  C0 02 93 84 */	lfs f0, lit_8781(r2)
/* 8013B4D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013B4D8  40 80 00 34 */	bge lbl_8013B50C
/* 8013B4DC  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 8013B4E0  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 8013B4E4  40 82 00 0C */	bne lbl_8013B4F0
/* 8013B4E8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8013B4EC  D0 1E 33 98 */	stfs f0, 0x3398(r30)
lbl_8013B4F0:
/* 8013B4F0  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 8013B4F4  60 00 00 02 */	ori r0, r0, 2
/* 8013B4F8  90 1E 05 80 */	stw r0, 0x580(r30)
/* 8013B4FC  38 7E 12 20 */	addi r3, r30, 0x1220
/* 8013B500  C0 3E 34 78 */	lfs f1, 0x3478(r30)
/* 8013B504  C0 42 93 78 */	lfs f2, lit_8676(r2)
/* 8013B508  48 13 52 39 */	bl cLib_chaseF__FPfff
lbl_8013B50C:
/* 8013B50C  38 60 00 01 */	li r3, 1
lbl_8013B510:
/* 8013B510  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013B514  83 C1 00 08 */	lwz r30, 8(r1)
/* 8013B518  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013B51C  7C 08 03 A6 */	mtlr r0
/* 8013B520  38 21 00 10 */	addi r1, r1, 0x10
/* 8013B524  4E 80 00 20 */	blr 
