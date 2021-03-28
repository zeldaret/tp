lbl_800EDEEC:
/* 800EDEEC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800EDEF0  7C 08 02 A6 */	mflr r0
/* 800EDEF4  90 01 00 54 */	stw r0, 0x54(r1)
/* 800EDEF8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 800EDEFC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 800EDF00  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 800EDF04  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 800EDF08  39 61 00 30 */	addi r11, r1, 0x30
/* 800EDF0C  48 27 42 CD */	bl _savegpr_28
/* 800EDF10  7C 7D 1B 78 */	mr r29, r3
/* 800EDF14  7C 9E 23 78 */	mr r30, r4
/* 800EDF18  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 800EDF1C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 800EDF20  83 E4 5D B8 */	lwz r31, 0x5db8(r4)
/* 800EDF24  80 03 31 A0 */	lwz r0, 0x31a0(r3)
/* 800EDF28  54 1C 07 FE */	clrlwi r28, r0, 0x1f
/* 800EDF2C  4B FF F5 B1 */	bl setSyncHorsePos__9daAlink_cFv
/* 800EDF30  7F A3 EB 78 */	mr r3, r29
/* 800EDF34  4B FF FE 39 */	bl checkHorseSpecialProc__9daAlink_cFv
/* 800EDF38  2C 03 00 00 */	cmpwi r3, 0
/* 800EDF3C  41 82 00 0C */	beq lbl_800EDF48
/* 800EDF40  38 60 00 00 */	li r3, 0
/* 800EDF44  48 00 06 E0 */	b lbl_800EE624
lbl_800EDF48:
/* 800EDF48  7F A3 EB 78 */	mr r3, r29
/* 800EDF4C  38 81 00 08 */	addi r4, r1, 8
/* 800EDF50  4B FF FB F9 */	bl getBaseHorseAnime__9daAlink_cFPQ29daAlink_c11daAlink_ANM
/* 800EDF54  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 800EDF58  FC 00 02 10 */	fabs f0, f0
/* 800EDF5C  FC 20 00 18 */	frsp f1, f0
/* 800EDF60  C0 02 93 E4 */	lfs f0, lit_12328(r2)
/* 800EDF64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EDF68  40 80 00 AC */	bge lbl_800EE014
/* 800EDF6C  2C 1C 00 00 */	cmpwi r28, 0
/* 800EDF70  40 82 00 10 */	bne lbl_800EDF80
/* 800EDF74  38 00 00 00 */	li r0, 0
/* 800EDF78  B0 1D 30 04 */	sth r0, 0x3004(r29)
/* 800EDF7C  48 00 00 98 */	b lbl_800EE014
lbl_800EDF80:
/* 800EDF80  C0 3D 33 AC */	lfs f1, 0x33ac(r29)
/* 800EDF84  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800EDF88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EDF8C  40 81 00 88 */	ble lbl_800EE014
/* 800EDF90  88 1F 16 B4 */	lbz r0, 0x16b4(r31)
/* 800EDF94  28 00 00 00 */	cmplwi r0, 0
/* 800EDF98  40 82 00 7C */	bne lbl_800EE014
/* 800EDF9C  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 800EDFA0  28 00 00 40 */	cmplwi r0, 0x40
/* 800EDFA4  41 82 00 70 */	beq lbl_800EE014
/* 800EDFA8  28 00 00 43 */	cmplwi r0, 0x43
/* 800EDFAC  41 82 00 68 */	beq lbl_800EE014
/* 800EDFB0  80 01 00 08 */	lwz r0, 8(r1)
/* 800EDFB4  2C 00 00 5A */	cmpwi r0, 0x5a
/* 800EDFB8  41 82 00 5C */	beq lbl_800EE014
/* 800EDFBC  2C 00 00 5B */	cmpwi r0, 0x5b
/* 800EDFC0  41 82 00 54 */	beq lbl_800EE014
/* 800EDFC4  A8 1D 30 04 */	lha r0, 0x3004(r29)
/* 800EDFC8  2C 00 00 00 */	cmpwi r0, 0
/* 800EDFCC  40 82 00 48 */	bne lbl_800EE014
/* 800EDFD0  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 800EDFD4  A8 1D 2F E2 */	lha r0, 0x2fe2(r29)
/* 800EDFD8  7C 03 00 50 */	subf r0, r3, r0
/* 800EDFDC  7C 03 07 34 */	extsh r3, r0
/* 800EDFE0  4B FC 54 B5 */	bl getDirectionFromAngle__9daAlink_cFs
/* 800EDFE4  2C 03 00 00 */	cmpwi r3, 0
/* 800EDFE8  40 82 00 2C */	bne lbl_800EE014
/* 800EDFEC  3C 60 80 39 */	lis r3, m__19daAlinkHIO_horse_c0@ha
/* 800EDFF0  38 A3 E5 A4 */	addi r5, r3, m__19daAlinkHIO_horse_c0@l
/* 800EDFF4  A8 05 00 54 */	lha r0, 0x54(r5)
/* 800EDFF8  B0 1D 30 04 */	sth r0, 0x3004(r29)
/* 800EDFFC  7F A3 EB 78 */	mr r3, r29
/* 800EE000  38 80 00 4D */	li r4, 0x4d
/* 800EE004  4B FB F0 F1 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800EE008  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800EE00C  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 800EE010  90 1D 05 74 */	stw r0, 0x574(r29)
lbl_800EE014:
/* 800EE014  A0 1D 1F 80 */	lhz r0, 0x1f80(r29)
/* 800EE018  28 00 00 DD */	cmplwi r0, 0xdd
/* 800EE01C  41 82 00 10 */	beq lbl_800EE02C
/* 800EE020  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800EE024  28 00 01 B3 */	cmplwi r0, 0x1b3
/* 800EE028  40 82 00 24 */	bne lbl_800EE04C
lbl_800EE02C:
/* 800EE02C  38 7D 20 00 */	addi r3, r29, 0x2000
/* 800EE030  48 07 04 9D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800EE034  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EE038  41 82 00 14 */	beq lbl_800EE04C
/* 800EE03C  7F A3 EB 78 */	mr r3, r29
/* 800EE040  38 80 00 02 */	li r4, 2
/* 800EE044  C0 22 93 24 */	lfs f1, lit_7450(r2)
/* 800EE048  4B FB FA A5 */	bl resetUnderAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDERf
lbl_800EE04C:
/* 800EE04C  7F A3 EB 78 */	mr r3, r29
/* 800EE050  38 80 00 4D */	li r4, 0x4d
/* 800EE054  4B FB E5 05 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800EE058  2C 03 00 00 */	cmpwi r3, 0
/* 800EE05C  41 82 00 40 */	beq lbl_800EE09C
/* 800EE060  7F A3 EB 78 */	mr r3, r29
/* 800EE064  4B FC 46 01 */	bl spActionButton__9daAlink_cFv
/* 800EE068  2C 03 00 00 */	cmpwi r3, 0
/* 800EE06C  41 82 00 30 */	beq lbl_800EE09C
/* 800EE070  7F A3 EB 78 */	mr r3, r29
/* 800EE074  4B FC B1 E1 */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800EE078  2C 03 00 00 */	cmpwi r3, 0
/* 800EE07C  41 82 00 3C */	beq lbl_800EE0B8
/* 800EE080  7F A3 EB 78 */	mr r3, r29
/* 800EE084  38 80 00 55 */	li r4, 0x55
/* 800EE088  4B FB E3 C9 */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800EE08C  A0 83 00 02 */	lhz r4, 2(r3)
/* 800EE090  7F A3 EB 78 */	mr r3, r29
/* 800EE094  4B FB F2 AD */	bl setUpperAnimeBase__9daAlink_cFUs
/* 800EE098  48 00 00 20 */	b lbl_800EE0B8
lbl_800EE09C:
/* 800EE09C  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800EE0A0  28 00 02 65 */	cmplwi r0, 0x265
/* 800EE0A4  40 82 00 14 */	bne lbl_800EE0B8
/* 800EE0A8  7F A3 EB 78 */	mr r3, r29
/* 800EE0AC  38 80 00 02 */	li r4, 2
/* 800EE0B0  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800EE0B4  4B FB F6 71 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_800EE0B8:
/* 800EE0B8  2C 1E 00 00 */	cmpwi r30, 0
/* 800EE0BC  41 82 02 08 */	beq lbl_800EE2C4
/* 800EE0C0  A8 1D 30 A6 */	lha r0, 0x30a6(r29)
/* 800EE0C4  2C 00 00 00 */	cmpwi r0, 0
/* 800EE0C8  40 82 01 FC */	bne lbl_800EE2C4
/* 800EE0CC  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 800EE0D0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800EE0D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EE0D8  4C 41 13 82 */	cror 2, 1, 2
/* 800EE0DC  40 82 01 E8 */	bne lbl_800EE2C4
/* 800EE0E0  A8 1F 16 F2 */	lha r0, 0x16f2(r31)
/* 800EE0E4  7C 00 07 35 */	extsh. r0, r0
/* 800EE0E8  40 82 01 DC */	bne lbl_800EE2C4
/* 800EE0EC  80 01 00 08 */	lwz r0, 8(r1)
/* 800EE0F0  2C 00 00 5A */	cmpwi r0, 0x5a
/* 800EE0F4  41 82 01 D0 */	beq lbl_800EE2C4
/* 800EE0F8  2C 00 00 5B */	cmpwi r0, 0x5b
/* 800EE0FC  41 82 01 C8 */	beq lbl_800EE2C4
/* 800EE100  88 1D 2F 8C */	lbz r0, 0x2f8c(r29)
/* 800EE104  28 00 00 0A */	cmplwi r0, 0xa
/* 800EE108  40 82 00 34 */	bne lbl_800EE13C
/* 800EE10C  7F A3 EB 78 */	mr r3, r29
/* 800EE110  4B FF EF 65 */	bl checkHorseNoUpperAnime__9daAlink_cCFv
/* 800EE114  2C 03 00 00 */	cmpwi r3, 0
/* 800EE118  40 82 00 40 */	bne lbl_800EE158
/* 800EE11C  7F A3 EB 78 */	mr r3, r29
/* 800EE120  4B FC B2 21 */	bl checkEquipAnime__9daAlink_cCFv
/* 800EE124  2C 03 00 00 */	cmpwi r3, 0
/* 800EE128  40 82 00 30 */	bne lbl_800EE158
/* 800EE12C  7F A3 EB 78 */	mr r3, r29
/* 800EE130  4B FE EC C1 */	bl checkUpperGuardAnime__9daAlink_cCFv
/* 800EE134  2C 03 00 00 */	cmpwi r3, 0
/* 800EE138  40 82 00 20 */	bne lbl_800EE158
lbl_800EE13C:
/* 800EE13C  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 800EE140  28 00 00 41 */	cmplwi r0, 0x41
/* 800EE144  41 82 00 14 */	beq lbl_800EE158
/* 800EE148  28 00 00 43 */	cmplwi r0, 0x43
/* 800EE14C  41 82 00 0C */	beq lbl_800EE158
/* 800EE150  28 00 00 42 */	cmplwi r0, 0x42
/* 800EE154  40 82 01 70 */	bne lbl_800EE2C4
lbl_800EE158:
/* 800EE158  4B FF E6 BD */	bl checkCowGame__9daAlink_cFv
/* 800EE15C  2C 03 00 00 */	cmpwi r3, 0
/* 800EE160  41 82 00 7C */	beq lbl_800EE1DC
/* 800EE164  7F A3 EB 78 */	mr r3, r29
/* 800EE168  4B FF EF 0D */	bl checkHorseNoUpperAnime__9daAlink_cCFv
/* 800EE16C  2C 03 00 00 */	cmpwi r3, 0
/* 800EE170  41 82 01 54 */	beq lbl_800EE2C4
/* 800EE174  7F A3 EB 78 */	mr r3, r29
/* 800EE178  38 80 00 28 */	li r4, 0x28
/* 800EE17C  4B FC 50 D5 */	bl setDoStatus__9daAlink_cFUc
/* 800EE180  88 1D 2F 8D */	lbz r0, 0x2f8d(r29)
/* 800EE184  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800EE188  41 82 01 3C */	beq lbl_800EE2C4
/* 800EE18C  80 1D 05 80 */	lwz r0, 0x580(r29)
/* 800EE190  60 00 02 00 */	ori r0, r0, 0x200
/* 800EE194  90 1D 05 80 */	stw r0, 0x580(r29)
/* 800EE198  7F A3 EB 78 */	mr r3, r29
/* 800EE19C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001001B@ha */
/* 800EE1A0  38 84 00 1B */	addi r4, r4, 0x001B /* 0x0001001B@l */
/* 800EE1A4  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 800EE1A8  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800EE1AC  7D 89 03 A6 */	mtctr r12
/* 800EE1B0  4E 80 04 21 */	bctrl 
/* 800EE1B4  3C 60 80 39 */	lis r3, m__19daAlinkHIO_horse_c0@ha
/* 800EE1B8  3B C3 E5 A4 */	addi r30, r3, m__19daAlinkHIO_horse_c0@l
/* 800EE1BC  A8 1E 00 56 */	lha r0, 0x56(r30)
/* 800EE1C0  B0 1D 30 A6 */	sth r0, 0x30a6(r29)
/* 800EE1C4  7F A3 EB 78 */	mr r3, r29
/* 800EE1C8  4B FF ED D5 */	bl setHorseSwordUpAnime__9daAlink_cFv
/* 800EE1CC  A8 1E 00 56 */	lha r0, 0x56(r30)
/* 800EE1D0  7C 00 00 D0 */	neg r0, r0
/* 800EE1D4  B0 1D 30 02 */	sth r0, 0x3002(r29)
/* 800EE1D8  48 00 00 EC */	b lbl_800EE2C4
lbl_800EE1DC:
/* 800EE1DC  4B FF E6 01 */	bl checkHorseDashAccept__9daAlink_cFv
/* 800EE1E0  2C 03 00 00 */	cmpwi r3, 0
/* 800EE1E4  41 82 00 E0 */	beq lbl_800EE2C4
/* 800EE1E8  7F A3 EB 78 */	mr r3, r29
/* 800EE1EC  38 80 00 09 */	li r4, 9
/* 800EE1F0  4B FC 50 61 */	bl setDoStatus__9daAlink_cFUc
/* 800EE1F4  88 1D 2F 8D */	lbz r0, 0x2f8d(r29)
/* 800EE1F8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800EE1FC  41 82 00 C8 */	beq lbl_800EE2C4
/* 800EE200  3C 60 80 39 */	lis r3, m__19daAlinkHIO_horse_c0@ha
/* 800EE204  38 63 E5 A4 */	addi r3, r3, m__19daAlinkHIO_horse_c0@l
/* 800EE208  A8 03 00 54 */	lha r0, 0x54(r3)
/* 800EE20C  B0 1D 30 04 */	sth r0, 0x3004(r29)
/* 800EE210  3B 83 00 28 */	addi r28, r3, 0x28
/* 800EE214  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 800EE218  28 00 00 41 */	cmplwi r0, 0x41
/* 800EE21C  41 82 00 24 */	beq lbl_800EE240
/* 800EE220  28 00 00 43 */	cmplwi r0, 0x43
/* 800EE224  41 82 00 1C */	beq lbl_800EE240
/* 800EE228  28 00 00 42 */	cmplwi r0, 0x42
/* 800EE22C  41 82 00 14 */	beq lbl_800EE240
/* 800EE230  7F A3 EB 78 */	mr r3, r29
/* 800EE234  38 80 00 4F */	li r4, 0x4f
/* 800EE238  7F 85 E3 78 */	mr r5, r28
/* 800EE23C  4B FB EE B9 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
lbl_800EE240:
/* 800EE240  7F A3 EB 78 */	mr r3, r29
/* 800EE244  38 80 00 4F */	li r4, 0x4f
/* 800EE248  4B FB E2 09 */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800EE24C  A0 83 00 00 */	lhz r4, 0(r3)
/* 800EE250  7F A3 EB 78 */	mr r3, r29
/* 800EE254  38 A0 00 02 */	li r5, 2
/* 800EE258  7F 86 E3 78 */	mr r6, r28
/* 800EE25C  4B FB F8 5D */	bl setUnderAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UNDERPC16daAlinkHIO_anm_c
/* 800EE260  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800EE264  60 00 10 00 */	ori r0, r0, 0x1000
/* 800EE268  90 1D 05 74 */	stw r0, 0x574(r29)
/* 800EE26C  80 1F 17 44 */	lwz r0, 0x1744(r31)
/* 800EE270  54 00 04 1C */	rlwinm r0, r0, 0, 0x10, 0xe
/* 800EE274  90 1F 17 44 */	stw r0, 0x1744(r31)
/* 800EE278  7F A3 EB 78 */	mr r3, r29
/* 800EE27C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001001B@ha */
/* 800EE280  38 84 00 1B */	addi r4, r4, 0x001B /* 0x0001001B@l */
/* 800EE284  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 800EE288  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800EE28C  7D 89 03 A6 */	mtctr r12
/* 800EE290  4E 80 04 21 */	bctrl 
/* 800EE294  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 800EE298  C0 1F 17 8C */	lfs f0, 0x178c(r31)
/* 800EE29C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EE2A0  4C 40 13 82 */	cror 2, 0, 2
/* 800EE2A4  40 82 00 10 */	bne lbl_800EE2B4
/* 800EE2A8  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800EE2AC  60 00 08 00 */	ori r0, r0, 0x800
/* 800EE2B0  90 1D 05 74 */	stw r0, 0x574(r29)
lbl_800EE2B4:
/* 800EE2B4  3C 60 80 39 */	lis r3, m__19daAlinkHIO_horse_c0@ha
/* 800EE2B8  38 63 E5 A4 */	addi r3, r3, m__19daAlinkHIO_horse_c0@l
/* 800EE2BC  A8 03 00 56 */	lha r0, 0x56(r3)
/* 800EE2C0  B0 1D 30 A6 */	sth r0, 0x30a6(r29)
lbl_800EE2C4:
/* 800EE2C4  7F A3 EB 78 */	mr r3, r29
/* 800EE2C8  38 80 00 4D */	li r4, 0x4d
/* 800EE2CC  4B FB E2 8D */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800EE2D0  2C 03 00 00 */	cmpwi r3, 0
/* 800EE2D4  41 82 00 1C */	beq lbl_800EE2F0
/* 800EE2D8  C0 3D 1F E0 */	lfs f1, 0x1fe0(r29)
/* 800EE2DC  3C 60 80 39 */	lis r3, m__19daAlinkHIO_horse_c0@ha
/* 800EE2E0  38 63 E5 A4 */	addi r3, r3, m__19daAlinkHIO_horse_c0@l
/* 800EE2E4  C0 03 00 64 */	lfs f0, 0x64(r3)
/* 800EE2E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EE2EC  41 81 00 24 */	bgt lbl_800EE310
lbl_800EE2F0:
/* 800EE2F0  7F A3 EB 78 */	mr r3, r29
/* 800EE2F4  4B FF EA D1 */	bl checkHorseWaitLashAnime__9daAlink_cCFv
/* 800EE2F8  2C 03 00 00 */	cmpwi r3, 0
/* 800EE2FC  41 82 00 20 */	beq lbl_800EE31C
/* 800EE300  C0 3D 20 10 */	lfs f1, 0x2010(r29)
/* 800EE304  C0 02 93 84 */	lfs f0, lit_8781(r2)
/* 800EE308  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EE30C  40 81 00 10 */	ble lbl_800EE31C
lbl_800EE310:
/* 800EE310  80 1F 17 4C */	lwz r0, 0x174c(r31)
/* 800EE314  60 00 00 10 */	ori r0, r0, 0x10
/* 800EE318  90 1F 17 4C */	stw r0, 0x174c(r31)
lbl_800EE31C:
/* 800EE31C  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800EE320  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800EE324  41 82 00 54 */	beq lbl_800EE378
/* 800EE328  A0 1D 1F 80 */	lhz r0, 0x1f80(r29)
/* 800EE32C  28 00 00 DD */	cmplwi r0, 0xdd
/* 800EE330  40 82 00 14 */	bne lbl_800EE344
/* 800EE334  C0 3D 20 10 */	lfs f1, 0x2010(r29)
/* 800EE338  C0 02 93 84 */	lfs f0, lit_8781(r2)
/* 800EE33C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EE340  41 81 00 20 */	bgt lbl_800EE360
lbl_800EE344:
/* 800EE344  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800EE348  28 00 01 B3 */	cmplwi r0, 0x1b3
/* 800EE34C  40 82 00 2C */	bne lbl_800EE378
/* 800EE350  C0 3D 20 10 */	lfs f1, 0x2010(r29)
/* 800EE354  C0 02 93 84 */	lfs f0, lit_8781(r2)
/* 800EE358  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EE35C  40 81 00 1C */	ble lbl_800EE378
lbl_800EE360:
/* 800EE360  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800EE364  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 800EE368  90 1D 05 74 */	stw r0, 0x574(r29)
/* 800EE36C  80 1F 17 4C */	lwz r0, 0x174c(r31)
/* 800EE370  60 00 00 18 */	ori r0, r0, 0x18
/* 800EE374  90 1F 17 4C */	stw r0, 0x174c(r31)
lbl_800EE378:
/* 800EE378  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800EE37C  28 00 00 CC */	cmplwi r0, 0xcc
/* 800EE380  40 82 00 DC */	bne lbl_800EE45C
/* 800EE384  4B FF E3 E9 */	bl checkHorseZeldaBowMode__9daAlink_cFv
/* 800EE388  2C 03 00 00 */	cmpwi r3, 0
/* 800EE38C  41 82 00 28 */	beq lbl_800EE3B4
/* 800EE390  7F A3 EB 78 */	mr r3, r29
/* 800EE394  38 80 00 02 */	li r4, 2
/* 800EE398  3C A0 80 39 */	lis r5, m__19daAlinkHIO_horse_c0@ha
/* 800EE39C  38 A5 E5 A4 */	addi r5, r5, m__19daAlinkHIO_horse_c0@l
/* 800EE3A0  C0 25 00 60 */	lfs f1, 0x60(r5)
/* 800EE3A4  4B FB F3 81 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800EE3A8  38 00 00 00 */	li r0, 0
/* 800EE3AC  B0 1D 30 02 */	sth r0, 0x3002(r29)
/* 800EE3B0  48 00 00 AC */	b lbl_800EE45C
lbl_800EE3B4:
/* 800EE3B4  A8 7D 30 02 */	lha r3, 0x3002(r29)
/* 800EE3B8  2C 03 00 00 */	cmpwi r3, 0
/* 800EE3BC  40 81 00 4C */	ble lbl_800EE408
/* 800EE3C0  38 03 FF FF */	addi r0, r3, -1
/* 800EE3C4  B0 1D 30 02 */	sth r0, 0x3002(r29)
/* 800EE3C8  A8 1D 30 02 */	lha r0, 0x3002(r29)
/* 800EE3CC  2C 00 00 00 */	cmpwi r0, 0
/* 800EE3D0  41 82 00 14 */	beq lbl_800EE3E4
/* 800EE3D4  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 800EE3D8  C0 1F 17 8C */	lfs f0, 0x178c(r31)
/* 800EE3DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EE3E0  40 80 00 7C */	bge lbl_800EE45C
lbl_800EE3E4:
/* 800EE3E4  7F A3 EB 78 */	mr r3, r29
/* 800EE3E8  38 80 00 02 */	li r4, 2
/* 800EE3EC  3C A0 80 39 */	lis r5, m__19daAlinkHIO_horse_c0@ha
/* 800EE3F0  38 A5 E5 A4 */	addi r5, r5, m__19daAlinkHIO_horse_c0@l
/* 800EE3F4  C0 25 00 60 */	lfs f1, 0x60(r5)
/* 800EE3F8  4B FB F3 2D */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800EE3FC  38 00 00 00 */	li r0, 0
/* 800EE400  B0 1D 30 02 */	sth r0, 0x3002(r29)
/* 800EE404  48 00 00 58 */	b lbl_800EE45C
lbl_800EE408:
/* 800EE408  3C 60 80 39 */	lis r3, m__19daAlinkHIO_horse_c0@ha
/* 800EE40C  3B C3 E5 A4 */	addi r30, r3, m__19daAlinkHIO_horse_c0@l
/* 800EE410  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 800EE414  FC 00 08 1E */	fctiwz f0, f1
/* 800EE418  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 800EE41C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800EE420  B0 1D 30 EC */	sth r0, 0x30ec(r29)
/* 800EE424  A8 7D 30 02 */	lha r3, 0x3002(r29)
/* 800EE428  38 03 00 01 */	addi r0, r3, 1
/* 800EE42C  B0 1D 30 02 */	sth r0, 0x3002(r29)
/* 800EE430  A8 1D 30 02 */	lha r0, 0x3002(r29)
/* 800EE434  2C 00 00 00 */	cmpwi r0, 0
/* 800EE438  40 82 00 24 */	bne lbl_800EE45C
/* 800EE43C  7F A3 EB 78 */	mr r3, r29
/* 800EE440  38 80 00 02 */	li r4, 2
/* 800EE444  4B FB F2 E1 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800EE448  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 800EE44C  FC 00 00 1E */	fctiwz f0, f0
/* 800EE450  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 800EE454  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800EE458  B0 1D 30 EC */	sth r0, 0x30ec(r29)
lbl_800EE45C:
/* 800EE45C  3B 80 00 01 */	li r28, 1
/* 800EE460  38 7D 1F D0 */	addi r3, r29, 0x1fd0
/* 800EE464  48 07 00 69 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800EE468  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EE46C  40 82 00 50 */	bne lbl_800EE4BC
/* 800EE470  3B C0 00 00 */	li r30, 0
/* 800EE474  7F A3 EB 78 */	mr r3, r29
/* 800EE478  4B FF FA 15 */	bl checkHorseServiceWaitAnime__9daAlink_cFv
/* 800EE47C  2C 03 00 00 */	cmpwi r3, 0
/* 800EE480  41 82 00 30 */	beq lbl_800EE4B0
/* 800EE484  7F A3 EB 78 */	mr r3, r29
/* 800EE488  4B FC AD CD */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800EE48C  2C 03 00 00 */	cmpwi r3, 0
/* 800EE490  41 82 00 1C */	beq lbl_800EE4AC
/* 800EE494  A8 1F 16 F2 */	lha r0, 0x16f2(r31)
/* 800EE498  7C 00 07 35 */	extsh. r0, r0
/* 800EE49C  40 82 00 10 */	bne lbl_800EE4AC
/* 800EE4A0  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 800EE4A4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800EE4A8  40 82 00 08 */	bne lbl_800EE4B0
lbl_800EE4AC:
/* 800EE4AC  3B C0 00 01 */	li r30, 1
lbl_800EE4B0:
/* 800EE4B0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 800EE4B4  40 82 00 08 */	bne lbl_800EE4BC
/* 800EE4B8  3B 80 00 00 */	li r28, 0
lbl_800EE4BC:
/* 800EE4BC  57 9C 06 3F */	clrlwi. r28, r28, 0x18
/* 800EE4C0  40 82 00 50 */	bne lbl_800EE510
/* 800EE4C4  80 61 00 08 */	lwz r3, 8(r1)
/* 800EE4C8  38 03 FF A6 */	addi r0, r3, -90
/* 800EE4CC  28 00 00 01 */	cmplwi r0, 1
/* 800EE4D0  40 81 00 40 */	ble lbl_800EE510
/* 800EE4D4  2C 03 00 4E */	cmpwi r3, 0x4e
/* 800EE4D8  41 82 00 38 */	beq lbl_800EE510
/* 800EE4DC  7F A3 EB 78 */	mr r3, r29
/* 800EE4E0  4B FC 41 85 */	bl spActionButton__9daAlink_cFv
/* 800EE4E4  2C 03 00 00 */	cmpwi r3, 0
/* 800EE4E8  41 82 00 34 */	beq lbl_800EE51C
/* 800EE4EC  7F A3 EB 78 */	mr r3, r29
/* 800EE4F0  38 80 00 4D */	li r4, 0x4d
/* 800EE4F4  4B FB E0 65 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800EE4F8  2C 03 00 00 */	cmpwi r3, 0
/* 800EE4FC  40 82 00 20 */	bne lbl_800EE51C
/* 800EE500  7F A3 EB 78 */	mr r3, r29
/* 800EE504  4B FF E8 C1 */	bl checkHorseWaitLashAnime__9daAlink_cCFv
/* 800EE508  2C 03 00 00 */	cmpwi r3, 0
/* 800EE50C  40 82 00 10 */	bne lbl_800EE51C
lbl_800EE510:
/* 800EE510  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 800EE514  28 00 00 43 */	cmplwi r0, 0x43
/* 800EE518  40 82 00 10 */	bne lbl_800EE528
lbl_800EE51C:
/* 800EE51C  88 1D 2F 8C */	lbz r0, 0x2f8c(r29)
/* 800EE520  28 00 00 0A */	cmplwi r0, 0xa
/* 800EE524  40 82 00 FC */	bne lbl_800EE620
lbl_800EE528:
/* 800EE528  2C 1C 00 00 */	cmpwi r28, 0
/* 800EE52C  40 82 00 1C */	bne lbl_800EE548
/* 800EE530  A8 9D 30 04 */	lha r4, 0x3004(r29)
/* 800EE534  3C 60 80 39 */	lis r3, m__19daAlinkHIO_horse_c0@ha
/* 800EE538  38 63 E5 A4 */	addi r3, r3, m__19daAlinkHIO_horse_c0@l
/* 800EE53C  A8 03 00 54 */	lha r0, 0x54(r3)
/* 800EE540  7C 04 00 00 */	cmpw r4, r0
/* 800EE544  41 82 00 18 */	beq lbl_800EE55C
lbl_800EE548:
/* 800EE548  A8 7D 30 04 */	lha r3, 0x3004(r29)
/* 800EE54C  2C 03 00 00 */	cmpwi r3, 0
/* 800EE550  41 82 00 0C */	beq lbl_800EE55C
/* 800EE554  38 03 FF FF */	addi r0, r3, -1
/* 800EE558  B0 1D 30 04 */	sth r0, 0x3004(r29)
lbl_800EE55C:
/* 800EE55C  2C 1C 00 00 */	cmpwi r28, 0
/* 800EE560  41 82 00 1C */	beq lbl_800EE57C
/* 800EE564  C0 3F 17 50 */	lfs f1, 0x1750(r31)
/* 800EE568  C0 02 93 24 */	lfs f0, lit_7450(r2)
/* 800EE56C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EE570  40 80 00 0C */	bge lbl_800EE57C
/* 800EE574  FF E0 00 90 */	fmr f31, f0
/* 800EE578  48 00 00 08 */	b lbl_800EE580
lbl_800EE57C:
/* 800EE57C  C3 FF 17 50 */	lfs f31, 0x1750(r31)
lbl_800EE580:
/* 800EE580  80 01 00 08 */	lwz r0, 8(r1)
/* 800EE584  2C 00 00 5A */	cmpwi r0, 0x5a
/* 800EE588  41 82 00 14 */	beq lbl_800EE59C
/* 800EE58C  2C 00 00 54 */	cmpwi r0, 0x54
/* 800EE590  41 82 00 0C */	beq lbl_800EE59C
/* 800EE594  2C 00 00 5B */	cmpwi r0, 0x5b
/* 800EE598  40 82 00 0C */	bne lbl_800EE5A4
lbl_800EE59C:
/* 800EE59C  C3 C2 92 C0 */	lfs f30, lit_6108(r2)
/* 800EE5A0  48 00 00 08 */	b lbl_800EE5A8
lbl_800EE5A4:
/* 800EE5A4  C3 DF 05 9C */	lfs f30, 0x59c(r31)
lbl_800EE5A8:
/* 800EE5A8  2C 00 00 4E */	cmpwi r0, 0x4e
/* 800EE5AC  40 82 00 34 */	bne lbl_800EE5E0
/* 800EE5B0  7F A3 EB 78 */	mr r3, r29
/* 800EE5B4  38 80 00 4E */	li r4, 0x4e
/* 800EE5B8  4B FB DF A1 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800EE5BC  2C 03 00 00 */	cmpwi r3, 0
/* 800EE5C0  40 82 00 20 */	bne lbl_800EE5E0
/* 800EE5C4  7F A3 EB 78 */	mr r3, r29
/* 800EE5C8  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001001B@ha */
/* 800EE5CC  38 84 00 1B */	addi r4, r4, 0x001B /* 0x0001001B@l */
/* 800EE5D0  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 800EE5D4  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800EE5D8  7D 89 03 A6 */	mtctr r12
/* 800EE5DC  4E 80 04 21 */	bctrl 
lbl_800EE5E0:
/* 800EE5E0  7F A3 EB 78 */	mr r3, r29
/* 800EE5E4  FC 20 F0 90 */	fmr f1, f30
/* 800EE5E8  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 800EE5EC  FC 60 10 90 */	fmr f3, f2
/* 800EE5F0  80 81 00 08 */	lwz r4, 8(r1)
/* 800EE5F4  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 800EE5F8  38 C0 00 0A */	li r6, 0xa
/* 800EE5FC  FC 80 F8 90 */	fmr f4, f31
/* 800EE600  4B FB E4 15 */	bl setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif
/* 800EE604  7F A3 EB 78 */	mr r3, r29
/* 800EE608  48 00 04 E1 */	bl setBaseHorseAnimeFrame__9daAlink_cFv
/* 800EE60C  2C 1C 00 00 */	cmpwi r28, 0
/* 800EE610  41 82 00 10 */	beq lbl_800EE620
/* 800EE614  7F A3 EB 78 */	mr r3, r29
/* 800EE618  38 80 00 00 */	li r4, 0
/* 800EE61C  48 00 08 41 */	bl setHorseSwordUp__9daAlink_cFi
lbl_800EE620:
/* 800EE620  38 60 00 01 */	li r3, 1
lbl_800EE624:
/* 800EE624  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 800EE628  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 800EE62C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 800EE630  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 800EE634  39 61 00 30 */	addi r11, r1, 0x30
/* 800EE638  48 27 3B ED */	bl _restgpr_28
/* 800EE63C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800EE640  7C 08 03 A6 */	mtlr r0
/* 800EE644  38 21 00 50 */	addi r1, r1, 0x50
/* 800EE648  4E 80 00 20 */	blr 
