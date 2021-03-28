lbl_800EA4CC:
/* 800EA4CC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800EA4D0  7C 08 02 A6 */	mflr r0
/* 800EA4D4  90 01 00 44 */	stw r0, 0x44(r1)
/* 800EA4D8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 800EA4DC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 800EA4E0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800EA4E4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800EA4E8  7C 7F 1B 78 */	mr r31, r3
/* 800EA4EC  38 7F 28 54 */	addi r3, r31, 0x2854
/* 800EA4F0  48 07 47 59 */	bl setActor__16daPy_actorKeep_cFv
/* 800EA4F4  80 1F 28 58 */	lwz r0, 0x2858(r31)
/* 800EA4F8  28 00 00 00 */	cmplwi r0, 0
/* 800EA4FC  41 82 00 10 */	beq lbl_800EA50C
/* 800EA500  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 800EA504  28 00 00 2B */	cmplwi r0, 0x2b
/* 800EA508  41 82 00 28 */	beq lbl_800EA530
lbl_800EA50C:
/* 800EA50C  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 800EA510  28 00 00 2B */	cmplwi r0, 0x2b
/* 800EA514  40 82 00 0C */	bne lbl_800EA520
/* 800EA518  38 00 00 00 */	li r0, 0
/* 800EA51C  98 1F 05 6A */	stb r0, 0x56a(r31)
lbl_800EA520:
/* 800EA520  7F E3 FB 78 */	mr r3, r31
/* 800EA524  38 80 00 00 */	li r4, 0
/* 800EA528  4B FC FB A9 */	bl checkNextAction__9daAlink_cFi
/* 800EA52C  48 00 02 F8 */	b lbl_800EA824
lbl_800EA530:
/* 800EA530  7F E3 FB 78 */	mr r3, r31
/* 800EA534  38 80 00 00 */	li r4, 0
/* 800EA538  4B FC 91 FD */	bl setShapeAngleToAtnActor__9daAlink_cFi
/* 800EA53C  88 1F 2F 98 */	lbz r0, 0x2f98(r31)
/* 800EA540  28 00 00 03 */	cmplwi r0, 3
/* 800EA544  40 82 00 14 */	bne lbl_800EA558
/* 800EA548  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800EA54C  38 03 C0 00 */	addi r0, r3, -16384
/* 800EA550  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800EA554  48 00 00 10 */	b lbl_800EA564
lbl_800EA558:
/* 800EA558  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800EA55C  38 03 40 00 */	addi r0, r3, 0x4000
/* 800EA560  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_800EA564:
/* 800EA564  7F E3 FB 78 */	mr r3, r31
/* 800EA568  38 80 00 45 */	li r4, 0x45
/* 800EA56C  4B FD 5B F9 */	bl checkSetItemTrigger__9daAlink_cFi
/* 800EA570  2C 03 00 00 */	cmpwi r3, 0
/* 800EA574  41 82 00 10 */	beq lbl_800EA584
/* 800EA578  7F E3 FB 78 */	mr r3, r31
/* 800EA57C  4B FF 8A CD */	bl procBootsEquipInit__9daAlink_cFv
/* 800EA580  48 00 02 A4 */	b lbl_800EA824
lbl_800EA584:
/* 800EA584  A8 7F 2F E2 */	lha r3, 0x2fe2(r31)
/* 800EA588  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 800EA58C  48 18 68 99 */	bl cLib_distanceAngleS__Fss
/* 800EA590  7C 7E 1B 78 */	mr r30, r3
/* 800EA594  80 7F 27 E0 */	lwz r3, 0x27e0(r31)
/* 800EA598  4B F8 62 E9 */	bl getActionBtnB__12dAttention_cFv
/* 800EA59C  28 03 00 00 */	cmplwi r3, 0
/* 800EA5A0  41 82 00 D4 */	beq lbl_800EA674
/* 800EA5A4  80 7F 27 E0 */	lwz r3, 0x27e0(r31)
/* 800EA5A8  4B F8 62 D9 */	bl getActionBtnB__12dAttention_cFv
/* 800EA5AC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800EA5B0  28 00 00 04 */	cmplwi r0, 4
/* 800EA5B4  40 82 00 C0 */	bne lbl_800EA674
/* 800EA5B8  7F E3 FB 78 */	mr r3, r31
/* 800EA5BC  38 80 00 91 */	li r4, 0x91
/* 800EA5C0  4B FC 8C 91 */	bl setDoStatus__9daAlink_cFUc
/* 800EA5C4  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 800EA5C8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800EA5CC  41 82 00 10 */	beq lbl_800EA5DC
/* 800EA5D0  38 00 00 01 */	li r0, 1
/* 800EA5D4  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800EA5D8  48 00 00 18 */	b lbl_800EA5F0
lbl_800EA5DC:
/* 800EA5DC  88 1F 2F 8E */	lbz r0, 0x2f8e(r31)
/* 800EA5E0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800EA5E4  40 82 00 0C */	bne lbl_800EA5F0
/* 800EA5E8  38 00 00 00 */	li r0, 0
/* 800EA5EC  B0 1F 30 0E */	sth r0, 0x300e(r31)
lbl_800EA5F0:
/* 800EA5F0  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 800EA5F4  2C 00 00 00 */	cmpwi r0, 0
/* 800EA5F8  41 82 00 84 */	beq lbl_800EA67C
/* 800EA5FC  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 800EA600  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 800EA604  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 800EA608  D0 01 00 08 */	stfs f0, 8(r1)
/* 800EA60C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800EA610  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800EA614  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 800EA618  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 800EA61C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800EA620  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800EA624  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800EA628  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 800EA62C  38 61 00 08 */	addi r3, r1, 8
/* 800EA630  38 81 00 14 */	addi r4, r1, 0x14
/* 800EA634  48 25 CD 69 */	bl PSVECSquareDistance
/* 800EA638  FF E0 08 90 */	fmr f31, f1
/* 800EA63C  7F E3 FB 78 */	mr r3, r31
/* 800EA640  4B FF DC D5 */	bl getGoatCatchDistance2__9daAlink_cFv
/* 800EA644  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 800EA648  40 80 00 34 */	bge lbl_800EA67C
/* 800EA64C  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 800EA650  28 00 00 2B */	cmplwi r0, 0x2b
/* 800EA654  40 82 00 0C */	bne lbl_800EA660
/* 800EA658  38 00 00 00 */	li r0, 0
/* 800EA65C  98 1F 05 6A */	stb r0, 0x56a(r31)
lbl_800EA660:
/* 800EA660  7F E3 FB 78 */	mr r3, r31
/* 800EA664  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 800EA668  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800EA66C  4B FF F2 29 */	bl procGoatCatchInit__9daAlink_cFP10fopAc_ac_cf
/* 800EA670  48 00 01 B4 */	b lbl_800EA824
lbl_800EA674:
/* 800EA674  38 00 00 00 */	li r0, 0
/* 800EA678  B0 1F 30 0E */	sth r0, 0x300e(r31)
lbl_800EA67C:
/* 800EA67C  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 800EA680  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800EA684  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EA688  40 81 00 BC */	ble lbl_800EA744
/* 800EA68C  2C 1E 08 00 */	cmpwi r30, 0x800
/* 800EA690  40 81 00 B4 */	ble lbl_800EA744
/* 800EA694  2C 1E 78 00 */	cmpwi r30, 0x7800
/* 800EA698  40 80 00 AC */	bge lbl_800EA744
/* 800EA69C  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 800EA6A0  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 800EA6A4  7C 03 00 50 */	subf r0, r3, r0
/* 800EA6A8  7C 03 07 34 */	extsh r3, r0
/* 800EA6AC  48 27 AA 25 */	bl abs
/* 800EA6B0  2C 03 40 00 */	cmpwi r3, 0x4000
/* 800EA6B4  40 81 00 44 */	ble lbl_800EA6F8
/* 800EA6B8  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 800EA6BC  3C 63 00 01 */	addis r3, r3, 1
/* 800EA6C0  38 03 80 00 */	addi r0, r3, -32768
/* 800EA6C4  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800EA6C8  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 800EA6CC  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 800EA6D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 800EA6D4  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800EA6D8  88 1F 2F 98 */	lbz r0, 0x2f98(r31)
/* 800EA6DC  28 00 00 03 */	cmplwi r0, 3
/* 800EA6E0  40 82 00 10 */	bne lbl_800EA6F0
/* 800EA6E4  38 00 00 02 */	li r0, 2
/* 800EA6E8  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 800EA6EC  48 00 00 0C */	b lbl_800EA6F8
lbl_800EA6F0:
/* 800EA6F0  38 00 00 03 */	li r0, 3
/* 800EA6F4  98 1F 2F 98 */	stb r0, 0x2f98(r31)
lbl_800EA6F8:
/* 800EA6F8  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 800EA6FC  C0 1F 05 94 */	lfs f0, 0x594(r31)
/* 800EA700  EC 01 00 24 */	fdivs f0, f1, f0
/* 800EA704  FC 00 02 10 */	fabs f0, f0
/* 800EA708  FC 40 00 18 */	frsp f2, f0
/* 800EA70C  C0 7F 33 A8 */	lfs f3, 0x33a8(r31)
/* 800EA710  C0 22 94 A8 */	lfs f1, lit_16570(r2)
/* 800EA714  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800EA718  EC 00 10 28 */	fsubs f0, f0, f2
/* 800EA71C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800EA720  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 800EA724  40 81 00 18 */	ble lbl_800EA73C
/* 800EA728  3C 60 80 39 */	lis r3, m__21daAlinkHIO_atnMove_c0@ha
/* 800EA72C  38 63 D7 14 */	addi r3, r3, m__21daAlinkHIO_atnMove_c0@l
/* 800EA730  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 800EA734  EC 20 00 F2 */	fmuls f1, f0, f3
/* 800EA738  48 00 00 10 */	b lbl_800EA748
lbl_800EA73C:
/* 800EA73C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800EA740  48 00 00 08 */	b lbl_800EA748
lbl_800EA744:
/* 800EA744  C0 22 92 C0 */	lfs f1, lit_6108(r2)
lbl_800EA748:
/* 800EA748  7F E3 FB 78 */	mr r3, r31
/* 800EA74C  3C 80 80 39 */	lis r4, m__21daAlinkHIO_atnMove_c0@ha
/* 800EA750  38 84 D7 14 */	addi r4, r4, m__21daAlinkHIO_atnMove_c0@l
/* 800EA754  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 800EA758  4B FC 91 CD */	bl setNormalSpeedF__9daAlink_cFff
/* 800EA75C  7F E3 FB 78 */	mr r3, r31
/* 800EA760  4B FC 91 A5 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800EA764  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EA768  41 82 00 48 */	beq lbl_800EA7B0
/* 800EA76C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800EA770  60 00 00 01 */	ori r0, r0, 1
/* 800EA774  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 800EA778  38 00 00 03 */	li r0, 3
/* 800EA77C  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 800EA780  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800EA784  38 03 C0 00 */	addi r0, r3, -16384
/* 800EA788  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800EA78C  7F E3 FB 78 */	mr r3, r31
/* 800EA790  38 80 01 21 */	li r4, 0x121
/* 800EA794  4B FC 1D C5 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800EA798  2C 03 00 00 */	cmpwi r3, 0
/* 800EA79C  40 82 00 84 */	bne lbl_800EA820
/* 800EA7A0  7F E3 FB 78 */	mr r3, r31
/* 800EA7A4  38 80 01 21 */	li r4, 0x121
/* 800EA7A8  4B FC 27 D9 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800EA7AC  48 00 00 74 */	b lbl_800EA820
lbl_800EA7B0:
/* 800EA7B0  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800EA7B4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800EA7B8  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 800EA7BC  7F E3 FB 78 */	mr r3, r31
/* 800EA7C0  38 80 01 22 */	li r4, 0x122
/* 800EA7C4  4B FC 1D 95 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800EA7C8  2C 03 00 00 */	cmpwi r3, 0
/* 800EA7CC  40 82 00 10 */	bne lbl_800EA7DC
/* 800EA7D0  7F E3 FB 78 */	mr r3, r31
/* 800EA7D4  38 80 01 22 */	li r4, 0x122
/* 800EA7D8  4B FC 27 A9 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
lbl_800EA7DC:
/* 800EA7DC  88 1F 2F 98 */	lbz r0, 0x2f98(r31)
/* 800EA7E0  28 00 00 03 */	cmplwi r0, 3
/* 800EA7E4  40 82 00 14 */	bne lbl_800EA7F8
/* 800EA7E8  C0 42 92 BC */	lfs f2, lit_6041(r2)
/* 800EA7EC  A8 1F 1F D8 */	lha r0, 0x1fd8(r31)
/* 800EA7F0  B0 1F 1F DA */	sth r0, 0x1fda(r31)
/* 800EA7F4  48 00 00 10 */	b lbl_800EA804
lbl_800EA7F8:
/* 800EA7F8  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 800EA7FC  A8 1F 1F D6 */	lha r0, 0x1fd6(r31)
/* 800EA800  B0 1F 1F DA */	sth r0, 0x1fda(r31)
lbl_800EA804:
/* 800EA804  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 800EA808  C0 1F 05 94 */	lfs f0, 0x594(r31)
/* 800EA80C  EC 01 00 24 */	fdivs f0, f1, f0
/* 800EA810  EC 02 00 32 */	fmuls f0, f2, f0
/* 800EA814  D0 1F 1F DC */	stfs f0, 0x1fdc(r31)
/* 800EA818  7F E3 FB 78 */	mr r3, r31
/* 800EA81C  4B FD 4B 61 */	bl initBasAnime__9daAlink_cFv
lbl_800EA820:
/* 800EA820  38 60 00 01 */	li r3, 1
lbl_800EA824:
/* 800EA824  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 800EA828  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 800EA82C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800EA830  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800EA834  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800EA838  7C 08 03 A6 */	mtlr r0
/* 800EA83C  38 21 00 40 */	addi r1, r1, 0x40
/* 800EA840  4E 80 00 20 */	blr 
