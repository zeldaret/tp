lbl_8011E060:
/* 8011E060  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8011E064  7C 08 02 A6 */	mflr r0
/* 8011E068  90 01 00 44 */	stw r0, 0x44(r1)
/* 8011E06C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8011E070  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8011E074  7C 7F 1B 78 */	mr r31, r3
/* 8011E078  4B FF A4 F5 */	bl setShapeAngleToTalkActor__9daAlink_cFv
/* 8011E07C  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 8011E080  2C 00 00 00 */	cmpwi r0, 0
/* 8011E084  41 82 02 10 */	beq lbl_8011E294
/* 8011E088  38 61 00 18 */	addi r3, r1, 0x18
/* 8011E08C  38 9F 37 C8 */	addi r4, r31, 0x37c8
/* 8011E090  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8011E094  48 14 8A A1 */	bl __mi__4cXyzCFRC3Vec
/* 8011E098  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8011E09C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8011E0A0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8011E0A4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8011E0A8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8011E0AC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8011E0B0  3B C0 00 00 */	li r30, 0
/* 8011E0B4  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 8011E0B8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8011E0BC  41 82 00 38 */	beq lbl_8011E0F4
/* 8011E0C0  38 7F 18 B0 */	addi r3, r31, 0x18b0
/* 8011E0C4  38 00 00 03 */	li r0, 3
/* 8011E0C8  7C 09 03 A6 */	mtctr r0
lbl_8011E0CC:
/* 8011E0CC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8011E0D0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8011E0D4  41 82 00 18 */	beq lbl_8011E0EC
/* 8011E0D8  A8 63 00 3C */	lha r3, 0x3c(r3)
/* 8011E0DC  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8011E0E0  48 15 2D 45 */	bl cLib_distanceAngleS__Fss
/* 8011E0E4  7C 7E 1B 78 */	mr r30, r3
/* 8011E0E8  48 00 00 0C */	b lbl_8011E0F4
lbl_8011E0EC:
/* 8011E0EC  38 63 00 40 */	addi r3, r3, 0x40
/* 8011E0F0  42 00 FF DC */	bdnz lbl_8011E0CC
lbl_8011E0F4:
/* 8011E0F4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8011E0F8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8011E0FC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011E100  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8011E104  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8011E108  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8011E10C  38 61 00 0C */	addi r3, r1, 0xc
/* 8011E110  48 22 90 29 */	bl PSVECSquareMag
/* 8011E114  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011E118  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011E11C  40 81 00 58 */	ble lbl_8011E174
/* 8011E120  FC 00 08 34 */	frsqrte f0, f1
/* 8011E124  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8011E128  FC 44 00 32 */	fmul f2, f4, f0
/* 8011E12C  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8011E130  FC 00 00 32 */	fmul f0, f0, f0
/* 8011E134  FC 01 00 32 */	fmul f0, f1, f0
/* 8011E138  FC 03 00 28 */	fsub f0, f3, f0
/* 8011E13C  FC 02 00 32 */	fmul f0, f2, f0
/* 8011E140  FC 44 00 32 */	fmul f2, f4, f0
/* 8011E144  FC 00 00 32 */	fmul f0, f0, f0
/* 8011E148  FC 01 00 32 */	fmul f0, f1, f0
/* 8011E14C  FC 03 00 28 */	fsub f0, f3, f0
/* 8011E150  FC 02 00 32 */	fmul f0, f2, f0
/* 8011E154  FC 44 00 32 */	fmul f2, f4, f0
/* 8011E158  FC 00 00 32 */	fmul f0, f0, f0
/* 8011E15C  FC 01 00 32 */	fmul f0, f1, f0
/* 8011E160  FC 03 00 28 */	fsub f0, f3, f0
/* 8011E164  FC 02 00 32 */	fmul f0, f2, f0
/* 8011E168  FC 21 00 32 */	fmul f1, f1, f0
/* 8011E16C  FC 20 08 18 */	frsp f1, f1
/* 8011E170  48 00 00 88 */	b lbl_8011E1F8
lbl_8011E174:
/* 8011E174  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8011E178  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011E17C  40 80 00 10 */	bge lbl_8011E18C
/* 8011E180  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8011E184  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8011E188  48 00 00 70 */	b lbl_8011E1F8
lbl_8011E18C:
/* 8011E18C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8011E190  80 81 00 08 */	lwz r4, 8(r1)
/* 8011E194  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8011E198  3C 00 7F 80 */	lis r0, 0x7f80
/* 8011E19C  7C 03 00 00 */	cmpw r3, r0
/* 8011E1A0  41 82 00 14 */	beq lbl_8011E1B4
/* 8011E1A4  40 80 00 40 */	bge lbl_8011E1E4
/* 8011E1A8  2C 03 00 00 */	cmpwi r3, 0
/* 8011E1AC  41 82 00 20 */	beq lbl_8011E1CC
/* 8011E1B0  48 00 00 34 */	b lbl_8011E1E4
lbl_8011E1B4:
/* 8011E1B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8011E1B8  41 82 00 0C */	beq lbl_8011E1C4
/* 8011E1BC  38 00 00 01 */	li r0, 1
/* 8011E1C0  48 00 00 28 */	b lbl_8011E1E8
lbl_8011E1C4:
/* 8011E1C4  38 00 00 02 */	li r0, 2
/* 8011E1C8  48 00 00 20 */	b lbl_8011E1E8
lbl_8011E1CC:
/* 8011E1CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8011E1D0  41 82 00 0C */	beq lbl_8011E1DC
/* 8011E1D4  38 00 00 05 */	li r0, 5
/* 8011E1D8  48 00 00 10 */	b lbl_8011E1E8
lbl_8011E1DC:
/* 8011E1DC  38 00 00 03 */	li r0, 3
/* 8011E1E0  48 00 00 08 */	b lbl_8011E1E8
lbl_8011E1E4:
/* 8011E1E4  38 00 00 04 */	li r0, 4
lbl_8011E1E8:
/* 8011E1E8  2C 00 00 01 */	cmpwi r0, 1
/* 8011E1EC  40 82 00 0C */	bne lbl_8011E1F8
/* 8011E1F0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8011E1F4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8011E1F8:
/* 8011E1F8  C0 02 93 E4 */	lfs f0, lit_12328(r2)
/* 8011E1FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011E200  41 80 00 24 */	blt lbl_8011E224
/* 8011E204  38 61 00 24 */	addi r3, r1, 0x24
/* 8011E208  48 14 8F 21 */	bl atan2sX_Z__4cXyzCFv
/* 8011E20C  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8011E210  48 15 2C 15 */	bl cLib_distanceAngleS__Fss
/* 8011E214  2C 03 40 00 */	cmpwi r3, 0x4000
/* 8011E218  41 81 00 0C */	bgt lbl_8011E224
/* 8011E21C  2C 1E 40 00 */	cmpwi r30, 0x4000
/* 8011E220  40 81 00 38 */	ble lbl_8011E258
lbl_8011E224:
/* 8011E224  C0 1F 37 C8 */	lfs f0, 0x37c8(r31)
/* 8011E228  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8011E22C  C0 1F 37 D0 */	lfs f0, 0x37d0(r31)
/* 8011E230  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8011E234  38 00 00 00 */	li r0, 0
/* 8011E238  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 8011E23C  7F E3 FB 78 */	mr r3, r31
/* 8011E240  4B FF A4 95 */	bl setTradeItemAnime__9daAlink_cFv
/* 8011E244  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8011E248  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011E24C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011E250  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8011E254  48 00 01 68 */	b lbl_8011E3BC
lbl_8011E258:
/* 8011E258  A8 7F 30 08 */	lha r3, 0x3008(r31)
/* 8011E25C  2C 03 00 00 */	cmpwi r3, 0
/* 8011E260  41 82 00 10 */	beq lbl_8011E270
/* 8011E264  38 03 FF FF */	addi r0, r3, -1
/* 8011E268  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 8011E26C  48 00 01 50 */	b lbl_8011E3BC
lbl_8011E270:
/* 8011E270  38 00 00 00 */	li r0, 0
/* 8011E274  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 8011E278  7F E3 FB 78 */	mr r3, r31
/* 8011E27C  4B FF A4 59 */	bl setTradeItemAnime__9daAlink_cFv
/* 8011E280  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8011E284  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011E288  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011E28C  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8011E290  48 00 01 2C */	b lbl_8011E3BC
lbl_8011E294:
/* 8011E294  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8011E298  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8011E29C  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 8011E2A0  2C 00 00 00 */	cmpwi r0, 0
/* 8011E2A4  41 82 00 DC */	beq lbl_8011E380
/* 8011E2A8  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 8011E2AC  2C 00 00 01 */	cmpwi r0, 1
/* 8011E2B0  40 82 00 1C */	bne lbl_8011E2CC
/* 8011E2B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8011E2B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8011E2BC  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011E2C0  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 8011E2C4  4B F2 9E B9 */	bl cutEnd__16dEvent_manager_cFi
/* 8011E2C8  48 00 00 F4 */	b lbl_8011E3BC
lbl_8011E2CC:
/* 8011E2CC  7F E3 FB 78 */	mr r3, r31
/* 8011E2D0  4B EF D8 75 */	bl fopAcM_getItemEventPartner__FPC10fopAc_ac_c
/* 8011E2D4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8011E2D8  41 82 00 E4 */	beq lbl_8011E3BC
/* 8011E2DC  41 82 00 0C */	beq lbl_8011E2E8
/* 8011E2E0  80 7E 00 04 */	lwz r3, 4(r30)
/* 8011E2E4  48 00 00 08 */	b lbl_8011E2EC
lbl_8011E2E8:
/* 8011E2E8  38 60 FF FF */	li r3, -1
lbl_8011E2EC:
/* 8011E2EC  4B F0 3E 4D */	bl fpcM_IsCreating__FUi
/* 8011E2F0  2C 03 00 00 */	cmpwi r3, 0
/* 8011E2F4  40 82 00 C8 */	bne lbl_8011E3BC
/* 8011E2F8  A8 1E 00 08 */	lha r0, 8(r30)
/* 8011E2FC  2C 00 02 18 */	cmpwi r0, 0x218
/* 8011E300  41 82 00 0C */	beq lbl_8011E30C
/* 8011E304  2C 00 02 1D */	cmpwi r0, 0x21d
/* 8011E308  40 82 00 60 */	bne lbl_8011E368
lbl_8011E30C:
/* 8011E30C  38 7F 28 0C */	addi r3, r31, 0x280c
/* 8011E310  7F C4 F3 78 */	mr r4, r30
/* 8011E314  48 04 09 A5 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 8011E318  7F C3 F3 78 */	mr r3, r30
/* 8011E31C  4B F1 97 59 */	bl show__12daItemBase_cFv
/* 8011E320  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 8011E324  2C 00 00 00 */	cmpwi r0, 0
/* 8011E328  40 82 00 28 */	bne lbl_8011E350
/* 8011E32C  38 00 00 01 */	li r0, 1
/* 8011E330  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 8011E334  7F E3 FB 78 */	mr r3, r31
/* 8011E338  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002004F@ha */
/* 8011E33C  38 84 00 4F */	addi r4, r4, 0x004F /* 0x0002004F@l */
/* 8011E340  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8011E344  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8011E348  7D 89 03 A6 */	mtctr r12
/* 8011E34C  4E 80 04 21 */	bctrl 
lbl_8011E350:
/* 8011E350  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 8011E354  2C 00 00 02 */	cmpwi r0, 2
/* 8011E358  40 82 00 10 */	bne lbl_8011E368
/* 8011E35C  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 8011E360  60 00 01 00 */	ori r0, r0, 0x100
/* 8011E364  90 1F 05 84 */	stw r0, 0x584(r31)
lbl_8011E368:
/* 8011E368  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8011E36C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8011E370  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011E374  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 8011E378  4B F2 9E 05 */	bl cutEnd__16dEvent_manager_cFi
/* 8011E37C  48 00 00 40 */	b lbl_8011E3BC
lbl_8011E380:
/* 8011E380  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 8011E384  48 04 01 49 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8011E388  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011E38C  41 82 00 28 */	beq lbl_8011E3B4
/* 8011E390  7F E3 FB 78 */	mr r3, r31
/* 8011E394  38 80 01 89 */	li r4, 0x189
/* 8011E398  4B F8 EB E9 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8011E39C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8011E3A0  60 00 01 00 */	ori r0, r0, 0x100
/* 8011E3A4  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 8011E3A8  38 00 00 01 */	li r0, 1
/* 8011E3AC  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8011E3B0  48 00 00 0C */	b lbl_8011E3BC
lbl_8011E3B4:
/* 8011E3B4  7F E3 FB 78 */	mr r3, r31
/* 8011E3B8  4B FF A3 C1 */	bl setTradeItemOutHand__9daAlink_cFv
lbl_8011E3BC:
/* 8011E3BC  38 60 00 01 */	li r3, 1
/* 8011E3C0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8011E3C4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8011E3C8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8011E3CC  7C 08 03 A6 */	mtlr r0
/* 8011E3D0  38 21 00 40 */	addi r1, r1, 0x40
/* 8011E3D4  4E 80 00 20 */	blr 
