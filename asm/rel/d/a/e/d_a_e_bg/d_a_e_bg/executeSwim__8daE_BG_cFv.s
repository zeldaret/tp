lbl_80686210:
/* 80686210  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80686214  7C 08 02 A6 */	mflr r0
/* 80686218  90 01 00 74 */	stw r0, 0x74(r1)
/* 8068621C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80686220  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80686224  39 61 00 60 */	addi r11, r1, 0x60
/* 80686228  4B CD BF B0 */	b _savegpr_28
/* 8068622C  7C 7E 1B 78 */	mr r30, r3
/* 80686230  3C 60 80 69 */	lis r3, lit_3768@ha
/* 80686234  3B E3 A2 44 */	addi r31, r3, lit_3768@l
/* 80686238  38 00 0C 00 */	li r0, 0xc00
/* 8068623C  B0 1E 06 A2 */	sth r0, 0x6a2(r30)
/* 80686240  A8 7E 06 9C */	lha r3, 0x69c(r30)
/* 80686244  A8 1E 06 A0 */	lha r0, 0x6a0(r30)
/* 80686248  7C 03 02 14 */	add r0, r3, r0
/* 8068624C  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 80686250  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80686254  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80686258  4B CC 11 44 */	b PSVECSquareDistance
/* 8068625C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80686260  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80686264  40 81 00 58 */	ble lbl_806862BC
/* 80686268  FC 00 08 34 */	frsqrte f0, f1
/* 8068626C  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 80686270  FC 44 00 32 */	fmul f2, f4, f0
/* 80686274  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 80686278  FC 00 00 32 */	fmul f0, f0, f0
/* 8068627C  FC 01 00 32 */	fmul f0, f1, f0
/* 80686280  FC 03 00 28 */	fsub f0, f3, f0
/* 80686284  FC 02 00 32 */	fmul f0, f2, f0
/* 80686288  FC 44 00 32 */	fmul f2, f4, f0
/* 8068628C  FC 00 00 32 */	fmul f0, f0, f0
/* 80686290  FC 01 00 32 */	fmul f0, f1, f0
/* 80686294  FC 03 00 28 */	fsub f0, f3, f0
/* 80686298  FC 02 00 32 */	fmul f0, f2, f0
/* 8068629C  FC 44 00 32 */	fmul f2, f4, f0
/* 806862A0  FC 00 00 32 */	fmul f0, f0, f0
/* 806862A4  FC 01 00 32 */	fmul f0, f1, f0
/* 806862A8  FC 03 00 28 */	fsub f0, f3, f0
/* 806862AC  FC 02 00 32 */	fmul f0, f2, f0
/* 806862B0  FC 21 00 32 */	fmul f1, f1, f0
/* 806862B4  FC 20 08 18 */	frsp f1, f1
/* 806862B8  48 00 00 88 */	b lbl_80686340
lbl_806862BC:
/* 806862BC  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 806862C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806862C4  40 80 00 10 */	bge lbl_806862D4
/* 806862C8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806862CC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806862D0  48 00 00 70 */	b lbl_80686340
lbl_806862D4:
/* 806862D4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806862D8  80 81 00 18 */	lwz r4, 0x18(r1)
/* 806862DC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806862E0  3C 00 7F 80 */	lis r0, 0x7f80
/* 806862E4  7C 03 00 00 */	cmpw r3, r0
/* 806862E8  41 82 00 14 */	beq lbl_806862FC
/* 806862EC  40 80 00 40 */	bge lbl_8068632C
/* 806862F0  2C 03 00 00 */	cmpwi r3, 0
/* 806862F4  41 82 00 20 */	beq lbl_80686314
/* 806862F8  48 00 00 34 */	b lbl_8068632C
lbl_806862FC:
/* 806862FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80686300  41 82 00 0C */	beq lbl_8068630C
/* 80686304  38 00 00 01 */	li r0, 1
/* 80686308  48 00 00 28 */	b lbl_80686330
lbl_8068630C:
/* 8068630C  38 00 00 02 */	li r0, 2
/* 80686310  48 00 00 20 */	b lbl_80686330
lbl_80686314:
/* 80686314  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80686318  41 82 00 0C */	beq lbl_80686324
/* 8068631C  38 00 00 05 */	li r0, 5
/* 80686320  48 00 00 10 */	b lbl_80686330
lbl_80686324:
/* 80686324  38 00 00 03 */	li r0, 3
/* 80686328  48 00 00 08 */	b lbl_80686330
lbl_8068632C:
/* 8068632C  38 00 00 04 */	li r0, 4
lbl_80686330:
/* 80686330  2C 00 00 01 */	cmpwi r0, 1
/* 80686334  40 82 00 0C */	bne lbl_80686340
/* 80686338  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8068633C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80686340:
/* 80686340  3C 60 80 69 */	lis r3, l_HIO@ha
/* 80686344  3B 83 A4 C8 */	addi r28, r3, l_HIO@l
/* 80686348  C0 1C 00 18 */	lfs f0, 0x18(r28)
/* 8068634C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80686350  40 80 01 E8 */	bge lbl_80686538
/* 80686354  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80686358  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 8068635C  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80686360  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80686364  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80686368  4B CC 10 34 */	b PSVECSquareDistance
/* 8068636C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80686370  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80686374  40 81 00 58 */	ble lbl_806863CC
/* 80686378  FC 00 08 34 */	frsqrte f0, f1
/* 8068637C  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 80686380  FC 44 00 32 */	fmul f2, f4, f0
/* 80686384  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 80686388  FC 00 00 32 */	fmul f0, f0, f0
/* 8068638C  FC 01 00 32 */	fmul f0, f1, f0
/* 80686390  FC 03 00 28 */	fsub f0, f3, f0
/* 80686394  FC 02 00 32 */	fmul f0, f2, f0
/* 80686398  FC 44 00 32 */	fmul f2, f4, f0
/* 8068639C  FC 00 00 32 */	fmul f0, f0, f0
/* 806863A0  FC 01 00 32 */	fmul f0, f1, f0
/* 806863A4  FC 03 00 28 */	fsub f0, f3, f0
/* 806863A8  FC 02 00 32 */	fmul f0, f2, f0
/* 806863AC  FC 44 00 32 */	fmul f2, f4, f0
/* 806863B0  FC 00 00 32 */	fmul f0, f0, f0
/* 806863B4  FC 01 00 32 */	fmul f0, f1, f0
/* 806863B8  FC 03 00 28 */	fsub f0, f3, f0
/* 806863BC  FC 02 00 32 */	fmul f0, f2, f0
/* 806863C0  FC 21 00 32 */	fmul f1, f1, f0
/* 806863C4  FC 20 08 18 */	frsp f1, f1
/* 806863C8  48 00 00 88 */	b lbl_80686450
lbl_806863CC:
/* 806863CC  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 806863D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806863D4  40 80 00 10 */	bge lbl_806863E4
/* 806863D8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806863DC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806863E0  48 00 00 70 */	b lbl_80686450
lbl_806863E4:
/* 806863E4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 806863E8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 806863EC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806863F0  3C 00 7F 80 */	lis r0, 0x7f80
/* 806863F4  7C 03 00 00 */	cmpw r3, r0
/* 806863F8  41 82 00 14 */	beq lbl_8068640C
/* 806863FC  40 80 00 40 */	bge lbl_8068643C
/* 80686400  2C 03 00 00 */	cmpwi r3, 0
/* 80686404  41 82 00 20 */	beq lbl_80686424
/* 80686408  48 00 00 34 */	b lbl_8068643C
lbl_8068640C:
/* 8068640C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80686410  41 82 00 0C */	beq lbl_8068641C
/* 80686414  38 00 00 01 */	li r0, 1
/* 80686418  48 00 00 28 */	b lbl_80686440
lbl_8068641C:
/* 8068641C  38 00 00 02 */	li r0, 2
/* 80686420  48 00 00 20 */	b lbl_80686440
lbl_80686424:
/* 80686424  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80686428  41 82 00 0C */	beq lbl_80686434
/* 8068642C  38 00 00 05 */	li r0, 5
/* 80686430  48 00 00 10 */	b lbl_80686440
lbl_80686434:
/* 80686434  38 00 00 03 */	li r0, 3
/* 80686438  48 00 00 08 */	b lbl_80686440
lbl_8068643C:
/* 8068643C  38 00 00 04 */	li r0, 4
lbl_80686440:
/* 80686440  2C 00 00 01 */	cmpwi r0, 1
/* 80686444  40 82 00 0C */	bne lbl_80686450
/* 80686448  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8068644C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80686450:
/* 80686450  C0 1C 00 18 */	lfs f0, 0x18(r28)
/* 80686454  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80686458  40 80 00 BC */	bge lbl_80686514
/* 8068645C  7F C3 F3 78 */	mr r3, r30
/* 80686460  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80686464  4B 99 43 7C */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80686468  3C 60 80 69 */	lis r3, l_HIO@ha
/* 8068646C  38 63 A4 C8 */	addi r3, r3, l_HIO@l
/* 80686470  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80686474  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80686478  40 80 00 9C */	bge lbl_80686514
/* 8068647C  7F C3 F3 78 */	mr r3, r30
/* 80686480  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80686484  4B 99 69 78 */	b fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80686488  2C 03 00 00 */	cmpwi r3, 0
/* 8068648C  40 82 00 88 */	bne lbl_80686514
/* 80686490  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80686494  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80686498  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8068649C  41 82 00 50 */	beq lbl_806864EC
/* 806864A0  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 806864A4  C0 5E 06 84 */	lfs f2, 0x684(r30)
/* 806864A8  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 806864AC  41 82 00 2C */	beq lbl_806864D8
/* 806864B0  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 806864B4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 806864B8  EC 02 00 28 */	fsubs f0, f2, f0
/* 806864BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806864C0  40 80 00 54 */	bge lbl_80686514
/* 806864C4  7F C3 F3 78 */	mr r3, r30
/* 806864C8  38 80 00 02 */	li r4, 2
/* 806864CC  38 A0 00 00 */	li r5, 0
/* 806864D0  4B FF F7 45 */	bl setActionMode__8daE_BG_cFii
/* 806864D4  48 00 07 9C */	b lbl_80686C70
lbl_806864D8:
/* 806864D8  7F C3 F3 78 */	mr r3, r30
/* 806864DC  38 80 00 02 */	li r4, 2
/* 806864E0  38 A0 00 00 */	li r5, 0
/* 806864E4  4B FF F7 31 */	bl setActionMode__8daE_BG_cFii
/* 806864E8  48 00 07 88 */	b lbl_80686C70
lbl_806864EC:
/* 806864EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806864F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806864F4  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 806864F8  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 806864FC  41 82 00 18 */	beq lbl_80686514
/* 80686500  7F C3 F3 78 */	mr r3, r30
/* 80686504  38 80 00 02 */	li r4, 2
/* 80686508  38 A0 00 00 */	li r5, 0
/* 8068650C  4B FF F7 09 */	bl setActionMode__8daE_BG_cFii
/* 80686510  48 00 07 60 */	b lbl_80686C70
lbl_80686514:
/* 80686514  7F C3 F3 78 */	mr r3, r30
/* 80686518  4B FF F9 ED */	bl search_esa__8daE_BG_cFv
/* 8068651C  28 03 00 00 */	cmplwi r3, 0
/* 80686520  41 82 00 18 */	beq lbl_80686538
/* 80686524  7F C3 F3 78 */	mr r3, r30
/* 80686528  38 80 00 07 */	li r4, 7
/* 8068652C  38 A0 00 00 */	li r5, 0
/* 80686530  4B FF F6 E5 */	bl setActionMode__8daE_BG_cFii
/* 80686534  48 00 07 3C */	b lbl_80686C70
lbl_80686538:
/* 80686538  80 1E 06 74 */	lwz r0, 0x674(r30)
/* 8068653C  2C 00 00 02 */	cmpwi r0, 2
/* 80686540  41 82 03 4C */	beq lbl_8068688C
/* 80686544  40 80 00 14 */	bge lbl_80686558
/* 80686548  2C 00 00 00 */	cmpwi r0, 0
/* 8068654C  41 82 00 18 */	beq lbl_80686564
/* 80686550  40 80 02 78 */	bge lbl_806867C8
/* 80686554  48 00 07 14 */	b lbl_80686C68
lbl_80686558:
/* 80686558  2C 00 00 04 */	cmpwi r0, 4
/* 8068655C  40 80 07 0C */	bge lbl_80686C68
/* 80686560  48 00 05 68 */	b lbl_80686AC8
lbl_80686564:
/* 80686564  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80686568  4B BE 14 24 */	b cM_rndFX__Ff
/* 8068656C  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80686570  EC 00 08 2A */	fadds f0, f0, f1
/* 80686574  D0 1E 06 64 */	stfs f0, 0x664(r30)
/* 80686578  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8068657C  C0 5E 06 84 */	lfs f2, 0x684(r30)
/* 80686580  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80686584  41 82 00 1C */	beq lbl_806865A0
/* 80686588  C0 3E 06 64 */	lfs f1, 0x664(r30)
/* 8068658C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80686590  EC 02 00 28 */	fsubs f0, f2, f0
/* 80686594  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80686598  40 81 00 08 */	ble lbl_806865A0
/* 8068659C  D0 1E 06 64 */	stfs f0, 0x664(r30)
lbl_806865A0:
/* 806865A0  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 806865A4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806865A8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806865AC  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 806865B0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806865B4  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 806865B8  C0 5E 04 B0 */	lfs f2, 0x4b0(r30)
/* 806865BC  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 806865C0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806865C4  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 806865C8  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 806865CC  38 61 00 1C */	addi r3, r1, 0x1c
/* 806865D0  38 81 00 28 */	addi r4, r1, 0x28
/* 806865D4  4B CC 0D C8 */	b PSVECSquareDistance
/* 806865D8  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 806865DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806865E0  40 81 00 58 */	ble lbl_80686638
/* 806865E4  FC 00 08 34 */	frsqrte f0, f1
/* 806865E8  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 806865EC  FC 44 00 32 */	fmul f2, f4, f0
/* 806865F0  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 806865F4  FC 00 00 32 */	fmul f0, f0, f0
/* 806865F8  FC 01 00 32 */	fmul f0, f1, f0
/* 806865FC  FC 03 00 28 */	fsub f0, f3, f0
/* 80686600  FC 02 00 32 */	fmul f0, f2, f0
/* 80686604  FC 44 00 32 */	fmul f2, f4, f0
/* 80686608  FC 00 00 32 */	fmul f0, f0, f0
/* 8068660C  FC 01 00 32 */	fmul f0, f1, f0
/* 80686610  FC 03 00 28 */	fsub f0, f3, f0
/* 80686614  FC 02 00 32 */	fmul f0, f2, f0
/* 80686618  FC 44 00 32 */	fmul f2, f4, f0
/* 8068661C  FC 00 00 32 */	fmul f0, f0, f0
/* 80686620  FC 01 00 32 */	fmul f0, f1, f0
/* 80686624  FC 03 00 28 */	fsub f0, f3, f0
/* 80686628  FC 02 00 32 */	fmul f0, f2, f0
/* 8068662C  FC 21 00 32 */	fmul f1, f1, f0
/* 80686630  FC 20 08 18 */	frsp f1, f1
/* 80686634  48 00 00 88 */	b lbl_806866BC
lbl_80686638:
/* 80686638  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 8068663C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80686640  40 80 00 10 */	bge lbl_80686650
/* 80686644  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80686648  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8068664C  48 00 00 70 */	b lbl_806866BC
lbl_80686650:
/* 80686650  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80686654  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80686658  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8068665C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80686660  7C 03 00 00 */	cmpw r3, r0
/* 80686664  41 82 00 14 */	beq lbl_80686678
/* 80686668  40 80 00 40 */	bge lbl_806866A8
/* 8068666C  2C 03 00 00 */	cmpwi r3, 0
/* 80686670  41 82 00 20 */	beq lbl_80686690
/* 80686674  48 00 00 34 */	b lbl_806866A8
lbl_80686678:
/* 80686678  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8068667C  41 82 00 0C */	beq lbl_80686688
/* 80686680  38 00 00 01 */	li r0, 1
/* 80686684  48 00 00 28 */	b lbl_806866AC
lbl_80686688:
/* 80686688  38 00 00 02 */	li r0, 2
/* 8068668C  48 00 00 20 */	b lbl_806866AC
lbl_80686690:
/* 80686690  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80686694  41 82 00 0C */	beq lbl_806866A0
/* 80686698  38 00 00 05 */	li r0, 5
/* 8068669C  48 00 00 10 */	b lbl_806866AC
lbl_806866A0:
/* 806866A0  38 00 00 03 */	li r0, 3
/* 806866A4  48 00 00 08 */	b lbl_806866AC
lbl_806866A8:
/* 806866A8  38 00 00 04 */	li r0, 4
lbl_806866AC:
/* 806866AC  2C 00 00 01 */	cmpwi r0, 1
/* 806866B0  40 82 00 0C */	bne lbl_806866BC
/* 806866B4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806866B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806866BC:
/* 806866BC  3C 60 80 69 */	lis r3, l_HIO@ha
/* 806866C0  38 63 A4 C8 */	addi r3, r3, l_HIO@l
/* 806866C4  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 806866C8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 806866CC  EC 02 00 28 */	fsubs f0, f2, f0
/* 806866D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806866D4  40 80 00 48 */	bge lbl_8068671C
/* 806866D8  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806866DC  4B BE 12 B0 */	b cM_rndFX__Ff
/* 806866E0  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 806866E4  38 03 80 00 */	addi r0, r3, -32768
/* 806866E8  C8 5F 00 70 */	lfd f2, 0x70(r31)
/* 806866EC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806866F0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 806866F4  3C 00 43 30 */	lis r0, 0x4330
/* 806866F8  90 01 00 38 */	stw r0, 0x38(r1)
/* 806866FC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80686700  EC 00 10 28 */	fsubs f0, f0, f2
/* 80686704  EC 00 08 2A */	fadds f0, f0, f1
/* 80686708  FC 00 00 1E */	fctiwz f0, f0
/* 8068670C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80686710  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80686714  B0 1E 06 9A */	sth r0, 0x69a(r30)
/* 80686718  48 00 00 50 */	b lbl_80686768
lbl_8068671C:
/* 8068671C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80686720  4B BE 12 6C */	b cM_rndFX__Ff
/* 80686724  FF E0 08 90 */	fmr f31, f1
/* 80686728  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8068672C  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80686730  4B BE A4 D4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80686734  7C 60 07 34 */	extsh r0, r3
/* 80686738  C8 3F 00 70 */	lfd f1, 0x70(r31)
/* 8068673C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80686740  90 01 00 44 */	stw r0, 0x44(r1)
/* 80686744  3C 00 43 30 */	lis r0, 0x4330
/* 80686748  90 01 00 40 */	stw r0, 0x40(r1)
/* 8068674C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80686750  EC 00 08 28 */	fsubs f0, f0, f1
/* 80686754  EC 00 F8 2A */	fadds f0, f0, f31
/* 80686758  FC 00 00 1E */	fctiwz f0, f0
/* 8068675C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80686760  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80686764  B0 1E 06 9A */	sth r0, 0x69a(r30)
lbl_80686768:
/* 80686768  A8 1E 06 9A */	lha r0, 0x69a(r30)
/* 8068676C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80686770  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80686774  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80686778  7C 03 04 2E */	lfsx f0, r3, r0
/* 8068677C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80686780  EC 01 00 32 */	fmuls f0, f1, f0
/* 80686784  D0 1E 06 60 */	stfs f0, 0x660(r30)
/* 80686788  A8 1E 06 9A */	lha r0, 0x69a(r30)
/* 8068678C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80686790  7C 63 02 14 */	add r3, r3, r0
/* 80686794  C0 03 00 04 */	lfs f0, 4(r3)
/* 80686798  EC 01 00 32 */	fmuls f0, f1, f0
/* 8068679C  D0 1E 06 68 */	stfs f0, 0x668(r30)
/* 806867A0  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 806867A4  4B BE 11 E8 */	b cM_rndFX__Ff
/* 806867A8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 806867AC  EC 00 08 2A */	fadds f0, f0, f1
/* 806867B0  FC 00 00 1E */	fctiwz f0, f0
/* 806867B4  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 806867B8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806867BC  98 1E 06 8F */	stb r0, 0x68f(r30)
/* 806867C0  38 00 00 01 */	li r0, 1
/* 806867C4  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_806867C8:
/* 806867C8  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 806867CC  A8 1E 06 9A */	lha r0, 0x69a(r30)
/* 806867D0  7C 03 00 50 */	subf r0, r3, r0
/* 806867D4  B0 1E 06 AC */	sth r0, 0x6ac(r30)
/* 806867D8  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806867DC  A8 9E 06 9A */	lha r4, 0x69a(r30)
/* 806867E0  38 A0 00 10 */	li r5, 0x10
/* 806867E4  38 C0 04 00 */	li r6, 0x400
/* 806867E8  38 E0 01 00 */	li r7, 0x100
/* 806867EC  4B BE 9D 54 */	b cLib_addCalcAngleS__FPsssss
/* 806867F0  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 806867F4  38 80 00 00 */	li r4, 0
/* 806867F8  38 A0 00 10 */	li r5, 0x10
/* 806867FC  38 C0 04 00 */	li r6, 0x400
/* 80686800  38 E0 01 00 */	li r7, 0x100
/* 80686804  4B BE 9D 3C */	b cLib_addCalcAngleS__FPsssss
/* 80686808  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8068680C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80686810  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80686814  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80686818  7C 63 02 14 */	add r3, r3, r0
/* 8068681C  C0 23 00 04 */	lfs f1, 4(r3)
/* 80686820  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80686824  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80686828  EC 20 00 72 */	fmuls f1, f0, f1
/* 8068682C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80686830  4B BE 9F 10 */	b cLib_chaseF__FPfff
/* 80686834  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80686838  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8068683C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80686840  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80686844  7C 23 04 2E */	lfsx f1, r3, r0
/* 80686848  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8068684C  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80686850  EC 20 00 72 */	fmuls f1, f0, f1
/* 80686854  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80686858  4B BE 9E E8 */	b cLib_chaseF__FPfff
/* 8068685C  38 00 20 00 */	li r0, 0x2000
/* 80686860  B0 1E 06 A0 */	sth r0, 0x6a0(r30)
/* 80686864  A8 7E 06 9A */	lha r3, 0x69a(r30)
/* 80686868  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8068686C  7C 03 00 50 */	subf r0, r3, r0
/* 80686870  7C 03 07 34 */	extsh r3, r0
/* 80686874  4B CD E8 5C */	b abs
/* 80686878  2C 03 08 00 */	cmpwi r3, 0x800
/* 8068687C  40 80 03 EC */	bge lbl_80686C68
/* 80686880  38 00 00 02 */	li r0, 2
/* 80686884  90 1E 06 74 */	stw r0, 0x674(r30)
/* 80686888  48 00 03 E0 */	b lbl_80686C68
lbl_8068688C:
/* 8068688C  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80686890  A8 1E 06 9A */	lha r0, 0x69a(r30)
/* 80686894  7C 03 00 50 */	subf r0, r3, r0
/* 80686898  B0 1E 06 AC */	sth r0, 0x6ac(r30)
/* 8068689C  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806868A0  A8 9E 06 9A */	lha r4, 0x69a(r30)
/* 806868A4  38 A0 00 10 */	li r5, 0x10
/* 806868A8  38 C0 04 00 */	li r6, 0x400
/* 806868AC  38 E0 01 00 */	li r7, 0x100
/* 806868B0  4B BE 9C 90 */	b cLib_addCalcAngleS__FPsssss
/* 806868B4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806868B8  38 9E 06 60 */	addi r4, r30, 0x660
/* 806868BC  4B BE A3 B8 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 806868C0  7C 64 07 34 */	extsh r4, r3
/* 806868C4  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 806868C8  38 A0 00 10 */	li r5, 0x10
/* 806868CC  38 C0 04 00 */	li r6, 0x400
/* 806868D0  38 E0 01 00 */	li r7, 0x100
/* 806868D4  4B BE 9C 6C */	b cLib_addCalcAngleS__FPsssss
/* 806868D8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806868DC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806868E0  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 806868E4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806868E8  7C 63 02 14 */	add r3, r3, r0
/* 806868EC  C0 23 00 04 */	lfs f1, 4(r3)
/* 806868F0  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806868F4  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 806868F8  EC 20 00 72 */	fmuls f1, f0, f1
/* 806868FC  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80686900  4B BE 9E 40 */	b cLib_chaseF__FPfff
/* 80686904  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80686908  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8068690C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80686910  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80686914  7C 23 04 2E */	lfsx f1, r3, r0
/* 80686918  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8068691C  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80686920  EC 20 00 72 */	fmuls f1, f0, f1
/* 80686924  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80686928  4B BE 9E 18 */	b cLib_chaseF__FPfff
/* 8068692C  38 7E 06 A0 */	addi r3, r30, 0x6a0
/* 80686930  38 80 0C 00 */	li r4, 0xc00
/* 80686934  38 A0 00 08 */	li r5, 8
/* 80686938  38 C0 04 00 */	li r6, 0x400
/* 8068693C  38 E0 01 00 */	li r7, 0x100
/* 80686940  4B BE 9C 00 */	b cLib_addCalcAngleS__FPsssss
/* 80686944  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80686948  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8068694C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80686950  40 81 00 30 */	ble lbl_80686980
/* 80686954  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80686958  C0 5E 06 84 */	lfs f2, 0x684(r30)
/* 8068695C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80686960  41 82 00 20 */	beq lbl_80686980
/* 80686964  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80686968  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8068696C  EC 02 00 28 */	fsubs f0, f2, f0
/* 80686970  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80686974  40 81 00 0C */	ble lbl_80686980
/* 80686978  38 00 00 03 */	li r0, 3
/* 8068697C  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80686980:
/* 80686980  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80686984  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80686988  4B CC 0A 14 */	b PSVECSquareDistance
/* 8068698C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80686990  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80686994  40 81 00 58 */	ble lbl_806869EC
/* 80686998  FC 00 08 34 */	frsqrte f0, f1
/* 8068699C  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 806869A0  FC 44 00 32 */	fmul f2, f4, f0
/* 806869A4  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 806869A8  FC 00 00 32 */	fmul f0, f0, f0
/* 806869AC  FC 01 00 32 */	fmul f0, f1, f0
/* 806869B0  FC 03 00 28 */	fsub f0, f3, f0
/* 806869B4  FC 02 00 32 */	fmul f0, f2, f0
/* 806869B8  FC 44 00 32 */	fmul f2, f4, f0
/* 806869BC  FC 00 00 32 */	fmul f0, f0, f0
/* 806869C0  FC 01 00 32 */	fmul f0, f1, f0
/* 806869C4  FC 03 00 28 */	fsub f0, f3, f0
/* 806869C8  FC 02 00 32 */	fmul f0, f2, f0
/* 806869CC  FC 44 00 32 */	fmul f2, f4, f0
/* 806869D0  FC 00 00 32 */	fmul f0, f0, f0
/* 806869D4  FC 01 00 32 */	fmul f0, f1, f0
/* 806869D8  FC 03 00 28 */	fsub f0, f3, f0
/* 806869DC  FC 02 00 32 */	fmul f0, f2, f0
/* 806869E0  FC 21 00 32 */	fmul f1, f1, f0
/* 806869E4  FC 20 08 18 */	frsp f1, f1
/* 806869E8  48 00 00 88 */	b lbl_80686A70
lbl_806869EC:
/* 806869EC  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 806869F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806869F4  40 80 00 10 */	bge lbl_80686A04
/* 806869F8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806869FC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80686A00  48 00 00 70 */	b lbl_80686A70
lbl_80686A04:
/* 80686A04  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80686A08  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80686A0C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80686A10  3C 00 7F 80 */	lis r0, 0x7f80
/* 80686A14  7C 03 00 00 */	cmpw r3, r0
/* 80686A18  41 82 00 14 */	beq lbl_80686A2C
/* 80686A1C  40 80 00 40 */	bge lbl_80686A5C
/* 80686A20  2C 03 00 00 */	cmpwi r3, 0
/* 80686A24  41 82 00 20 */	beq lbl_80686A44
/* 80686A28  48 00 00 34 */	b lbl_80686A5C
lbl_80686A2C:
/* 80686A2C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80686A30  41 82 00 0C */	beq lbl_80686A3C
/* 80686A34  38 00 00 01 */	li r0, 1
/* 80686A38  48 00 00 28 */	b lbl_80686A60
lbl_80686A3C:
/* 80686A3C  38 00 00 02 */	li r0, 2
/* 80686A40  48 00 00 20 */	b lbl_80686A60
lbl_80686A44:
/* 80686A44  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80686A48  41 82 00 0C */	beq lbl_80686A54
/* 80686A4C  38 00 00 05 */	li r0, 5
/* 80686A50  48 00 00 10 */	b lbl_80686A60
lbl_80686A54:
/* 80686A54  38 00 00 03 */	li r0, 3
/* 80686A58  48 00 00 08 */	b lbl_80686A60
lbl_80686A5C:
/* 80686A5C  38 00 00 04 */	li r0, 4
lbl_80686A60:
/* 80686A60  2C 00 00 01 */	cmpwi r0, 1
/* 80686A64  40 82 00 0C */	bne lbl_80686A70
/* 80686A68  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80686A6C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80686A70:
/* 80686A70  3C 60 80 69 */	lis r3, l_HIO@ha
/* 80686A74  38 63 A4 C8 */	addi r3, r3, l_HIO@l
/* 80686A78  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80686A7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80686A80  40 81 00 30 */	ble lbl_80686AB0
/* 80686A84  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80686A88  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80686A8C  4B BE A1 78 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80686A90  A8 1E 06 9A */	lha r0, 0x69a(r30)
/* 80686A94  7C 00 18 50 */	subf r0, r0, r3
/* 80686A98  7C 03 07 34 */	extsh r3, r0
/* 80686A9C  4B CD E6 34 */	b abs
/* 80686AA0  2C 03 20 00 */	cmpwi r3, 0x2000
/* 80686AA4  40 81 00 0C */	ble lbl_80686AB0
/* 80686AA8  38 00 00 03 */	li r0, 3
/* 80686AAC  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80686AB0:
/* 80686AB0  88 1E 06 8F */	lbz r0, 0x68f(r30)
/* 80686AB4  28 00 00 00 */	cmplwi r0, 0
/* 80686AB8  40 82 01 B0 */	bne lbl_80686C68
/* 80686ABC  38 00 00 03 */	li r0, 3
/* 80686AC0  90 1E 06 74 */	stw r0, 0x674(r30)
/* 80686AC4  48 00 01 A4 */	b lbl_80686C68
lbl_80686AC8:
/* 80686AC8  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80686ACC  A8 1E 06 9A */	lha r0, 0x69a(r30)
/* 80686AD0  7C 03 00 50 */	subf r0, r3, r0
/* 80686AD4  B0 1E 06 AC */	sth r0, 0x6ac(r30)
/* 80686AD8  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80686ADC  A8 9E 06 9A */	lha r4, 0x69a(r30)
/* 80686AE0  38 A0 00 10 */	li r5, 0x10
/* 80686AE4  38 C0 04 00 */	li r6, 0x400
/* 80686AE8  38 E0 01 00 */	li r7, 0x100
/* 80686AEC  4B BE 9A 54 */	b cLib_addCalcAngleS__FPsssss
/* 80686AF0  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80686AF4  38 80 00 00 */	li r4, 0
/* 80686AF8  38 A0 00 10 */	li r5, 0x10
/* 80686AFC  38 C0 04 00 */	li r6, 0x400
/* 80686B00  38 E0 01 00 */	li r7, 0x100
/* 80686B04  4B BE 9A 3C */	b cLib_addCalcAngleS__FPsssss
/* 80686B08  38 7E 06 A0 */	addi r3, r30, 0x6a0
/* 80686B0C  38 80 08 00 */	li r4, 0x800
/* 80686B10  38 A0 00 08 */	li r5, 8
/* 80686B14  38 C0 04 00 */	li r6, 0x400
/* 80686B18  38 E0 01 00 */	li r7, 0x100
/* 80686B1C  4B BE 9A 24 */	b cLib_addCalcAngleS__FPsssss
/* 80686B20  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80686B24  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80686B28  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80686B2C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80686B30  7C 63 02 14 */	add r3, r3, r0
/* 80686B34  C0 23 00 04 */	lfs f1, 4(r3)
/* 80686B38  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80686B3C  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 80686B40  4B BE 9C 00 */	b cLib_chaseF__FPfff
/* 80686B44  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80686B48  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80686B4C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80686B50  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80686B54  7C 23 04 2E */	lfsx f1, r3, r0
/* 80686B58  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80686B5C  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 80686B60  4B BE 9B E0 */	b cLib_chaseF__FPfff
/* 80686B64  38 7E 04 F8 */	addi r3, r30, 0x4f8
/* 80686B68  4B CC 05 D0 */	b PSVECSquareMag
/* 80686B6C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80686B70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80686B74  40 81 00 58 */	ble lbl_80686BCC
/* 80686B78  FC 00 08 34 */	frsqrte f0, f1
/* 80686B7C  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 80686B80  FC 44 00 32 */	fmul f2, f4, f0
/* 80686B84  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 80686B88  FC 00 00 32 */	fmul f0, f0, f0
/* 80686B8C  FC 01 00 32 */	fmul f0, f1, f0
/* 80686B90  FC 03 00 28 */	fsub f0, f3, f0
/* 80686B94  FC 02 00 32 */	fmul f0, f2, f0
/* 80686B98  FC 44 00 32 */	fmul f2, f4, f0
/* 80686B9C  FC 00 00 32 */	fmul f0, f0, f0
/* 80686BA0  FC 01 00 32 */	fmul f0, f1, f0
/* 80686BA4  FC 03 00 28 */	fsub f0, f3, f0
/* 80686BA8  FC 02 00 32 */	fmul f0, f2, f0
/* 80686BAC  FC 44 00 32 */	fmul f2, f4, f0
/* 80686BB0  FC 00 00 32 */	fmul f0, f0, f0
/* 80686BB4  FC 01 00 32 */	fmul f0, f1, f0
/* 80686BB8  FC 03 00 28 */	fsub f0, f3, f0
/* 80686BBC  FC 02 00 32 */	fmul f0, f2, f0
/* 80686BC0  FC 21 00 32 */	fmul f1, f1, f0
/* 80686BC4  FC 20 08 18 */	frsp f1, f1
/* 80686BC8  48 00 00 88 */	b lbl_80686C50
lbl_80686BCC:
/* 80686BCC  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 80686BD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80686BD4  40 80 00 10 */	bge lbl_80686BE4
/* 80686BD8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80686BDC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80686BE0  48 00 00 70 */	b lbl_80686C50
lbl_80686BE4:
/* 80686BE4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80686BE8  80 81 00 08 */	lwz r4, 8(r1)
/* 80686BEC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80686BF0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80686BF4  7C 03 00 00 */	cmpw r3, r0
/* 80686BF8  41 82 00 14 */	beq lbl_80686C0C
/* 80686BFC  40 80 00 40 */	bge lbl_80686C3C
/* 80686C00  2C 03 00 00 */	cmpwi r3, 0
/* 80686C04  41 82 00 20 */	beq lbl_80686C24
/* 80686C08  48 00 00 34 */	b lbl_80686C3C
lbl_80686C0C:
/* 80686C0C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80686C10  41 82 00 0C */	beq lbl_80686C1C
/* 80686C14  38 00 00 01 */	li r0, 1
/* 80686C18  48 00 00 28 */	b lbl_80686C40
lbl_80686C1C:
/* 80686C1C  38 00 00 02 */	li r0, 2
/* 80686C20  48 00 00 20 */	b lbl_80686C40
lbl_80686C24:
/* 80686C24  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80686C28  41 82 00 0C */	beq lbl_80686C34
/* 80686C2C  38 00 00 05 */	li r0, 5
/* 80686C30  48 00 00 10 */	b lbl_80686C40
lbl_80686C34:
/* 80686C34  38 00 00 03 */	li r0, 3
/* 80686C38  48 00 00 08 */	b lbl_80686C40
lbl_80686C3C:
/* 80686C3C  38 00 00 04 */	li r0, 4
lbl_80686C40:
/* 80686C40  2C 00 00 01 */	cmpwi r0, 1
/* 80686C44  40 82 00 0C */	bne lbl_80686C50
/* 80686C48  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80686C4C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80686C50:
/* 80686C50  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80686C54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80686C58  4C 40 13 82 */	cror 2, 0, 2
/* 80686C5C  40 82 00 0C */	bne lbl_80686C68
/* 80686C60  38 00 00 00 */	li r0, 0
/* 80686C64  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80686C68:
/* 80686C68  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80686C6C  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_80686C70:
/* 80686C70  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80686C74  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80686C78  39 61 00 60 */	addi r11, r1, 0x60
/* 80686C7C  4B CD B5 A8 */	b _restgpr_28
/* 80686C80  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80686C84  7C 08 03 A6 */	mtlr r0
/* 80686C88  38 21 00 70 */	addi r1, r1, 0x70
/* 80686C8C  4E 80 00 20 */	blr 
