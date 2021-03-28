lbl_806BA3B4:
/* 806BA3B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806BA3B8  7C 08 02 A6 */	mflr r0
/* 806BA3BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806BA3C0  39 61 00 20 */	addi r11, r1, 0x20
/* 806BA3C4  4B CA 7E 18 */	b _savegpr_29
/* 806BA3C8  7C 7D 1B 78 */	mr r29, r3
/* 806BA3CC  3C 80 80 6C */	lis r4, lit_1109@ha
/* 806BA3D0  3B C4 B8 D0 */	addi r30, r4, lit_1109@l
/* 806BA3D4  3C 80 80 6C */	lis r4, lit_3826@ha
/* 806BA3D8  3B E4 B6 D0 */	addi r31, r4, lit_3826@l
/* 806BA3DC  88 03 06 16 */	lbz r0, 0x616(r3)
/* 806BA3E0  2C 00 00 02 */	cmpwi r0, 2
/* 806BA3E4  41 82 01 50 */	beq lbl_806BA534
/* 806BA3E8  40 80 00 14 */	bge lbl_806BA3FC
/* 806BA3EC  2C 00 00 00 */	cmpwi r0, 0
/* 806BA3F0  41 82 00 18 */	beq lbl_806BA408
/* 806BA3F4  40 80 00 90 */	bge lbl_806BA484
/* 806BA3F8  48 00 01 EC */	b lbl_806BA5E4
lbl_806BA3FC:
/* 806BA3FC  2C 00 00 04 */	cmpwi r0, 4
/* 806BA400  40 80 01 E4 */	bge lbl_806BA5E4
/* 806BA404  48 00 01 B4 */	b lbl_806BA5B8
lbl_806BA408:
/* 806BA408  80 1D 05 C0 */	lwz r0, 0x5c0(r29)
/* 806BA40C  2C 00 00 0C */	cmpwi r0, 0xc
/* 806BA410  41 82 00 18 */	beq lbl_806BA428
/* 806BA414  38 80 00 0C */	li r4, 0xc
/* 806BA418  38 A0 00 02 */	li r5, 2
/* 806BA41C  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 806BA420  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806BA424  4B FF F6 05 */	bl SetAnm__8daE_FK_cFiiff
lbl_806BA428:
/* 806BA428  88 7D 06 16 */	lbz r3, 0x616(r29)
/* 806BA42C  38 03 00 01 */	addi r0, r3, 1
/* 806BA430  98 1D 06 16 */	stb r0, 0x616(r29)
/* 806BA434  7F A3 EB 78 */	mr r3, r29
/* 806BA438  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806BA43C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806BA440  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806BA444  4B 96 02 CC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806BA448  7C 64 1B 78 */	mr r4, r3
/* 806BA44C  7F A3 EB 78 */	mr r3, r29
/* 806BA450  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 806BA454  7C 00 20 50 */	subf r0, r0, r4
/* 806BA458  7C 04 07 34 */	extsh r4, r0
/* 806BA45C  4B FF F7 59 */	bl TnNeckSet__8daE_FK_cFs
/* 806BA460  A8 1E 00 9C */	lha r0, 0x9c(r30)
/* 806BA464  B0 1D 05 D0 */	sth r0, 0x5d0(r29)
/* 806BA468  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 806BA46C  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 806BA470  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806BA474  40 80 01 70 */	bge lbl_806BA5E4
/* 806BA478  38 00 00 01 */	li r0, 1
/* 806BA47C  98 1D 06 16 */	stb r0, 0x616(r29)
/* 806BA480  48 00 01 64 */	b lbl_806BA5E4
lbl_806BA484:
/* 806BA484  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 806BA488  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 806BA48C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806BA490  40 80 00 18 */	bge lbl_806BA4A8
/* 806BA494  38 00 00 64 */	li r0, 0x64
/* 806BA498  B0 1D 05 C4 */	sth r0, 0x5c4(r29)
/* 806BA49C  88 7D 06 16 */	lbz r3, 0x616(r29)
/* 806BA4A0  38 03 00 01 */	addi r0, r3, 1
/* 806BA4A4  98 1D 06 16 */	stb r0, 0x616(r29)
lbl_806BA4A8:
/* 806BA4A8  7F A3 EB 78 */	mr r3, r29
/* 806BA4AC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806BA4B0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806BA4B4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806BA4B8  4B 96 02 58 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806BA4BC  7C 64 1B 78 */	mr r4, r3
/* 806BA4C0  7F A3 EB 78 */	mr r3, r29
/* 806BA4C4  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 806BA4C8  7C 00 20 50 */	subf r0, r0, r4
/* 806BA4CC  7C 04 07 34 */	extsh r4, r0
/* 806BA4D0  4B FF F6 E5 */	bl TnNeckSet__8daE_FK_cFs
/* 806BA4D4  7F A3 EB 78 */	mr r3, r29
/* 806BA4D8  4B FF FE 59 */	bl checkViewArea__8daE_FK_cFv
/* 806BA4DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806BA4E0  41 82 00 10 */	beq lbl_806BA4F0
/* 806BA4E4  A8 1E 00 9C */	lha r0, 0x9c(r30)
/* 806BA4E8  B0 1D 05 D0 */	sth r0, 0x5d0(r29)
/* 806BA4EC  48 00 00 F8 */	b lbl_806BA5E4
lbl_806BA4F0:
/* 806BA4F0  A8 1E 00 9C */	lha r0, 0x9c(r30)
/* 806BA4F4  B0 1D 05 D0 */	sth r0, 0x5d0(r29)
/* 806BA4F8  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 806BA4FC  A8 1E 00 A4 */	lha r0, 0xa4(r30)
/* 806BA500  7C 03 00 50 */	subf r0, r3, r0
/* 806BA504  7C 03 07 34 */	extsh r3, r0
/* 806BA508  2C 03 40 00 */	cmpwi r3, 0x4000
/* 806BA50C  40 80 00 0C */	bge lbl_806BA518
/* 806BA510  7C 60 07 35 */	extsh. r0, r3
/* 806BA514  41 81 00 14 */	bgt lbl_806BA528
lbl_806BA518:
/* 806BA518  2C 03 C0 00 */	cmpwi r3, -16384
/* 806BA51C  40 81 00 C8 */	ble lbl_806BA5E4
/* 806BA520  7C 60 07 35 */	extsh. r0, r3
/* 806BA524  40 80 00 C0 */	bge lbl_806BA5E4
lbl_806BA528:
/* 806BA528  38 00 00 03 */	li r0, 3
/* 806BA52C  98 1D 06 16 */	stb r0, 0x616(r29)
/* 806BA530  48 00 00 B4 */	b lbl_806BA5E4
lbl_806BA534:
/* 806BA534  4B FF FD FD */	bl checkViewArea__8daE_FK_cFv
/* 806BA538  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806BA53C  40 82 00 3C */	bne lbl_806BA578
/* 806BA540  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 806BA544  A8 1E 00 A4 */	lha r0, 0xa4(r30)
/* 806BA548  7C 03 00 50 */	subf r0, r3, r0
/* 806BA54C  7C 03 07 34 */	extsh r3, r0
/* 806BA550  2C 03 40 00 */	cmpwi r3, 0x4000
/* 806BA554  40 80 00 0C */	bge lbl_806BA560
/* 806BA558  7C 60 07 35 */	extsh. r0, r3
/* 806BA55C  41 81 00 14 */	bgt lbl_806BA570
lbl_806BA560:
/* 806BA560  2C 03 C0 00 */	cmpwi r3, -16384
/* 806BA564  40 81 00 14 */	ble lbl_806BA578
/* 806BA568  7C 60 07 35 */	extsh. r0, r3
/* 806BA56C  40 80 00 0C */	bge lbl_806BA578
lbl_806BA570:
/* 806BA570  38 00 00 03 */	li r0, 3
/* 806BA574  98 1D 06 16 */	stb r0, 0x616(r29)
lbl_806BA578:
/* 806BA578  A8 1D 05 C4 */	lha r0, 0x5c4(r29)
/* 806BA57C  2C 00 00 00 */	cmpwi r0, 0
/* 806BA580  40 82 00 28 */	bne lbl_806BA5A8
/* 806BA584  7F A3 EB 78 */	mr r3, r29
/* 806BA588  38 80 00 0A */	li r4, 0xa
/* 806BA58C  38 A0 00 02 */	li r5, 2
/* 806BA590  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 806BA594  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806BA598  4B FF F4 91 */	bl SetAnm__8daE_FK_cFiiff
/* 806BA59C  88 7D 06 16 */	lbz r3, 0x616(r29)
/* 806BA5A0  38 03 00 01 */	addi r0, r3, 1
/* 806BA5A4  98 1D 06 16 */	stb r0, 0x616(r29)
lbl_806BA5A8:
/* 806BA5A8  7F A3 EB 78 */	mr r3, r29
/* 806BA5AC  38 80 00 00 */	li r4, 0
/* 806BA5B0  4B FF F6 05 */	bl TnNeckSet__8daE_FK_cFs
/* 806BA5B4  48 00 00 30 */	b lbl_806BA5E4
lbl_806BA5B8:
/* 806BA5B8  38 7D 06 04 */	addi r3, r29, 0x604
/* 806BA5BC  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 806BA5C0  C0 5F 00 E0 */	lfs f2, 0xe0(r31)
/* 806BA5C4  4B BB 61 7C */	b cLib_chaseF__FPfff
/* 806BA5C8  2C 03 00 00 */	cmpwi r3, 0
/* 806BA5CC  41 82 00 0C */	beq lbl_806BA5D8
/* 806BA5D0  7F A3 EB 78 */	mr r3, r29
/* 806BA5D4  4B 95 F6 A8 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_806BA5D8:
/* 806BA5D8  7F A3 EB 78 */	mr r3, r29
/* 806BA5DC  38 80 00 00 */	li r4, 0
/* 806BA5E0  4B FF F5 D5 */	bl TnNeckSet__8daE_FK_cFs
lbl_806BA5E4:
/* 806BA5E4  7F A3 EB 78 */	mr r3, r29
/* 806BA5E8  4B FF F5 45 */	bl SpeedSet__8daE_FK_cFv
/* 806BA5EC  7F A3 EB 78 */	mr r3, r29
/* 806BA5F0  4B FF F6 25 */	bl HsAngleSet__8daE_FK_cFv
/* 806BA5F4  7F A3 EB 78 */	mr r3, r29
/* 806BA5F8  4B FF F6 29 */	bl TgChk__8daE_FK_cFv
/* 806BA5FC  7F A3 EB 78 */	mr r3, r29
/* 806BA600  4B FF F7 01 */	bl AtChk__8daE_FK_cFv
/* 806BA604  39 61 00 20 */	addi r11, r1, 0x20
/* 806BA608  4B CA 7C 20 */	b _restgpr_29
/* 806BA60C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806BA610  7C 08 03 A6 */	mtlr r0
/* 806BA614  38 21 00 20 */	addi r1, r1, 0x20
/* 806BA618  4E 80 00 20 */	blr 
