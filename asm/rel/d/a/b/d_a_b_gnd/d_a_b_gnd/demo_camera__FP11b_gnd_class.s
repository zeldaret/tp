lbl_805FB7A4:
/* 805FB7A4  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 805FB7A8  7C 08 02 A6 */	mflr r0
/* 805FB7AC  90 01 01 34 */	stw r0, 0x134(r1)
/* 805FB7B0  39 61 01 30 */	addi r11, r1, 0x130
/* 805FB7B4  4B D6 6A 0C */	b _savegpr_22
/* 805FB7B8  7C 7B 1B 78 */	mr r27, r3
/* 805FB7BC  3C 60 80 60 */	lis r3, lit_3815@ha
/* 805FB7C0  3B C3 26 64 */	addi r30, r3, lit_3815@l
/* 805FB7C4  38 60 00 00 */	li r3, 0
/* 805FB7C8  48 00 6E 71 */	bl dComIfGp_getPlayer__Fi
/* 805FB7CC  7C 7D 1B 78 */	mr r29, r3
/* 805FB7D0  38 60 00 00 */	li r3, 0
/* 805FB7D4  48 00 6E 49 */	bl dComIfGp_getPlayerCameraID__Fi
/* 805FB7D8  48 00 6E 2D */	bl dComIfGp_getCamera__Fi
/* 805FB7DC  7C 7F 1B 78 */	mr r31, r3
/* 805FB7E0  38 60 00 00 */	li r3, 0
/* 805FB7E4  48 00 6E 21 */	bl dComIfGp_getCamera__Fi
/* 805FB7E8  80 1B 1F B4 */	lwz r0, 0x1fb4(r27)
/* 805FB7EC  90 01 00 08 */	stw r0, 8(r1)
/* 805FB7F0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 805FB7F4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 805FB7F8  38 81 00 08 */	addi r4, r1, 8
/* 805FB7FC  4B A1 DF FC */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 805FB800  7C 79 1B 78 */	mr r25, r3
/* 805FB804  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805FB808  3B 43 CA 54 */	addi r26, r3, g_env_light@l
/* 805FB80C  A8 9B 26 C4 */	lha r4, 0x26c4(r27)
/* 805FB810  7C 80 07 35 */	extsh. r0, r4
/* 805FB814  41 82 00 10 */	beq lbl_805FB824
/* 805FB818  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805FB81C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805FB820  83 03 5D B8 */	lwz r24, 0x5db8(r3)
lbl_805FB824:
/* 805FB824  3B 80 00 00 */	li r28, 0
/* 805FB828  28 04 00 60 */	cmplwi r4, 0x60
/* 805FB82C  41 81 21 54 */	bgt lbl_805FD980
/* 805FB830  3C 60 80 60 */	lis r3, lit_7290@ha
/* 805FB834  38 63 2B 50 */	addi r3, r3, lit_7290@l
/* 805FB838  54 80 10 3A */	slwi r0, r4, 2
/* 805FB83C  7C 03 00 2E */	lwzx r0, r3, r0
/* 805FB840  7C 09 03 A6 */	mtctr r0
/* 805FB844  4E 80 04 20 */	bctr 
lbl_805FB848:
/* 805FB848  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 805FB84C  28 00 00 02 */	cmplwi r0, 2
/* 805FB850  41 82 00 2C */	beq lbl_805FB87C
/* 805FB854  7F 63 DB 78 */	mr r3, r27
/* 805FB858  38 80 00 02 */	li r4, 2
/* 805FB85C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 805FB860  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 805FB864  38 C0 00 00 */	li r6, 0
/* 805FB868  4B A2 00 A0 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805FB86C  A0 1B 00 FA */	lhz r0, 0xfa(r27)
/* 805FB870  60 00 00 02 */	ori r0, r0, 2
/* 805FB874  B0 1B 00 FA */	sth r0, 0xfa(r27)
/* 805FB878  48 00 22 50 */	b lbl_805FDAC8
lbl_805FB87C:
/* 805FB87C  38 7F 02 48 */	addi r3, r31, 0x248
/* 805FB880  4B B6 5C 50 */	b Stop__9dCamera_cFv
/* 805FB884  38 00 00 1F */	li r0, 0x1f
/* 805FB888  B0 1B 26 C4 */	sth r0, 0x26c4(r27)
/* 805FB88C  38 00 00 00 */	li r0, 0
/* 805FB890  B0 1B 26 C6 */	sth r0, 0x26c6(r27)
/* 805FB894  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 805FB898  D0 1B 27 10 */	stfs f0, 0x2710(r27)
/* 805FB89C  7F 03 C3 78 */	mr r3, r24
/* 805FB8A0  48 00 6D 51 */	bl changeOriginalDemo__9daHorse_cFv
/* 805FB8A4  7F A3 EB 78 */	mr r3, r29
/* 805FB8A8  48 00 6C FD */	bl changeOriginalDemo__9daPy_py_cFv
/* 805FB8AC  38 7F 02 48 */	addi r3, r31, 0x248
/* 805FB8B0  38 80 00 03 */	li r4, 3
/* 805FB8B4  4B B6 77 58 */	b SetTrimSize__9dCamera_cFl
/* 805FB8B8  38 61 00 E4 */	addi r3, r1, 0xe4
/* 805FB8BC  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805FB8C0  48 00 6D 15 */	bl __as__4cXyzFRC4cXyz
/* 805FB8C4  C0 21 00 E4 */	lfs f1, 0xe4(r1)
/* 805FB8C8  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 805FB8CC  EC 01 00 28 */	fsubs f0, f1, f0
/* 805FB8D0  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 805FB8D4  7F 03 C3 78 */	mr r3, r24
/* 805FB8D8  38 81 00 E4 */	addi r4, r1, 0xe4
/* 805FB8DC  38 A0 00 01 */	li r5, 1
/* 805FB8E0  39 98 18 E0 */	addi r12, r24, 0x18e0
/* 805FB8E4  4B D6 67 A0 */	b __ptmf_scall
/* 805FB8E8  60 00 00 00 */	nop 
/* 805FB8EC  38 7B 26 EC */	addi r3, r27, 0x26ec
/* 805FB8F0  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FB8F4  FC 40 08 90 */	fmr f2, f1
/* 805FB8F8  FC 60 08 90 */	fmr f3, f1
/* 805FB8FC  48 00 6C C9 */	bl set__4cXyzFfff
/* 805FB900  38 7B 27 04 */	addi r3, r27, 0x2704
/* 805FB904  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FB908  FC 40 08 90 */	fmr f2, f1
/* 805FB90C  FC 60 08 90 */	fmr f3, f1
/* 805FB910  48 00 6C B5 */	bl set__4cXyzFfff
/* 805FB914  38 00 00 00 */	li r0, 0
/* 805FB918  B0 1B 0C 56 */	sth r0, 0xc56(r27)
/* 805FB91C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805FB920  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805FB924  80 63 00 00 */	lwz r3, 0(r3)
/* 805FB928  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 805FB92C  3C 80 80 60 */	lis r4, stringBase0@ha
/* 805FB930  38 84 29 AC */	addi r4, r4, stringBase0@l
/* 805FB934  38 84 00 0B */	addi r4, r4, 0xb
/* 805FB938  4B CB A8 B0 */	b setDemoName__11Z2StatusMgrFPc
/* 805FB93C  48 00 20 44 */	b lbl_805FD980
lbl_805FB940:
/* 805FB940  2C 04 00 21 */	cmpwi r4, 0x21
/* 805FB944  40 80 00 CC */	bge lbl_805FBA10
/* 805FB948  A8 1B 0C 56 */	lha r0, 0xc56(r27)
/* 805FB94C  2C 00 00 00 */	cmpwi r0, 0
/* 805FB950  40 82 00 48 */	bne lbl_805FB998
/* 805FB954  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 805FB958  4B C6 BF FC */	b cM_rndF__Ff
/* 805FB95C  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 805FB960  EC 00 08 2A */	fadds f0, f0, f1
/* 805FB964  FC 00 00 1E */	fctiwz f0, f0
/* 805FB968  D8 01 01 00 */	stfd f0, 0x100(r1)
/* 805FB96C  80 01 01 04 */	lwz r0, 0x104(r1)
/* 805FB970  B0 1B 0C 56 */	sth r0, 0xc56(r27)
/* 805FB974  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 805FB978  4B C6 C0 14 */	b cM_rndFX__Ff
/* 805FB97C  D0 3B 27 04 */	stfs f1, 0x2704(r27)
/* 805FB980  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 805FB984  4B C6 C0 08 */	b cM_rndFX__Ff
/* 805FB988  D0 3B 27 08 */	stfs f1, 0x2708(r27)
/* 805FB98C  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 805FB990  4B C6 BF FC */	b cM_rndFX__Ff
/* 805FB994  D0 3B 27 0C */	stfs f1, 0x270c(r27)
lbl_805FB998:
/* 805FB998  38 7B 26 EC */	addi r3, r27, 0x26ec
/* 805FB99C  C0 3B 27 04 */	lfs f1, 0x2704(r27)
/* 805FB9A0  C0 5E 01 0C */	lfs f2, 0x10c(r30)
/* 805FB9A4  C0 7E 00 98 */	lfs f3, 0x98(r30)
/* 805FB9A8  4B C7 40 94 */	b cLib_addCalc2__FPffff
/* 805FB9AC  38 7B 26 F0 */	addi r3, r27, 0x26f0
/* 805FB9B0  C0 3B 27 08 */	lfs f1, 0x2708(r27)
/* 805FB9B4  C0 5E 01 0C */	lfs f2, 0x10c(r30)
/* 805FB9B8  C0 7E 00 98 */	lfs f3, 0x98(r30)
/* 805FB9BC  4B C7 40 80 */	b cLib_addCalc2__FPffff
/* 805FB9C0  38 7B 26 F4 */	addi r3, r27, 0x26f4
/* 805FB9C4  C0 3B 27 0C */	lfs f1, 0x270c(r27)
/* 805FB9C8  C0 5E 01 0C */	lfs f2, 0x10c(r30)
/* 805FB9CC  C0 7E 00 98 */	lfs f3, 0x98(r30)
/* 805FB9D0  4B C7 40 6C */	b cLib_addCalc2__FPffff
/* 805FB9D4  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 805FB9D8  C0 1B 26 EC */	lfs f0, 0x26ec(r27)
/* 805FB9DC  EC 01 00 2A */	fadds f0, f1, f0
/* 805FB9E0  D0 1B 26 D4 */	stfs f0, 0x26d4(r27)
/* 805FB9E4  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 805FB9E8  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 805FB9EC  EC 21 00 2A */	fadds f1, f1, f0
/* 805FB9F0  C0 1B 26 F0 */	lfs f0, 0x26f0(r27)
/* 805FB9F4  EC 01 00 2A */	fadds f0, f1, f0
/* 805FB9F8  D0 1B 26 D8 */	stfs f0, 0x26d8(r27)
/* 805FB9FC  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 805FBA00  C0 1B 26 F4 */	lfs f0, 0x26f4(r27)
/* 805FBA04  EC 01 00 2A */	fadds f0, f1, f0
/* 805FBA08  D0 1B 26 DC */	stfs f0, 0x26dc(r27)
/* 805FBA0C  48 00 00 10 */	b lbl_805FBA1C
lbl_805FBA10:
/* 805FBA10  38 7B 26 D4 */	addi r3, r27, 0x26d4
/* 805FBA14  38 9B 05 38 */	addi r4, r27, 0x538
/* 805FBA18  48 00 6B BD */	bl __as__4cXyzFRC4cXyz
lbl_805FBA1C:
/* 805FBA1C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805FBA20  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805FBA24  80 63 00 00 */	lwz r3, 0(r3)
/* 805FBA28  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 805FBA2C  4B A1 09 B0 */	b mDoMtx_YrotS__FPA4_fs
/* 805FBA30  A8 1B 26 C4 */	lha r0, 0x26c4(r27)
/* 805FBA34  2C 00 00 1F */	cmpwi r0, 0x1f
/* 805FBA38  40 82 00 1C */	bne lbl_805FBA54
/* 805FBA3C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 805FBA40  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 805FBA44  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 805FBA48  C0 1E 01 54 */	lfs f0, 0x154(r30)
/* 805FBA4C  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 805FBA50  48 00 00 5C */	b lbl_805FBAAC
lbl_805FBA54:
/* 805FBA54  2C 00 00 20 */	cmpwi r0, 0x20
/* 805FBA58  40 82 00 20 */	bne lbl_805FBA78
/* 805FBA5C  C0 1E 01 58 */	lfs f0, 0x158(r30)
/* 805FBA60  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 805FBA64  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 805FBA68  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 805FBA6C  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 805FBA70  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 805FBA74  48 00 00 38 */	b lbl_805FBAAC
lbl_805FBA78:
/* 805FBA78  2C 00 00 21 */	cmpwi r0, 0x21
/* 805FBA7C  40 82 00 30 */	bne lbl_805FBAAC
/* 805FBA80  C0 1B 27 18 */	lfs f0, 0x2718(r27)
/* 805FBA84  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 805FBA88  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 805FBA8C  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 805FBA90  C0 1E 01 5C */	lfs f0, 0x15c(r30)
/* 805FBA94  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 805FBA98  38 7B 27 18 */	addi r3, r27, 0x2718
/* 805FBA9C  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 805FBAA0  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 805FBAA4  C0 7E 00 9C */	lfs f3, 0x9c(r30)
/* 805FBAA8  4B C7 3F 94 */	b cLib_addCalc2__FPffff
lbl_805FBAAC:
/* 805FBAAC  38 61 00 F0 */	addi r3, r1, 0xf0
/* 805FBAB0  38 9B 26 C8 */	addi r4, r27, 0x26c8
/* 805FBAB4  4B C7 54 38 */	b MtxPosition__FP4cXyzP4cXyz
/* 805FBAB8  38 7B 26 C8 */	addi r3, r27, 0x26c8
/* 805FBABC  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805FBAC0  7C 65 1B 78 */	mr r5, r3
/* 805FBAC4  4B D4 B5 CC */	b PSVECAdd
/* 805FBAC8  A8 1B 26 C4 */	lha r0, 0x26c4(r27)
/* 805FBACC  2C 00 00 21 */	cmpwi r0, 0x21
/* 805FBAD0  40 82 1E B0 */	bne lbl_805FD980
/* 805FBAD4  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FBAD8  2C 00 00 8C */	cmpwi r0, 0x8c
/* 805FBADC  40 82 00 58 */	bne lbl_805FBB34
/* 805FBAE0  38 61 00 E4 */	addi r3, r1, 0xe4
/* 805FBAE4  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FBAE8  C0 5E 01 60 */	lfs f2, 0x160(r30)
/* 805FBAEC  C0 7E 01 64 */	lfs f3, 0x164(r30)
/* 805FBAF0  48 00 6A D5 */	bl set__4cXyzFfff
/* 805FBAF4  7F 03 C3 78 */	mr r3, r24
/* 805FBAF8  38 81 00 E4 */	addi r4, r1, 0xe4
/* 805FBAFC  38 A0 00 00 */	li r5, 0
/* 805FBB00  39 98 18 E0 */	addi r12, r24, 0x18e0
/* 805FBB04  4B D6 65 80 */	b __ptmf_scall
/* 805FBB08  60 00 00 00 */	nop 
/* 805FBB0C  7F 03 C3 78 */	mr r3, r24
/* 805FBB10  38 80 00 01 */	li r4, 1
/* 805FBB14  38 A0 00 00 */	li r5, 0
/* 805FBB18  48 00 6A A1 */	bl changeDemoMode__9daHorse_cFUli
/* 805FBB1C  7F A3 EB 78 */	mr r3, r29
/* 805FBB20  38 80 00 5D */	li r4, 0x5d
/* 805FBB24  38 A0 00 00 */	li r5, 0
/* 805FBB28  38 C0 00 00 */	li r6, 0
/* 805FBB2C  38 E0 00 00 */	li r7, 0
/* 805FBB30  48 00 6A 61 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_805FBB34:
/* 805FBB34  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FBB38  2C 00 00 A0 */	cmpwi r0, 0xa0
/* 805FBB3C  40 82 1E 44 */	bne lbl_805FD980
/* 805FBB40  38 00 00 23 */	li r0, 0x23
/* 805FBB44  B0 1B 26 C4 */	sth r0, 0x26c4(r27)
/* 805FBB48  38 00 00 00 */	li r0, 0
/* 805FBB4C  B0 1B 26 C6 */	sth r0, 0x26c6(r27)
/* 805FBB50  38 00 00 03 */	li r0, 3
/* 805FBB54  B0 1B 05 BC */	sth r0, 0x5bc(r27)
/* 805FBB58  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805FBB5C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805FBB60  80 63 00 00 */	lwz r3, 0(r3)
/* 805FBB64  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805FBB68  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000063@ha */
/* 805FBB6C  38 84 00 63 */	addi r4, r4, 0x0063 /* 0x02000063@l */
/* 805FBB70  4B CB 40 24 */	b bgmStreamPrepare__8Z2SeqMgrFUl
/* 805FBB74  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805FBB78  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805FBB7C  80 63 00 00 */	lwz r3, 0(r3)
/* 805FBB80  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805FBB84  4B CB 42 94 */	b bgmStreamPlay__8Z2SeqMgrFv
/* 805FBB88  48 00 1D F8 */	b lbl_805FD980
lbl_805FBB8C:
/* 805FBB8C  A8 7B 26 C6 */	lha r3, 0x26c6(r27)
/* 805FBB90  7C 60 07 35 */	extsh. r0, r3
/* 805FBB94  40 82 00 20 */	bne lbl_805FBBB4
/* 805FBB98  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 805FBB9C  D0 1B 27 18 */	stfs f0, 0x2718(r27)
/* 805FBBA0  7F 03 C3 78 */	mr r3, r24
/* 805FBBA4  38 80 00 08 */	li r4, 8
/* 805FBBA8  38 A0 00 00 */	li r5, 0
/* 805FBBAC  48 00 6A 0D */	bl changeDemoMode__9daHorse_cFUli
/* 805FBBB0  48 00 00 68 */	b lbl_805FBC18
lbl_805FBBB4:
/* 805FBBB4  2C 03 00 01 */	cmpwi r3, 1
/* 805FBBB8  40 82 00 24 */	bne lbl_805FBBDC
/* 805FBBBC  38 7B 26 D4 */	addi r3, r27, 0x26d4
/* 805FBBC0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805FBBC4  48 00 6A 11 */	bl __as__4cXyzFRC4cXyz
/* 805FBBC8  38 7B 26 C8 */	addi r3, r27, 0x26c8
/* 805FBBCC  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 805FBBD0  C0 5E 01 6C */	lfs f2, 0x16c(r30)
/* 805FBBD4  C0 7E 01 70 */	lfs f3, 0x170(r30)
/* 805FBBD8  48 00 69 ED */	bl set__4cXyzFfff
lbl_805FBBDC:
/* 805FBBDC  38 7B 26 D4 */	addi r3, r27, 0x26d4
/* 805FBBE0  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 805FBBE4  C0 5E 01 74 */	lfs f2, 0x174(r30)
/* 805FBBE8  C0 7E 00 F0 */	lfs f3, 0xf0(r30)
/* 805FBBEC  4B C7 3E 50 */	b cLib_addCalc2__FPffff
/* 805FBBF0  38 7B 26 D8 */	addi r3, r27, 0x26d8
/* 805FBBF4  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 805FBBF8  C0 5E 01 74 */	lfs f2, 0x174(r30)
/* 805FBBFC  C0 7E 00 F0 */	lfs f3, 0xf0(r30)
/* 805FBC00  4B C7 3E 3C */	b cLib_addCalc2__FPffff
/* 805FBC04  38 7B 26 DC */	addi r3, r27, 0x26dc
/* 805FBC08  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 805FBC0C  C0 5E 01 74 */	lfs f2, 0x174(r30)
/* 805FBC10  C0 7E 00 F0 */	lfs f3, 0xf0(r30)
/* 805FBC14  4B C7 3E 28 */	b cLib_addCalc2__FPffff
lbl_805FBC18:
/* 805FBC18  38 61 00 E4 */	addi r3, r1, 0xe4
/* 805FBC1C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FBC20  C0 5E 01 60 */	lfs f2, 0x160(r30)
/* 805FBC24  C0 7E 01 78 */	lfs f3, 0x178(r30)
/* 805FBC28  C0 1B 27 18 */	lfs f0, 0x2718(r27)
/* 805FBC2C  EC 63 00 2A */	fadds f3, f3, f0
/* 805FBC30  48 00 69 95 */	bl set__4cXyzFfff
/* 805FBC34  7F 03 C3 78 */	mr r3, r24
/* 805FBC38  38 81 00 E4 */	addi r4, r1, 0xe4
/* 805FBC3C  38 A0 00 00 */	li r5, 0
/* 805FBC40  39 98 18 E0 */	addi r12, r24, 0x18e0
/* 805FBC44  4B D6 64 40 */	b __ptmf_scall
/* 805FBC48  60 00 00 00 */	nop 
/* 805FBC4C  38 7B 27 18 */	addi r3, r27, 0x2718
/* 805FBC50  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 805FBC54  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 805FBC58  4B C7 3E 28 */	b cLib_addCalc0__FPfff
/* 805FBC5C  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FBC60  2C 00 00 37 */	cmpwi r0, 0x37
/* 805FBC64  40 82 1D 1C */	bne lbl_805FD980
/* 805FBC68  38 00 00 21 */	li r0, 0x21
/* 805FBC6C  B0 1B 26 C4 */	sth r0, 0x26c4(r27)
/* 805FBC70  38 00 00 00 */	li r0, 0
/* 805FBC74  B0 1B 26 C6 */	sth r0, 0x26c6(r27)
/* 805FBC78  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 805FBC7C  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 805FBC80  C0 1E 01 58 */	lfs f0, 0x158(r30)
/* 805FBC84  D0 1B 27 18 */	stfs f0, 0x2718(r27)
/* 805FBC88  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FBC8C  D0 3B 04 D0 */	stfs f1, 0x4d0(r27)
/* 805FBC90  38 61 00 E4 */	addi r3, r1, 0xe4
/* 805FBC94  C0 5E 01 60 */	lfs f2, 0x160(r30)
/* 805FBC98  C0 7E 01 7C */	lfs f3, 0x17c(r30)
/* 805FBC9C  48 00 69 29 */	bl set__4cXyzFfff
/* 805FBCA0  7F 03 C3 78 */	mr r3, r24
/* 805FBCA4  38 81 00 E4 */	addi r4, r1, 0xe4
/* 805FBCA8  38 A0 00 00 */	li r5, 0
/* 805FBCAC  39 98 18 E0 */	addi r12, r24, 0x18e0
/* 805FBCB0  4B D6 63 D4 */	b __ptmf_scall
/* 805FBCB4  60 00 00 00 */	nop 
/* 805FBCB8  48 00 1C C8 */	b lbl_805FD980
lbl_805FBCBC:
/* 805FBCBC  38 7B 26 D4 */	addi r3, r27, 0x26d4
/* 805FBCC0  C0 3E 01 80 */	lfs f1, 0x180(r30)
/* 805FBCC4  C0 5E 00 D0 */	lfs f2, 0xd0(r30)
/* 805FBCC8  C0 7E 01 84 */	lfs f3, 0x184(r30)
/* 805FBCCC  48 00 68 F9 */	bl set__4cXyzFfff
/* 805FBCD0  38 7B 26 C8 */	addi r3, r27, 0x26c8
/* 805FBCD4  C0 3E 01 88 */	lfs f1, 0x188(r30)
/* 805FBCD8  C0 5E 01 8C */	lfs f2, 0x18c(r30)
/* 805FBCDC  C0 7E 01 90 */	lfs f3, 0x190(r30)
/* 805FBCE0  48 00 68 E5 */	bl set__4cXyzFfff
/* 805FBCE4  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FBCE8  2C 00 00 01 */	cmpwi r0, 1
/* 805FBCEC  41 81 00 10 */	bgt lbl_805FBCFC
/* 805FBCF0  C0 1E 01 30 */	lfs f0, 0x130(r30)
/* 805FBCF4  D0 1B 27 10 */	stfs f0, 0x2710(r27)
/* 805FBCF8  48 00 00 18 */	b lbl_805FBD10
lbl_805FBCFC:
/* 805FBCFC  38 7B 27 10 */	addi r3, r27, 0x2710
/* 805FBD00  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 805FBD04  C0 5E 01 94 */	lfs f2, 0x194(r30)
/* 805FBD08  C0 7E 00 C4 */	lfs f3, 0xc4(r30)
/* 805FBD0C  4B C7 3D 30 */	b cLib_addCalc2__FPffff
lbl_805FBD10:
/* 805FBD10  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FBD14  2C 00 00 46 */	cmpwi r0, 0x46
/* 805FBD18  40 82 00 70 */	bne lbl_805FBD88
/* 805FBD1C  38 00 00 00 */	li r0, 0
/* 805FBD20  90 1B 1F C4 */	stw r0, 0x1fc4(r27)
/* 805FBD24  7F 63 DB 78 */	mr r3, r27
/* 805FBD28  38 80 00 5C */	li r4, 0x5c
/* 805FBD2C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FBD30  38 A0 00 02 */	li r5, 2
/* 805FBD34  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805FBD38  4B FF 8D 5D */	bl anm_init__FP11b_gnd_classifUcf
/* 805FBD3C  A8 1B 0C 3C */	lha r0, 0xc3c(r27)
/* 805FBD40  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 805FBD44  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 805FBD48  3B 40 00 00 */	li r26, 0
/* 805FBD4C  9B 5B 07 71 */	stb r26, 0x771(r27)
/* 805FBD50  38 00 00 01 */	li r0, 1
/* 805FBD54  98 1B 07 70 */	stb r0, 0x770(r27)
/* 805FBD58  3A E0 00 00 */	li r23, 0
/* 805FBD5C  3C 60 80 60 */	lis r3, e_name_6757@ha
/* 805FBD60  3B 23 2B 48 */	addi r25, r3, e_name_6757@l
lbl_805FBD64:
/* 805FBD64  7C 79 D2 2E */	lhzx r3, r25, r26
/* 805FBD68  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805FBD6C  38 BB 04 E4 */	addi r5, r27, 0x4e4
/* 805FBD70  38 C0 00 00 */	li r6, 0
/* 805FBD74  48 00 67 A9 */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
/* 805FBD78  3A F7 00 01 */	addi r23, r23, 1
/* 805FBD7C  2C 17 00 02 */	cmpwi r23, 2
/* 805FBD80  3B 5A 00 02 */	addi r26, r26, 2
/* 805FBD84  41 80 FF E0 */	blt lbl_805FBD64
lbl_805FBD88:
/* 805FBD88  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FBD8C  2C 00 00 50 */	cmpwi r0, 0x50
/* 805FBD90  40 82 1B F0 */	bne lbl_805FD980
/* 805FBD94  38 00 00 28 */	li r0, 0x28
/* 805FBD98  B0 1B 26 C4 */	sth r0, 0x26c4(r27)
/* 805FBD9C  38 00 00 00 */	li r0, 0
/* 805FBDA0  B0 1B 26 C6 */	sth r0, 0x26c6(r27)
/* 805FBDA4  38 7B 26 D4 */	addi r3, r27, 0x26d4
/* 805FBDA8  C0 3E 01 98 */	lfs f1, 0x198(r30)
/* 805FBDAC  C0 5E 01 9C */	lfs f2, 0x19c(r30)
/* 805FBDB0  C0 7E 01 A0 */	lfs f3, 0x1a0(r30)
/* 805FBDB4  48 00 68 11 */	bl set__4cXyzFfff
/* 805FBDB8  38 7B 26 C8 */	addi r3, r27, 0x26c8
/* 805FBDBC  C0 3E 01 A4 */	lfs f1, 0x1a4(r30)
/* 805FBDC0  C0 5E 01 A8 */	lfs f2, 0x1a8(r30)
/* 805FBDC4  C0 7E 01 AC */	lfs f3, 0x1ac(r30)
/* 805FBDC8  48 00 67 FD */	bl set__4cXyzFfff
/* 805FBDCC  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 805FBDD0  D0 1B 27 10 */	stfs f0, 0x2710(r27)
/* 805FBDD4  38 61 00 E4 */	addi r3, r1, 0xe4
/* 805FBDD8  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FBDDC  C0 5E 01 60 */	lfs f2, 0x160(r30)
/* 805FBDE0  C0 7E 01 64 */	lfs f3, 0x164(r30)
/* 805FBDE4  48 00 67 E1 */	bl set__4cXyzFfff
/* 805FBDE8  7F 03 C3 78 */	mr r3, r24
/* 805FBDEC  38 81 00 E4 */	addi r4, r1, 0xe4
/* 805FBDF0  38 A0 E0 00 */	li r5, -8192
/* 805FBDF4  39 98 18 E0 */	addi r12, r24, 0x18e0
/* 805FBDF8  4B D6 62 8C */	b __ptmf_scall
/* 805FBDFC  60 00 00 00 */	nop 
/* 805FBE00  48 00 1B 80 */	b lbl_805FD980
lbl_805FBE04:
/* 805FBE04  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FBE08  2C 00 00 6E */	cmpwi r0, 0x6e
/* 805FBE0C  40 82 1B 74 */	bne lbl_805FD980
/* 805FBE10  38 00 00 29 */	li r0, 0x29
/* 805FBE14  B0 1B 26 C4 */	sth r0, 0x26c4(r27)
/* 805FBE18  38 00 00 00 */	li r0, 0
/* 805FBE1C  B0 1B 26 C6 */	sth r0, 0x26c6(r27)
/* 805FBE20  7F 63 DB 78 */	mr r3, r27
/* 805FBE24  38 80 00 52 */	li r4, 0x52
/* 805FBE28  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805FBE2C  38 A0 00 00 */	li r5, 0
/* 805FBE30  FC 40 08 90 */	fmr f2, f1
/* 805FBE34  4B FF 8C 61 */	bl anm_init__FP11b_gnd_classifUcf
/* 805FBE38  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070567@ha */
/* 805FBE3C  38 03 05 67 */	addi r0, r3, 0x0567 /* 0x00070567@l */
/* 805FBE40  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805FBE44  38 7B 05 DC */	addi r3, r27, 0x5dc
/* 805FBE48  38 81 00 2C */	addi r4, r1, 0x2c
/* 805FBE4C  38 A0 FF FF */	li r5, -1
/* 805FBE50  81 9B 05 DC */	lwz r12, 0x5dc(r27)
/* 805FBE54  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FBE58  7D 89 03 A6 */	mtctr r12
/* 805FBE5C  4E 80 04 21 */	bctrl 
/* 805FBE60  38 00 00 01 */	li r0, 1
/* 805FBE64  90 1B 07 48 */	stw r0, 0x748(r27)
/* 805FBE68  7F 03 C3 78 */	mr r3, r24
/* 805FBE6C  38 80 00 01 */	li r4, 1
/* 805FBE70  38 A0 00 00 */	li r5, 0
/* 805FBE74  48 00 67 45 */	bl changeDemoMode__9daHorse_cFUli
/* 805FBE78  7F A3 EB 78 */	mr r3, r29
/* 805FBE7C  38 80 00 01 */	li r4, 1
/* 805FBE80  38 A0 00 00 */	li r5, 0
/* 805FBE84  38 C0 00 00 */	li r6, 0
/* 805FBE88  38 E0 00 00 */	li r7, 0
/* 805FBE8C  48 00 67 05 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_805FBE90:
/* 805FBE90  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805FBE94  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805FBE98  80 63 00 00 */	lwz r3, 0(r3)
/* 805FBE9C  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 805FBEA0  4B A1 05 3C */	b mDoMtx_YrotS__FPA4_fs
/* 805FBEA4  C0 1E 01 B0 */	lfs f0, 0x1b0(r30)
/* 805FBEA8  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 805FBEAC  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 805FBEB0  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 805FBEB4  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 805FBEB8  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 805FBEBC  38 61 00 F0 */	addi r3, r1, 0xf0
/* 805FBEC0  38 81 00 E4 */	addi r4, r1, 0xe4
/* 805FBEC4  4B C7 50 28 */	b MtxPosition__FP4cXyzP4cXyz
/* 805FBEC8  C0 21 00 E4 */	lfs f1, 0xe4(r1)
/* 805FBECC  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 805FBED0  EC 01 00 2A */	fadds f0, f1, f0
/* 805FBED4  D0 1B 26 C8 */	stfs f0, 0x26c8(r27)
/* 805FBED8  C0 21 00 EC */	lfs f1, 0xec(r1)
/* 805FBEDC  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 805FBEE0  EC 01 00 2A */	fadds f0, f1, f0
/* 805FBEE4  D0 1B 26 D0 */	stfs f0, 0x26d0(r27)
/* 805FBEE8  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 805FBEEC  C0 3E 01 B4 */	lfs f1, 0x1b4(r30)
/* 805FBEF0  C0 1B 05 3C */	lfs f0, 0x53c(r27)
/* 805FBEF4  EC 00 10 28 */	fsubs f0, f0, f2
/* 805FBEF8  EC 01 00 32 */	fmuls f0, f1, f0
/* 805FBEFC  EC 02 00 2A */	fadds f0, f2, f0
/* 805FBF00  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 805FBF04  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 805FBF08  D0 1B 26 D4 */	stfs f0, 0x26d4(r27)
/* 805FBF0C  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 805FBF10  D0 1B 26 DC */	stfs f0, 0x26dc(r27)
/* 805FBF14  C0 3B 05 3C */	lfs f1, 0x53c(r27)
/* 805FBF18  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 805FBF1C  EC 21 00 28 */	fsubs f1, f1, f0
/* 805FBF20  D0 21 00 D0 */	stfs f1, 0xd0(r1)
/* 805FBF24  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FBF28  2C 00 00 00 */	cmpwi r0, 0
/* 805FBF2C  40 82 00 14 */	bne lbl_805FBF40
/* 805FBF30  D0 3B 26 D8 */	stfs f1, 0x26d8(r27)
/* 805FBF34  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 805FBF38  D0 1B 26 CC */	stfs f0, 0x26cc(r27)
/* 805FBF3C  48 00 00 28 */	b lbl_805FBF64
lbl_805FBF40:
/* 805FBF40  38 7B 26 D8 */	addi r3, r27, 0x26d8
/* 805FBF44  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 805FBF48  C0 7E 00 74 */	lfs f3, 0x74(r30)
/* 805FBF4C  4B C7 3A F0 */	b cLib_addCalc2__FPffff
/* 805FBF50  38 7B 26 CC */	addi r3, r27, 0x26cc
/* 805FBF54  C0 21 00 DC */	lfs f1, 0xdc(r1)
/* 805FBF58  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 805FBF5C  C0 7E 00 74 */	lfs f3, 0x74(r30)
/* 805FBF60  4B C7 3A DC */	b cLib_addCalc2__FPffff
lbl_805FBF64:
/* 805FBF64  80 1B 07 58 */	lwz r0, 0x758(r27)
/* 805FBF68  2C 00 00 52 */	cmpwi r0, 0x52
/* 805FBF6C  40 82 00 34 */	bne lbl_805FBFA0
/* 805FBF70  80 7B 05 D0 */	lwz r3, 0x5d0(r27)
/* 805FBF74  48 00 65 79 */	bl isStop__13mDoExt_morf_cFv
/* 805FBF78  2C 03 00 00 */	cmpwi r3, 0
/* 805FBF7C  41 82 00 24 */	beq lbl_805FBFA0
/* 805FBF80  7F 63 DB 78 */	mr r3, r27
/* 805FBF84  38 80 00 32 */	li r4, 0x32
/* 805FBF88  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FBF8C  38 A0 00 02 */	li r5, 2
/* 805FBF90  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805FBF94  4B FF 8B 01 */	bl anm_init__FP11b_gnd_classifUcf
/* 805FBF98  38 00 00 02 */	li r0, 2
/* 805FBF9C  90 1B 07 48 */	stw r0, 0x748(r27)
lbl_805FBFA0:
/* 805FBFA0  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FBFA4  2C 00 00 FA */	cmpwi r0, 0xfa
/* 805FBFA8  40 82 19 D8 */	bne lbl_805FD980
/* 805FBFAC  38 00 00 2A */	li r0, 0x2a
/* 805FBFB0  B0 1B 26 C4 */	sth r0, 0x26c4(r27)
/* 805FBFB4  38 00 00 00 */	li r0, 0
/* 805FBFB8  B0 1B 26 C6 */	sth r0, 0x26c6(r27)
/* 805FBFBC  7F 63 DB 78 */	mr r3, r27
/* 805FBFC0  38 80 00 33 */	li r4, 0x33
/* 805FBFC4  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FBFC8  38 A0 00 00 */	li r5, 0
/* 805FBFCC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805FBFD0  4B FF 8A C5 */	bl anm_init__FP11b_gnd_classifUcf
/* 805FBFD4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070568@ha */
/* 805FBFD8  38 03 05 68 */	addi r0, r3, 0x0568 /* 0x00070568@l */
/* 805FBFDC  90 01 00 28 */	stw r0, 0x28(r1)
/* 805FBFE0  38 7B 05 DC */	addi r3, r27, 0x5dc
/* 805FBFE4  38 81 00 28 */	addi r4, r1, 0x28
/* 805FBFE8  38 A0 FF FF */	li r5, -1
/* 805FBFEC  81 9B 05 DC */	lwz r12, 0x5dc(r27)
/* 805FBFF0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FBFF4  7D 89 03 A6 */	mtctr r12
/* 805FBFF8  4E 80 04 21 */	bctrl 
/* 805FBFFC  38 00 00 03 */	li r0, 3
/* 805FC000  90 1B 07 48 */	stw r0, 0x748(r27)
/* 805FC004  80 1D 05 90 */	lwz r0, 0x590(r29)
/* 805FC008  60 00 00 02 */	ori r0, r0, 2
/* 805FC00C  90 1D 05 90 */	stw r0, 0x590(r29)
lbl_805FC010:
/* 805FC010  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805FC014  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805FC018  80 63 00 00 */	lwz r3, 0(r3)
/* 805FC01C  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 805FC020  4B A1 03 BC */	b mDoMtx_YrotS__FPA4_fs
/* 805FC024  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 805FC028  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 805FC02C  C0 1E 01 BC */	lfs f0, 0x1bc(r30)
/* 805FC030  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 805FC034  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 805FC038  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 805FC03C  38 61 00 F0 */	addi r3, r1, 0xf0
/* 805FC040  38 9B 26 C8 */	addi r4, r27, 0x26c8
/* 805FC044  4B C7 4E A8 */	b MtxPosition__FP4cXyzP4cXyz
/* 805FC048  38 7B 26 C8 */	addi r3, r27, 0x26c8
/* 805FC04C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805FC050  7C 65 1B 78 */	mr r5, r3
/* 805FC054  4B D4 B0 3C */	b PSVECAdd
/* 805FC058  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 805FC05C  D0 1B 26 D4 */	stfs f0, 0x26d4(r27)
/* 805FC060  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 805FC064  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 805FC068  EC 01 00 28 */	fsubs f0, f1, f0
/* 805FC06C  D0 1B 26 DC */	stfs f0, 0x26dc(r27)
/* 805FC070  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 805FC074  C0 1B 05 3C */	lfs f0, 0x53c(r27)
/* 805FC078  EC 01 00 2A */	fadds f0, f1, f0
/* 805FC07C  D0 1B 26 D8 */	stfs f0, 0x26d8(r27)
/* 805FC080  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FC084  2C 00 00 46 */	cmpwi r0, 0x46
/* 805FC088  40 80 00 0C */	bge lbl_805FC094
/* 805FC08C  38 00 00 08 */	li r0, 8
/* 805FC090  B0 1B 0C 70 */	sth r0, 0xc70(r27)
lbl_805FC094:
/* 805FC094  80 7B 05 D0 */	lwz r3, 0x5d0(r27)
/* 805FC098  48 00 64 55 */	bl isStop__13mDoExt_morf_cFv
/* 805FC09C  2C 03 00 00 */	cmpwi r3, 0
/* 805FC0A0  41 82 18 E0 */	beq lbl_805FD980
/* 805FC0A4  7F 63 DB 78 */	mr r3, r27
/* 805FC0A8  38 80 00 4D */	li r4, 0x4d
/* 805FC0AC  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FC0B0  38 A0 00 00 */	li r5, 0
/* 805FC0B4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805FC0B8  4B FF 89 DD */	bl anm_init__FP11b_gnd_classifUcf
/* 805FC0BC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070569@ha */
/* 805FC0C0  38 03 05 69 */	addi r0, r3, 0x0569 /* 0x00070569@l */
/* 805FC0C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FC0C8  38 7B 05 DC */	addi r3, r27, 0x5dc
/* 805FC0CC  38 81 00 24 */	addi r4, r1, 0x24
/* 805FC0D0  38 A0 FF FF */	li r5, -1
/* 805FC0D4  81 9B 05 DC */	lwz r12, 0x5dc(r27)
/* 805FC0D8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FC0DC  7D 89 03 A6 */	mtctr r12
/* 805FC0E0  4E 80 04 21 */	bctrl 
/* 805FC0E4  38 00 00 04 */	li r0, 4
/* 805FC0E8  90 1B 07 48 */	stw r0, 0x748(r27)
/* 805FC0EC  38 00 00 2B */	li r0, 0x2b
/* 805FC0F0  B0 1B 26 C4 */	sth r0, 0x26c4(r27)
/* 805FC0F4  38 00 00 00 */	li r0, 0
/* 805FC0F8  B0 1B 26 C6 */	sth r0, 0x26c6(r27)
/* 805FC0FC  38 61 00 E4 */	addi r3, r1, 0xe4
/* 805FC100  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FC104  C0 5E 01 60 */	lfs f2, 0x160(r30)
/* 805FC108  C0 7E 01 5C */	lfs f3, 0x15c(r30)
/* 805FC10C  48 00 64 B9 */	bl set__4cXyzFfff
/* 805FC110  7F A3 EB 78 */	mr r3, r29
/* 805FC114  38 81 00 E4 */	addi r4, r1, 0xe4
/* 805FC118  38 A0 00 01 */	li r5, 1
/* 805FC11C  38 C0 00 00 */	li r6, 0
/* 805FC120  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 805FC124  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805FC128  7D 89 03 A6 */	mtctr r12
/* 805FC12C  4E 80 04 21 */	bctrl 
/* 805FC130  38 00 00 01 */	li r0, 1
/* 805FC134  98 19 39 69 */	stb r0, 0x3969(r25)
lbl_805FC138:
/* 805FC138  80 7B 05 D0 */	lwz r3, 0x5d0(r27)
/* 805FC13C  38 63 00 0C */	addi r3, r3, 0xc
/* 805FC140  C0 3E 01 C0 */	lfs f1, 0x1c0(r30)
/* 805FC144  4B D2 C2 E8 */	b checkPass__12J3DFrameCtrlFf
/* 805FC148  2C 03 00 00 */	cmpwi r3, 0
/* 805FC14C  41 82 00 30 */	beq lbl_805FC17C
/* 805FC150  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007056A@ha */
/* 805FC154  38 03 05 6A */	addi r0, r3, 0x056A /* 0x0007056A@l */
/* 805FC158  90 01 00 20 */	stw r0, 0x20(r1)
/* 805FC15C  38 7B 05 DC */	addi r3, r27, 0x5dc
/* 805FC160  38 81 00 20 */	addi r4, r1, 0x20
/* 805FC164  38 A0 00 00 */	li r5, 0
/* 805FC168  38 C0 FF FF */	li r6, -1
/* 805FC16C  81 9B 05 DC */	lwz r12, 0x5dc(r27)
/* 805FC170  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805FC174  7D 89 03 A6 */	mtctr r12
/* 805FC178  4E 80 04 21 */	bctrl 
lbl_805FC17C:
/* 805FC17C  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FC180  2C 00 00 0A */	cmpwi r0, 0xa
/* 805FC184  41 80 00 34 */	blt lbl_805FC1B8
/* 805FC188  40 82 00 1C */	bne lbl_805FC1A4
/* 805FC18C  38 7B 27 44 */	addi r3, r27, 0x2744
/* 805FC190  7F 64 DB 78 */	mr r4, r27
/* 805FC194  38 A0 0B CA */	li r5, 0xbca
/* 805FC198  38 C0 00 00 */	li r6, 0
/* 805FC19C  38 E0 00 00 */	li r7, 0
/* 805FC1A0  4B C4 DD F0 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_805FC1A4:
/* 805FC1A4  38 7B 27 44 */	addi r3, r27, 0x2744
/* 805FC1A8  7F 64 DB 78 */	mr r4, r27
/* 805FC1AC  38 A0 00 00 */	li r5, 0
/* 805FC1B0  38 C0 00 00 */	li r6, 0
/* 805FC1B4  4B C4 E1 24 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
lbl_805FC1B8:
/* 805FC1B8  80 7B 05 D0 */	lwz r3, 0x5d0(r27)
/* 805FC1BC  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805FC1C0  C0 1E 01 C4 */	lfs f0, 0x1c4(r30)
/* 805FC1C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FC1C8  40 81 00 24 */	ble lbl_805FC1EC
/* 805FC1CC  38 7B 05 2C */	addi r3, r27, 0x52c
/* 805FC1D0  C0 3E 01 08 */	lfs f1, 0x108(r30)
/* 805FC1D4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805FC1D8  C0 7E 01 18 */	lfs f3, 0x118(r30)
/* 805FC1DC  4B C7 38 60 */	b cLib_addCalc2__FPffff
/* 805FC1E0  38 00 00 03 */	li r0, 3
/* 805FC1E4  98 19 39 69 */	stb r0, 0x3969(r25)
/* 805FC1E8  48 00 00 74 */	b lbl_805FC25C
lbl_805FC1EC:
/* 805FC1EC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805FC1F0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805FC1F4  80 63 00 00 */	lwz r3, 0(r3)
/* 805FC1F8  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 805FC1FC  4B A1 01 E0 */	b mDoMtx_YrotS__FPA4_fs
/* 805FC200  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 805FC204  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 805FC208  C0 1E 01 C8 */	lfs f0, 0x1c8(r30)
/* 805FC20C  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 805FC210  C0 1E 01 CC */	lfs f0, 0x1cc(r30)
/* 805FC214  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 805FC218  38 61 00 F0 */	addi r3, r1, 0xf0
/* 805FC21C  38 9B 26 C8 */	addi r4, r27, 0x26c8
/* 805FC220  4B C7 4C CC */	b MtxPosition__FP4cXyzP4cXyz
/* 805FC224  38 7B 26 C8 */	addi r3, r27, 0x26c8
/* 805FC228  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805FC22C  7C 65 1B 78 */	mr r5, r3
/* 805FC230  4B D4 AE 60 */	b PSVECAdd
/* 805FC234  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 805FC238  D0 1B 26 D4 */	stfs f0, 0x26d4(r27)
/* 805FC23C  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 805FC240  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 805FC244  EC 01 00 28 */	fsubs f0, f1, f0
/* 805FC248  D0 1B 26 DC */	stfs f0, 0x26dc(r27)
/* 805FC24C  C0 3B 05 3C */	lfs f1, 0x53c(r27)
/* 805FC250  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 805FC254  EC 01 00 28 */	fsubs f0, f1, f0
/* 805FC258  D0 1B 26 D8 */	stfs f0, 0x26d8(r27)
lbl_805FC25C:
/* 805FC25C  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FC260  2C 00 00 D3 */	cmpwi r0, 0xd3
/* 805FC264  40 82 00 14 */	bne lbl_805FC278
/* 805FC268  38 00 00 00 */	li r0, 0
/* 805FC26C  98 1B 07 70 */	stb r0, 0x770(r27)
/* 805FC270  C0 1E 01 D0 */	lfs f0, 0x1d0(r30)
/* 805FC274  D0 19 39 5C */	stfs f0, 0x395c(r25)
lbl_805FC278:
/* 805FC278  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FC27C  2C 00 00 D7 */	cmpwi r0, 0xd7
/* 805FC280  40 82 00 18 */	bne lbl_805FC298
/* 805FC284  38 00 00 01 */	li r0, 1
/* 805FC288  98 1B 27 39 */	stb r0, 0x2739(r27)
/* 805FC28C  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805FC290  D0 1B 27 3C */	stfs f0, 0x273c(r27)
/* 805FC294  98 1A 0E D6 */	stb r0, 0xed6(r26)
lbl_805FC298:
/* 805FC298  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FC29C  2C 00 01 16 */	cmpwi r0, 0x116
/* 805FC2A0  40 82 00 0C */	bne lbl_805FC2AC
/* 805FC2A4  38 00 00 01 */	li r0, 1
/* 805FC2A8  B0 1B 07 72 */	sth r0, 0x772(r27)
lbl_805FC2AC:
/* 805FC2AC  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FC2B0  2C 00 01 86 */	cmpwi r0, 0x186
/* 805FC2B4  40 82 16 CC */	bne lbl_805FD980
/* 805FC2B8  7F 63 DB 78 */	mr r3, r27
/* 805FC2BC  38 80 00 5D */	li r4, 0x5d
/* 805FC2C0  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FC2C4  38 A0 00 02 */	li r5, 2
/* 805FC2C8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805FC2CC  4B FF 87 C9 */	bl anm_init__FP11b_gnd_classifUcf
/* 805FC2D0  80 7B 05 D0 */	lwz r3, 0x5d0(r27)
/* 805FC2D4  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 805FC2D8  48 00 61 D5 */	bl setFrame__13mDoExt_morf_cFf
/* 805FC2DC  38 00 00 2C */	li r0, 0x2c
/* 805FC2E0  B0 1B 26 C4 */	sth r0, 0x26c4(r27)
/* 805FC2E4  38 00 00 00 */	li r0, 0
/* 805FC2E8  B0 1B 26 C6 */	sth r0, 0x26c6(r27)
/* 805FC2EC  90 1B 07 48 */	stw r0, 0x748(r27)
/* 805FC2F0  38 7B 26 D4 */	addi r3, r27, 0x26d4
/* 805FC2F4  C0 3E 01 D4 */	lfs f1, 0x1d4(r30)
/* 805FC2F8  C0 5E 01 D8 */	lfs f2, 0x1d8(r30)
/* 805FC2FC  C0 7E 01 DC */	lfs f3, 0x1dc(r30)
/* 805FC300  48 00 62 C5 */	bl set__4cXyzFfff
/* 805FC304  38 7B 26 C8 */	addi r3, r27, 0x26c8
/* 805FC308  C0 3E 01 E0 */	lfs f1, 0x1e0(r30)
/* 805FC30C  C0 5E 01 E4 */	lfs f2, 0x1e4(r30)
/* 805FC310  C0 7E 01 E8 */	lfs f3, 0x1e8(r30)
/* 805FC314  48 00 62 B1 */	bl set__4cXyzFfff
/* 805FC318  38 61 00 E4 */	addi r3, r1, 0xe4
/* 805FC31C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FC320  C0 5E 01 60 */	lfs f2, 0x160(r30)
/* 805FC324  C0 7E 01 54 */	lfs f3, 0x154(r30)
/* 805FC328  48 00 62 9D */	bl set__4cXyzFfff
/* 805FC32C  7F A3 EB 78 */	mr r3, r29
/* 805FC330  38 81 00 E4 */	addi r4, r1, 0xe4
/* 805FC334  38 A0 00 01 */	li r5, 1
/* 805FC338  38 C0 00 00 */	li r6, 0
/* 805FC33C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 805FC340  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805FC344  7D 89 03 A6 */	mtctr r12
/* 805FC348  4E 80 04 21 */	bctrl 
/* 805FC34C  48 00 16 34 */	b lbl_805FD980
lbl_805FC350:
/* 805FC350  38 7B 27 44 */	addi r3, r27, 0x2744
/* 805FC354  7F 64 DB 78 */	mr r4, r27
/* 805FC358  38 A0 00 00 */	li r5, 0
/* 805FC35C  38 C0 00 00 */	li r6, 0
/* 805FC360  4B C4 DF 78 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 805FC364  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FC368  2C 00 00 7D */	cmpwi r0, 0x7d
/* 805FC36C  40 82 00 0C */	bne lbl_805FC378
/* 805FC370  38 00 00 01 */	li r0, 1
/* 805FC374  98 1A 0E D6 */	stb r0, 0xed6(r26)
lbl_805FC378:
/* 805FC378  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FC37C  2C 00 00 64 */	cmpwi r0, 0x64
/* 805FC380  41 80 00 8C */	blt lbl_805FC40C
/* 805FC384  40 82 00 1C */	bne lbl_805FC3A0
/* 805FC388  7F 63 DB 78 */	mr r3, r27
/* 805FC38C  38 80 00 5A */	li r4, 0x5a
/* 805FC390  C0 3E 01 EC */	lfs f1, 0x1ec(r30)
/* 805FC394  38 A0 00 02 */	li r5, 2
/* 805FC398  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805FC39C  4B FF 86 F9 */	bl anm_init__FP11b_gnd_classifUcf
lbl_805FC3A0:
/* 805FC3A0  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FC3A4  2C 00 00 87 */	cmpwi r0, 0x87
/* 805FC3A8  40 82 00 50 */	bne lbl_805FC3F8
/* 805FC3AC  38 00 00 2D */	li r0, 0x2d
/* 805FC3B0  B0 1B 26 C4 */	sth r0, 0x26c4(r27)
/* 805FC3B4  38 00 00 00 */	li r0, 0
/* 805FC3B8  B0 1B 26 C6 */	sth r0, 0x26c6(r27)
/* 805FC3BC  38 61 00 E4 */	addi r3, r1, 0xe4
/* 805FC3C0  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FC3C4  C0 5E 01 60 */	lfs f2, 0x160(r30)
/* 805FC3C8  FC 60 08 90 */	fmr f3, f1
/* 805FC3CC  48 00 61 F9 */	bl set__4cXyzFfff
/* 805FC3D0  38 60 00 2D */	li r3, 0x2d
/* 805FC3D4  3C 80 F0 07 */	lis r4, 0xF007 /* 0xF0069600@ha */
/* 805FC3D8  38 84 96 00 */	addi r4, r4, 0x9600 /* 0xF0069600@l */
/* 805FC3DC  38 A1 00 E4 */	addi r5, r1, 0xe4
/* 805FC3E0  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 805FC3E4  7C 06 07 74 */	extsb r6, r0
/* 805FC3E8  38 E0 00 00 */	li r7, 0
/* 805FC3EC  39 00 00 00 */	li r8, 0
/* 805FC3F0  39 20 FF FF */	li r9, -1
/* 805FC3F4  4B A1 D9 A4 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
lbl_805FC3F8:
/* 805FC3F8  38 7B 05 2C */	addi r3, r27, 0x52c
/* 805FC3FC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805FC400  C0 5E 01 18 */	lfs f2, 0x118(r30)
/* 805FC404  4B C7 36 7C */	b cLib_addCalc0__FPfff
/* 805FC408  48 00 15 78 */	b lbl_805FD980
lbl_805FC40C:
/* 805FC40C  38 7B 05 2C */	addi r3, r27, 0x52c
/* 805FC410  C0 3E 01 08 */	lfs f1, 0x108(r30)
/* 805FC414  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805FC418  C0 7E 01 18 */	lfs f3, 0x118(r30)
/* 805FC41C  4B C7 36 20 */	b cLib_addCalc2__FPffff
/* 805FC420  48 00 15 60 */	b lbl_805FD980
lbl_805FC424:
/* 805FC424  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FC428  2C 00 00 01 */	cmpwi r0, 1
/* 805FC42C  40 82 00 6C */	bne lbl_805FC498
/* 805FC430  7F 03 C3 78 */	mr r3, r24
/* 805FC434  38 80 00 09 */	li r4, 9
/* 805FC438  38 A0 00 00 */	li r5, 0
/* 805FC43C  48 00 61 7D */	bl changeDemoMode__9daHorse_cFUli
/* 805FC440  38 7B 26 D4 */	addi r3, r27, 0x26d4
/* 805FC444  C0 3E 01 F0 */	lfs f1, 0x1f0(r30)
/* 805FC448  C0 5E 01 F4 */	lfs f2, 0x1f4(r30)
/* 805FC44C  C0 7E 01 F8 */	lfs f3, 0x1f8(r30)
/* 805FC450  48 00 61 75 */	bl set__4cXyzFfff
/* 805FC454  38 7B 26 C8 */	addi r3, r27, 0x26c8
/* 805FC458  C0 3E 01 FC */	lfs f1, 0x1fc(r30)
/* 805FC45C  C0 5E 02 00 */	lfs f2, 0x200(r30)
/* 805FC460  C0 7E 02 04 */	lfs f3, 0x204(r30)
/* 805FC464  48 00 61 61 */	bl set__4cXyzFfff
/* 805FC468  38 7B 26 EC */	addi r3, r27, 0x26ec
/* 805FC46C  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 805FC470  C0 5E 02 08 */	lfs f2, 0x208(r30)
/* 805FC474  C0 7E 02 0C */	lfs f3, 0x20c(r30)
/* 805FC478  48 00 61 4D */	bl set__4cXyzFfff
/* 805FC47C  38 7B 26 E0 */	addi r3, r27, 0x26e0
/* 805FC480  C0 3E 02 10 */	lfs f1, 0x210(r30)
/* 805FC484  C0 5E 02 14 */	lfs f2, 0x214(r30)
/* 805FC488  C0 7E 02 18 */	lfs f3, 0x218(r30)
/* 805FC48C  48 00 61 39 */	bl set__4cXyzFfff
/* 805FC490  7F 63 DB 78 */	mr r3, r27
/* 805FC494  4B FF F2 71 */	bl cam_spd_set__FP11b_gnd_class
lbl_805FC498:
/* 805FC498  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FC49C  2C 00 00 0F */	cmpwi r0, 0xf
/* 805FC4A0  40 82 00 0C */	bne lbl_805FC4AC
/* 805FC4A4  38 00 00 01 */	li r0, 1
/* 805FC4A8  98 1A 0E D6 */	stb r0, 0xed6(r26)
lbl_805FC4AC:
/* 805FC4AC  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FC4B0  2C 00 00 19 */	cmpwi r0, 0x19
/* 805FC4B4  41 80 00 24 */	blt lbl_805FC4D8
/* 805FC4B8  7F 63 DB 78 */	mr r3, r27
/* 805FC4BC  C0 3E 01 74 */	lfs f1, 0x174(r30)
/* 805FC4C0  4B FF F1 61 */	bl cam_3d_morf__FP11b_gnd_classf
/* 805FC4C4  38 7B 27 14 */	addi r3, r27, 0x2714
/* 805FC4C8  C0 3E 02 1C */	lfs f1, 0x21c(r30)
/* 805FC4CC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805FC4D0  C0 7E 02 20 */	lfs f3, 0x220(r30)
/* 805FC4D4  4B C7 35 68 */	b cLib_addCalc2__FPffff
lbl_805FC4D8:
/* 805FC4D8  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FC4DC  2C 00 00 78 */	cmpwi r0, 0x78
/* 805FC4E0  40 82 14 A0 */	bne lbl_805FD980
/* 805FC4E4  38 00 00 2E */	li r0, 0x2e
/* 805FC4E8  B0 1B 26 C4 */	sth r0, 0x26c4(r27)
/* 805FC4EC  38 00 00 C8 */	li r0, 0xc8
/* 805FC4F0  B0 1B 26 C6 */	sth r0, 0x26c6(r27)
/* 805FC4F4  38 7B 26 D4 */	addi r3, r27, 0x26d4
/* 805FC4F8  C0 3E 02 24 */	lfs f1, 0x224(r30)
/* 805FC4FC  C0 5E 02 28 */	lfs f2, 0x228(r30)
/* 805FC500  C0 7E 02 2C */	lfs f3, 0x22c(r30)
/* 805FC504  48 00 60 C1 */	bl set__4cXyzFfff
/* 805FC508  38 7B 26 C8 */	addi r3, r27, 0x26c8
/* 805FC50C  C0 3E 02 30 */	lfs f1, 0x230(r30)
/* 805FC510  C0 5E 02 34 */	lfs f2, 0x234(r30)
/* 805FC514  C0 7E 02 38 */	lfs f3, 0x238(r30)
/* 805FC518  48 00 60 AD */	bl set__4cXyzFfff
/* 805FC51C  48 00 14 64 */	b lbl_805FD980
lbl_805FC520:
/* 805FC520  38 7B 27 10 */	addi r3, r27, 0x2710
/* 805FC524  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 805FC528  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 805FC52C  C0 7E 01 74 */	lfs f3, 0x174(r30)
/* 805FC530  4B C7 35 0C */	b cLib_addCalc2__FPffff
/* 805FC534  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FC538  2C 00 01 31 */	cmpwi r0, 0x131
/* 805FC53C  41 80 00 0C */	blt lbl_805FC548
/* 805FC540  38 00 00 02 */	li r0, 2
/* 805FC544  98 19 39 69 */	stb r0, 0x3969(r25)
lbl_805FC548:
/* 805FC548  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FC54C  2C 00 00 FF */	cmpwi r0, 0xff
/* 805FC550  40 82 00 1C */	bne lbl_805FC56C
/* 805FC554  48 00 5F 49 */	bl daPy_getPlayerActorClass__Fv
/* 805FC558  38 80 00 17 */	li r4, 0x17
/* 805FC55C  38 A0 00 01 */	li r5, 1
/* 805FC560  38 C0 00 02 */	li r6, 2
/* 805FC564  38 E0 00 00 */	li r7, 0
/* 805FC568  48 00 60 29 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_805FC56C:
/* 805FC56C  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FC570  2C 00 01 22 */	cmpwi r0, 0x122
/* 805FC574  40 82 00 50 */	bne lbl_805FC5C4
/* 805FC578  7F 63 DB 78 */	mr r3, r27
/* 805FC57C  38 80 00 2F */	li r4, 0x2f
/* 805FC580  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805FC584  38 A0 00 00 */	li r5, 0
/* 805FC588  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805FC58C  4B FF 85 09 */	bl anm_init__FP11b_gnd_classifUcf
/* 805FC590  38 00 00 05 */	li r0, 5
/* 805FC594  90 1B 07 48 */	stw r0, 0x748(r27)
/* 805FC598  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805FC59C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805FC5A0  80 63 00 00 */	lwz r3, 0(r3)
/* 805FC5A4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805FC5A8  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000088@ha */
/* 805FC5AC  38 84 00 88 */	addi r4, r4, 0x0088 /* 0x01000088@l */
/* 805FC5B0  38 A0 00 00 */	li r5, 0
/* 805FC5B4  38 C0 00 00 */	li r6, 0
/* 805FC5B8  4B CB 2A 58 */	b bgmStart__8Z2SeqMgrFUlUll
/* 805FC5BC  38 00 00 03 */	li r0, 3
/* 805FC5C0  98 1A 12 CC */	stb r0, 0x12cc(r26)
lbl_805FC5C4:
/* 805FC5C4  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FC5C8  2C 00 01 40 */	cmpwi r0, 0x140
/* 805FC5CC  40 82 00 0C */	bne lbl_805FC5D8
/* 805FC5D0  38 60 04 87 */	li r3, 0x487
/* 805FC5D4  4B A2 39 F0 */	b fopMsgM_messageSetDemo__FUl
lbl_805FC5D8:
/* 805FC5D8  80 1B 07 58 */	lwz r0, 0x758(r27)
/* 805FC5DC  2C 00 00 2F */	cmpwi r0, 0x2f
/* 805FC5E0  40 82 00 34 */	bne lbl_805FC614
/* 805FC5E4  80 7B 05 D0 */	lwz r3, 0x5d0(r27)
/* 805FC5E8  48 00 5F 05 */	bl isStop__13mDoExt_morf_cFv
/* 805FC5EC  2C 03 00 00 */	cmpwi r3, 0
/* 805FC5F0  41 82 00 24 */	beq lbl_805FC614
/* 805FC5F4  7F 63 DB 78 */	mr r3, r27
/* 805FC5F8  38 80 00 5B */	li r4, 0x5b
/* 805FC5FC  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805FC600  38 A0 00 02 */	li r5, 2
/* 805FC604  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805FC608  4B FF 84 8D */	bl anm_init__FP11b_gnd_classifUcf
/* 805FC60C  38 00 00 01 */	li r0, 1
/* 805FC610  98 1A 0E D6 */	stb r0, 0xed6(r26)
lbl_805FC614:
/* 805FC614  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FC618  2C 00 01 9A */	cmpwi r0, 0x19a
/* 805FC61C  40 82 13 64 */	bne lbl_805FD980
/* 805FC620  38 00 00 0A */	li r0, 0xa
/* 805FC624  B0 1B 0A FE */	sth r0, 0xafe(r27)
/* 805FC628  38 00 00 02 */	li r0, 2
/* 805FC62C  B0 1B 05 BC */	sth r0, 0x5bc(r27)
/* 805FC630  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 805FC634  4B C6 B3 20 */	b cM_rndF__Ff
/* 805FC638  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 805FC63C  EC 00 08 2A */	fadds f0, f0, f1
/* 805FC640  FC 00 00 1E */	fctiwz f0, f0
/* 805FC644  D8 01 01 00 */	stfd f0, 0x100(r1)
/* 805FC648  80 01 01 04 */	lwz r0, 0x104(r1)
/* 805FC64C  B0 1B 0C 44 */	sth r0, 0xc44(r27)
/* 805FC650  38 00 00 64 */	li r0, 0x64
/* 805FC654  B0 1B 0C 54 */	sth r0, 0xc54(r27)
/* 805FC658  3B 80 00 01 */	li r28, 1
/* 805FC65C  38 60 00 0F */	li r3, 0xf
/* 805FC660  38 80 FF FF */	li r4, -1
/* 805FC664  4B A3 14 38 */	b dComIfGs_onOneZoneSwitch__Fii
/* 805FC668  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805FC66C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805FC670  38 63 09 78 */	addi r3, r3, 0x978
/* 805FC674  38 80 00 01 */	li r4, 1
/* 805FC678  4B A3 85 20 */	b onSwitch__12dSv_danBit_cFi
/* 805FC67C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805FC680  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805FC684  80 63 00 00 */	lwz r3, 0(r3)
/* 805FC688  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 805FC68C  3C 80 80 60 */	lis r4, stringBase0@ha
/* 805FC690  38 84 29 AC */	addi r4, r4, stringBase0@l
/* 805FC694  38 84 00 17 */	addi r4, r4, 0x17
/* 805FC698  4B CB 9B 50 */	b setDemoName__11Z2StatusMgrFPc
/* 805FC69C  38 00 00 01 */	li r0, 1
/* 805FC6A0  98 1A 12 CC */	stb r0, 0x12cc(r26)
/* 805FC6A4  48 00 12 DC */	b lbl_805FD980
lbl_805FC6A8:
/* 805FC6A8  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 805FC6AC  28 00 00 02 */	cmplwi r0, 2
/* 805FC6B0  41 82 00 2C */	beq lbl_805FC6DC
/* 805FC6B4  7F 63 DB 78 */	mr r3, r27
/* 805FC6B8  38 80 00 02 */	li r4, 2
/* 805FC6BC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFEF@ha */
/* 805FC6C0  38 A5 FF EF */	addi r5, r5, 0xFFEF /* 0x0000FFEF@l */
/* 805FC6C4  38 C0 00 00 */	li r6, 0
/* 805FC6C8  4B A1 F2 40 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805FC6CC  A0 1B 00 FA */	lhz r0, 0xfa(r27)
/* 805FC6D0  60 00 00 02 */	ori r0, r0, 2
/* 805FC6D4  B0 1B 00 FA */	sth r0, 0xfa(r27)
/* 805FC6D8  48 00 13 F0 */	b lbl_805FDAC8
lbl_805FC6DC:
/* 805FC6DC  38 7F 02 48 */	addi r3, r31, 0x248
/* 805FC6E0  4B B6 4D F0 */	b Stop__9dCamera_cFv
/* 805FC6E4  38 00 00 33 */	li r0, 0x33
/* 805FC6E8  B0 1B 26 C4 */	sth r0, 0x26c4(r27)
/* 805FC6EC  38 00 00 00 */	li r0, 0
/* 805FC6F0  B0 1B 26 C6 */	sth r0, 0x26c6(r27)
/* 805FC6F4  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 805FC6F8  D0 1B 27 10 */	stfs f0, 0x2710(r27)
/* 805FC6FC  38 7B 27 20 */	addi r3, r27, 0x2720
/* 805FC700  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805FC704  48 00 5E D1 */	bl __as__4cXyzFRC4cXyz
/* 805FC708  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 805FC70C  B0 1B 27 2C */	sth r0, 0x272c(r27)
/* 805FC710  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805FC714  D0 1B 27 34 */	stfs f0, 0x2734(r27)
/* 805FC718  D0 1B 27 30 */	stfs f0, 0x2730(r27)
/* 805FC71C  48 00 5D 81 */	bl daPy_getPlayerActorClass__Fv
/* 805FC720  48 00 5E 85 */	bl changeOriginalDemo__9daPy_py_cFv
/* 805FC724  48 00 5D 79 */	bl daPy_getPlayerActorClass__Fv
/* 805FC728  38 80 00 59 */	li r4, 0x59
/* 805FC72C  38 A0 00 00 */	li r5, 0
/* 805FC730  38 C0 00 00 */	li r6, 0
/* 805FC734  38 E0 00 00 */	li r7, 0
/* 805FC738  48 00 5E 59 */	bl changeDemoMode__9daPy_py_cFUliis
/* 805FC73C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805FC740  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805FC744  80 63 00 00 */	lwz r3, 0(r3)
/* 805FC748  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805FC74C  38 80 00 01 */	li r4, 1
/* 805FC750  4B CB 38 3C */	b changeBgmStatus__8Z2SeqMgrFl
lbl_805FC754:
/* 805FC754  38 00 00 01 */	li r0, 1
/* 805FC758  98 19 39 66 */	stb r0, 0x3966(r25)
/* 805FC75C  38 00 00 14 */	li r0, 0x14
/* 805FC760  B0 1B 0C 70 */	sth r0, 0xc70(r27)
/* 805FC764  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FC768  2C 00 00 05 */	cmpwi r0, 5
/* 805FC76C  41 80 00 34 */	blt lbl_805FC7A0
/* 805FC770  38 61 00 90 */	addi r3, r1, 0x90
/* 805FC774  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FC778  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805FC77C  FC 60 08 90 */	fmr f3, f1
/* 805FC780  48 00 5D 0D */	bl __ct__4cXyzFfff
/* 805FC784  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805FC788  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805FC78C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805FC790  38 80 00 02 */	li r4, 2
/* 805FC794  38 A0 00 01 */	li r5, 1
/* 805FC798  38 C1 00 90 */	addi r6, r1, 0x90
/* 805FC79C  4B A7 33 74 */	b StartQuake__12dVibration_cFii4cXyz
lbl_805FC7A0:
/* 805FC7A0  38 60 00 64 */	li r3, 0x64
/* 805FC7A4  38 80 00 04 */	li r4, 4
/* 805FC7A8  48 00 5C D1 */	bl dComIfGp_setDoStatusForce__FUcUc
/* 805FC7AC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805FC7B0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805FC7B4  80 63 00 00 */	lwz r3, 0(r3)
/* 805FC7B8  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 805FC7BC  4B A0 FC 20 */	b mDoMtx_YrotS__FPA4_fs
/* 805FC7C0  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805FC7C4  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 805FC7C8  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 805FC7CC  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 805FC7D0  C0 1B 27 34 */	lfs f0, 0x2734(r27)
/* 805FC7D4  EC 01 00 32 */	fmuls f0, f1, f0
/* 805FC7D8  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 805FC7DC  38 61 00 F0 */	addi r3, r1, 0xf0
/* 805FC7E0  38 81 00 E4 */	addi r4, r1, 0xe4
/* 805FC7E4  4B C7 47 08 */	b MtxPosition__FP4cXyzP4cXyz
/* 805FC7E8  38 61 00 E4 */	addi r3, r1, 0xe4
/* 805FC7EC  38 9B 27 20 */	addi r4, r27, 0x2720
/* 805FC7F0  7C 65 1B 78 */	mr r5, r3
/* 805FC7F4  4B D4 A8 9C */	b PSVECAdd
/* 805FC7F8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805FC7FC  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 805FC800  7F A3 EB 78 */	mr r3, r29
/* 805FC804  38 81 00 E4 */	addi r4, r1, 0xe4
/* 805FC808  A8 BB 27 2C */	lha r5, 0x272c(r27)
/* 805FC80C  38 C0 00 00 */	li r6, 0
/* 805FC810  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 805FC814  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805FC818  7D 89 03 A6 */	mtctr r12
/* 805FC81C  4E 80 04 21 */	bctrl 
/* 805FC820  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805FC824  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 805FC828  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 805FC82C  C0 1E 02 3C */	lfs f0, 0x23c(r30)
/* 805FC830  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 805FC834  38 61 00 F0 */	addi r3, r1, 0xf0
/* 805FC838  38 81 00 E4 */	addi r4, r1, 0xe4
/* 805FC83C  4B C7 46 B0 */	b MtxPosition__FP4cXyzP4cXyz
/* 805FC840  C0 21 00 E4 */	lfs f1, 0xe4(r1)
/* 805FC844  C0 1D 05 F8 */	lfs f0, 0x5f8(r29)
/* 805FC848  EC 01 00 2A */	fadds f0, f1, f0
/* 805FC84C  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 805FC850  C0 21 00 EC */	lfs f1, 0xec(r1)
/* 805FC854  C0 1D 06 00 */	lfs f0, 0x600(r29)
/* 805FC858  EC 01 00 2A */	fadds f0, f1, f0
/* 805FC85C  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 805FC860  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 805FC864  3C 63 00 01 */	addis r3, r3, 1
/* 805FC868  38 03 80 00 */	addi r0, r3, -32768
/* 805FC86C  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 805FC870  38 61 00 84 */	addi r3, r1, 0x84
/* 805FC874  38 9D 05 F8 */	addi r4, r29, 0x5f8
/* 805FC878  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 805FC87C  4B C6 A2 B8 */	b __mi__4cXyzCFRC3Vec
/* 805FC880  38 61 00 78 */	addi r3, r1, 0x78
/* 805FC884  38 81 00 84 */	addi r4, r1, 0x84
/* 805FC888  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 805FC88C  4B C6 A2 F8 */	b __ml__4cXyzCFf
/* 805FC890  38 61 00 6C */	addi r3, r1, 0x6c
/* 805FC894  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805FC898  38 A1 00 78 */	addi r5, r1, 0x78
/* 805FC89C  4B C6 A2 48 */	b __pl__4cXyzCFRC3Vec
/* 805FC8A0  38 61 00 CC */	addi r3, r1, 0xcc
/* 805FC8A4  38 81 00 6C */	addi r4, r1, 0x6c
/* 805FC8A8  48 00 5D 2D */	bl __as__4cXyzFRC4cXyz
/* 805FC8AC  C0 21 00 D0 */	lfs f1, 0xd0(r1)
/* 805FC8B0  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 805FC8B4  EC 01 00 2A */	fadds f0, f1, f0
/* 805FC8B8  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 805FC8BC  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 805FC8C0  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 805FC8C4  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805FC8C8  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 805FC8CC  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 805FC8D0  38 61 00 F0 */	addi r3, r1, 0xf0
/* 805FC8D4  38 81 00 D8 */	addi r4, r1, 0xd8
/* 805FC8D8  4B C7 46 14 */	b MtxPosition__FP4cXyzP4cXyz
/* 805FC8DC  38 61 00 D8 */	addi r3, r1, 0xd8
/* 805FC8E0  38 81 00 CC */	addi r4, r1, 0xcc
/* 805FC8E4  7C 65 1B 78 */	mr r5, r3
/* 805FC8E8  4B D4 A7 A8 */	b PSVECAdd
/* 805FC8EC  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FC8F0  2C 00 00 00 */	cmpwi r0, 0
/* 805FC8F4  40 82 00 6C */	bne lbl_805FC960
/* 805FC8F8  38 7B 26 D4 */	addi r3, r27, 0x26d4
/* 805FC8FC  38 81 00 CC */	addi r4, r1, 0xcc
/* 805FC900  48 00 5C D5 */	bl __as__4cXyzFRC4cXyz
/* 805FC904  38 7B 26 C8 */	addi r3, r27, 0x26c8
/* 805FC908  38 81 00 D8 */	addi r4, r1, 0xd8
/* 805FC90C  48 00 5C C9 */	bl __as__4cXyzFRC4cXyz
/* 805FC910  38 61 00 C0 */	addi r3, r1, 0xc0
/* 805FC914  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 805FC918  FC 40 08 90 */	fmr f2, f1
/* 805FC91C  FC 60 08 90 */	fmr f3, f1
/* 805FC920  48 00 5B 6D */	bl __ct__4cXyzFfff
/* 805FC924  38 60 00 02 */	li r3, 2
/* 805FC928  7F 64 DB 78 */	mr r4, r27
/* 805FC92C  38 A1 00 CC */	addi r5, r1, 0xcc
/* 805FC930  38 C0 00 00 */	li r6, 0
/* 805FC934  38 E1 00 C0 */	addi r7, r1, 0xc0
/* 805FC938  39 00 00 00 */	li r8, 0
/* 805FC93C  48 00 5A DD */	bl dComIfGp_setHitMark__FUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 805FC940  38 7B 05 DC */	addi r3, r27, 0x5dc
/* 805FC944  3C 80 00 04 */	lis r4, 4
/* 805FC948  38 A0 00 28 */	li r5, 0x28
/* 805FC94C  81 9B 05 DC */	lwz r12, 0x5dc(r27)
/* 805FC950  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 805FC954  7D 89 03 A6 */	mtctr r12
/* 805FC958  4E 80 04 21 */	bctrl 
/* 805FC95C  48 00 01 5C */	b lbl_805FCAB8
lbl_805FC960:
/* 805FC960  80 7B 05 D0 */	lwz r3, 0x5d0(r27)
/* 805FC964  80 63 00 04 */	lwz r3, 4(r3)
/* 805FC968  38 80 00 21 */	li r4, 0x21
/* 805FC96C  48 00 5A 99 */	bl getAnmMtx__8J3DModelFi
/* 805FC970  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 805FC974  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 805FC978  80 84 00 00 */	lwz r4, 0(r4)
/* 805FC97C  4B D4 9B 34 */	b PSMTXCopy
/* 805FC980  38 61 00 F0 */	addi r3, r1, 0xf0
/* 805FC984  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 805FC988  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 805FC98C  C0 7E 00 14 */	lfs f3, 0x14(r30)
/* 805FC990  48 00 5C 35 */	bl set__4cXyzFfff
/* 805FC994  38 61 00 F0 */	addi r3, r1, 0xf0
/* 805FC998  38 81 00 E4 */	addi r4, r1, 0xe4
/* 805FC99C  4B C7 45 50 */	b MtxPosition__FP4cXyzP4cXyz
/* 805FC9A0  3A C0 00 00 */	li r22, 0
/* 805FC9A4  3B 00 00 00 */	li r24, 0
/* 805FC9A8  3B 20 00 00 */	li r25, 0
/* 805FC9AC  3C 60 80 60 */	lis r3, e_name_6846@ha
/* 805FC9B0  3B 43 2B 4C */	addi r26, r3, e_name_6846@l
lbl_805FC9B4:
/* 805FC9B4  3A F9 26 80 */	addi r23, r25, 0x2680
/* 805FC9B8  7C 7B B8 2E */	lwzx r3, r27, r23
/* 805FC9BC  7C 9A C2 2E */	lhzx r4, r26, r24
/* 805FC9C0  38 A1 00 E4 */	addi r5, r1, 0xe4
/* 805FC9C4  38 C0 00 00 */	li r6, 0
/* 805FC9C8  38 E0 00 00 */	li r7, 0
/* 805FC9CC  48 00 59 B9 */	bl dComIfGp_particle_set__FUlUsPC4cXyzPC5csXyzPC4cXyz
/* 805FC9D0  7C 7B B9 2E */	stwx r3, r27, r23
/* 805FC9D4  3A D6 00 01 */	addi r22, r22, 1
/* 805FC9D8  2C 16 00 02 */	cmpwi r22, 2
/* 805FC9DC  3B 18 00 02 */	addi r24, r24, 2
/* 805FC9E0  3B 39 00 04 */	addi r25, r25, 4
/* 805FC9E4  41 80 FF D0 */	blt lbl_805FC9B4
/* 805FC9E8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070557@ha */
/* 805FC9EC  38 03 05 57 */	addi r0, r3, 0x0557 /* 0x00070557@l */
/* 805FC9F0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805FC9F4  38 7B 05 DC */	addi r3, r27, 0x5dc
/* 805FC9F8  38 81 00 1C */	addi r4, r1, 0x1c
/* 805FC9FC  38 A0 00 00 */	li r5, 0
/* 805FCA00  38 C0 FF FF */	li r6, -1
/* 805FCA04  81 9B 05 DC */	lwz r12, 0x5dc(r27)
/* 805FCA08  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 805FCA0C  7D 89 03 A6 */	mtctr r12
/* 805FCA10  4E 80 04 21 */	bctrl 
/* 805FCA14  A8 1B 0C 4A */	lha r0, 0xc4a(r27)
/* 805FCA18  2C 00 00 00 */	cmpwi r0, 0
/* 805FCA1C  40 82 00 48 */	bne lbl_805FCA64
/* 805FCA20  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 805FCA24  4B C6 AF 30 */	b cM_rndF__Ff
/* 805FCA28  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 805FCA2C  EC 00 08 2A */	fadds f0, f0, f1
/* 805FCA30  FC 00 00 1E */	fctiwz f0, f0
/* 805FCA34  D8 01 01 00 */	stfd f0, 0x100(r1)
/* 805FCA38  80 01 01 04 */	lwz r0, 0x104(r1)
/* 805FCA3C  B0 1B 0C 4A */	sth r0, 0xc4a(r27)
/* 805FCA40  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 805FCA44  4B C6 AF 48 */	b cM_rndFX__Ff
/* 805FCA48  D0 3B 26 EC */	stfs f1, 0x26ec(r27)
/* 805FCA4C  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 805FCA50  4B C6 AF 3C */	b cM_rndFX__Ff
/* 805FCA54  D0 3B 26 F0 */	stfs f1, 0x26f0(r27)
/* 805FCA58  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 805FCA5C  4B C6 AF 30 */	b cM_rndFX__Ff
/* 805FCA60  D0 3B 26 F4 */	stfs f1, 0x26f4(r27)
lbl_805FCA64:
/* 805FCA64  38 7B 26 D4 */	addi r3, r27, 0x26d4
/* 805FCA68  C0 21 00 CC */	lfs f1, 0xcc(r1)
/* 805FCA6C  C0 1B 26 EC */	lfs f0, 0x26ec(r27)
/* 805FCA70  EC 21 00 2A */	fadds f1, f1, f0
/* 805FCA74  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 805FCA78  C0 7E 00 9C */	lfs f3, 0x9c(r30)
/* 805FCA7C  4B C7 2F C0 */	b cLib_addCalc2__FPffff
/* 805FCA80  38 7B 26 D8 */	addi r3, r27, 0x26d8
/* 805FCA84  C0 21 00 D0 */	lfs f1, 0xd0(r1)
/* 805FCA88  C0 1B 26 F0 */	lfs f0, 0x26f0(r27)
/* 805FCA8C  EC 21 00 2A */	fadds f1, f1, f0
/* 805FCA90  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 805FCA94  C0 7E 00 9C */	lfs f3, 0x9c(r30)
/* 805FCA98  4B C7 2F A4 */	b cLib_addCalc2__FPffff
/* 805FCA9C  38 7B 26 DC */	addi r3, r27, 0x26dc
/* 805FCAA0  C0 21 00 D4 */	lfs f1, 0xd4(r1)
/* 805FCAA4  C0 1B 26 F4 */	lfs f0, 0x26f4(r27)
/* 805FCAA8  EC 21 00 2A */	fadds f1, f1, f0
/* 805FCAAC  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 805FCAB0  C0 7E 00 9C */	lfs f3, 0x9c(r30)
/* 805FCAB4  4B C7 2F 88 */	b cLib_addCalc2__FPffff
lbl_805FCAB8:
/* 805FCAB8  38 60 00 00 */	li r3, 0
/* 805FCABC  48 00 58 AD */	bl getTrigA__8mDoCPd_cFUl
/* 805FCAC0  2C 03 00 00 */	cmpwi r3, 0
/* 805FCAC4  41 82 00 2C */	beq lbl_805FCAF0
/* 805FCAC8  C0 3B 27 30 */	lfs f1, 0x2730(r27)
/* 805FCACC  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 805FCAD0  EC 01 00 2A */	fadds f0, f1, f0
/* 805FCAD4  D0 1B 27 30 */	stfs f0, 0x2730(r27)
/* 805FCAD8  C0 3B 27 30 */	lfs f1, 0x2730(r27)
/* 805FCADC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805FCAE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FCAE4  40 81 00 30 */	ble lbl_805FCB14
/* 805FCAE8  D0 1B 27 30 */	stfs f0, 0x2730(r27)
/* 805FCAEC  48 00 00 28 */	b lbl_805FCB14
lbl_805FCAF0:
/* 805FCAF0  C0 3B 27 30 */	lfs f1, 0x2730(r27)
/* 805FCAF4  C0 1E 02 40 */	lfs f0, 0x240(r30)
/* 805FCAF8  EC 01 00 28 */	fsubs f0, f1, f0
/* 805FCAFC  D0 1B 27 30 */	stfs f0, 0x2730(r27)
/* 805FCB00  C0 3B 27 30 */	lfs f1, 0x2730(r27)
/* 805FCB04  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 805FCB08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FCB0C  40 80 00 08 */	bge lbl_805FCB14
/* 805FCB10  D0 1B 27 30 */	stfs f0, 0x2730(r27)
lbl_805FCB14:
/* 805FCB14  38 7B 27 34 */	addi r3, r27, 0x2734
/* 805FCB18  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 805FCB1C  C0 1B 27 30 */	lfs f0, 0x2730(r27)
/* 805FCB20  EC 21 00 32 */	fmuls f1, f1, f0
/* 805FCB24  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 805FCB28  C0 7E 00 84 */	lfs f3, 0x84(r30)
/* 805FCB2C  4B C7 2F 10 */	b cLib_addCalc2__FPffff
/* 805FCB30  C0 3B 27 34 */	lfs f1, 0x2734(r27)
/* 805FCB34  C0 1E 02 44 */	lfs f0, 0x244(r30)
/* 805FCB38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FCB3C  4C 40 13 82 */	cror 2, 0, 2
/* 805FCB40  40 82 00 74 */	bne lbl_805FCBB4
/* 805FCB44  38 00 00 34 */	li r0, 0x34
/* 805FCB48  B0 1B 26 C4 */	sth r0, 0x26c4(r27)
/* 805FCB4C  38 00 00 00 */	li r0, 0
/* 805FCB50  B0 1B 26 C6 */	sth r0, 0x26c6(r27)
/* 805FCB54  7F 63 DB 78 */	mr r3, r27
/* 805FCB58  38 80 00 59 */	li r4, 0x59
/* 805FCB5C  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805FCB60  38 A0 00 00 */	li r5, 0
/* 805FCB64  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805FCB68  4B FF 7F 2D */	bl anm_init__FP11b_gnd_classifUcf
/* 805FCB6C  48 00 59 31 */	bl daPy_getPlayerActorClass__Fv
/* 805FCB70  38 80 00 59 */	li r4, 0x59
/* 805FCB74  38 A0 00 04 */	li r5, 4
/* 805FCB78  38 C0 00 00 */	li r6, 0
/* 805FCB7C  38 E0 00 00 */	li r7, 0
/* 805FCB80  48 00 5A 11 */	bl changeDemoMode__9daPy_py_cFUliis
/* 805FCB84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805FCB88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805FCB8C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805FCB90  38 80 00 1F */	li r4, 0x1f
/* 805FCB94  4B A7 32 00 */	b StopQuake__12dVibration_cFi
/* 805FCB98  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805FCB9C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805FCBA0  80 63 00 00 */	lwz r3, 0(r3)
/* 805FCBA4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805FCBA8  38 80 00 02 */	li r4, 2
/* 805FCBAC  4B CB 33 E0 */	b changeBgmStatus__8Z2SeqMgrFl
/* 805FCBB0  48 00 0D D0 */	b lbl_805FD980
lbl_805FCBB4:
/* 805FCBB4  C0 1E 02 48 */	lfs f0, 0x248(r30)
/* 805FCBB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FCBBC  4C 41 13 82 */	cror 2, 1, 2
/* 805FCBC0  40 82 00 74 */	bne lbl_805FCC34
/* 805FCBC4  38 00 00 37 */	li r0, 0x37
/* 805FCBC8  B0 1B 26 C4 */	sth r0, 0x26c4(r27)
/* 805FCBCC  38 00 00 00 */	li r0, 0
/* 805FCBD0  B0 1B 26 C6 */	sth r0, 0x26c6(r27)
/* 805FCBD4  7F 63 DB 78 */	mr r3, r27
/* 805FCBD8  38 80 00 58 */	li r4, 0x58
/* 805FCBDC  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805FCBE0  38 A0 00 00 */	li r5, 0
/* 805FCBE4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805FCBE8  4B FF 7E AD */	bl anm_init__FP11b_gnd_classifUcf
/* 805FCBEC  48 00 58 B1 */	bl daPy_getPlayerActorClass__Fv
/* 805FCBF0  38 80 00 59 */	li r4, 0x59
/* 805FCBF4  38 A0 00 03 */	li r5, 3
/* 805FCBF8  38 C0 00 00 */	li r6, 0
/* 805FCBFC  38 E0 00 00 */	li r7, 0
/* 805FCC00  48 00 59 91 */	bl changeDemoMode__9daPy_py_cFUliis
/* 805FCC04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805FCC08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805FCC0C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805FCC10  38 80 00 1F */	li r4, 0x1f
/* 805FCC14  4B A7 31 80 */	b StopQuake__12dVibration_cFi
/* 805FCC18  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805FCC1C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805FCC20  80 63 00 00 */	lwz r3, 0(r3)
/* 805FCC24  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805FCC28  38 80 00 03 */	li r4, 3
/* 805FCC2C  4B CB 33 60 */	b changeBgmStatus__8Z2SeqMgrFl
/* 805FCC30  48 00 0D 50 */	b lbl_805FD980
lbl_805FCC34:
/* 805FCC34  C0 3B 27 30 */	lfs f1, 0x2730(r27)
/* 805FCC38  C0 1E 02 4C */	lfs f0, 0x24c(r30)
/* 805FCC3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FCC40  40 80 00 98 */	bge lbl_805FCCD8
/* 805FCC44  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070559@ha */
/* 805FCC48  38 03 05 59 */	addi r0, r3, 0x0559 /* 0x00070559@l */
/* 805FCC4C  90 01 00 18 */	stw r0, 0x18(r1)
/* 805FCC50  38 7B 05 DC */	addi r3, r27, 0x5dc
/* 805FCC54  38 81 00 18 */	addi r4, r1, 0x18
/* 805FCC58  38 A0 FF FF */	li r5, -1
/* 805FCC5C  81 9B 05 DC */	lwz r12, 0x5dc(r27)
/* 805FCC60  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 805FCC64  7D 89 03 A6 */	mtctr r12
/* 805FCC68  4E 80 04 21 */	bctrl 
/* 805FCC6C  80 1B 07 58 */	lwz r0, 0x758(r27)
/* 805FCC70  2C 00 00 56 */	cmpwi r0, 0x56
/* 805FCC74  41 82 0D 0C */	beq lbl_805FD980
/* 805FCC78  A8 1B 0C 48 */	lha r0, 0xc48(r27)
/* 805FCC7C  2C 00 00 00 */	cmpwi r0, 0
/* 805FCC80  40 82 0D 00 */	bne lbl_805FD980
/* 805FCC84  7F 63 DB 78 */	mr r3, r27
/* 805FCC88  38 80 00 56 */	li r4, 0x56
/* 805FCC8C  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805FCC90  38 A0 00 02 */	li r5, 2
/* 805FCC94  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805FCC98  4B FF 7D FD */	bl anm_init__FP11b_gnd_classifUcf
/* 805FCC9C  48 00 58 01 */	bl daPy_getPlayerActorClass__Fv
/* 805FCCA0  38 80 00 59 */	li r4, 0x59
/* 805FCCA4  38 A0 00 01 */	li r5, 1
/* 805FCCA8  38 C0 00 00 */	li r6, 0
/* 805FCCAC  38 E0 00 00 */	li r7, 0
/* 805FCCB0  48 00 58 E1 */	bl changeDemoMode__9daPy_py_cFUliis
/* 805FCCB4  38 00 00 1E */	li r0, 0x1e
/* 805FCCB8  B0 1B 0C 48 */	sth r0, 0xc48(r27)
/* 805FCCBC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805FCCC0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805FCCC4  80 63 00 00 */	lwz r3, 0(r3)
/* 805FCCC8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805FCCCC  38 80 00 04 */	li r4, 4
/* 805FCCD0  4B CB 32 BC */	b changeBgmStatus__8Z2SeqMgrFl
/* 805FCCD4  48 00 0C AC */	b lbl_805FD980
lbl_805FCCD8:
/* 805FCCD8  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 805FCCDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FCCE0  40 81 00 98 */	ble lbl_805FCD78
/* 805FCCE4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007055A@ha */
/* 805FCCE8  38 03 05 5A */	addi r0, r3, 0x055A /* 0x0007055A@l */
/* 805FCCEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FCCF0  38 7B 05 DC */	addi r3, r27, 0x5dc
/* 805FCCF4  38 81 00 14 */	addi r4, r1, 0x14
/* 805FCCF8  38 A0 FF FF */	li r5, -1
/* 805FCCFC  81 9B 05 DC */	lwz r12, 0x5dc(r27)
/* 805FCD00  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 805FCD04  7D 89 03 A6 */	mtctr r12
/* 805FCD08  4E 80 04 21 */	bctrl 
/* 805FCD0C  80 1B 07 58 */	lwz r0, 0x758(r27)
/* 805FCD10  2C 00 00 57 */	cmpwi r0, 0x57
/* 805FCD14  41 82 0C 6C */	beq lbl_805FD980
/* 805FCD18  A8 1B 0C 48 */	lha r0, 0xc48(r27)
/* 805FCD1C  2C 00 00 00 */	cmpwi r0, 0
/* 805FCD20  40 82 0C 60 */	bne lbl_805FD980
/* 805FCD24  7F 63 DB 78 */	mr r3, r27
/* 805FCD28  38 80 00 57 */	li r4, 0x57
/* 805FCD2C  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805FCD30  38 A0 00 02 */	li r5, 2
/* 805FCD34  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805FCD38  4B FF 7D 5D */	bl anm_init__FP11b_gnd_classifUcf
/* 805FCD3C  48 00 57 61 */	bl daPy_getPlayerActorClass__Fv
/* 805FCD40  38 80 00 59 */	li r4, 0x59
/* 805FCD44  38 A0 00 02 */	li r5, 2
/* 805FCD48  38 C0 00 00 */	li r6, 0
/* 805FCD4C  38 E0 00 00 */	li r7, 0
/* 805FCD50  48 00 58 41 */	bl changeDemoMode__9daPy_py_cFUliis
/* 805FCD54  38 00 00 1E */	li r0, 0x1e
/* 805FCD58  B0 1B 0C 48 */	sth r0, 0xc48(r27)
/* 805FCD5C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805FCD60  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805FCD64  80 63 00 00 */	lwz r3, 0(r3)
/* 805FCD68  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805FCD6C  38 80 00 05 */	li r4, 5
/* 805FCD70  4B CB 32 1C */	b changeBgmStatus__8Z2SeqMgrFl
/* 805FCD74  48 00 0C 0C */	b lbl_805FD980
lbl_805FCD78:
/* 805FCD78  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070558@ha */
/* 805FCD7C  38 03 05 58 */	addi r0, r3, 0x0558 /* 0x00070558@l */
/* 805FCD80  90 01 00 10 */	stw r0, 0x10(r1)
/* 805FCD84  38 7B 05 DC */	addi r3, r27, 0x5dc
/* 805FCD88  38 81 00 10 */	addi r4, r1, 0x10
/* 805FCD8C  38 A0 FF FF */	li r5, -1
/* 805FCD90  81 9B 05 DC */	lwz r12, 0x5dc(r27)
/* 805FCD94  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 805FCD98  7D 89 03 A6 */	mtctr r12
/* 805FCD9C  4E 80 04 21 */	bctrl 
/* 805FCDA0  80 1B 07 58 */	lwz r0, 0x758(r27)
/* 805FCDA4  2C 00 00 55 */	cmpwi r0, 0x55
/* 805FCDA8  41 82 0B D8 */	beq lbl_805FD980
/* 805FCDAC  A8 1B 0C 48 */	lha r0, 0xc48(r27)
/* 805FCDB0  2C 00 00 00 */	cmpwi r0, 0
/* 805FCDB4  40 82 0B CC */	bne lbl_805FD980
/* 805FCDB8  7F 63 DB 78 */	mr r3, r27
/* 805FCDBC  38 80 00 55 */	li r4, 0x55
/* 805FCDC0  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805FCDC4  38 A0 00 02 */	li r5, 2
/* 805FCDC8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805FCDCC  4B FF 7C C9 */	bl anm_init__FP11b_gnd_classifUcf
/* 805FCDD0  48 00 56 CD */	bl daPy_getPlayerActorClass__Fv
/* 805FCDD4  38 80 00 59 */	li r4, 0x59
/* 805FCDD8  38 A0 00 00 */	li r5, 0
/* 805FCDDC  38 C0 00 00 */	li r6, 0
/* 805FCDE0  38 E0 00 00 */	li r7, 0
/* 805FCDE4  48 00 57 AD */	bl changeDemoMode__9daPy_py_cFUliis
/* 805FCDE8  38 00 00 1E */	li r0, 0x1e
/* 805FCDEC  B0 1B 0C 48 */	sth r0, 0xc48(r27)
/* 805FCDF0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805FCDF4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805FCDF8  80 63 00 00 */	lwz r3, 0(r3)
/* 805FCDFC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805FCE00  38 80 00 06 */	li r4, 6
/* 805FCE04  4B CB 31 88 */	b changeBgmStatus__8Z2SeqMgrFl
/* 805FCE08  48 00 0B 78 */	b lbl_805FD980
lbl_805FCE0C:
/* 805FCE0C  38 00 00 14 */	li r0, 0x14
/* 805FCE10  B0 1B 0C 70 */	sth r0, 0xc70(r27)
/* 805FCE14  80 7B 05 D0 */	lwz r3, 0x5d0(r27)
/* 805FCE18  48 00 56 D5 */	bl isStop__13mDoExt_morf_cFv
/* 805FCE1C  2C 03 00 00 */	cmpwi r3, 0
/* 805FCE20  41 82 00 24 */	beq lbl_805FCE44
/* 805FCE24  38 00 00 0B */	li r0, 0xb
/* 805FCE28  B0 1B 0A FE */	sth r0, 0xafe(r27)
/* 805FCE2C  38 00 00 02 */	li r0, 2
/* 805FCE30  B0 1B 05 BC */	sth r0, 0x5bc(r27)
/* 805FCE34  38 00 00 35 */	li r0, 0x35
/* 805FCE38  B0 1B 26 C4 */	sth r0, 0x26c4(r27)
/* 805FCE3C  38 00 00 00 */	li r0, 0
/* 805FCE40  B0 1B 26 C6 */	sth r0, 0x26c6(r27)
lbl_805FCE44:
/* 805FCE44  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FCE48  2C 00 00 14 */	cmpwi r0, 0x14
/* 805FCE4C  40 82 0B 34 */	bne lbl_805FD980
/* 805FCE50  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805FCE54  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805FCE58  80 63 00 00 */	lwz r3, 0(r3)
/* 805FCE5C  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 805FCE60  4B A0 F5 7C */	b mDoMtx_YrotS__FPA4_fs
/* 805FCE64  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 805FCE68  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 805FCE6C  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 805FCE70  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 805FCE74  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 805FCE78  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 805FCE7C  38 61 00 F0 */	addi r3, r1, 0xf0
/* 805FCE80  38 9B 26 C8 */	addi r4, r27, 0x26c8
/* 805FCE84  4B C7 40 68 */	b MtxPosition__FP4cXyzP4cXyz
/* 805FCE88  38 7B 26 C8 */	addi r3, r27, 0x26c8
/* 805FCE8C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805FCE90  7C 65 1B 78 */	mr r5, r3
/* 805FCE94  4B D4 A1 FC */	b PSVECAdd
/* 805FCE98  38 7B 26 D4 */	addi r3, r27, 0x26d4
/* 805FCE9C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805FCEA0  48 00 57 35 */	bl __as__4cXyzFRC4cXyz
/* 805FCEA4  C0 3B 26 D8 */	lfs f1, 0x26d8(r27)
/* 805FCEA8  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 805FCEAC  EC 01 00 2A */	fadds f0, f1, f0
/* 805FCEB0  D0 1B 26 D8 */	stfs f0, 0x26d8(r27)
/* 805FCEB4  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 805FCEB8  D0 19 39 5C */	stfs f0, 0x395c(r25)
/* 805FCEBC  48 00 0A C4 */	b lbl_805FD980
lbl_805FCEC0:
/* 805FCEC0  38 00 00 14 */	li r0, 0x14
/* 805FCEC4  B0 1B 0C 70 */	sth r0, 0xc70(r27)
/* 805FCEC8  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FCECC  2C 00 00 14 */	cmpwi r0, 0x14
/* 805FCED0  41 80 00 5C */	blt lbl_805FCF2C
/* 805FCED4  38 61 00 CC */	addi r3, r1, 0xcc
/* 805FCED8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805FCEDC  48 00 56 F9 */	bl __as__4cXyzFRC4cXyz
/* 805FCEE0  C0 21 00 D0 */	lfs f1, 0xd0(r1)
/* 805FCEE4  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 805FCEE8  EC 01 00 2A */	fadds f0, f1, f0
/* 805FCEEC  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 805FCEF0  38 7B 26 D4 */	addi r3, r27, 0x26d4
/* 805FCEF4  C0 21 00 CC */	lfs f1, 0xcc(r1)
/* 805FCEF8  C0 5E 02 50 */	lfs f2, 0x250(r30)
/* 805FCEFC  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 805FCF00  4B C7 2B 3C */	b cLib_addCalc2__FPffff
/* 805FCF04  38 7B 26 D8 */	addi r3, r27, 0x26d8
/* 805FCF08  C0 21 00 D0 */	lfs f1, 0xd0(r1)
/* 805FCF0C  C0 5E 02 50 */	lfs f2, 0x250(r30)
/* 805FCF10  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 805FCF14  4B C7 2B 28 */	b cLib_addCalc2__FPffff
/* 805FCF18  38 7B 26 DC */	addi r3, r27, 0x26dc
/* 805FCF1C  C0 21 00 D4 */	lfs f1, 0xd4(r1)
/* 805FCF20  C0 5E 02 50 */	lfs f2, 0x250(r30)
/* 805FCF24  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 805FCF28  4B C7 2B 14 */	b cLib_addCalc2__FPffff
lbl_805FCF2C:
/* 805FCF2C  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FCF30  2C 00 00 12 */	cmpwi r0, 0x12
/* 805FCF34  40 82 00 80 */	bne lbl_805FCFB4
/* 805FCF38  48 00 55 65 */	bl daPy_getPlayerActorClass__Fv
/* 805FCF3C  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 805FCF40  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 805FCF44  C0 5E 00 98 */	lfs f2, 0x98(r30)
/* 805FCF48  38 A0 00 08 */	li r5, 8
/* 805FCF4C  38 C0 00 01 */	li r6, 1
/* 805FCF50  38 E0 00 00 */	li r7, 0
/* 805FCF54  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805FCF58  81 8C 01 60 */	lwz r12, 0x160(r12)
/* 805FCF5C  7D 89 03 A6 */	mtctr r12
/* 805FCF60  4E 80 04 21 */	bctrl 
/* 805FCF64  48 00 55 39 */	bl daPy_getPlayerActorClass__Fv
/* 805FCF68  38 80 00 01 */	li r4, 1
/* 805FCF6C  38 A0 00 00 */	li r5, 0
/* 805FCF70  38 C0 00 00 */	li r6, 0
/* 805FCF74  38 E0 00 00 */	li r7, 0
/* 805FCF78  48 00 56 19 */	bl changeDemoMode__9daPy_py_cFUliis
/* 805FCF7C  38 61 00 B4 */	addi r3, r1, 0xb4
/* 805FCF80  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805FCF84  48 00 53 C9 */	bl __ct__4cXyzFRC4cXyz
/* 805FCF88  C0 21 00 B8 */	lfs f1, 0xb8(r1)
/* 805FCF8C  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 805FCF90  EC 01 00 2A */	fadds f0, f1, f0
/* 805FCF94  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805FCF98  38 60 00 03 */	li r3, 3
/* 805FCF9C  38 80 00 00 */	li r4, 0
/* 805FCFA0  38 A1 00 B4 */	addi r5, r1, 0xb4
/* 805FCFA4  38 DD 04 E4 */	addi r6, r29, 0x4e4
/* 805FCFA8  38 E0 00 00 */	li r7, 0
/* 805FCFAC  39 00 00 00 */	li r8, 0
/* 805FCFB0  48 00 54 69 */	bl dComIfGp_setHitMark__FUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
lbl_805FCFB4:
/* 805FCFB4  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FCFB8  2C 00 00 5C */	cmpwi r0, 0x5c
/* 805FCFBC  40 82 09 C4 */	bne lbl_805FD980
/* 805FCFC0  3B 80 00 01 */	li r28, 1
/* 805FCFC4  48 00 09 BC */	b lbl_805FD980
lbl_805FCFC8:
/* 805FCFC8  38 00 00 14 */	li r0, 0x14
/* 805FCFCC  B0 1B 0C 70 */	sth r0, 0xc70(r27)
/* 805FCFD0  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FCFD4  2C 00 00 14 */	cmpwi r0, 0x14
/* 805FCFD8  40 82 00 70 */	bne lbl_805FD048
/* 805FCFDC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805FCFE0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805FCFE4  80 63 00 00 */	lwz r3, 0(r3)
/* 805FCFE8  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 805FCFEC  4B A0 F3 F0 */	b mDoMtx_YrotS__FPA4_fs
/* 805FCFF0  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 805FCFF4  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 805FCFF8  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 805FCFFC  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 805FD000  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 805FD004  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 805FD008  38 61 00 F0 */	addi r3, r1, 0xf0
/* 805FD00C  38 9B 26 C8 */	addi r4, r27, 0x26c8
/* 805FD010  4B C7 3E DC */	b MtxPosition__FP4cXyzP4cXyz
/* 805FD014  38 7B 26 C8 */	addi r3, r27, 0x26c8
/* 805FD018  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805FD01C  7C 65 1B 78 */	mr r5, r3
/* 805FD020  4B D4 A0 70 */	b PSVECAdd
/* 805FD024  38 7B 26 D4 */	addi r3, r27, 0x26d4
/* 805FD028  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805FD02C  48 00 55 A9 */	bl __as__4cXyzFRC4cXyz
/* 805FD030  C0 3B 26 D8 */	lfs f1, 0x26d8(r27)
/* 805FD034  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 805FD038  EC 01 00 2A */	fadds f0, f1, f0
/* 805FD03C  D0 1B 26 D8 */	stfs f0, 0x26d8(r27)
/* 805FD040  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 805FD044  D0 19 39 5C */	stfs f0, 0x395c(r25)
lbl_805FD048:
/* 805FD048  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FD04C  2C 00 00 2B */	cmpwi r0, 0x2b
/* 805FD050  41 80 09 30 */	blt lbl_805FD980
/* 805FD054  3B 80 00 01 */	li r28, 1
/* 805FD058  38 00 00 0D */	li r0, 0xd
/* 805FD05C  B0 1B 0A FE */	sth r0, 0xafe(r27)
/* 805FD060  38 00 00 05 */	li r0, 5
/* 805FD064  B0 1B 05 BC */	sth r0, 0x5bc(r27)
/* 805FD068  38 00 00 32 */	li r0, 0x32
/* 805FD06C  B0 1B 0C 44 */	sth r0, 0xc44(r27)
/* 805FD070  38 00 00 01 */	li r0, 1
/* 805FD074  98 1B 0C 7C */	stb r0, 0xc7c(r27)
/* 805FD078  48 00 09 08 */	b lbl_805FD980
lbl_805FD07C:
/* 805FD07C  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 805FD080  28 00 00 02 */	cmplwi r0, 2
/* 805FD084  41 82 00 2C */	beq lbl_805FD0B0
/* 805FD088  7F 63 DB 78 */	mr r3, r27
/* 805FD08C  38 80 00 02 */	li r4, 2
/* 805FD090  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 805FD094  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 805FD098  38 C0 00 00 */	li r6, 0
/* 805FD09C  4B A1 E8 6C */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805FD0A0  A0 1B 00 FA */	lhz r0, 0xfa(r27)
/* 805FD0A4  60 00 00 02 */	ori r0, r0, 2
/* 805FD0A8  B0 1B 00 FA */	sth r0, 0xfa(r27)
/* 805FD0AC  48 00 0A 1C */	b lbl_805FDAC8
lbl_805FD0B0:
/* 805FD0B0  38 7F 02 48 */	addi r3, r31, 0x248
/* 805FD0B4  4B B6 44 1C */	b Stop__9dCamera_cFv
/* 805FD0B8  38 00 00 3D */	li r0, 0x3d
/* 805FD0BC  B0 1B 26 C4 */	sth r0, 0x26c4(r27)
/* 805FD0C0  38 00 00 00 */	li r0, 0
/* 805FD0C4  B0 1B 26 C6 */	sth r0, 0x26c6(r27)
/* 805FD0C8  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 805FD0CC  D0 1B 27 10 */	stfs f0, 0x2710(r27)
/* 805FD0D0  48 00 53 CD */	bl daPy_getPlayerActorClass__Fv
/* 805FD0D4  48 00 54 D1 */	bl changeOriginalDemo__9daPy_py_cFv
/* 805FD0D8  48 00 53 C5 */	bl daPy_getPlayerActorClass__Fv
/* 805FD0DC  38 80 00 5A */	li r4, 0x5a
/* 805FD0E0  38 A0 00 00 */	li r5, 0
/* 805FD0E4  38 C0 00 00 */	li r6, 0
/* 805FD0E8  38 E0 00 00 */	li r7, 0
/* 805FD0EC  48 00 54 A5 */	bl changeDemoMode__9daPy_py_cFUliis
/* 805FD0F0  38 61 00 E4 */	addi r3, r1, 0xe4
/* 805FD0F4  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FD0F8  C0 5E 01 60 */	lfs f2, 0x160(r30)
/* 805FD0FC  FC 60 08 90 */	fmr f3, f1
/* 805FD100  48 00 54 C5 */	bl set__4cXyzFfff
/* 805FD104  48 00 53 99 */	bl daPy_getPlayerActorClass__Fv
/* 805FD108  38 81 00 E4 */	addi r4, r1, 0xe4
/* 805FD10C  38 A0 E0 00 */	li r5, -8192
/* 805FD110  38 C0 00 00 */	li r6, 0
/* 805FD114  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805FD118  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805FD11C  7D 89 03 A6 */	mtctr r12
/* 805FD120  4E 80 04 21 */	bctrl 
/* 805FD124  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 805FD128  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FD12C  C0 5E 01 60 */	lfs f2, 0x160(r30)
/* 805FD130  FC 60 08 90 */	fmr f3, f1
/* 805FD134  48 00 54 91 */	bl set__4cXyzFfff
/* 805FD138  38 7B 04 BC */	addi r3, r27, 0x4bc
/* 805FD13C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805FD140  48 00 54 95 */	bl __as__4cXyzFRC4cXyz
/* 805FD144  38 00 E0 00 */	li r0, -8192
/* 805FD148  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 805FD14C  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 805FD150  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805FD154  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805FD158  80 63 00 00 */	lwz r3, 0(r3)
/* 805FD15C  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 805FD160  4B A0 F2 7C */	b mDoMtx_YrotS__FPA4_fs
/* 805FD164  C0 1E 01 58 */	lfs f0, 0x158(r30)
/* 805FD168  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 805FD16C  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 805FD170  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 805FD174  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 805FD178  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 805FD17C  38 61 00 F0 */	addi r3, r1, 0xf0
/* 805FD180  38 9B 26 C8 */	addi r4, r27, 0x26c8
/* 805FD184  4B C7 3D 68 */	b MtxPosition__FP4cXyzP4cXyz
/* 805FD188  38 7B 26 C8 */	addi r3, r27, 0x26c8
/* 805FD18C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805FD190  7C 65 1B 78 */	mr r5, r3
/* 805FD194  4B D4 9E FC */	b PSVECAdd
/* 805FD198  38 7B 26 D4 */	addi r3, r27, 0x26d4
/* 805FD19C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805FD1A0  48 00 54 35 */	bl __as__4cXyzFRC4cXyz
lbl_805FD1A4:
/* 805FD1A4  38 00 00 14 */	li r0, 0x14
/* 805FD1A8  B0 1B 0C 70 */	sth r0, 0xc70(r27)
/* 805FD1AC  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FD1B0  2C 00 00 01 */	cmpwi r0, 1
/* 805FD1B4  41 80 00 58 */	blt lbl_805FD20C
/* 805FD1B8  38 7B 26 D4 */	addi r3, r27, 0x26d4
/* 805FD1BC  C0 3D 05 38 */	lfs f1, 0x538(r29)
/* 805FD1C0  C0 5E 01 0C */	lfs f2, 0x10c(r30)
/* 805FD1C4  C0 7E 00 F0 */	lfs f3, 0xf0(r30)
/* 805FD1C8  4B C7 28 74 */	b cLib_addCalc2__FPffff
/* 805FD1CC  C0 3D 05 3C */	lfs f1, 0x53c(r29)
/* 805FD1D0  D0 21 00 D0 */	stfs f1, 0xd0(r1)
/* 805FD1D4  C0 1E 02 54 */	lfs f0, 0x254(r30)
/* 805FD1D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FD1DC  40 81 00 08 */	ble lbl_805FD1E4
/* 805FD1E0  D0 01 00 D0 */	stfs f0, 0xd0(r1)
lbl_805FD1E4:
/* 805FD1E4  38 7B 26 D8 */	addi r3, r27, 0x26d8
/* 805FD1E8  C0 21 00 D0 */	lfs f1, 0xd0(r1)
/* 805FD1EC  C0 5E 01 0C */	lfs f2, 0x10c(r30)
/* 805FD1F0  C0 7E 00 F0 */	lfs f3, 0xf0(r30)
/* 805FD1F4  4B C7 28 48 */	b cLib_addCalc2__FPffff
/* 805FD1F8  38 7B 26 DC */	addi r3, r27, 0x26dc
/* 805FD1FC  C0 3D 05 40 */	lfs f1, 0x540(r29)
/* 805FD200  C0 5E 01 0C */	lfs f2, 0x10c(r30)
/* 805FD204  C0 7E 00 F0 */	lfs f3, 0xf0(r30)
/* 805FD208  4B C7 28 34 */	b cLib_addCalc2__FPffff
lbl_805FD20C:
/* 805FD20C  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FD210  2C 00 00 1F */	cmpwi r0, 0x1f
/* 805FD214  40 82 07 6C */	bne lbl_805FD980
/* 805FD218  38 00 00 3E */	li r0, 0x3e
/* 805FD21C  B0 1B 26 C4 */	sth r0, 0x26c4(r27)
/* 805FD220  38 00 00 00 */	li r0, 0
/* 805FD224  B0 1B 26 C6 */	sth r0, 0x26c6(r27)
/* 805FD228  7F 63 DB 78 */	mr r3, r27
/* 805FD22C  38 80 00 54 */	li r4, 0x54
/* 805FD230  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FD234  38 A0 00 00 */	li r5, 0
/* 805FD238  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805FD23C  4B FF 78 59 */	bl anm_init__FP11b_gnd_classifUcf
/* 805FD240  38 61 00 60 */	addi r3, r1, 0x60
/* 805FD244  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FD248  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805FD24C  FC 60 08 90 */	fmr f3, f1
/* 805FD250  48 00 52 3D */	bl __ct__4cXyzFfff
/* 805FD254  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805FD258  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805FD25C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805FD260  38 80 00 07 */	li r4, 7
/* 805FD264  38 A0 00 01 */	li r5, 1
/* 805FD268  38 C1 00 60 */	addi r6, r1, 0x60
/* 805FD26C  4B A7 27 B8 */	b StartShock__12dVibration_cFii4cXyz
/* 805FD270  3C 60 80 60 */	lis r3, s_objgbdel_sub__FPvPv@ha
/* 805FD274  38 63 A4 30 */	addi r3, r3, s_objgbdel_sub__FPvPv@l
/* 805FD278  7F 64 DB 78 */	mr r4, r27
/* 805FD27C  4B A2 40 BC */	b fpcEx_Search__FPFPvPv_PvPv
/* 805FD280  38 00 00 02 */	li r0, 2
/* 805FD284  98 1B 27 39 */	stb r0, 0x2739(r27)
/* 805FD288  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805FD28C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805FD290  80 63 00 00 */	lwz r3, 0(r3)
/* 805FD294  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FD298  38 80 00 00 */	li r4, 0
/* 805FD29C  4B CB 07 58 */	b seMoveVolumeAll__7Z2SeMgrFfUl
/* 805FD2A0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070566@ha */
/* 805FD2A4  38 03 05 66 */	addi r0, r3, 0x0566 /* 0x00070566@l */
/* 805FD2A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805FD2AC  38 7B 05 DC */	addi r3, r27, 0x5dc
/* 805FD2B0  38 81 00 0C */	addi r4, r1, 0xc
/* 805FD2B4  38 A0 FF FF */	li r5, -1
/* 805FD2B8  81 9B 05 DC */	lwz r12, 0x5dc(r27)
/* 805FD2BC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FD2C0  7D 89 03 A6 */	mtctr r12
/* 805FD2C4  4E 80 04 21 */	bctrl 
/* 805FD2C8  48 00 06 B8 */	b lbl_805FD980
lbl_805FD2CC:
/* 805FD2CC  38 00 00 14 */	li r0, 0x14
/* 805FD2D0  B0 1B 0C 70 */	sth r0, 0xc70(r27)
/* 805FD2D4  C0 1E 01 30 */	lfs f0, 0x130(r30)
/* 805FD2D8  D0 1B 27 10 */	stfs f0, 0x2710(r27)
/* 805FD2DC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805FD2E0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805FD2E4  80 63 00 00 */	lwz r3, 0(r3)
/* 805FD2E8  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 805FD2EC  4B A0 F0 F0 */	b mDoMtx_YrotS__FPA4_fs
/* 805FD2F0  38 61 00 F0 */	addi r3, r1, 0xf0
/* 805FD2F4  C0 3E 02 58 */	lfs f1, 0x258(r30)
/* 805FD2F8  C0 5E 02 5C */	lfs f2, 0x25c(r30)
/* 805FD2FC  C0 7E 02 60 */	lfs f3, 0x260(r30)
/* 805FD300  48 00 52 C5 */	bl set__4cXyzFfff
/* 805FD304  38 61 00 F0 */	addi r3, r1, 0xf0
/* 805FD308  38 9B 26 D4 */	addi r4, r27, 0x26d4
/* 805FD30C  4B C7 3B E0 */	b MtxPosition__FP4cXyzP4cXyz
/* 805FD310  38 61 00 F0 */	addi r3, r1, 0xf0
/* 805FD314  C0 3E 02 64 */	lfs f1, 0x264(r30)
/* 805FD318  C0 5E 02 5C */	lfs f2, 0x25c(r30)
/* 805FD31C  C0 7E 02 68 */	lfs f3, 0x268(r30)
/* 805FD320  48 00 52 A5 */	bl set__4cXyzFfff
/* 805FD324  38 61 00 F0 */	addi r3, r1, 0xf0
/* 805FD328  38 9B 26 C8 */	addi r4, r27, 0x26c8
/* 805FD32C  4B C7 3B C0 */	b MtxPosition__FP4cXyzP4cXyz
/* 805FD330  80 7B 05 D0 */	lwz r3, 0x5d0(r27)
/* 805FD334  48 00 51 B9 */	bl isStop__13mDoExt_morf_cFv
/* 805FD338  2C 03 00 00 */	cmpwi r3, 0
/* 805FD33C  41 82 00 1C */	beq lbl_805FD358
/* 805FD340  7F 63 DB 78 */	mr r3, r27
/* 805FD344  38 80 00 30 */	li r4, 0x30
/* 805FD348  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 805FD34C  38 A0 00 02 */	li r5, 2
/* 805FD350  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805FD354  4B FF 77 41 */	bl anm_init__FP11b_gnd_classifUcf
lbl_805FD358:
/* 805FD358  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FD35C  2C 00 00 50 */	cmpwi r0, 0x50
/* 805FD360  40 82 00 34 */	bne lbl_805FD394
/* 805FD364  38 00 00 3F */	li r0, 0x3f
/* 805FD368  B0 1B 26 C4 */	sth r0, 0x26c4(r27)
/* 805FD36C  38 00 00 00 */	li r0, 0
/* 805FD370  B0 1B 26 C6 */	sth r0, 0x26c6(r27)
/* 805FD374  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805FD378  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805FD37C  80 63 00 00 */	lwz r3, 0(r3)
/* 805FD380  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805FD384  38 80 00 25 */	li r4, 0x25
/* 805FD388  4B CB 06 6C */	b seMoveVolumeAll__7Z2SeMgrFfUl
/* 805FD38C  38 00 00 03 */	li r0, 3
/* 805FD390  98 1B 27 39 */	stb r0, 0x2739(r27)
lbl_805FD394:
/* 805FD394  38 61 00 E4 */	addi r3, r1, 0xe4
/* 805FD398  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FD39C  C0 5E 01 60 */	lfs f2, 0x160(r30)
/* 805FD3A0  C0 7E 01 64 */	lfs f3, 0x164(r30)
/* 805FD3A4  48 00 52 21 */	bl set__4cXyzFfff
/* 805FD3A8  7F 03 C3 78 */	mr r3, r24
/* 805FD3AC  38 81 00 E4 */	addi r4, r1, 0xe4
/* 805FD3B0  38 A0 E0 00 */	li r5, -8192
/* 805FD3B4  39 98 18 E0 */	addi r12, r24, 0x18e0
/* 805FD3B8  4B D6 4C CC */	b __ptmf_scall
/* 805FD3BC  60 00 00 00 */	nop 
/* 805FD3C0  48 00 05 C0 */	b lbl_805FD980
lbl_805FD3C4:
/* 805FD3C4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805FD3C8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805FD3CC  80 63 00 00 */	lwz r3, 0(r3)
/* 805FD3D0  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 805FD3D4  4B A0 F0 08 */	b mDoMtx_YrotS__FPA4_fs
/* 805FD3D8  38 61 00 F0 */	addi r3, r1, 0xf0
/* 805FD3DC  C0 3E 02 6C */	lfs f1, 0x26c(r30)
/* 805FD3E0  C0 5E 02 70 */	lfs f2, 0x270(r30)
/* 805FD3E4  C0 7E 02 74 */	lfs f3, 0x274(r30)
/* 805FD3E8  48 00 51 DD */	bl set__4cXyzFfff
/* 805FD3EC  38 61 00 F0 */	addi r3, r1, 0xf0
/* 805FD3F0  38 9B 26 D4 */	addi r4, r27, 0x26d4
/* 805FD3F4  4B C7 3A F8 */	b MtxPosition__FP4cXyzP4cXyz
/* 805FD3F8  38 61 00 F0 */	addi r3, r1, 0xf0
/* 805FD3FC  C0 3E 02 78 */	lfs f1, 0x278(r30)
/* 805FD400  C0 5E 02 7C */	lfs f2, 0x27c(r30)
/* 805FD404  C0 7E 02 80 */	lfs f3, 0x280(r30)
/* 805FD408  48 00 51 BD */	bl set__4cXyzFfff
/* 805FD40C  38 61 00 F0 */	addi r3, r1, 0xf0
/* 805FD410  38 9B 26 C8 */	addi r4, r27, 0x26c8
/* 805FD414  4B C7 3A D8 */	b MtxPosition__FP4cXyzP4cXyz
/* 805FD418  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FD41C  2C 00 00 50 */	cmpwi r0, 0x50
/* 805FD420  40 82 05 60 */	bne lbl_805FD980
/* 805FD424  38 00 00 40 */	li r0, 0x40
/* 805FD428  B0 1B 26 C4 */	sth r0, 0x26c4(r27)
/* 805FD42C  38 00 00 00 */	li r0, 0
/* 805FD430  B0 1B 26 C6 */	sth r0, 0x26c6(r27)
/* 805FD434  98 1B 07 54 */	stb r0, 0x754(r27)
/* 805FD438  38 00 00 04 */	li r0, 4
/* 805FD43C  98 1B 27 39 */	stb r0, 0x2739(r27)
/* 805FD440  48 00 05 40 */	b lbl_805FD980
lbl_805FD444:
/* 805FD444  38 00 00 14 */	li r0, 0x14
/* 805FD448  B0 1B 0C 70 */	sth r0, 0xc70(r27)
/* 805FD44C  38 00 00 01 */	li r0, 1
/* 805FD450  98 1B 07 54 */	stb r0, 0x754(r27)
/* 805FD454  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805FD458  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805FD45C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FD460  C0 5E 02 84 */	lfs f2, 0x284(r30)
/* 805FD464  C0 7E 01 64 */	lfs f3, 0x164(r30)
/* 805FD468  4B D4 94 80 */	b PSMTXTrans
/* 805FD46C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805FD470  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805FD474  38 80 E0 00 */	li r4, -8192
/* 805FD478  4B A0 EF BC */	b mDoMtx_YrotM__FPA4_fs
/* 805FD47C  80 7B 05 D8 */	lwz r3, 0x5d8(r27)
/* 805FD480  80 83 00 04 */	lwz r4, 4(r3)
/* 805FD484  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805FD488  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805FD48C  38 84 00 24 */	addi r4, r4, 0x24
/* 805FD490  4B D4 90 20 */	b PSMTXCopy
/* 805FD494  80 7B 07 50 */	lwz r3, 0x750(r27)
/* 805FD498  4B A0 FF 90 */	b play__14mDoExt_baseAnmFv
/* 805FD49C  80 7B 07 4C */	lwz r3, 0x74c(r27)
/* 805FD4A0  4B A0 FF 88 */	b play__14mDoExt_baseAnmFv
/* 805FD4A4  80 7B 05 D8 */	lwz r3, 0x5d8(r27)
/* 805FD4A8  38 80 00 00 */	li r4, 0
/* 805FD4AC  38 A0 00 00 */	li r5, 0
/* 805FD4B0  38 C0 00 00 */	li r6, 0
/* 805FD4B4  4B A1 31 14 */	b play__14mDoExt_McaMorfFP3VecUlSc
/* 805FD4B8  80 7B 05 D8 */	lwz r3, 0x5d8(r27)
/* 805FD4BC  4B A1 31 F0 */	b modelCalc__14mDoExt_McaMorfFv
/* 805FD4C0  38 7B 26 D4 */	addi r3, r27, 0x26d4
/* 805FD4C4  C0 3E 01 30 */	lfs f1, 0x130(r30)
/* 805FD4C8  C0 5E 02 88 */	lfs f2, 0x288(r30)
/* 805FD4CC  C0 7E 02 8C */	lfs f3, 0x28c(r30)
/* 805FD4D0  48 00 50 F5 */	bl set__4cXyzFfff
/* 805FD4D4  38 7B 26 C8 */	addi r3, r27, 0x26c8
/* 805FD4D8  C0 3E 02 90 */	lfs f1, 0x290(r30)
/* 805FD4DC  C0 5E 02 94 */	lfs f2, 0x294(r30)
/* 805FD4E0  C0 7E 02 98 */	lfs f3, 0x298(r30)
/* 805FD4E4  48 00 50 E1 */	bl set__4cXyzFfff
/* 805FD4E8  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FD4EC  2C 00 00 58 */	cmpwi r0, 0x58
/* 805FD4F0  40 82 04 90 */	bne lbl_805FD980
/* 805FD4F4  38 00 00 41 */	li r0, 0x41
/* 805FD4F8  B0 1B 26 C4 */	sth r0, 0x26c4(r27)
/* 805FD4FC  38 00 00 00 */	li r0, 0
/* 805FD500  B0 1B 26 C6 */	sth r0, 0x26c6(r27)
/* 805FD504  38 00 0B B8 */	li r0, 0xbb8
/* 805FD508  B0 1B 27 1C */	sth r0, 0x271c(r27)
/* 805FD50C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805FD510  D0 1B 27 18 */	stfs f0, 0x2718(r27)
/* 805FD514  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805FD518  D0 1B 27 14 */	stfs f0, 0x2714(r27)
/* 805FD51C  38 00 00 05 */	li r0, 5
/* 805FD520  98 1B 27 39 */	stb r0, 0x2739(r27)
/* 805FD524  48 00 04 5C */	b lbl_805FD980
lbl_805FD528:
/* 805FD528  38 00 00 14 */	li r0, 0x14
/* 805FD52C  B0 1B 0C 70 */	sth r0, 0xc70(r27)
/* 805FD530  38 7B 26 D4 */	addi r3, r27, 0x26d4
/* 805FD534  38 9B 05 38 */	addi r4, r27, 0x538
/* 805FD538  48 00 50 9D */	bl __as__4cXyzFRC4cXyz
/* 805FD53C  C0 3B 26 DC */	lfs f1, 0x26dc(r27)
/* 805FD540  C0 1E 02 9C */	lfs f0, 0x29c(r30)
/* 805FD544  EC 01 00 2A */	fadds f0, f1, f0
/* 805FD548  D0 1B 26 DC */	stfs f0, 0x26dc(r27)
/* 805FD54C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805FD550  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805FD554  80 63 00 00 */	lwz r3, 0(r3)
/* 805FD558  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 805FD55C  A8 1B 27 1C */	lha r0, 0x271c(r27)
/* 805FD560  7C 04 02 14 */	add r0, r4, r0
/* 805FD564  7C 04 07 34 */	extsh r4, r0
/* 805FD568  4B A0 EE 74 */	b mDoMtx_YrotS__FPA4_fs
/* 805FD56C  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805FD570  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 805FD574  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 805FD578  C0 3B 27 18 */	lfs f1, 0x2718(r27)
/* 805FD57C  EC 00 00 72 */	fmuls f0, f0, f1
/* 805FD580  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 805FD584  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 805FD588  EC 00 00 72 */	fmuls f0, f0, f1
/* 805FD58C  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 805FD590  38 61 00 F0 */	addi r3, r1, 0xf0
/* 805FD594  38 9B 26 C8 */	addi r4, r27, 0x26c8
/* 805FD598  4B C7 39 54 */	b MtxPosition__FP4cXyzP4cXyz
/* 805FD59C  38 7B 26 C8 */	addi r3, r27, 0x26c8
/* 805FD5A0  38 9B 26 D4 */	addi r4, r27, 0x26d4
/* 805FD5A4  7C 65 1B 78 */	mr r5, r3
/* 805FD5A8  4B D4 9A E8 */	b PSVECAdd
/* 805FD5AC  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FD5B0  2C 00 00 50 */	cmpwi r0, 0x50
/* 805FD5B4  40 81 03 CC */	ble lbl_805FD980
/* 805FD5B8  38 7B 27 14 */	addi r3, r27, 0x2714
/* 805FD5BC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805FD5C0  FC 40 08 90 */	fmr f2, f1
/* 805FD5C4  C0 7E 02 A0 */	lfs f3, 0x2a0(r30)
/* 805FD5C8  4B C7 24 74 */	b cLib_addCalc2__FPffff
/* 805FD5CC  A8 7B 27 1C */	lha r3, 0x271c(r27)
/* 805FD5D0  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 805FD5D4  C0 1B 27 14 */	lfs f0, 0x2714(r27)
/* 805FD5D8  EC 01 00 32 */	fmuls f0, f1, f0
/* 805FD5DC  FC 00 00 1E */	fctiwz f0, f0
/* 805FD5E0  D8 01 01 00 */	stfd f0, 0x100(r1)
/* 805FD5E4  80 01 01 04 */	lwz r0, 0x104(r1)
/* 805FD5E8  7C 03 02 14 */	add r0, r3, r0
/* 805FD5EC  B0 1B 27 1C */	sth r0, 0x271c(r27)
/* 805FD5F0  38 7B 27 18 */	addi r3, r27, 0x2718
/* 805FD5F4  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 805FD5F8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805FD5FC  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 805FD600  C0 1B 27 14 */	lfs f0, 0x2714(r27)
/* 805FD604  EC 63 00 32 */	fmuls f3, f3, f0
/* 805FD608  4B C7 24 34 */	b cLib_addCalc2__FPffff
/* 805FD60C  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FD610  2C 00 00 96 */	cmpwi r0, 0x96
/* 805FD614  40 82 00 1C */	bne lbl_805FD630
/* 805FD618  48 00 4E 85 */	bl daPy_getPlayerActorClass__Fv
/* 805FD61C  38 80 00 10 */	li r4, 0x10
/* 805FD620  38 A0 00 00 */	li r5, 0
/* 805FD624  38 C0 00 00 */	li r6, 0
/* 805FD628  38 E0 00 00 */	li r7, 0
/* 805FD62C  48 00 4F 65 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_805FD630:
/* 805FD630  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FD634  2C 00 00 E6 */	cmpwi r0, 0xe6
/* 805FD638  40 82 00 14 */	bne lbl_805FD64C
/* 805FD63C  C0 3E 02 A4 */	lfs f1, 0x2a4(r30)
/* 805FD640  3C 60 80 45 */	lis r3, g_blackColor@ha
/* 805FD644  38 63 06 04 */	addi r3, r3, g_blackColor@l
/* 805FD648  4B A0 A9 90 */	b fadeOut__13mDoGph_gInf_cFfR8_GXColor
lbl_805FD64C:
/* 805FD64C  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FD650  2C 00 01 4A */	cmpwi r0, 0x14a
/* 805FD654  40 82 03 2C */	bne lbl_805FD980
/* 805FD658  38 60 00 00 */	li r3, 0
/* 805FD65C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FD660  38 80 00 00 */	li r4, 0
/* 805FD664  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 805FD668  7C 05 07 74 */	extsb r5, r0
/* 805FD66C  38 C0 00 00 */	li r6, 0
/* 805FD670  38 E0 FF FF */	li r7, -1
/* 805FD674  4B A2 9A FC */	b dStage_changeScene__FifUlScsi
/* 805FD678  48 00 03 08 */	b lbl_805FD980
lbl_805FD67C:
/* 805FD67C  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 805FD680  28 00 00 02 */	cmplwi r0, 2
/* 805FD684  41 82 00 2C */	beq lbl_805FD6B0
/* 805FD688  7F 63 DB 78 */	mr r3, r27
/* 805FD68C  38 80 00 02 */	li r4, 2
/* 805FD690  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 805FD694  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 805FD698  38 C0 00 00 */	li r6, 0
/* 805FD69C  4B A1 E2 6C */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805FD6A0  A0 1B 00 FA */	lhz r0, 0xfa(r27)
/* 805FD6A4  60 00 00 02 */	ori r0, r0, 2
/* 805FD6A8  B0 1B 00 FA */	sth r0, 0xfa(r27)
/* 805FD6AC  48 00 04 1C */	b lbl_805FDAC8
lbl_805FD6B0:
/* 805FD6B0  38 7F 02 48 */	addi r3, r31, 0x248
/* 805FD6B4  4B B6 3E 1C */	b Stop__9dCamera_cFv
/* 805FD6B8  38 00 00 5B */	li r0, 0x5b
/* 805FD6BC  B0 1B 26 C4 */	sth r0, 0x26c4(r27)
/* 805FD6C0  38 00 00 00 */	li r0, 0
/* 805FD6C4  B0 1B 26 C6 */	sth r0, 0x26c6(r27)
/* 805FD6C8  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 805FD6CC  D0 1B 27 10 */	stfs f0, 0x2710(r27)
/* 805FD6D0  48 00 4D CD */	bl daPy_getPlayerActorClass__Fv
/* 805FD6D4  48 00 4E D1 */	bl changeOriginalDemo__9daPy_py_cFv
/* 805FD6D8  7F 03 C3 78 */	mr r3, r24
/* 805FD6DC  48 00 4F 15 */	bl changeOriginalDemo__9daHorse_cFv
/* 805FD6E0  38 7B 26 D4 */	addi r3, r27, 0x26d4
/* 805FD6E4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805FD6E8  48 00 4E ED */	bl __as__4cXyzFRC4cXyz
/* 805FD6EC  38 7B 26 C8 */	addi r3, r27, 0x26c8
/* 805FD6F0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805FD6F4  48 00 4E E1 */	bl __as__4cXyzFRC4cXyz
/* 805FD6F8  C0 3B 26 C8 */	lfs f1, 0x26c8(r27)
/* 805FD6FC  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 805FD700  EC 01 00 2A */	fadds f0, f1, f0
/* 805FD704  D0 1B 26 C8 */	stfs f0, 0x26c8(r27)
/* 805FD708  48 00 02 78 */	b lbl_805FD980
lbl_805FD70C:
/* 805FD70C  38 61 00 E4 */	addi r3, r1, 0xe4
/* 805FD710  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FD714  C0 5E 01 60 */	lfs f2, 0x160(r30)
/* 805FD718  C0 7E 01 64 */	lfs f3, 0x164(r30)
/* 805FD71C  48 00 4E A9 */	bl set__4cXyzFfff
/* 805FD720  7F 03 C3 78 */	mr r3, r24
/* 805FD724  38 81 00 E4 */	addi r4, r1, 0xe4
/* 805FD728  38 A0 E0 00 */	li r5, -8192
/* 805FD72C  39 98 18 E0 */	addi r12, r24, 0x18e0
/* 805FD730  4B D6 49 54 */	b __ptmf_scall
/* 805FD734  60 00 00 00 */	nop 
/* 805FD738  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FD73C  2C 00 00 02 */	cmpwi r0, 2
/* 805FD740  40 82 00 10 */	bne lbl_805FD750
/* 805FD744  80 1D 05 90 */	lwz r0, 0x590(r29)
/* 805FD748  60 00 00 02 */	ori r0, r0, 2
/* 805FD74C  90 1D 05 90 */	stw r0, 0x590(r29)
lbl_805FD750:
/* 805FD750  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FD754  2C 00 00 05 */	cmpwi r0, 5
/* 805FD758  40 82 02 28 */	bne lbl_805FD980
/* 805FD75C  38 00 00 5C */	li r0, 0x5c
/* 805FD760  B0 1B 26 C4 */	sth r0, 0x26c4(r27)
/* 805FD764  38 00 00 00 */	li r0, 0
/* 805FD768  B0 1B 26 C6 */	sth r0, 0x26c6(r27)
/* 805FD76C  48 00 02 14 */	b lbl_805FD980
lbl_805FD770:
/* 805FD770  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FD774  2C 00 00 01 */	cmpwi r0, 1
/* 805FD778  40 82 00 40 */	bne lbl_805FD7B8
/* 805FD77C  38 61 00 E4 */	addi r3, r1, 0xe4
/* 805FD780  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FD784  C0 5E 01 60 */	lfs f2, 0x160(r30)
/* 805FD788  FC 60 08 90 */	fmr f3, f1
/* 805FD78C  48 00 4E 39 */	bl set__4cXyzFfff
/* 805FD790  38 60 00 2D */	li r3, 0x2d
/* 805FD794  3C 80 F0 07 */	lis r4, 0xF007 /* 0xF0069600@ha */
/* 805FD798  38 84 96 00 */	addi r4, r4, 0x9600 /* 0xF0069600@l */
/* 805FD79C  38 A1 00 E4 */	addi r5, r1, 0xe4
/* 805FD7A0  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 805FD7A4  7C 06 07 74 */	extsb r6, r0
/* 805FD7A8  38 E0 00 00 */	li r7, 0
/* 805FD7AC  39 00 00 00 */	li r8, 0
/* 805FD7B0  39 20 FF FF */	li r9, -1
/* 805FD7B4  4B A1 C5 E4 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
lbl_805FD7B8:
/* 805FD7B8  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FD7BC  2C 00 00 05 */	cmpwi r0, 5
/* 805FD7C0  40 82 01 C0 */	bne lbl_805FD980
/* 805FD7C4  38 61 00 E4 */	addi r3, r1, 0xe4
/* 805FD7C8  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 805FD7CC  C0 5E 01 60 */	lfs f2, 0x160(r30)
/* 805FD7D0  C0 7E 00 14 */	lfs f3, 0x14(r30)
/* 805FD7D4  48 00 4D F1 */	bl set__4cXyzFfff
/* 805FD7D8  7F A3 EB 78 */	mr r3, r29
/* 805FD7DC  38 81 00 E4 */	addi r4, r1, 0xe4
/* 805FD7E0  38 A0 B7 FE */	li r5, -18434
/* 805FD7E4  38 C0 00 00 */	li r6, 0
/* 805FD7E8  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 805FD7EC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805FD7F0  7D 89 03 A6 */	mtctr r12
/* 805FD7F4  4E 80 04 21 */	bctrl 
/* 805FD7F8  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 805FD7FC  C0 3E 02 A8 */	lfs f1, 0x2a8(r30)
/* 805FD800  C0 5E 01 60 */	lfs f2, 0x160(r30)
/* 805FD804  C0 7E 00 14 */	lfs f3, 0x14(r30)
/* 805FD808  48 00 4D BD */	bl set__4cXyzFfff
/* 805FD80C  38 7B 04 BC */	addi r3, r27, 0x4bc
/* 805FD810  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805FD814  48 00 4D C1 */	bl __as__4cXyzFRC4cXyz
/* 805FD818  38 00 37 FE */	li r0, 0x37fe
/* 805FD81C  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 805FD820  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 805FD824  3B 80 00 01 */	li r28, 1
/* 805FD828  48 00 01 58 */	b lbl_805FD980
lbl_805FD82C:
/* 805FD82C  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 805FD830  28 00 00 02 */	cmplwi r0, 2
/* 805FD834  41 82 00 2C */	beq lbl_805FD860
/* 805FD838  7F 63 DB 78 */	mr r3, r27
/* 805FD83C  38 80 00 02 */	li r4, 2
/* 805FD840  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 805FD844  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 805FD848  38 C0 00 00 */	li r6, 0
/* 805FD84C  4B A1 E0 BC */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805FD850  A0 1B 00 FA */	lhz r0, 0xfa(r27)
/* 805FD854  60 00 00 02 */	ori r0, r0, 2
/* 805FD858  B0 1B 00 FA */	sth r0, 0xfa(r27)
/* 805FD85C  48 00 02 6C */	b lbl_805FDAC8
lbl_805FD860:
/* 805FD860  38 00 00 60 */	li r0, 0x60
/* 805FD864  B0 1B 26 C4 */	sth r0, 0x26c4(r27)
/* 805FD868  38 00 00 00 */	li r0, 0
/* 805FD86C  B0 1B 26 C6 */	sth r0, 0x26c6(r27)
/* 805FD870  48 00 4C 2D */	bl daPy_getPlayerActorClass__Fv
/* 805FD874  48 00 4D 31 */	bl changeOriginalDemo__9daPy_py_cFv
/* 805FD878  7F 03 C3 78 */	mr r3, r24
/* 805FD87C  48 00 4D 75 */	bl changeOriginalDemo__9daHorse_cFv
/* 805FD880  38 61 00 E4 */	addi r3, r1, 0xe4
/* 805FD884  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FD888  C0 5E 01 60 */	lfs f2, 0x160(r30)
/* 805FD88C  C0 7E 01 64 */	lfs f3, 0x164(r30)
/* 805FD890  48 00 4D 35 */	bl set__4cXyzFfff
/* 805FD894  7F 03 C3 78 */	mr r3, r24
/* 805FD898  38 81 00 E4 */	addi r4, r1, 0xe4
/* 805FD89C  38 A0 E0 00 */	li r5, -8192
/* 805FD8A0  39 98 18 E0 */	addi r12, r24, 0x18e0
/* 805FD8A4  4B D6 47 E0 */	b __ptmf_scall
/* 805FD8A8  60 00 00 00 */	nop 
/* 805FD8AC  38 61 00 E4 */	addi r3, r1, 0xe4
/* 805FD8B0  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 805FD8B4  C0 5E 01 60 */	lfs f2, 0x160(r30)
/* 805FD8B8  C0 7E 00 14 */	lfs f3, 0x14(r30)
/* 805FD8BC  48 00 4D 09 */	bl set__4cXyzFfff
/* 805FD8C0  7F A3 EB 78 */	mr r3, r29
/* 805FD8C4  38 81 00 E4 */	addi r4, r1, 0xe4
/* 805FD8C8  38 A0 B7 FE */	li r5, -18434
/* 805FD8CC  38 C0 00 00 */	li r6, 0
/* 805FD8D0  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 805FD8D4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805FD8D8  7D 89 03 A6 */	mtctr r12
/* 805FD8DC  4E 80 04 21 */	bctrl 
/* 805FD8E0  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 805FD8E4  C0 3E 02 A8 */	lfs f1, 0x2a8(r30)
/* 805FD8E8  C0 5E 01 60 */	lfs f2, 0x160(r30)
/* 805FD8EC  C0 7E 00 14 */	lfs f3, 0x14(r30)
/* 805FD8F0  48 00 4C D5 */	bl set__4cXyzFfff
/* 805FD8F4  38 7B 04 BC */	addi r3, r27, 0x4bc
/* 805FD8F8  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805FD8FC  48 00 4C D9 */	bl __as__4cXyzFRC4cXyz
/* 805FD900  38 00 37 FE */	li r0, 0x37fe
/* 805FD904  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 805FD908  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 805FD90C  38 61 00 E4 */	addi r3, r1, 0xe4
/* 805FD910  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FD914  C0 5E 01 60 */	lfs f2, 0x160(r30)
/* 805FD918  FC 60 08 90 */	fmr f3, f1
/* 805FD91C  48 00 4C A9 */	bl set__4cXyzFfff
/* 805FD920  38 60 00 2D */	li r3, 0x2d
/* 805FD924  3C 80 F0 07 */	lis r4, 0xF007 /* 0xF0069600@ha */
/* 805FD928  38 84 96 00 */	addi r4, r4, 0x9600 /* 0xF0069600@l */
/* 805FD92C  38 A1 00 E4 */	addi r5, r1, 0xe4
/* 805FD930  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 805FD934  7C 06 07 74 */	extsb r6, r0
/* 805FD938  38 E0 00 00 */	li r7, 0
/* 805FD93C  39 00 00 00 */	li r8, 0
/* 805FD940  39 20 FF FF */	li r9, -1
/* 805FD944  4B A1 C4 54 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 805FD948  48 00 00 38 */	b lbl_805FD980
lbl_805FD94C:
/* 805FD94C  A8 7B 26 C6 */	lha r3, 0x26c6(r27)
/* 805FD950  38 03 00 01 */	addi r0, r3, 1
/* 805FD954  B0 1B 26 C6 */	sth r0, 0x26c6(r27)
/* 805FD958  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FD95C  2C 00 00 02 */	cmpwi r0, 2
/* 805FD960  40 82 01 68 */	bne lbl_805FDAC8
/* 805FD964  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805FD968  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805FD96C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 805FD970  4B A4 4A F8 */	b reset__14dEvt_control_cFv
/* 805FD974  3B 80 00 01 */	li r28, 1
/* 805FD978  48 00 00 08 */	b lbl_805FD980
/* 805FD97C  48 00 01 4C */	b lbl_805FDAC8
lbl_805FD980:
/* 805FD980  7F 80 07 75 */	extsb. r0, r28
/* 805FD984  41 82 00 D0 */	beq lbl_805FDA54
/* 805FD988  7F 80 07 74 */	extsb r0, r28
/* 805FD98C  2C 00 00 01 */	cmpwi r0, 1
/* 805FD990  40 82 00 68 */	bne lbl_805FD9F8
/* 805FD994  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805FD998  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805FD99C  80 63 00 00 */	lwz r3, 0(r3)
/* 805FD9A0  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 805FD9A4  4B A0 EA 38 */	b mDoMtx_YrotS__FPA4_fs
/* 805FD9A8  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805FD9AC  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 805FD9B0  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 805FD9B4  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 805FD9B8  C0 1E 02 AC */	lfs f0, 0x2ac(r30)
/* 805FD9BC  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 805FD9C0  38 61 00 F0 */	addi r3, r1, 0xf0
/* 805FD9C4  38 9B 26 C8 */	addi r4, r27, 0x26c8
/* 805FD9C8  4B C7 35 24 */	b MtxPosition__FP4cXyzP4cXyz
/* 805FD9CC  38 7B 26 C8 */	addi r3, r27, 0x26c8
/* 805FD9D0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805FD9D4  7C 65 1B 78 */	mr r5, r3
/* 805FD9D8  4B D4 96 B8 */	b PSVECAdd
/* 805FD9DC  38 7B 26 D4 */	addi r3, r27, 0x26d4
/* 805FD9E0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805FD9E4  48 00 4B F1 */	bl __as__4cXyzFRC4cXyz
/* 805FD9E8  C0 3B 26 D8 */	lfs f1, 0x26d8(r27)
/* 805FD9EC  C0 1E 02 B0 */	lfs f0, 0x2b0(r30)
/* 805FD9F0  EC 01 00 2A */	fadds f0, f1, f0
/* 805FD9F4  D0 1B 26 D8 */	stfs f0, 0x26d8(r27)
lbl_805FD9F8:
/* 805FD9F8  38 61 00 54 */	addi r3, r1, 0x54
/* 805FD9FC  38 9B 26 D4 */	addi r4, r27, 0x26d4
/* 805FDA00  48 00 49 4D */	bl __ct__4cXyzFRC4cXyz
/* 805FDA04  38 61 00 48 */	addi r3, r1, 0x48
/* 805FDA08  38 9B 26 C8 */	addi r4, r27, 0x26c8
/* 805FDA0C  48 00 49 41 */	bl __ct__4cXyzFRC4cXyz
/* 805FDA10  38 7F 02 48 */	addi r3, r31, 0x248
/* 805FDA14  38 81 00 54 */	addi r4, r1, 0x54
/* 805FDA18  38 A1 00 48 */	addi r5, r1, 0x48
/* 805FDA1C  4B B8 31 FC */	b Reset__9dCamera_cF4cXyz4cXyz
/* 805FDA20  38 7F 02 48 */	addi r3, r31, 0x248
/* 805FDA24  4B B6 3A 88 */	b Start__9dCamera_cFv
/* 805FDA28  38 7F 02 48 */	addi r3, r31, 0x248
/* 805FDA2C  38 80 00 00 */	li r4, 0
/* 805FDA30  4B B6 55 DC */	b SetTrimSize__9dCamera_cFl
/* 805FDA34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805FDA38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805FDA3C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 805FDA40  4B A4 4A 28 */	b reset__14dEvt_control_cFv
/* 805FDA44  48 00 4A 59 */	bl daPy_getPlayerActorClass__Fv
/* 805FDA48  48 00 48 F1 */	bl cancelOriginalDemo__9daPy_py_cFv
/* 805FDA4C  38 00 00 00 */	li r0, 0
/* 805FDA50  B0 1B 26 C4 */	sth r0, 0x26c4(r27)
lbl_805FDA54:
/* 805FDA54  A8 1B 26 C4 */	lha r0, 0x26c4(r27)
/* 805FDA58  2C 00 00 00 */	cmpwi r0, 0
/* 805FDA5C  40 81 00 6C */	ble lbl_805FDAC8
/* 805FDA60  38 61 00 A8 */	addi r3, r1, 0xa8
/* 805FDA64  38 9B 26 D4 */	addi r4, r27, 0x26d4
/* 805FDA68  48 00 4B 6D */	bl __as__4cXyzFRC4cXyz
/* 805FDA6C  38 61 00 9C */	addi r3, r1, 0x9c
/* 805FDA70  38 9B 26 C8 */	addi r4, r27, 0x26c8
/* 805FDA74  48 00 4B 61 */	bl __as__4cXyzFRC4cXyz
/* 805FDA78  38 61 00 3C */	addi r3, r1, 0x3c
/* 805FDA7C  38 81 00 A8 */	addi r4, r1, 0xa8
/* 805FDA80  48 00 48 CD */	bl __ct__4cXyzFRC4cXyz
/* 805FDA84  38 61 00 30 */	addi r3, r1, 0x30
/* 805FDA88  38 81 00 9C */	addi r4, r1, 0x9c
/* 805FDA8C  48 00 48 C1 */	bl __ct__4cXyzFRC4cXyz
/* 805FDA90  38 7F 02 48 */	addi r3, r31, 0x248
/* 805FDA94  38 81 00 3C */	addi r4, r1, 0x3c
/* 805FDA98  38 A1 00 30 */	addi r5, r1, 0x30
/* 805FDA9C  C0 3B 27 10 */	lfs f1, 0x2710(r27)
/* 805FDAA0  38 C0 00 00 */	li r6, 0
/* 805FDAA4  4B B8 30 3C */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 805FDAA8  A8 7B 26 C6 */	lha r3, 0x26c6(r27)
/* 805FDAAC  38 03 00 01 */	addi r0, r3, 1
/* 805FDAB0  B0 1B 26 C6 */	sth r0, 0x26c6(r27)
/* 805FDAB4  A8 1B 26 C6 */	lha r0, 0x26c6(r27)
/* 805FDAB8  2C 00 27 10 */	cmpwi r0, 0x2710
/* 805FDABC  40 81 00 0C */	ble lbl_805FDAC8
/* 805FDAC0  38 00 27 10 */	li r0, 0x2710
/* 805FDAC4  B0 1B 26 C6 */	sth r0, 0x26c6(r27)
lbl_805FDAC8:
/* 805FDAC8  39 61 01 30 */	addi r11, r1, 0x130
/* 805FDACC  4B D6 47 40 */	b _restgpr_22
/* 805FDAD0  80 01 01 34 */	lwz r0, 0x134(r1)
/* 805FDAD4  7C 08 03 A6 */	mtlr r0
/* 805FDAD8  38 21 01 30 */	addi r1, r1, 0x130
/* 805FDADC  4E 80 00 20 */	blr 
