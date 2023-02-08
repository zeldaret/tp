lbl_800AD3D8:
/* 800AD3D8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800AD3DC  7C 08 02 A6 */	mflr r0
/* 800AD3E0  90 01 00 74 */	stw r0, 0x74(r1)
/* 800AD3E4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 800AD3E8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 800AD3EC  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 800AD3F0  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 800AD3F4  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 800AD3F8  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 800AD3FC  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 800AD400  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 800AD404  39 61 00 30 */	addi r11, r1, 0x30
/* 800AD408  48 2B 4D C5 */	bl _savegpr_25
/* 800AD40C  7C 7A 1B 78 */	mr r26, r3
/* 800AD410  7C 9B 23 78 */	mr r27, r4
/* 800AD414  7C BC 2B 78 */	mr r28, r5
/* 800AD418  FF 80 08 90 */	fmr f28, f1
/* 800AD41C  FF A0 10 90 */	fmr f29, f2
/* 800AD420  7C DD 33 78 */	mr r29, r6
/* 800AD424  FF C0 18 90 */	fmr f30, f3
/* 800AD428  3B E0 00 00 */	li r31, 0
/* 800AD42C  2C 1C 00 02 */	cmpwi r28, 2
/* 800AD430  40 82 00 54 */	bne lbl_800AD484
/* 800AD434  48 00 28 89 */	bl resetFacePriAnime__9daAlink_cFv
/* 800AD438  80 9A 05 74 */	lwz r4, 0x574(r26)
/* 800AD43C  3C 60 EB E9 */	lis r3, 0xEBE9 /* 0xEBE8FFB5@ha */
/* 800AD440  38 03 FF B5 */	addi r0, r3, 0xFFB5 /* 0xEBE8FFB5@l */
/* 800AD444  7C 80 00 38 */	and r0, r4, r0
/* 800AD448  90 1A 05 74 */	stw r0, 0x574(r26)
/* 800AD44C  7F 43 D3 78 */	mr r3, r26
/* 800AD450  38 80 00 00 */	li r4, 0
/* 800AD454  48 00 9D 3D */	bl cancelItemUseQuake__9daAlink_cFi
/* 800AD458  38 60 00 00 */	li r3, 0
/* 800AD45C  A0 1A 1F BC */	lhz r0, 0x1fbc(r26)
/* 800AD460  28 00 00 62 */	cmplwi r0, 0x62
/* 800AD464  41 82 00 10 */	beq lbl_800AD474
/* 800AD468  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800AD46C  28 00 02 A0 */	cmplwi r0, 0x2a0
/* 800AD470  40 82 00 08 */	bne lbl_800AD478
lbl_800AD474:
/* 800AD474  38 60 00 01 */	li r3, 1
lbl_800AD478:
/* 800AD478  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800AD47C  41 82 00 08 */	beq lbl_800AD484
/* 800AD480  3B E0 00 01 */	li r31, 1
lbl_800AD484:
/* 800AD484  A0 1A 1F BC */	lhz r0, 0x1fbc(r26)
/* 800AD488  28 00 02 62 */	cmplwi r0, 0x262
/* 800AD48C  40 82 00 10 */	bne lbl_800AD49C
/* 800AD490  80 1A 05 70 */	lwz r0, 0x570(r26)
/* 800AD494  54 00 03 DA */	rlwinm r0, r0, 0, 0xf, 0xd
/* 800AD498  90 1A 05 70 */	stw r0, 0x570(r26)
lbl_800AD49C:
/* 800AD49C  7F 43 D3 78 */	mr r3, r26
/* 800AD4A0  1F 3C 00 14 */	mulli r25, r28, 0x14
/* 800AD4A4  38 99 1F 94 */	addi r4, r25, 0x1f94
/* 800AD4A8  7C 9A 22 14 */	add r4, r26, r4
/* 800AD4AC  7F 65 DB 78 */	mr r5, r27
/* 800AD4B0  38 C0 2C 00 */	li r6, 0x2c00
/* 800AD4B4  4B FF 68 59 */	bl getAnimeResource__9daAlink_cFP14daPy_anmHeap_cUsUl
/* 800AD4B8  7C 7E 1B 79 */	or. r30, r3, r3
/* 800AD4BC  40 82 00 10 */	bne lbl_800AD4CC
/* 800AD4C0  57 80 18 38 */	slwi r0, r28, 3
/* 800AD4C4  7C 7A 02 14 */	add r3, r26, r0
/* 800AD4C8  83 C3 1F 44 */	lwz r30, 0x1f44(r3)
lbl_800AD4CC:
/* 800AD4CC  57 80 18 38 */	slwi r0, r28, 3
/* 800AD4D0  7C 7A 02 14 */	add r3, r26, r0
/* 800AD4D4  93 C3 1F 44 */	stw r30, 0x1f44(r3)
/* 800AD4D8  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800AD4DC  D0 03 1F 40 */	stfs f0, 0x1f40(r3)
/* 800AD4E0  7C 7A CA 14 */	add r3, r26, r25
/* 800AD4E4  B3 63 1F 94 */	sth r27, 0x1f94(r3)
/* 800AD4E8  7F A0 07 35 */	extsh. r0, r29
/* 800AD4EC  40 80 00 08 */	bge lbl_800AD4F4
/* 800AD4F0  AB BE 00 06 */	lha r29, 6(r30)
lbl_800AD4F4:
/* 800AD4F4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800AD4F8  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 800AD4FC  40 80 00 28 */	bge lbl_800AD524
/* 800AD500  7F A0 07 34 */	extsh r0, r29
/* 800AD504  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800AD508  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800AD50C  90 01 00 0C */	stw r0, 0xc(r1)
/* 800AD510  3C 00 43 30 */	lis r0, 0x4330
/* 800AD514  90 01 00 08 */	stw r0, 8(r1)
/* 800AD518  C8 01 00 08 */	lfd f0, 8(r1)
/* 800AD51C  EF E0 08 28 */	fsubs f31, f0, f1
/* 800AD520  48 00 00 08 */	b lbl_800AD528
lbl_800AD524:
/* 800AD524  FF E0 E8 90 */	fmr f31, f29
lbl_800AD528:
/* 800AD528  7F 43 D3 78 */	mr r3, r26
/* 800AD52C  48 01 28 85 */	bl checkZoraWearAbility__9daAlink_cCFv
/* 800AD530  2C 03 00 00 */	cmpwi r3, 0
/* 800AD534  40 82 00 58 */	bne lbl_800AD58C
/* 800AD538  7F 43 D3 78 */	mr r3, r26
/* 800AD53C  48 00 BE 05 */	bl checkEquipAnime__9daAlink_cCFv
/* 800AD540  2C 03 00 00 */	cmpwi r3, 0
/* 800AD544  40 82 00 14 */	bne lbl_800AD558
/* 800AD548  7F 43 D3 78 */	mr r3, r26
/* 800AD54C  48 02 39 81 */	bl checkCutDashAnime__9daAlink_cCFv
/* 800AD550  2C 03 00 00 */	cmpwi r3, 0
/* 800AD554  41 82 00 38 */	beq lbl_800AD58C
lbl_800AD558:
/* 800AD558  80 7A 05 70 */	lwz r3, 0x570(r26)
/* 800AD55C  54 60 02 11 */	rlwinm. r0, r3, 0, 8, 8
/* 800AD560  40 82 00 0C */	bne lbl_800AD56C
/* 800AD564  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 800AD568  40 82 00 24 */	bne lbl_800AD58C
lbl_800AD56C:
/* 800AD56C  3C 60 80 39 */	lis r3, m__24daAlinkHIO_magneBoots_c0@ha /* 0x8038E7F4@ha */
/* 800AD570  38 63 E7 F4 */	addi r3, r3, m__24daAlinkHIO_magneBoots_c0@l /* 0x8038E7F4@l */
/* 800AD574  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 800AD578  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800AD57C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 800AD580  EC 01 00 24 */	fdivs f0, f1, f0
/* 800AD584  EC 02 00 32 */	fmuls f0, f2, f0
/* 800AD588  EF 9C 00 32 */	fmuls f28, f28, f0
lbl_800AD58C:
/* 800AD58C  7F 43 D3 78 */	mr r3, r26
/* 800AD590  1C 9C 00 18 */	mulli r4, r28, 0x18
/* 800AD594  38 84 20 18 */	addi r4, r4, 0x2018
/* 800AD598  7C 9A 22 14 */	add r4, r26, r4
/* 800AD59C  88 BE 00 04 */	lbz r5, 4(r30)
/* 800AD5A0  FC 00 E8 1E */	fctiwz f0, f29
/* 800AD5A4  D8 01 00 08 */	stfd f0, 8(r1)
/* 800AD5A8  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 800AD5AC  7F A7 EB 78 */	mr r7, r29
/* 800AD5B0  FC 20 E0 90 */	fmr f1, f28
/* 800AD5B4  FC 40 F8 90 */	fmr f2, f31
/* 800AD5B8  4B FF ED DD */	bl setFrameCtrl__9daAlink_cFP16daPy_frameCtrl_cUcssff
/* 800AD5BC  D3 FE 00 08 */	stfs f31, 8(r30)
/* 800AD5C0  7F 43 D3 78 */	mr r3, r26
/* 800AD5C4  FC 20 F0 90 */	fmr f1, f30
/* 800AD5C8  4B FF FD 11 */	bl setUpperAnimeMorf__9daAlink_cFf
/* 800AD5CC  7F 43 D3 78 */	mr r3, r26
/* 800AD5D0  48 03 14 19 */	bl checkBowAnime__9daAlink_cCFv
/* 800AD5D4  2C 03 00 00 */	cmpwi r3, 0
/* 800AD5D8  40 82 00 14 */	bne lbl_800AD5EC
/* 800AD5DC  7F 43 D3 78 */	mr r3, r26
/* 800AD5E0  48 03 26 91 */	bl setBowNormalAnime__9daAlink_cFv
/* 800AD5E4  7F 43 D3 78 */	mr r3, r26
/* 800AD5E8  48 03 14 FD */	bl deleteArrow__9daAlink_cFv
lbl_800AD5EC:
/* 800AD5EC  7F 43 D3 78 */	mr r3, r26
/* 800AD5F0  48 03 66 AD */	bl checkGrabAnimeAndThrow__9daAlink_cCFv
/* 800AD5F4  2C 03 00 00 */	cmpwi r3, 0
/* 800AD5F8  40 82 00 34 */	bne lbl_800AD62C
/* 800AD5FC  38 60 00 00 */	li r3, 0
/* 800AD600  A0 1A 1F BC */	lhz r0, 0x1fbc(r26)
/* 800AD604  28 00 02 DA */	cmplwi r0, 0x2da
/* 800AD608  41 82 00 10 */	beq lbl_800AD618
/* 800AD60C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800AD610  28 00 02 DB */	cmplwi r0, 0x2db
/* 800AD614  40 82 00 08 */	bne lbl_800AD61C
lbl_800AD618:
/* 800AD618  38 60 00 01 */	li r3, 1
lbl_800AD61C:
/* 800AD61C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800AD620  40 82 00 0C */	bne lbl_800AD62C
/* 800AD624  7F 43 D3 78 */	mr r3, r26
/* 800AD628  48 03 75 AD */	bl freeGrabItem__9daAlink_cFv
lbl_800AD62C:
/* 800AD62C  38 60 00 00 */	li r3, 0
/* 800AD630  A0 1A 1F BC */	lhz r0, 0x1fbc(r26)
/* 800AD634  28 00 02 BD */	cmplwi r0, 0x2bd
/* 800AD638  41 82 00 10 */	beq lbl_800AD648
/* 800AD63C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800AD640  28 00 02 BE */	cmplwi r0, 0x2be
/* 800AD644  40 82 00 08 */	bne lbl_800AD64C
lbl_800AD648:
/* 800AD648  38 60 00 01 */	li r3, 1
lbl_800AD64C:
/* 800AD64C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800AD650  40 82 00 18 */	bne lbl_800AD668
/* 800AD654  80 1A 05 78 */	lwz r0, 0x578(r26)
/* 800AD658  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800AD65C  41 82 00 0C */	beq lbl_800AD668
/* 800AD660  7F 43 D3 78 */	mr r3, r26
/* 800AD664  48 08 B5 A1 */	bl resetWolfEnemyBiteAll__9daAlink_cFv
lbl_800AD668:
/* 800AD668  2C 1F 00 00 */	cmpwi r31, 0
/* 800AD66C  41 82 00 3C */	beq lbl_800AD6A8
/* 800AD670  38 60 00 00 */	li r3, 0
/* 800AD674  A0 1A 1F BC */	lhz r0, 0x1fbc(r26)
/* 800AD678  28 00 00 62 */	cmplwi r0, 0x62
/* 800AD67C  41 82 00 10 */	beq lbl_800AD68C
/* 800AD680  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800AD684  28 00 02 A0 */	cmplwi r0, 0x2a0
/* 800AD688  40 82 00 08 */	bne lbl_800AD690
lbl_800AD68C:
/* 800AD68C  38 60 00 01 */	li r3, 1
lbl_800AD690:
/* 800AD690  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800AD694  40 82 00 14 */	bne lbl_800AD6A8
/* 800AD698  38 00 00 00 */	li r0, 0
/* 800AD69C  98 1A 2F A3 */	stb r0, 0x2fa3(r26)
/* 800AD6A0  38 7A 28 44 */	addi r3, r26, 0x2844
/* 800AD6A4  48 0B 16 59 */	bl clearData__16daPy_actorKeep_cFv
lbl_800AD6A8:
/* 800AD6A8  80 1A 05 70 */	lwz r0, 0x570(r26)
/* 800AD6AC  54 00 02 0C */	rlwinm r0, r0, 0, 8, 6
/* 800AD6B0  90 1A 05 70 */	stw r0, 0x570(r26)
/* 800AD6B4  38 60 00 01 */	li r3, 1
/* 800AD6B8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 800AD6BC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 800AD6C0  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 800AD6C4  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 800AD6C8  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 800AD6CC  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 800AD6D0  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 800AD6D4  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 800AD6D8  39 61 00 30 */	addi r11, r1, 0x30
/* 800AD6DC  48 2B 4B 3D */	bl _restgpr_25
/* 800AD6E0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800AD6E4  7C 08 03 A6 */	mtlr r0
/* 800AD6E8  38 21 00 70 */	addi r1, r1, 0x70
/* 800AD6EC  4E 80 00 20 */	blr 
