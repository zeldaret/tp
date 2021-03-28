lbl_800DD3E4:
/* 800DD3E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800DD3E8  7C 08 02 A6 */	mflr r0
/* 800DD3EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 800DD3F0  39 61 00 30 */	addi r11, r1, 0x30
/* 800DD3F4  48 28 4D DD */	bl _savegpr_26
/* 800DD3F8  7C 7A 1B 78 */	mr r26, r3
/* 800DD3FC  7C 9B 23 78 */	mr r27, r4
/* 800DD400  7C BC 2B 78 */	mr r28, r5
/* 800DD404  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800DD408  28 00 00 1D */	cmplwi r0, 0x1d
/* 800DD40C  40 82 00 0C */	bne lbl_800DD418
/* 800DD410  38 60 00 00 */	li r3, 0
/* 800DD414  48 00 04 68 */	b lbl_800DD87C
lbl_800DD418:
/* 800DD418  88 9A 2F D5 */	lbz r4, 0x2fd5(r26)
/* 800DD41C  38 04 00 01 */	addi r0, r4, 1
/* 800DD420  98 1A 2F D5 */	stb r0, 0x2fd5(r26)
/* 800DD424  88 1A 2F D5 */	lbz r0, 0x2fd5(r26)
/* 800DD428  28 00 00 04 */	cmplwi r0, 4
/* 800DD42C  40 82 00 14 */	bne lbl_800DD440
/* 800DD430  38 00 00 00 */	li r0, 0
/* 800DD434  98 1A 2F D5 */	stb r0, 0x2fd5(r26)
/* 800DD438  48 00 0A 21 */	bl procGuardBreakInit__9daAlink_cFv
/* 800DD43C  48 00 04 40 */	b lbl_800DD87C
lbl_800DD440:
/* 800DD440  38 80 00 1D */	li r4, 0x1d
/* 800DD444  4B FE 4B 29 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800DD448  38 00 00 03 */	li r0, 3
/* 800DD44C  98 1A 2F D4 */	stb r0, 0x2fd4(r26)
/* 800DD450  7F 43 D3 78 */	mr r3, r26
/* 800DD454  7F 84 E3 78 */	mr r4, r28
/* 800DD458  4B FF A0 9D */	bl getDamageVec__9daAlink_cFP12dCcD_GObjInf
/* 800DD45C  7C 7F 1B 78 */	mr r31, r3
/* 800DD460  48 18 9C C9 */	bl atan2sX_Z__4cXyzCFv
/* 800DD464  B0 7A 04 DE */	sth r3, 0x4de(r26)
/* 800DD468  A0 1A 2F DC */	lhz r0, 0x2fdc(r26)
/* 800DD46C  28 00 00 42 */	cmplwi r0, 0x42
/* 800DD470  40 82 00 38 */	bne lbl_800DD4A8
/* 800DD474  7F 43 D3 78 */	mr r3, r26
/* 800DD478  38 80 01 67 */	li r4, 0x167
/* 800DD47C  4B FC FB 05 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800DD480  7F 43 D3 78 */	mr r3, r26
/* 800DD484  38 80 00 01 */	li r4, 1
/* 800DD488  48 03 50 E1 */	bl setIronBallWaitUpperAnime__9daAlink_cFi
/* 800DD48C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800DD490  D0 1A 1F 50 */	stfs f0, 0x1f50(r26)
/* 800DD494  38 00 00 00 */	li r0, 0
/* 800DD498  B0 1A 30 0A */	sth r0, 0x300a(r26)
/* 800DD49C  B0 1A 30 0C */	sth r0, 0x300c(r26)
/* 800DD4A0  B0 1A 30 0E */	sth r0, 0x300e(r26)
/* 800DD4A4  48 00 02 68 */	b lbl_800DD70C
lbl_800DD4A8:
/* 800DD4A8  3C 60 80 39 */	lis r3, m__19daAlinkHIO_guard_c0@ha
/* 800DD4AC  38 A3 DF 9C */	addi r5, r3, m__19daAlinkHIO_guard_c0@l
/* 800DD4B0  7F 43 D3 78 */	mr r3, r26
/* 800DD4B4  88 1A 2F 98 */	lbz r0, 0x2f98(r26)
/* 800DD4B8  28 00 00 02 */	cmplwi r0, 2
/* 800DD4BC  38 80 00 2C */	li r4, 0x2c
/* 800DD4C0  40 82 00 08 */	bne lbl_800DD4C8
/* 800DD4C4  38 80 00 2B */	li r4, 0x2b
lbl_800DD4C8:
/* 800DD4C8  4B FC FC 2D */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800DD4CC  7F 43 D3 78 */	mr r3, r26
/* 800DD4D0  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800DD4D4  4B FF FB 35 */	bl setUpperGuardAnime__9daAlink_cFf
/* 800DD4D8  A8 9A 04 E6 */	lha r4, 0x4e6(r26)
/* 800DD4DC  A8 7A 04 DE */	lha r3, 0x4de(r26)
/* 800DD4E0  3C 63 00 01 */	addis r3, r3, 1
/* 800DD4E4  38 03 80 00 */	addi r0, r3, -32768
/* 800DD4E8  7C 04 00 50 */	subf r0, r4, r0
/* 800DD4EC  B0 1A 30 0C */	sth r0, 0x300c(r26)
/* 800DD4F0  A8 7A 30 0C */	lha r3, 0x300c(r26)
/* 800DD4F4  48 28 7B DD */	bl abs
/* 800DD4F8  2C 03 70 00 */	cmpwi r3, 0x7000
/* 800DD4FC  40 81 00 10 */	ble lbl_800DD50C
/* 800DD500  38 00 00 00 */	li r0, 0
/* 800DD504  B0 1A 30 0C */	sth r0, 0x300c(r26)
/* 800DD508  48 00 00 44 */	b lbl_800DD54C
lbl_800DD50C:
/* 800DD50C  3C 60 80 39 */	lis r3, m__19daAlinkHIO_guard_c0@ha
/* 800DD510  38 63 DF 9C */	addi r3, r3, m__19daAlinkHIO_guard_c0@l
/* 800DD514  A8 A3 00 50 */	lha r5, 0x50(r3)
/* 800DD518  7C 05 00 D0 */	neg r0, r5
/* 800DD51C  7C 00 07 34 */	extsh r0, r0
/* 800DD520  A8 9A 30 0C */	lha r4, 0x300c(r26)
/* 800DD524  7C 04 00 00 */	cmpw r4, r0
/* 800DD528  40 80 00 08 */	bge lbl_800DD530
/* 800DD52C  48 00 00 1C */	b lbl_800DD548
lbl_800DD530:
/* 800DD530  7C 83 07 34 */	extsh r3, r4
/* 800DD534  7C A0 07 34 */	extsh r0, r5
/* 800DD538  7C 03 00 00 */	cmpw r3, r0
/* 800DD53C  40 81 00 08 */	ble lbl_800DD544
/* 800DD540  7C A4 2B 78 */	mr r4, r5
lbl_800DD544:
/* 800DD544  7C 80 23 78 */	mr r0, r4
lbl_800DD548:
/* 800DD548  B0 1A 30 0C */	sth r0, 0x300c(r26)
lbl_800DD54C:
/* 800DD54C  3C 60 80 39 */	lis r3, m__19daAlinkHIO_guard_c0@ha
/* 800DD550  38 63 DF 9C */	addi r3, r3, m__19daAlinkHIO_guard_c0@l
/* 800DD554  AB A3 00 52 */	lha r29, 0x52(r3)
/* 800DD558  7C 1D 00 D0 */	neg r0, r29
/* 800DD55C  7C 1E 07 34 */	extsh r30, r0
/* 800DD560  C0 3F 00 08 */	lfs f1, 8(r31)
/* 800DD564  C0 1F 00 00 */	lfs f0, 0(r31)
/* 800DD568  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800DD56C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800DD570  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800DD574  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 800DD578  38 61 00 0C */	addi r3, r1, 0xc
/* 800DD57C  48 26 9B BD */	bl PSVECSquareMag
/* 800DD580  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800DD584  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DD588  40 81 00 58 */	ble lbl_800DD5E0
/* 800DD58C  FC 00 08 34 */	frsqrte f0, f1
/* 800DD590  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800DD594  FC 44 00 32 */	fmul f2, f4, f0
/* 800DD598  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800DD59C  FC 00 00 32 */	fmul f0, f0, f0
/* 800DD5A0  FC 01 00 32 */	fmul f0, f1, f0
/* 800DD5A4  FC 03 00 28 */	fsub f0, f3, f0
/* 800DD5A8  FC 02 00 32 */	fmul f0, f2, f0
/* 800DD5AC  FC 44 00 32 */	fmul f2, f4, f0
/* 800DD5B0  FC 00 00 32 */	fmul f0, f0, f0
/* 800DD5B4  FC 01 00 32 */	fmul f0, f1, f0
/* 800DD5B8  FC 03 00 28 */	fsub f0, f3, f0
/* 800DD5BC  FC 02 00 32 */	fmul f0, f2, f0
/* 800DD5C0  FC 44 00 32 */	fmul f2, f4, f0
/* 800DD5C4  FC 00 00 32 */	fmul f0, f0, f0
/* 800DD5C8  FC 01 00 32 */	fmul f0, f1, f0
/* 800DD5CC  FC 03 00 28 */	fsub f0, f3, f0
/* 800DD5D0  FC 02 00 32 */	fmul f0, f2, f0
/* 800DD5D4  FC 41 00 32 */	fmul f2, f1, f0
/* 800DD5D8  FC 40 10 18 */	frsp f2, f2
/* 800DD5DC  48 00 00 90 */	b lbl_800DD66C
lbl_800DD5E0:
/* 800DD5E0  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800DD5E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DD5E8  40 80 00 10 */	bge lbl_800DD5F8
/* 800DD5EC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800DD5F0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 800DD5F4  48 00 00 78 */	b lbl_800DD66C
lbl_800DD5F8:
/* 800DD5F8  D0 21 00 08 */	stfs f1, 8(r1)
/* 800DD5FC  80 81 00 08 */	lwz r4, 8(r1)
/* 800DD600  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800DD604  3C 00 7F 80 */	lis r0, 0x7f80
/* 800DD608  7C 03 00 00 */	cmpw r3, r0
/* 800DD60C  41 82 00 14 */	beq lbl_800DD620
/* 800DD610  40 80 00 40 */	bge lbl_800DD650
/* 800DD614  2C 03 00 00 */	cmpwi r3, 0
/* 800DD618  41 82 00 20 */	beq lbl_800DD638
/* 800DD61C  48 00 00 34 */	b lbl_800DD650
lbl_800DD620:
/* 800DD620  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800DD624  41 82 00 0C */	beq lbl_800DD630
/* 800DD628  38 00 00 01 */	li r0, 1
/* 800DD62C  48 00 00 28 */	b lbl_800DD654
lbl_800DD630:
/* 800DD630  38 00 00 02 */	li r0, 2
/* 800DD634  48 00 00 20 */	b lbl_800DD654
lbl_800DD638:
/* 800DD638  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800DD63C  41 82 00 0C */	beq lbl_800DD648
/* 800DD640  38 00 00 05 */	li r0, 5
/* 800DD644  48 00 00 10 */	b lbl_800DD654
lbl_800DD648:
/* 800DD648  38 00 00 03 */	li r0, 3
/* 800DD64C  48 00 00 08 */	b lbl_800DD654
lbl_800DD650:
/* 800DD650  38 00 00 04 */	li r0, 4
lbl_800DD654:
/* 800DD654  2C 00 00 01 */	cmpwi r0, 1
/* 800DD658  40 82 00 10 */	bne lbl_800DD668
/* 800DD65C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800DD660  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 800DD664  48 00 00 08 */	b lbl_800DD66C
lbl_800DD668:
/* 800DD668  FC 40 08 90 */	fmr f2, f1
lbl_800DD66C:
/* 800DD66C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 800DD670  48 18 A0 05 */	bl cM_atan2s__Fff
/* 800DD674  7C 64 07 34 */	extsh r4, r3
/* 800DD678  7C 04 F0 00 */	cmpw r4, r30
/* 800DD67C  40 80 00 08 */	bge lbl_800DD684
/* 800DD680  48 00 00 18 */	b lbl_800DD698
lbl_800DD684:
/* 800DD684  7F A0 07 34 */	extsh r0, r29
/* 800DD688  7C 04 00 00 */	cmpw r4, r0
/* 800DD68C  40 81 00 08 */	ble lbl_800DD694
/* 800DD690  7F A3 EB 78 */	mr r3, r29
lbl_800DD694:
/* 800DD694  7C 7E 1B 78 */	mr r30, r3
lbl_800DD698:
/* 800DD698  B3 DA 30 0E */	sth r30, 0x300e(r26)
/* 800DD69C  3C 60 80 39 */	lis r3, m__19daAlinkHIO_guard_c0@ha
/* 800DD6A0  38 63 DF 9C */	addi r3, r3, m__19daAlinkHIO_guard_c0@l
/* 800DD6A4  A8 63 00 54 */	lha r3, 0x54(r3)
/* 800DD6A8  38 03 00 01 */	addi r0, r3, 1
/* 800DD6AC  B0 1A 30 0A */	sth r0, 0x300a(r26)
/* 800DD6B0  A8 7A 05 9E */	lha r3, 0x59e(r26)
/* 800DD6B4  A8 1A 30 0C */	lha r0, 0x300c(r26)
/* 800DD6B8  7C 63 00 50 */	subf r3, r3, r0
/* 800DD6BC  A8 1A 30 0A */	lha r0, 0x300a(r26)
/* 800DD6C0  7C 03 03 D6 */	divw r0, r3, r0
/* 800DD6C4  B0 1A 30 0C */	sth r0, 0x300c(r26)
/* 800DD6C8  A8 7A 05 9C */	lha r3, 0x59c(r26)
/* 800DD6CC  A8 1A 30 0E */	lha r0, 0x300e(r26)
/* 800DD6D0  7C 63 00 50 */	subf r3, r3, r0
/* 800DD6D4  A8 1A 30 0A */	lha r0, 0x300a(r26)
/* 800DD6D8  7C 03 03 D6 */	divw r0, r3, r0
/* 800DD6DC  B0 1A 30 0E */	sth r0, 0x300e(r26)
/* 800DD6E0  A8 7A 30 0A */	lha r3, 0x300a(r26)
/* 800DD6E4  38 03 FF FF */	addi r0, r3, -1
/* 800DD6E8  B0 1A 30 0A */	sth r0, 0x300a(r26)
/* 800DD6EC  A8 7A 05 9E */	lha r3, 0x59e(r26)
/* 800DD6F0  A8 1A 30 0C */	lha r0, 0x300c(r26)
/* 800DD6F4  7C 03 02 14 */	add r0, r3, r0
/* 800DD6F8  B0 1A 05 9E */	sth r0, 0x59e(r26)
/* 800DD6FC  A8 7A 05 9C */	lha r3, 0x59c(r26)
/* 800DD700  A8 1A 30 0E */	lha r0, 0x300e(r26)
/* 800DD704  7C 03 02 14 */	add r0, r3, r0
/* 800DD708  B0 1A 05 9C */	sth r0, 0x59c(r26)
lbl_800DD70C:
/* 800DD70C  38 00 00 00 */	li r0, 0
/* 800DD710  B0 1A 30 10 */	sth r0, 0x3010(r26)
/* 800DD714  B0 1A 30 12 */	sth r0, 0x3012(r26)
/* 800DD718  28 1C 00 00 */	cmplwi r28, 0
/* 800DD71C  41 82 00 98 */	beq lbl_800DD7B4
/* 800DD720  38 7C 00 9C */	addi r3, r28, 0x9c
/* 800DD724  4B FA 5F 65 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 800DD728  28 03 00 00 */	cmplwi r3, 0
/* 800DD72C  41 82 00 88 */	beq lbl_800DD7B4
/* 800DD730  38 7C 00 9C */	addi r3, r28, 0x9c
/* 800DD734  4B FA 5F 55 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 800DD738  A8 03 00 08 */	lha r0, 8(r3)
/* 800DD73C  2C 00 02 EE */	cmpwi r0, 0x2ee
/* 800DD740  40 82 00 74 */	bne lbl_800DD7B4
/* 800DD744  38 7C 00 9C */	addi r3, r28, 0x9c
/* 800DD748  4B FA 5F 41 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 800DD74C  88 03 04 99 */	lbz r0, 0x499(r3)
/* 800DD750  2C 00 00 01 */	cmpwi r0, 1
/* 800DD754  40 82 00 60 */	bne lbl_800DD7B4
/* 800DD758  7F 43 D3 78 */	mr r3, r26
/* 800DD75C  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 800DD760  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 800DD764  7D 89 03 A6 */	mtctr r12
/* 800DD768  4E 80 04 21 */	bctrl 
/* 800DD76C  2C 03 00 00 */	cmpwi r3, 0
/* 800DD770  41 82 00 20 */	beq lbl_800DD790
/* 800DD774  3C 60 80 39 */	lis r3, m__19daAlinkHIO_guard_c0@ha
/* 800DD778  38 63 DF 9C */	addi r3, r3, m__19daAlinkHIO_guard_c0@l
/* 800DD77C  C0 03 00 7C */	lfs f0, 0x7c(r3)
/* 800DD780  D0 1A 33 98 */	stfs f0, 0x3398(r26)
/* 800DD784  38 00 00 01 */	li r0, 1
/* 800DD788  B0 1A 30 12 */	sth r0, 0x3012(r26)
/* 800DD78C  48 00 00 1C */	b lbl_800DD7A8
lbl_800DD790:
/* 800DD790  3C 60 80 39 */	lis r3, m__19daAlinkHIO_guard_c0@ha
/* 800DD794  38 63 DF 9C */	addi r3, r3, m__19daAlinkHIO_guard_c0@l
/* 800DD798  C0 03 00 78 */	lfs f0, 0x78(r3)
/* 800DD79C  D0 1A 33 98 */	stfs f0, 0x3398(r26)
/* 800DD7A0  38 00 00 00 */	li r0, 0
/* 800DD7A4  B0 1A 30 12 */	sth r0, 0x3012(r26)
lbl_800DD7A8:
/* 800DD7A8  38 00 00 01 */	li r0, 1
/* 800DD7AC  B0 1A 30 10 */	sth r0, 0x3010(r26)
/* 800DD7B0  48 00 00 B4 */	b lbl_800DD864
lbl_800DD7B4:
/* 800DD7B4  7F 43 D3 78 */	mr r3, r26
/* 800DD7B8  7F 64 DB 78 */	mr r4, r27
/* 800DD7BC  4B FF A4 2D */	bl checkHugeAttack__9daAlink_cCFi
/* 800DD7C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DD7C4  41 82 00 68 */	beq lbl_800DD82C
/* 800DD7C8  7F 43 D3 78 */	mr r3, r26
/* 800DD7CC  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 800DD7D0  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 800DD7D4  7D 89 03 A6 */	mtctr r12
/* 800DD7D8  4E 80 04 21 */	bctrl 
/* 800DD7DC  2C 03 00 00 */	cmpwi r3, 0
/* 800DD7E0  40 82 00 14 */	bne lbl_800DD7F4
/* 800DD7E4  7F 43 D3 78 */	mr r3, r26
/* 800DD7E8  4B FF 95 DD */	bl checkMiddleBossGoronRoom__9daAlink_cFv
/* 800DD7EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DD7F0  40 82 00 1C */	bne lbl_800DD80C
lbl_800DD7F4:
/* 800DD7F4  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 800DD7F8  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 800DD7FC  38 63 00 48 */	addi r3, r3, 0x48
/* 800DD800  4B FC 02 61 */	bl checkStageName__9daAlink_cFPCc
/* 800DD804  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DD808  41 82 00 10 */	beq lbl_800DD818
lbl_800DD80C:
/* 800DD80C  C0 02 93 D4 */	lfs f0, lit_11442(r2)
/* 800DD810  D0 1A 33 98 */	stfs f0, 0x3398(r26)
/* 800DD814  48 00 00 50 */	b lbl_800DD864
lbl_800DD818:
/* 800DD818  3C 60 80 39 */	lis r3, m__19daAlinkHIO_guard_c0@ha
/* 800DD81C  38 63 DF 9C */	addi r3, r3, m__19daAlinkHIO_guard_c0@l
/* 800DD820  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 800DD824  D0 1A 33 98 */	stfs f0, 0x3398(r26)
/* 800DD828  48 00 00 3C */	b lbl_800DD864
lbl_800DD82C:
/* 800DD82C  7F 43 D3 78 */	mr r3, r26
/* 800DD830  7F 64 DB 78 */	mr r4, r27
/* 800DD834  4B FF A3 E1 */	bl checkLargeAttack__9daAlink_cCFi
/* 800DD838  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DD83C  41 82 00 18 */	beq lbl_800DD854
/* 800DD840  3C 60 80 39 */	lis r3, m__19daAlinkHIO_guard_c0@ha
/* 800DD844  38 63 DF 9C */	addi r3, r3, m__19daAlinkHIO_guard_c0@l
/* 800DD848  C0 03 00 68 */	lfs f0, 0x68(r3)
/* 800DD84C  D0 1A 33 98 */	stfs f0, 0x3398(r26)
/* 800DD850  48 00 00 14 */	b lbl_800DD864
lbl_800DD854:
/* 800DD854  3C 60 80 39 */	lis r3, m__19daAlinkHIO_guard_c0@ha
/* 800DD858  38 63 DF 9C */	addi r3, r3, m__19daAlinkHIO_guard_c0@l
/* 800DD85C  C0 03 00 64 */	lfs f0, 0x64(r3)
/* 800DD860  D0 1A 33 98 */	stfs f0, 0x3398(r26)
lbl_800DD864:
/* 800DD864  38 00 00 60 */	li r0, 0x60
/* 800DD868  98 1A 2F 9D */	stb r0, 0x2f9d(r26)
/* 800DD86C  7F 43 D3 78 */	mr r3, r26
/* 800DD870  38 80 00 01 */	li r4, 1
/* 800DD874  48 04 39 4D */	bl setFootEffectProcType__9daAlink_cFi
/* 800DD878  38 60 00 01 */	li r3, 1
lbl_800DD87C:
/* 800DD87C  39 61 00 30 */	addi r11, r1, 0x30
/* 800DD880  48 28 49 9D */	bl _restgpr_26
/* 800DD884  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800DD888  7C 08 03 A6 */	mtlr r0
/* 800DD88C  38 21 00 30 */	addi r1, r1, 0x30
/* 800DD890  4E 80 00 20 */	blr 
