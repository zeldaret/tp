lbl_8010D38C:
/* 8010D38C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010D390  7C 08 02 A6 */	mflr r0
/* 8010D394  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010D398  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010D39C  93 C1 00 08 */	stw r30, 8(r1)
/* 8010D3A0  7C 7F 1B 78 */	mr r31, r3
/* 8010D3A4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8010D3A8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8010D3AC  3B C4 5D 7C */	addi r30, r4, 0x5d7c
/* 8010D3B0  80 03 31 7C */	lwz r0, 0x317c(r3)
/* 8010D3B4  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8010D3B8  7C 1E 00 2E */	lwzx r0, r30, r0
/* 8010D3BC  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8010D3C0  41 82 00 A4 */	beq lbl_8010D464
/* 8010D3C4  38 80 00 01 */	li r4, 1
/* 8010D3C8  4B FC 18 11 */	bl checkSubjectEnd__9daAlink_cFi
/* 8010D3CC  2C 03 00 00 */	cmpwi r3, 0
/* 8010D3D0  41 82 00 30 */	beq lbl_8010D400
/* 8010D3D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010D3D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010D3DC  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8010D3E0  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 8010D3E4  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 8010D3E8  38 00 00 00 */	li r0, 0
/* 8010D3EC  B0 1F 05 9C */	sth r0, 0x59c(r31)
/* 8010D3F0  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8010D3F4  54 00 00 C0 */	rlwinm r0, r0, 0, 3, 0
/* 8010D3F8  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 8010D3FC  48 00 00 C0 */	b lbl_8010D4BC
lbl_8010D400:
/* 8010D400  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010D404  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010D408  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8010D40C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8010D410  41 82 00 AC */	beq lbl_8010D4BC
/* 8010D414  AB DF 04 E6 */	lha r30, 0x4e6(r31)
/* 8010D418  A8 1F 31 0C */	lha r0, 0x310c(r31)
/* 8010D41C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8010D420  7F E3 FB 78 */	mr r3, r31
/* 8010D424  4B FC 14 7D */	bl setBodyAngleToCamera__9daAlink_cFv
/* 8010D428  B3 DF 04 E6 */	sth r30, 0x4e6(r31)
/* 8010D42C  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8010D430  A8 1F 31 0C */	lha r0, 0x310c(r31)
/* 8010D434  7C 03 00 50 */	subf r0, r3, r0
/* 8010D438  7C 00 07 34 */	extsh r0, r0
/* 8010D43C  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8010D440  40 81 00 10 */	ble lbl_8010D450
/* 8010D444  38 03 40 00 */	addi r0, r3, 0x4000
/* 8010D448  B0 1F 31 0C */	sth r0, 0x310c(r31)
/* 8010D44C  48 00 00 70 */	b lbl_8010D4BC
lbl_8010D450:
/* 8010D450  2C 00 C0 00 */	cmpwi r0, -16384
/* 8010D454  40 80 00 68 */	bge lbl_8010D4BC
/* 8010D458  38 03 C0 00 */	addi r0, r3, -16384
/* 8010D45C  B0 1F 31 0C */	sth r0, 0x310c(r31)
/* 8010D460  48 00 00 5C */	b lbl_8010D4BC
lbl_8010D464:
/* 8010D464  48 07 41 DD */	bl dCam_getBody__Fv
/* 8010D468  38 80 00 04 */	li r4, 4
/* 8010D46C  48 05 40 89 */	bl ChangeModeOK__9dCamera_cFl
/* 8010D470  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010D474  41 82 00 48 */	beq lbl_8010D4BC
/* 8010D478  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 8010D47C  64 00 04 00 */	oris r0, r0, 0x400
/* 8010D480  90 1F 05 80 */	stw r0, 0x580(r31)
/* 8010D484  80 1F 31 7C */	lwz r0, 0x317c(r31)
/* 8010D488  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8010D48C  7C 1E 00 2E */	lwzx r0, r30, r0
/* 8010D490  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 8010D494  41 82 00 28 */	beq lbl_8010D4BC
/* 8010D498  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8010D49C  B0 1F 31 0C */	sth r0, 0x310c(r31)
/* 8010D4A0  38 00 00 00 */	li r0, 0
/* 8010D4A4  B0 1F 31 0A */	sth r0, 0x310a(r31)
/* 8010D4A8  7F E3 FB 78 */	mr r3, r31
/* 8010D4AC  4B FC 16 49 */	bl setSubjectMode__9daAlink_cFv
/* 8010D4B0  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8010D4B4  64 00 60 00 */	oris r0, r0, 0x6000
/* 8010D4B8  90 1F 31 A0 */	stw r0, 0x31a0(r31)
lbl_8010D4BC:
/* 8010D4BC  7F E3 FB 78 */	mr r3, r31
/* 8010D4C0  4B FF E5 AD */	bl commonHookshotWallWait__9daAlink_cFv
/* 8010D4C4  2C 03 00 00 */	cmpwi r3, 0
/* 8010D4C8  41 82 00 0C */	beq lbl_8010D4D4
/* 8010D4CC  38 60 00 01 */	li r3, 1
/* 8010D4D0  48 00 01 0C */	b lbl_8010D5DC
lbl_8010D4D4:
/* 8010D4D4  7F E3 FB 78 */	mr r3, r31
/* 8010D4D8  38 80 00 01 */	li r4, 1
/* 8010D4DC  4B FA 5D 8D */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 8010D4E0  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 8010D4E4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8010D4E8  41 82 00 18 */	beq lbl_8010D500
/* 8010D4EC  7F E3 FB 78 */	mr r3, r31
/* 8010D4F0  38 80 00 01 */	li r4, 1
/* 8010D4F4  C0 22 93 3C */	lfs f1, lit_7808(r2)
/* 8010D4F8  4B FB 95 51 */	bl procFallInit__9daAlink_cFif
/* 8010D4FC  48 00 00 E0 */	b lbl_8010D5DC
lbl_8010D500:
/* 8010D500  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 8010D504  2C 00 00 00 */	cmpwi r0, 0
/* 8010D508  40 82 00 A4 */	bne lbl_8010D5AC
/* 8010D50C  7F E3 FB 78 */	mr r3, r31
/* 8010D510  38 80 00 47 */	li r4, 0x47
/* 8010D514  4B FB 2C 51 */	bl checkSetItemTrigger__9daAlink_cFi
/* 8010D518  2C 03 00 00 */	cmpwi r3, 0
/* 8010D51C  41 82 00 10 */	beq lbl_8010D52C
/* 8010D520  38 00 00 01 */	li r0, 1
/* 8010D524  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 8010D528  48 00 00 28 */	b lbl_8010D550
lbl_8010D52C:
/* 8010D52C  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 8010D530  2C 00 00 00 */	cmpwi r0, 0
/* 8010D534  41 82 00 1C */	beq lbl_8010D550
/* 8010D538  7F E3 FB 78 */	mr r3, r31
/* 8010D53C  4B FA 50 C9 */	bl itemButton__9daAlink_cFv
/* 8010D540  2C 03 00 00 */	cmpwi r3, 0
/* 8010D544  40 82 00 0C */	bne lbl_8010D550
/* 8010D548  38 00 00 00 */	li r0, 0
/* 8010D54C  B0 1F 30 12 */	sth r0, 0x3012(r31)
lbl_8010D550:
/* 8010D550  3B DF 1F D0 */	addi r30, r31, 0x1fd0
/* 8010D554  7F C3 F3 78 */	mr r3, r30
/* 8010D558  48 05 0F 75 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8010D55C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010D560  40 82 00 38 */	bne lbl_8010D598
/* 8010D564  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 8010D568  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 8010D56C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010D570  41 81 00 10 */	bgt lbl_8010D580
/* 8010D574  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 8010D578  2C 00 00 00 */	cmpwi r0, 0
/* 8010D57C  41 82 00 5C */	beq lbl_8010D5D8
lbl_8010D580:
/* 8010D580  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8010D584  3C 60 80 39 */	lis r3, m__22daAlinkHIO_hookshot_c0@ha
/* 8010D588  38 63 E9 C0 */	addi r3, r3, m__22daAlinkHIO_hookshot_c0@l
/* 8010D58C  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 8010D590  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010D594  40 81 00 44 */	ble lbl_8010D5D8
lbl_8010D598:
/* 8010D598  7F E3 FB 78 */	mr r3, r31
/* 8010D59C  4B FF DD C1 */	bl setHookshotWallWaitAnime__9daAlink_cFv
/* 8010D5A0  38 00 00 01 */	li r0, 1
/* 8010D5A4  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8010D5A8  48 00 00 30 */	b lbl_8010D5D8
lbl_8010D5AC:
/* 8010D5AC  7F E3 FB 78 */	mr r3, r31
/* 8010D5B0  38 80 00 47 */	li r4, 0x47
/* 8010D5B4  4B FB 2B B1 */	bl checkSetItemTrigger__9daAlink_cFi
/* 8010D5B8  2C 03 00 00 */	cmpwi r3, 0
/* 8010D5BC  40 82 00 10 */	bne lbl_8010D5CC
/* 8010D5C0  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 8010D5C4  2C 00 00 00 */	cmpwi r0, 0
/* 8010D5C8  41 82 00 10 */	beq lbl_8010D5D8
lbl_8010D5CC:
/* 8010D5CC  7F E3 FB 78 */	mr r3, r31
/* 8010D5D0  48 00 00 25 */	bl procHookshotWallShootInit__9daAlink_cFv
/* 8010D5D4  48 00 00 08 */	b lbl_8010D5DC
lbl_8010D5D8:
/* 8010D5D8  38 60 00 01 */	li r3, 1
lbl_8010D5DC:
/* 8010D5DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010D5E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8010D5E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010D5E8  7C 08 03 A6 */	mtlr r0
/* 8010D5EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8010D5F0  4E 80 00 20 */	blr 
