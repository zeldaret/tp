lbl_80A491A4:
/* 80A491A4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A491A8  7C 08 02 A6 */	mflr r0
/* 80A491AC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A491B0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80A491B4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80A491B8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80A491BC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80A491C0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A491C4  4B 91 90 10 */	b _savegpr_27
/* 80A491C8  7C 7B 1B 78 */	mr r27, r3
/* 80A491CC  7C 9C 23 78 */	mr r28, r4
/* 80A491D0  FF C0 08 90 */	fmr f30, f1
/* 80A491D4  7C BD 2B 78 */	mr r29, r5
/* 80A491D8  FF E0 10 90 */	fmr f31, f2
/* 80A491DC  3C 60 80 A6 */	lis r3, lit_4030@ha
/* 80A491E0  3B E3 DE FC */	addi r31, r3, lit_4030@l
/* 80A491E4  A8 1B 09 4C */	lha r0, 0x94c(r27)
/* 80A491E8  2C 00 00 00 */	cmpwi r0, 0
/* 80A491EC  41 82 00 34 */	beq lbl_80A49220
/* 80A491F0  2C 1C 00 33 */	cmpwi r28, 0x33
/* 80A491F4  41 82 00 0C */	beq lbl_80A49200
/* 80A491F8  2C 1C 00 35 */	cmpwi r28, 0x35
/* 80A491FC  40 82 00 24 */	bne lbl_80A49220
lbl_80A49200:
/* 80A49200  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A49204  4B 81 E7 50 */	b cM_rndF__Ff
/* 80A49208  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80A4920C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A49210  40 80 00 0C */	bge lbl_80A4921C
/* 80A49214  3B 80 00 0B */	li r28, 0xb
/* 80A49218  48 00 00 08 */	b lbl_80A49220
lbl_80A4921C:
/* 80A4921C  3B 80 00 38 */	li r28, 0x38
lbl_80A49220:
/* 80A49220  7F 9E E3 78 */	mr r30, r28
/* 80A49224  88 1B 0C 17 */	lbz r0, 0xc17(r27)
/* 80A49228  7C 00 07 75 */	extsb. r0, r0
/* 80A4922C  41 82 00 94 */	beq lbl_80A492C0
/* 80A49230  2C 1C 00 33 */	cmpwi r28, 0x33
/* 80A49234  40 82 00 0C */	bne lbl_80A49240
/* 80A49238  3B 80 00 34 */	li r28, 0x34
/* 80A4923C  48 00 00 84 */	b lbl_80A492C0
lbl_80A49240:
/* 80A49240  2C 1C 00 08 */	cmpwi r28, 8
/* 80A49244  40 82 00 0C */	bne lbl_80A49250
/* 80A49248  3B 80 00 09 */	li r28, 9
/* 80A4924C  48 00 00 74 */	b lbl_80A492C0
lbl_80A49250:
/* 80A49250  2C 1C 00 1C */	cmpwi r28, 0x1c
/* 80A49254  40 82 00 0C */	bne lbl_80A49260
/* 80A49258  3B 80 00 1D */	li r28, 0x1d
/* 80A4925C  48 00 00 64 */	b lbl_80A492C0
lbl_80A49260:
/* 80A49260  2C 1C 00 1A */	cmpwi r28, 0x1a
/* 80A49264  40 82 00 0C */	bne lbl_80A49270
/* 80A49268  3B 80 00 1B */	li r28, 0x1b
/* 80A4926C  48 00 00 54 */	b lbl_80A492C0
lbl_80A49270:
/* 80A49270  2C 1C 00 08 */	cmpwi r28, 8
/* 80A49274  40 82 00 0C */	bne lbl_80A49280
/* 80A49278  3B 80 00 09 */	li r28, 9
/* 80A4927C  48 00 00 44 */	b lbl_80A492C0
lbl_80A49280:
/* 80A49280  2C 1C 00 07 */	cmpwi r28, 7
/* 80A49284  40 82 00 0C */	bne lbl_80A49290
/* 80A49288  3B 80 00 0A */	li r28, 0xa
/* 80A4928C  48 00 00 34 */	b lbl_80A492C0
lbl_80A49290:
/* 80A49290  2C 1C 00 2B */	cmpwi r28, 0x2b
/* 80A49294  40 82 00 0C */	bne lbl_80A492A0
/* 80A49298  3B 80 00 28 */	li r28, 0x28
/* 80A4929C  48 00 00 24 */	b lbl_80A492C0
lbl_80A492A0:
/* 80A492A0  2C 1C 00 27 */	cmpwi r28, 0x27
/* 80A492A4  40 82 00 0C */	bne lbl_80A492B0
/* 80A492A8  3B 80 00 2A */	li r28, 0x2a
/* 80A492AC  48 00 00 14 */	b lbl_80A492C0
lbl_80A492B0:
/* 80A492B0  40 82 00 0C */	bne lbl_80A492BC
/* 80A492B4  3B 80 00 2A */	li r28, 0x2a
/* 80A492B8  48 00 00 08 */	b lbl_80A492C0
lbl_80A492BC:
/* 80A492BC  4B 5E 67 5C */	b dComIfGs_shake_kandelaar__Fv
lbl_80A492C0:
/* 80A492C0  80 7B 05 C0 */	lwz r3, 0x5c0(r27)
/* 80A492C4  7F 84 E3 78 */	mr r4, r28
/* 80A492C8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80A492CC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80A492D0  3C A5 00 02 */	addis r5, r5, 2
/* 80A492D4  38 C0 00 80 */	li r6, 0x80
/* 80A492D8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80A492DC  4B 5F 30 10 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A492E0  7C 64 1B 78 */	mr r4, r3
/* 80A492E4  80 7B 05 CC */	lwz r3, 0x5cc(r27)
/* 80A492E8  57 A5 06 3E */	clrlwi r5, r29, 0x18
/* 80A492EC  FC 20 F0 90 */	fmr f1, f30
/* 80A492F0  FC 40 F8 90 */	fmr f2, f31
/* 80A492F4  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80A492F8  C0 9F 00 34 */	lfs f4, 0x34(r31)
/* 80A492FC  4B 5C 7B 74 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80A49300  93 DB 05 D0 */	stw r30, 0x5d0(r27)
/* 80A49304  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80A49308  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80A4930C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80A49310  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80A49314  39 61 00 20 */	addi r11, r1, 0x20
/* 80A49318  4B 91 8F 08 */	b _restgpr_27
/* 80A4931C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A49320  7C 08 03 A6 */	mtlr r0
/* 80A49324  38 21 00 40 */	addi r1, r1, 0x40
/* 80A49328  4E 80 00 20 */	blr 
