lbl_8050EEC0:
/* 8050EEC0  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8050EEC4  7C 08 02 A6 */	mflr r0
/* 8050EEC8  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8050EECC  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8050EED0  4B E5 32 F9 */	bl _savegpr_24
/* 8050EED4  7C 7C 1B 78 */	mr r28, r3
/* 8050EED8  3C 60 80 52 */	lis r3, lit_4208@ha /* 0x80518584@ha */
/* 8050EEDC  3B A3 85 84 */	addi r29, r3, lit_4208@l /* 0x80518584@l */
/* 8050EEE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050EEE4  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050EEE8  83 7E 5D AC */	lwz r27, 0x5dac(r30)
/* 8050EEEC  80 1C 09 8C */	lwz r0, 0x98c(r28)
/* 8050EEF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8050EEF4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8050EEF8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8050EEFC  38 81 00 0C */	addi r4, r1, 0xc
/* 8050EF00  4B B0 A8 F9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8050EF04  7C 7F 1B 78 */	mr r31, r3
/* 8050EF08  88 1C 09 BC */	lbz r0, 0x9bc(r28)
/* 8050EF0C  2C 00 00 02 */	cmpwi r0, 2
/* 8050EF10  40 82 00 F0 */	bne lbl_8050F000
/* 8050EF14  28 1F 00 00 */	cmplwi r31, 0
/* 8050EF18  41 82 00 E8 */	beq lbl_8050F000
/* 8050EF1C  A0 1F 06 BE */	lhz r0, 0x6be(r31)
/* 8050EF20  54 00 06 33 */	rlwinm. r0, r0, 0, 0x18, 0x19
/* 8050EF24  41 82 00 DC */	beq lbl_8050F000
/* 8050EF28  A8 1C 09 72 */	lha r0, 0x972(r28)
/* 8050EF2C  2C 00 00 2E */	cmpwi r0, 0x2e
/* 8050EF30  40 82 00 10 */	bne lbl_8050EF40
/* 8050EF34  38 00 00 0A */	li r0, 0xa
/* 8050EF38  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050EF3C  48 00 0B 88 */	b lbl_8050FAC4
lbl_8050EF40:
/* 8050EF40  38 00 00 15 */	li r0, 0x15
/* 8050EF44  B0 1C 09 72 */	sth r0, 0x972(r28)
/* 8050EF48  38 00 00 00 */	li r0, 0
/* 8050EF4C  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050EF50  38 00 03 E8 */	li r0, 0x3e8
/* 8050EF54  B0 1C 09 98 */	sth r0, 0x998(r28)
/* 8050EF58  A0 1F 06 BE */	lhz r0, 0x6be(r31)
/* 8050EF5C  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8050EF60  41 82 00 48 */	beq lbl_8050EFA8
/* 8050EF64  C0 3D 01 44 */	lfs f1, 0x144(r29)
/* 8050EF68  4B D5 8A 25 */	bl cM_rndFX__Ff
/* 8050EF6C  FC 00 08 1E */	fctiwz f0, f1
/* 8050EF70  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 8050EF74  80 81 00 7C */	lwz r4, 0x7c(r1)
/* 8050EF78  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 8050EF7C  3C 03 00 01 */	addis r0, r3, 1
/* 8050EF80  7C 60 22 14 */	add r3, r0, r4
/* 8050EF84  38 03 80 00 */	addi r0, r3, -32768
/* 8050EF88  B0 1C 0A 0E */	sth r0, 0xa0e(r28)
/* 8050EF8C  C0 3D 00 9C */	lfs f1, 0x9c(r29)
/* 8050EF90  4B D5 89 FD */	bl cM_rndFX__Ff
/* 8050EF94  FC 00 08 1E */	fctiwz f0, f1
/* 8050EF98  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 8050EF9C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8050EFA0  B0 1C 09 F6 */	sth r0, 0x9f6(r28)
/* 8050EFA4  48 00 00 3C */	b lbl_8050EFE0
lbl_8050EFA8:
/* 8050EFA8  C0 3D 01 2C */	lfs f1, 0x12c(r29)
/* 8050EFAC  4B D5 89 E1 */	bl cM_rndFX__Ff
/* 8050EFB0  FC 00 08 1E */	fctiwz f0, f1
/* 8050EFB4  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 8050EFB8  80 61 00 84 */	lwz r3, 0x84(r1)
/* 8050EFBC  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 8050EFC0  7C 00 1A 14 */	add r0, r0, r3
/* 8050EFC4  B0 1C 0A 0E */	sth r0, 0xa0e(r28)
/* 8050EFC8  C0 3D 01 44 */	lfs f1, 0x144(r29)
/* 8050EFCC  4B D5 89 C1 */	bl cM_rndFX__Ff
/* 8050EFD0  FC 00 08 1E */	fctiwz f0, f1
/* 8050EFD4  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 8050EFD8  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 8050EFDC  B0 1C 09 F6 */	sth r0, 0x9f6(r28)
lbl_8050EFE0:
/* 8050EFE0  C0 3D 00 C0 */	lfs f1, 0xc0(r29)
/* 8050EFE4  4B D5 89 71 */	bl cM_rndF__Ff
/* 8050EFE8  C0 1D 01 4C */	lfs f0, 0x14c(r29)
/* 8050EFEC  EC 00 08 2A */	fadds f0, f0, f1
/* 8050EFF0  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8050EFF4  C0 1D 01 04 */	lfs f0, 0x104(r29)
/* 8050EFF8  D0 1C 09 EC */	stfs f0, 0x9ec(r28)
/* 8050EFFC  48 00 0A C8 */	b lbl_8050FAC4
lbl_8050F000:
/* 8050F000  38 7C 0D 38 */	addi r3, r28, 0xd38
/* 8050F004  4B B7 48 2D */	bl Move__10dCcD_GSttsFv
/* 8050F008  A8 1C 09 98 */	lha r0, 0x998(r28)
/* 8050F00C  2C 00 00 00 */	cmpwi r0, 0
/* 8050F010  40 82 0A B4 */	bne lbl_8050FAC4
/* 8050F014  88 1C 12 9A */	lbz r0, 0x129a(r28)
/* 8050F018  7C 00 07 75 */	extsb. r0, r0
/* 8050F01C  41 82 00 0C */	beq lbl_8050F028
/* 8050F020  38 00 00 64 */	li r0, 0x64
/* 8050F024  B0 1C 05 62 */	sth r0, 0x562(r28)
lbl_8050F028:
/* 8050F028  3B 40 00 00 */	li r26, 0
/* 8050F02C  3B 20 00 00 */	li r25, 0
lbl_8050F030:
/* 8050F030  3B 19 0D 58 */	addi r24, r25, 0xd58
/* 8050F034  7F 1C C2 14 */	add r24, r28, r24
/* 8050F038  7F 03 C3 78 */	mr r3, r24
/* 8050F03C  4B B7 54 25 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8050F040  28 03 00 00 */	cmplwi r3, 0
/* 8050F044  41 82 0A 44 */	beq lbl_8050FA88
/* 8050F048  38 00 00 06 */	li r0, 6
/* 8050F04C  B0 1C 09 98 */	sth r0, 0x998(r28)
/* 8050F050  7F 03 C3 78 */	mr r3, r24
/* 8050F054  4B B7 54 A5 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8050F058  90 7C 12 38 */	stw r3, 0x1238(r28)
/* 8050F05C  88 1C 12 9A */	lbz r0, 0x129a(r28)
/* 8050F060  2C 00 00 03 */	cmpwi r0, 3
/* 8050F064  40 82 03 38 */	bne lbl_8050F39C
/* 8050F068  A8 7C 09 7C */	lha r3, 0x97c(r28)
/* 8050F06C  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 8050F070  7C 03 00 50 */	subf r0, r3, r0
/* 8050F074  7C 18 07 34 */	extsh r24, r0
/* 8050F078  38 7C 12 38 */	addi r3, r28, 0x1238
/* 8050F07C  4B B7 89 DD */	bl at_power_check__FP11dCcU_AtInfo
/* 8050F080  80 7C 12 38 */	lwz r3, 0x1238(r28)
/* 8050F084  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8050F088  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 8050F08C  40 82 00 0C */	bne lbl_8050F098
/* 8050F090  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8050F094  41 82 01 C8 */	beq lbl_8050F25C
lbl_8050F098:
/* 8050F098  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050F09C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050F0A0  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 8050F0A4  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 8050F0A8  C0 1D 00 CC */	lfs f0, 0xcc(r29)
/* 8050F0AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050F0B0  41 81 00 14 */	bgt lbl_8050F0C4
/* 8050F0B4  2C 18 78 00 */	cmpwi r24, 0x7800
/* 8050F0B8  41 81 00 0C */	bgt lbl_8050F0C4
/* 8050F0BC  2C 18 88 00 */	cmpwi r24, -30720
/* 8050F0C0  40 80 00 FC */	bge lbl_8050F1BC
lbl_8050F0C4:
/* 8050F0C4  7F 83 E3 78 */	mr r3, r28
/* 8050F0C8  38 9C 12 38 */	addi r4, r28, 0x1238
/* 8050F0CC  4B B7 8B 39 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 8050F0D0  38 00 00 00 */	li r0, 0
/* 8050F0D4  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha /* 0x80451125@ha */
/* 8050F0D8  98 03 11 25 */	stb r0, struct_80451124+0x1@l(r3)  /* 0x80451125@l */
/* 8050F0DC  88 7F 07 9E */	lbz r3, 0x79e(r31)
/* 8050F0E0  38 03 00 01 */	addi r0, r3, 1
/* 8050F0E4  98 1F 07 9E */	stb r0, 0x79e(r31)
/* 8050F0E8  88 1F 07 9E */	lbz r0, 0x79e(r31)
/* 8050F0EC  7C 00 07 74 */	extsb r0, r0
/* 8050F0F0  2C 00 00 03 */	cmpwi r0, 3
/* 8050F0F4  41 80 00 5C */	blt lbl_8050F150
/* 8050F0F8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8050F0FC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8050F100  80 63 00 00 */	lwz r3, 0(r3)
/* 8050F104  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8050F108  38 80 00 1E */	li r4, 0x1e
/* 8050F10C  38 A0 00 00 */	li r5, 0
/* 8050F110  4B DA 02 F9 */	bl bgmStop__8Z2SeqMgrFUll
/* 8050F114  38 00 00 2E */	li r0, 0x2e
/* 8050F118  B0 1C 09 72 */	sth r0, 0x972(r28)
/* 8050F11C  38 00 00 00 */	li r0, 0
/* 8050F120  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050F124  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070136@ha */
/* 8050F128  38 03 01 36 */	addi r0, r3, 0x0136 /* 0x00070136@l */
/* 8050F12C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8050F130  38 7C 05 D4 */	addi r3, r28, 0x5d4
/* 8050F134  38 81 00 20 */	addi r4, r1, 0x20
/* 8050F138  38 A0 FF FF */	li r5, -1
/* 8050F13C  81 9C 05 D4 */	lwz r12, 0x5d4(r28)
/* 8050F140  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8050F144  7D 89 03 A6 */	mtctr r12
/* 8050F148  4E 80 04 21 */	bctrl 
/* 8050F14C  48 00 00 4C */	b lbl_8050F198
lbl_8050F150:
/* 8050F150  38 00 00 19 */	li r0, 0x19
/* 8050F154  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 8050F158  7F 83 E3 78 */	mr r3, r28
/* 8050F15C  38 80 00 24 */	li r4, 0x24
/* 8050F160  C0 3D 00 A8 */	lfs f1, 0xa8(r29)
/* 8050F164  38 A0 00 00 */	li r5, 0
/* 8050F168  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8050F16C  4B FF 5A 69 */	bl anm_init__FP10e_rd_classifUcf
/* 8050F170  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700F6@ha */
/* 8050F174  38 03 00 F6 */	addi r0, r3, 0x00F6 /* 0x000700F6@l */
/* 8050F178  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8050F17C  38 7C 05 D4 */	addi r3, r28, 0x5d4
/* 8050F180  38 81 00 1C */	addi r4, r1, 0x1c
/* 8050F184  38 A0 FF FF */	li r5, -1
/* 8050F188  81 9C 05 D4 */	lwz r12, 0x5d4(r28)
/* 8050F18C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8050F190  7D 89 03 A6 */	mtctr r12
/* 8050F194  4E 80 04 21 */	bctrl 
lbl_8050F198:
/* 8050F198  3B 00 00 03 */	li r24, 3
/* 8050F19C  38 00 00 64 */	li r0, 0x64
/* 8050F1A0  B0 1F 06 9E */	sth r0, 0x69e(r31)
/* 8050F1A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050F1A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050F1AC  38 63 09 78 */	addi r3, r3, 0x978
/* 8050F1B0  38 80 00 07 */	li r4, 7
/* 8050F1B4  4B B2 59 E5 */	bl onSwitch__12dSv_danBit_cFi
/* 8050F1B8  48 00 00 20 */	b lbl_8050F1D8
lbl_8050F1BC:
/* 8050F1BC  3B 00 00 02 */	li r24, 2
/* 8050F1C0  7F 83 E3 78 */	mr r3, r28
/* 8050F1C4  38 80 00 2E */	li r4, 0x2e
/* 8050F1C8  C0 3D 00 A8 */	lfs f1, 0xa8(r29)
/* 8050F1CC  38 A0 00 00 */	li r5, 0
/* 8050F1D0  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8050F1D4  4B FF 5A 01 */	bl anm_init__FP10e_rd_classifUcf
lbl_8050F1D8:
/* 8050F1D8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8050F1DC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8050F1E0  80 63 00 00 */	lwz r3, 0(r3)
/* 8050F1E4  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8050F1E8  4B AF D1 F5 */	bl mDoMtx_YrotS__FPA4_fs
/* 8050F1EC  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8050F1F0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8050F1F4  C0 1D 00 A0 */	lfs f0, 0xa0(r29)
/* 8050F1F8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8050F1FC  C0 1D 00 AC */	lfs f0, 0xac(r29)
/* 8050F200  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8050F204  38 61 00 6C */	addi r3, r1, 0x6c
/* 8050F208  38 81 00 60 */	addi r4, r1, 0x60
/* 8050F20C  4B D6 1C E1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8050F210  38 61 00 60 */	addi r3, r1, 0x60
/* 8050F214  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8050F218  7C 65 1B 78 */	mr r5, r3
/* 8050F21C  4B E3 7E 75 */	bl PSVECAdd
/* 8050F220  C0 1D 00 A8 */	lfs f0, 0xa8(r29)
/* 8050F224  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8050F228  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8050F22C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8050F230  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050F234  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050F238  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8050F23C  7F 04 C3 78 */	mr r4, r24
/* 8050F240  7F 85 E3 78 */	mr r5, r28
/* 8050F244  38 C1 00 60 */	addi r6, r1, 0x60
/* 8050F248  38 E0 00 00 */	li r7, 0
/* 8050F24C  39 01 00 54 */	addi r8, r1, 0x54
/* 8050F250  39 20 00 00 */	li r9, 0
/* 8050F254  4B B3 CF C5 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 8050F258  48 00 08 6C */	b lbl_8050FAC4
lbl_8050F25C:
/* 8050F25C  88 1C 12 58 */	lbz r0, 0x1258(r28)
/* 8050F260  28 00 00 01 */	cmplwi r0, 1
/* 8050F264  40 82 08 60 */	bne lbl_8050FAC4
/* 8050F268  7F 83 E3 78 */	mr r3, r28
/* 8050F26C  38 80 00 2E */	li r4, 0x2e
/* 8050F270  C0 3D 00 A8 */	lfs f1, 0xa8(r29)
/* 8050F274  38 A0 00 00 */	li r5, 0
/* 8050F278  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8050F27C  4B FF 59 59 */	bl anm_init__FP10e_rd_classifUcf
/* 8050F280  38 00 00 19 */	li r0, 0x19
/* 8050F284  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 8050F288  38 00 00 00 */	li r0, 0
/* 8050F28C  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha /* 0x80451125@ha */
/* 8050F290  98 03 11 25 */	stb r0, struct_80451124+0x1@l(r3)  /* 0x80451125@l */
/* 8050F294  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8050F298  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8050F29C  80 63 00 00 */	lwz r3, 0(r3)
/* 8050F2A0  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8050F2A4  4B AF D1 39 */	bl mDoMtx_YrotS__FPA4_fs
/* 8050F2A8  A8 7C 09 7C */	lha r3, 0x97c(r28)
/* 8050F2AC  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 8050F2B0  7C 03 00 50 */	subf r0, r3, r0
/* 8050F2B4  7C 00 07 35 */	extsh. r0, r0
/* 8050F2B8  40 80 00 20 */	bge lbl_8050F2D8
/* 8050F2BC  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8050F2C0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8050F2C4  C0 1D 00 A0 */	lfs f0, 0xa0(r29)
/* 8050F2C8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8050F2CC  C0 1D 01 50 */	lfs f0, 0x150(r29)
/* 8050F2D0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8050F2D4  48 00 00 1C */	b lbl_8050F2F0
lbl_8050F2D8:
/* 8050F2D8  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 8050F2DC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8050F2E0  C0 1D 00 A0 */	lfs f0, 0xa0(r29)
/* 8050F2E4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8050F2E8  C0 1D 01 50 */	lfs f0, 0x150(r29)
/* 8050F2EC  D0 01 00 50 */	stfs f0, 0x50(r1)
lbl_8050F2F0:
/* 8050F2F0  38 61 00 48 */	addi r3, r1, 0x48
/* 8050F2F4  38 81 00 3C */	addi r4, r1, 0x3c
/* 8050F2F8  4B D6 1B F5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8050F2FC  38 61 00 3C */	addi r3, r1, 0x3c
/* 8050F300  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8050F304  7C 65 1B 78 */	mr r5, r3
/* 8050F308  4B E3 7D 89 */	bl PSVECAdd
/* 8050F30C  C0 1D 00 A8 */	lfs f0, 0xa8(r29)
/* 8050F310  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8050F314  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8050F318  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8050F31C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050F320  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050F324  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8050F328  38 80 00 02 */	li r4, 2
/* 8050F32C  7F 85 E3 78 */	mr r5, r28
/* 8050F330  38 C1 00 3C */	addi r6, r1, 0x3c
/* 8050F334  38 E0 00 00 */	li r7, 0
/* 8050F338  39 01 00 30 */	addi r8, r1, 0x30
/* 8050F33C  39 20 00 00 */	li r9, 0
/* 8050F340  4B B3 CE D9 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 8050F344  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8050F348  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8050F34C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8050F350  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8050F354  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8050F358  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050F35C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050F360  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8050F364  38 80 00 08 */	li r4, 8
/* 8050F368  38 A0 00 1F */	li r5, 0x1f
/* 8050F36C  38 C1 00 24 */	addi r6, r1, 0x24
/* 8050F370  4B B6 06 B5 */	bl StartShock__12dVibration_cFii4cXyz
/* 8050F374  38 7C 05 D4 */	addi r3, r28, 0x5d4
/* 8050F378  3C 80 00 04 */	lis r4, 4
/* 8050F37C  38 A0 00 28 */	li r5, 0x28
/* 8050F380  81 9C 05 D4 */	lwz r12, 0x5d4(r28)
/* 8050F384  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8050F388  7D 89 03 A6 */	mtctr r12
/* 8050F38C  4E 80 04 21 */	bctrl 
/* 8050F390  38 00 00 1E */	li r0, 0x1e
/* 8050F394  B0 1C 09 98 */	sth r0, 0x998(r28)
/* 8050F398  48 00 07 2C */	b lbl_8050FAC4
lbl_8050F39C:
/* 8050F39C  38 00 00 03 */	li r0, 3
/* 8050F3A0  98 1C 12 9C */	stb r0, 0x129c(r28)
/* 8050F3A4  80 7C 12 38 */	lwz r3, 0x1238(r28)
/* 8050F3A8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8050F3AC  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 8050F3B0  41 82 00 10 */	beq lbl_8050F3C0
/* 8050F3B4  7F 83 E3 78 */	mr r3, r28
/* 8050F3B8  4B FF F5 91 */	bl wolfkick_damage__FP10e_rd_class
/* 8050F3BC  48 00 06 DC */	b lbl_8050FA98
lbl_8050F3C0:
/* 8050F3C0  38 7C 12 38 */	addi r3, r28, 0x1238
/* 8050F3C4  4B B7 86 95 */	bl at_power_check__FP11dCcU_AtInfo
/* 8050F3C8  80 7C 12 38 */	lwz r3, 0x1238(r28)
/* 8050F3CC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8050F3D0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8050F3D4  41 82 00 10 */	beq lbl_8050F3E4
/* 8050F3D8  38 00 00 1E */	li r0, 0x1e
/* 8050F3DC  B0 1C 09 92 */	sth r0, 0x992(r28)
/* 8050F3E0  48 00 00 0C */	b lbl_8050F3EC
lbl_8050F3E4:
/* 8050F3E4  38 00 00 01 */	li r0, 1
/* 8050F3E8  B0 1C 09 92 */	sth r0, 0x992(r28)
lbl_8050F3EC:
/* 8050F3EC  88 1C 09 BC */	lbz r0, 0x9bc(r28)
/* 8050F3F0  2C 00 00 02 */	cmpwi r0, 2
/* 8050F3F4  40 82 00 30 */	bne lbl_8050F424
/* 8050F3F8  A0 1C 12 54 */	lhz r0, 0x1254(r28)
/* 8050F3FC  28 00 00 0A */	cmplwi r0, 0xa
/* 8050F400  41 81 00 24 */	bgt lbl_8050F424
/* 8050F404  3C 60 80 51 */	lis r3, s_boom_sub__FPvPv@ha /* 0x8050E8F0@ha */
/* 8050F408  38 63 E8 F0 */	addi r3, r3, s_boom_sub__FPvPv@l /* 0x8050E8F0@l */
/* 8050F40C  7F 84 E3 78 */	mr r4, r28
/* 8050F410  4B B1 1F 29 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 8050F414  28 03 00 00 */	cmplwi r3, 0
/* 8050F418  40 82 06 AC */	bne lbl_8050FAC4
/* 8050F41C  38 00 00 05 */	li r0, 5
/* 8050F420  B0 1C 09 9A */	sth r0, 0x99a(r28)
lbl_8050F424:
/* 8050F424  88 1C 12 95 */	lbz r0, 0x1295(r28)
/* 8050F428  7C 00 07 75 */	extsb. r0, r0
/* 8050F42C  41 82 00 5C */	beq lbl_8050F488
/* 8050F430  80 7C 12 38 */	lwz r3, 0x1238(r28)
/* 8050F434  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8050F438  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8050F43C  40 82 00 20 */	bne lbl_8050F45C
/* 8050F440  88 1C 12 58 */	lbz r0, 0x1258(r28)
/* 8050F444  28 00 00 01 */	cmplwi r0, 1
/* 8050F448  41 82 00 40 */	beq lbl_8050F488
/* 8050F44C  28 00 00 10 */	cmplwi r0, 0x10
/* 8050F450  41 82 00 38 */	beq lbl_8050F488
/* 8050F454  28 00 00 02 */	cmplwi r0, 2
/* 8050F458  41 82 00 30 */	beq lbl_8050F488
lbl_8050F45C:
/* 8050F45C  38 00 03 E8 */	li r0, 0x3e8
/* 8050F460  B0 1C 09 98 */	sth r0, 0x998(r28)
/* 8050F464  38 00 00 16 */	li r0, 0x16
/* 8050F468  B0 1C 09 72 */	sth r0, 0x972(r28)
/* 8050F46C  38 00 00 00 */	li r0, 0
/* 8050F470  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050F474  B0 1C 05 62 */	sth r0, 0x562(r28)
/* 8050F478  7F 83 E3 78 */	mr r3, r28
/* 8050F47C  38 9C 12 38 */	addi r4, r28, 0x1238
/* 8050F480  4B B7 87 85 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 8050F484  48 00 06 40 */	b lbl_8050FAC4
lbl_8050F488:
/* 8050F488  88 1C 12 58 */	lbz r0, 0x1258(r28)
/* 8050F48C  28 00 00 0F */	cmplwi r0, 0xf
/* 8050F490  40 82 00 64 */	bne lbl_8050F4F4
/* 8050F494  38 60 00 00 */	li r3, 0
/* 8050F498  B0 7C 05 62 */	sth r3, 0x562(r28)
/* 8050F49C  88 1C 09 BC */	lbz r0, 0x9bc(r28)
/* 8050F4A0  7C 00 07 75 */	extsb. r0, r0
/* 8050F4A4  40 82 00 50 */	bne lbl_8050F4F4
/* 8050F4A8  38 00 00 17 */	li r0, 0x17
/* 8050F4AC  B0 1C 09 72 */	sth r0, 0x972(r28)
/* 8050F4B0  B0 7C 05 B4 */	sth r3, 0x5b4(r28)
/* 8050F4B4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070013@ha */
/* 8050F4B8  38 03 00 13 */	addi r0, r3, 0x0013 /* 0x00070013@l */
/* 8050F4BC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8050F4C0  38 7C 05 D4 */	addi r3, r28, 0x5d4
/* 8050F4C4  38 81 00 18 */	addi r4, r1, 0x18
/* 8050F4C8  38 A0 FF FF */	li r5, -1
/* 8050F4CC  81 9C 05 D4 */	lwz r12, 0x5d4(r28)
/* 8050F4D0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8050F4D4  7D 89 03 A6 */	mtctr r12
/* 8050F4D8  4E 80 04 21 */	bctrl 
/* 8050F4DC  38 00 00 00 */	li r0, 0
/* 8050F4E0  B0 1C 05 62 */	sth r0, 0x562(r28)
/* 8050F4E4  7F 83 E3 78 */	mr r3, r28
/* 8050F4E8  38 9C 12 38 */	addi r4, r28, 0x1238
/* 8050F4EC  4B B7 87 19 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 8050F4F0  48 00 05 D4 */	b lbl_8050FAC4
lbl_8050F4F4:
/* 8050F4F4  7F 83 E3 78 */	mr r3, r28
/* 8050F4F8  38 9C 12 38 */	addi r4, r28, 0x1238
/* 8050F4FC  4B B7 87 09 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 8050F500  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 8050F504  88 03 05 68 */	lbz r0, 0x568(r3)
/* 8050F508  28 00 00 05 */	cmplwi r0, 5
/* 8050F50C  40 82 00 0C */	bne lbl_8050F518
/* 8050F510  38 00 00 00 */	li r0, 0
/* 8050F514  B0 1C 05 62 */	sth r0, 0x562(r28)
lbl_8050F518:
/* 8050F518  80 7C 12 38 */	lwz r3, 0x1238(r28)
/* 8050F51C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8050F520  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 8050F524  41 82 00 10 */	beq lbl_8050F534
/* 8050F528  38 00 00 14 */	li r0, 0x14
/* 8050F52C  B0 1C 09 98 */	sth r0, 0x998(r28)
/* 8050F530  48 00 00 0C */	b lbl_8050F53C
lbl_8050F534:
/* 8050F534  38 00 00 0A */	li r0, 0xa
/* 8050F538  B0 1C 09 98 */	sth r0, 0x998(r28)
lbl_8050F53C:
/* 8050F53C  A0 1C 12 54 */	lhz r0, 0x1254(r28)
/* 8050F540  28 00 00 01 */	cmplwi r0, 1
/* 8050F544  41 81 00 0C */	bgt lbl_8050F550
/* 8050F548  38 00 00 0A */	li r0, 0xa
/* 8050F54C  B0 1C 09 98 */	sth r0, 0x998(r28)
lbl_8050F550:
/* 8050F550  80 7C 0A 20 */	lwz r3, 0xa20(r28)
/* 8050F554  80 1C 12 4C */	lwz r0, 0x124c(r28)
/* 8050F558  7C 60 03 78 */	or r0, r3, r0
/* 8050F55C  90 1C 0A 20 */	stw r0, 0xa20(r28)
/* 8050F560  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 8050F564  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8050F568  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8050F56C  7D 89 03 A6 */	mtctr r12
/* 8050F570  4E 80 04 21 */	bctrl 
/* 8050F574  28 03 00 00 */	cmplwi r3, 0
/* 8050F578  41 82 00 38 */	beq lbl_8050F5B0
/* 8050F57C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050F580  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050F584  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 8050F588  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 8050F58C  C0 1D 00 CC */	lfs f0, 0xcc(r29)
/* 8050F590  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050F594  4C 41 13 82 */	cror 2, 1, 2
/* 8050F598  40 82 00 18 */	bne lbl_8050F5B0
/* 8050F59C  88 1C 12 58 */	lbz r0, 0x1258(r28)
/* 8050F5A0  28 00 00 01 */	cmplwi r0, 1
/* 8050F5A4  40 82 00 0C */	bne lbl_8050F5B0
/* 8050F5A8  38 00 00 14 */	li r0, 0x14
/* 8050F5AC  B0 1C 12 54 */	sth r0, 0x1254(r28)
lbl_8050F5B0:
/* 8050F5B0  A8 1C 05 62 */	lha r0, 0x562(r28)
/* 8050F5B4  2C 00 00 00 */	cmpwi r0, 0
/* 8050F5B8  40 81 00 1C */	ble lbl_8050F5D4
/* 8050F5BC  88 1C 12 57 */	lbz r0, 0x1257(r28)
/* 8050F5C0  7C 00 07 75 */	extsb. r0, r0
/* 8050F5C4  40 82 00 10 */	bne lbl_8050F5D4
/* 8050F5C8  88 1C 09 BC */	lbz r0, 0x9bc(r28)
/* 8050F5CC  7C 00 07 75 */	extsb. r0, r0
/* 8050F5D0  41 82 04 44 */	beq lbl_8050FA14
lbl_8050F5D4:
/* 8050F5D4  88 1B 05 68 */	lbz r0, 0x568(r27)
/* 8050F5D8  28 00 00 0A */	cmplwi r0, 0xa
/* 8050F5DC  40 82 00 38 */	bne lbl_8050F614
/* 8050F5E0  7F 63 DB 78 */	mr r3, r27
/* 8050F5E4  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 8050F5E8  81 8C 01 3C */	lwz r12, 0x13c(r12)
/* 8050F5EC  7D 89 03 A6 */	mtctr r12
/* 8050F5F0  4E 80 04 21 */	bctrl 
/* 8050F5F4  2C 03 00 00 */	cmpwi r3, 0
/* 8050F5F8  41 82 00 1C */	beq lbl_8050F614
/* 8050F5FC  7F 83 E3 78 */	mr r3, r28
/* 8050F600  7F 44 D3 78 */	mr r4, r26
/* 8050F604  4B FF F5 F5 */	bl small_damage__FP10e_rd_classi
/* 8050F608  38 00 00 03 */	li r0, 3
/* 8050F60C  B0 1C 09 98 */	sth r0, 0x998(r28)
/* 8050F610  48 00 04 20 */	b lbl_8050FA30
lbl_8050F614:
/* 8050F614  88 1C 12 9A */	lbz r0, 0x129a(r28)
/* 8050F618  7C 00 07 75 */	extsb. r0, r0
/* 8050F61C  41 82 03 78 */	beq lbl_8050F994
/* 8050F620  28 1F 00 00 */	cmplwi r31, 0
/* 8050F624  41 82 03 70 */	beq lbl_8050F994
/* 8050F628  38 00 00 14 */	li r0, 0x14
/* 8050F62C  B0 1C 09 98 */	sth r0, 0x998(r28)
/* 8050F630  88 1C 12 9A */	lbz r0, 0x129a(r28)
/* 8050F634  2C 00 00 02 */	cmpwi r0, 2
/* 8050F638  40 82 01 44 */	bne lbl_8050F77C
/* 8050F63C  88 7F 07 9E */	lbz r3, 0x79e(r31)
/* 8050F640  38 03 00 01 */	addi r0, r3, 1
/* 8050F644  98 1F 07 9E */	stb r0, 0x79e(r31)
/* 8050F648  88 1F 07 9E */	lbz r0, 0x79e(r31)
/* 8050F64C  2C 00 00 01 */	cmpwi r0, 1
/* 8050F650  40 82 00 44 */	bne lbl_8050F694
/* 8050F654  38 00 00 00 */	li r0, 0
/* 8050F658  B0 1C 05 62 */	sth r0, 0x562(r28)
/* 8050F65C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050F660  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050F664  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8050F668  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 8050F66C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 8050F670  A0 84 00 B0 */	lhz r4, 0xb0(r4)
/* 8050F674  4B B2 53 19 */	bl onEventBit__11dSv_event_cFUs
/* 8050F678  7F 83 E3 78 */	mr r3, r28
/* 8050F67C  4B FF F6 AD */	bl part_break__FP10e_rd_class
/* 8050F680  38 00 00 14 */	li r0, 0x14
/* 8050F684  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 8050F688  38 00 00 00 */	li r0, 0
/* 8050F68C  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha /* 0x80451125@ha */
/* 8050F690  98 03 11 25 */	stb r0, struct_80451124+0x1@l(r3)  /* 0x80451125@l */
lbl_8050F694:
/* 8050F694  3C 60 80 52 */	lis r3, l_HIO@ha /* 0x80519194@ha */
/* 8050F698  38 63 91 94 */	addi r3, r3, l_HIO@l /* 0x80519194@l */
/* 8050F69C  88 03 00 3B */	lbz r0, 0x3b(r3)
/* 8050F6A0  28 00 00 00 */	cmplwi r0, 0
/* 8050F6A4  40 82 00 14 */	bne lbl_8050F6B8
/* 8050F6A8  88 1F 07 9E */	lbz r0, 0x79e(r31)
/* 8050F6AC  7C 00 07 74 */	extsb r0, r0
/* 8050F6B0  2C 00 00 02 */	cmpwi r0, 2
/* 8050F6B4  41 80 00 70 */	blt lbl_8050F724
lbl_8050F6B8:
/* 8050F6B8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8050F6BC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8050F6C0  80 63 00 00 */	lwz r3, 0(r3)
/* 8050F6C4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8050F6C8  38 80 00 1E */	li r4, 0x1e
/* 8050F6CC  38 A0 00 00 */	li r5, 0
/* 8050F6D0  4B D9 FD 39 */	bl bgmStop__8Z2SeqMgrFUll
/* 8050F6D4  38 00 00 2A */	li r0, 0x2a
/* 8050F6D8  B0 1C 09 72 */	sth r0, 0x972(r28)
/* 8050F6DC  38 00 00 00 */	li r0, 0
/* 8050F6E0  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050F6E4  80 1C 12 4C */	lwz r0, 0x124c(r28)
/* 8050F6E8  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8050F6EC  41 82 00 10 */	beq lbl_8050F6FC
/* 8050F6F0  38 00 03 00 */	li r0, 0x300
/* 8050F6F4  B0 1C 09 F6 */	sth r0, 0x9f6(r28)
/* 8050F6F8  48 00 00 1C */	b lbl_8050F714
lbl_8050F6FC:
/* 8050F6FC  C0 3D 00 00 */	lfs f1, 0(r29)
/* 8050F700  4B D5 82 8D */	bl cM_rndFX__Ff
/* 8050F704  FC 00 08 1E */	fctiwz f0, f1
/* 8050F708  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 8050F70C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8050F710  B0 1C 09 F6 */	sth r0, 0x9f6(r28)
lbl_8050F714:
/* 8050F714  38 00 00 0A */	li r0, 0xa
/* 8050F718  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha /* 0x80451125@ha */
/* 8050F71C  98 03 11 25 */	stb r0, struct_80451124+0x1@l(r3)  /* 0x80451125@l */
/* 8050F720  48 00 03 A4 */	b lbl_8050FAC4
lbl_8050F724:
/* 8050F724  80 1C 06 80 */	lwz r0, 0x680(r28)
/* 8050F728  2C 00 00 00 */	cmpwi r0, 0
/* 8050F72C  40 82 00 24 */	bne lbl_8050F750
/* 8050F730  83 1C 06 7C */	lwz r24, 0x67c(r28)
/* 8050F734  7F 83 E3 78 */	mr r3, r28
/* 8050F738  38 80 00 2B */	li r4, 0x2b
/* 8050F73C  C0 3D 00 A8 */	lfs f1, 0xa8(r29)
/* 8050F740  38 A0 00 00 */	li r5, 0
/* 8050F744  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8050F748  4B FF 54 8D */	bl anm_init__FP10e_rd_classifUcf
/* 8050F74C  93 1C 06 80 */	stw r24, 0x680(r28)
lbl_8050F750:
/* 8050F750  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070136@ha */
/* 8050F754  38 03 01 36 */	addi r0, r3, 0x0136 /* 0x00070136@l */
/* 8050F758  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050F75C  38 7C 05 D4 */	addi r3, r28, 0x5d4
/* 8050F760  38 81 00 14 */	addi r4, r1, 0x14
/* 8050F764  38 A0 FF FF */	li r5, -1
/* 8050F768  81 9C 05 D4 */	lwz r12, 0x5d4(r28)
/* 8050F76C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8050F770  7D 89 03 A6 */	mtctr r12
/* 8050F774  4E 80 04 21 */	bctrl 
/* 8050F778  48 00 03 4C */	b lbl_8050FAC4
lbl_8050F77C:
/* 8050F77C  88 7F 07 9E */	lbz r3, 0x79e(r31)
/* 8050F780  38 03 00 01 */	addi r0, r3, 1
/* 8050F784  98 1F 07 9E */	stb r0, 0x79e(r31)
/* 8050F788  88 7F 07 9F */	lbz r3, 0x79f(r31)
/* 8050F78C  38 03 00 01 */	addi r0, r3, 1
/* 8050F790  98 1F 07 9F */	stb r0, 0x79f(r31)
/* 8050F794  7F 83 E3 78 */	mr r3, r28
/* 8050F798  4B FF F5 91 */	bl part_break__FP10e_rd_class
/* 8050F79C  88 1F 07 9E */	lbz r0, 0x79e(r31)
/* 8050F7A0  7C 00 07 74 */	extsb r0, r0
/* 8050F7A4  2C 00 00 01 */	cmpwi r0, 1
/* 8050F7A8  41 82 00 24 */	beq lbl_8050F7CC
/* 8050F7AC  2C 00 00 02 */	cmpwi r0, 2
/* 8050F7B0  41 82 00 1C */	beq lbl_8050F7CC
/* 8050F7B4  2C 00 00 03 */	cmpwi r0, 3
/* 8050F7B8  41 82 00 14 */	beq lbl_8050F7CC
/* 8050F7BC  2C 00 00 04 */	cmpwi r0, 4
/* 8050F7C0  41 82 00 0C */	beq lbl_8050F7CC
/* 8050F7C4  2C 00 00 06 */	cmpwi r0, 6
/* 8050F7C8  40 82 00 0C */	bne lbl_8050F7D4
lbl_8050F7CC:
/* 8050F7CC  7F 83 E3 78 */	mr r3, r28
/* 8050F7D0  4B FF F5 59 */	bl part_break__FP10e_rd_class
lbl_8050F7D4:
/* 8050F7D4  88 1F 07 9E */	lbz r0, 0x79e(r31)
/* 8050F7D8  20 00 00 08 */	subfic r0, r0, 8
/* 8050F7DC  7C 03 07 74 */	extsb r3, r0
/* 8050F7E0  2C 03 00 08 */	cmpwi r3, 8
/* 8050F7E4  40 81 00 08 */	ble lbl_8050F7EC
/* 8050F7E8  38 60 00 08 */	li r3, 8
lbl_8050F7EC:
/* 8050F7EC  4B B1 E1 11 */	bl dComIfGs_BossLife_public_Set__FSc
/* 8050F7F0  88 1F 07 9E */	lbz r0, 0x79e(r31)
/* 8050F7F4  2C 00 00 05 */	cmpwi r0, 5
/* 8050F7F8  40 82 00 1C */	bne lbl_8050F814
/* 8050F7FC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8050F800  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8050F804  80 63 00 00 */	lwz r3, 0(r3)
/* 8050F808  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8050F80C  38 80 00 02 */	li r4, 2
/* 8050F810  4B DA 25 E5 */	bl changeSubBgmStatus__8Z2SeqMgrFl
lbl_8050F814:
/* 8050F814  88 1F 07 9E */	lbz r0, 0x79e(r31)
/* 8050F818  7C 00 07 74 */	extsb r0, r0
/* 8050F81C  2C 00 00 08 */	cmpwi r0, 8
/* 8050F820  41 80 00 84 */	blt lbl_8050F8A4
/* 8050F824  38 00 00 29 */	li r0, 0x29
/* 8050F828  B0 1C 09 72 */	sth r0, 0x972(r28)
/* 8050F82C  38 00 00 00 */	li r0, 0
/* 8050F830  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050F834  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007012D@ha */
/* 8050F838  38 03 01 2D */	addi r0, r3, 0x012D /* 0x0007012D@l */
/* 8050F83C  90 01 00 08 */	stw r0, 8(r1)
/* 8050F840  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8050F844  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8050F848  80 63 00 00 */	lwz r3, 0(r3)
/* 8050F84C  38 81 00 08 */	addi r4, r1, 8
/* 8050F850  38 A0 00 00 */	li r5, 0
/* 8050F854  38 C0 00 00 */	li r6, 0
/* 8050F858  38 E0 00 00 */	li r7, 0
/* 8050F85C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8050F860  FC 40 08 90 */	fmr f2, f1
/* 8050F864  C0 7D 00 60 */	lfs f3, 0x60(r29)
/* 8050F868  FC 80 18 90 */	fmr f4, f3
/* 8050F86C  39 00 00 00 */	li r8, 0
/* 8050F870  4B D9 C1 15 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8050F874  38 00 00 1F */	li r0, 0x1f
/* 8050F878  B0 1F 06 90 */	sth r0, 0x690(r31)
/* 8050F87C  38 00 00 00 */	li r0, 0
/* 8050F880  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 8050F884  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8050F888  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8050F88C  80 63 00 00 */	lwz r3, 0(r3)
/* 8050F890  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8050F894  38 80 00 1E */	li r4, 0x1e
/* 8050F898  38 A0 00 00 */	li r5, 0
/* 8050F89C  4B D9 FB 6D */	bl bgmStop__8Z2SeqMgrFUll
/* 8050F8A0  48 00 02 24 */	b lbl_8050FAC4
lbl_8050F8A4:
/* 8050F8A4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700F6@ha */
/* 8050F8A8  38 03 00 F6 */	addi r0, r3, 0x00F6 /* 0x000700F6@l */
/* 8050F8AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8050F8B0  38 7C 05 D4 */	addi r3, r28, 0x5d4
/* 8050F8B4  38 81 00 10 */	addi r4, r1, 0x10
/* 8050F8B8  38 A0 FF FF */	li r5, -1
/* 8050F8BC  81 9C 05 D4 */	lwz r12, 0x5d4(r28)
/* 8050F8C0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8050F8C4  7D 89 03 A6 */	mtctr r12
/* 8050F8C8  4E 80 04 21 */	bctrl 
/* 8050F8CC  80 1C 06 7C */	lwz r0, 0x67c(r28)
/* 8050F8D0  2C 00 00 37 */	cmpwi r0, 0x37
/* 8050F8D4  41 82 00 14 */	beq lbl_8050F8E8
/* 8050F8D8  2C 00 00 38 */	cmpwi r0, 0x38
/* 8050F8DC  41 82 00 0C */	beq lbl_8050F8E8
/* 8050F8E0  2C 00 00 39 */	cmpwi r0, 0x39
/* 8050F8E4  40 82 00 14 */	bne lbl_8050F8F8
lbl_8050F8E8:
/* 8050F8E8  80 1C 06 80 */	lwz r0, 0x680(r28)
/* 8050F8EC  90 1C 06 7C */	stw r0, 0x67c(r28)
/* 8050F8F0  38 00 00 00 */	li r0, 0
/* 8050F8F4  90 1C 06 80 */	stw r0, 0x680(r28)
lbl_8050F8F8:
/* 8050F8F8  80 1C 06 80 */	lwz r0, 0x680(r28)
/* 8050F8FC  2C 00 00 00 */	cmpwi r0, 0
/* 8050F900  40 82 00 74 */	bne lbl_8050F974
/* 8050F904  C0 3D 00 00 */	lfs f1, 0(r29)
/* 8050F908  4B D5 80 4D */	bl cM_rndF__Ff
/* 8050F90C  C0 1D 00 AC */	lfs f0, 0xac(r29)
/* 8050F910  EC 00 08 2A */	fadds f0, f0, f1
/* 8050F914  FC 00 00 1E */	fctiwz f0, f0
/* 8050F918  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 8050F91C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8050F920  B0 1C 09 96 */	sth r0, 0x996(r28)
/* 8050F924  83 1C 06 7C */	lwz r24, 0x67c(r28)
/* 8050F928  A8 7C 09 7C */	lha r3, 0x97c(r28)
/* 8050F92C  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 8050F930  7C 03 00 50 */	subf r0, r3, r0
/* 8050F934  7C 00 07 35 */	extsh. r0, r0
/* 8050F938  40 80 00 20 */	bge lbl_8050F958
/* 8050F93C  7F 83 E3 78 */	mr r3, r28
/* 8050F940  38 80 00 25 */	li r4, 0x25
/* 8050F944  C0 3D 00 A8 */	lfs f1, 0xa8(r29)
/* 8050F948  38 A0 00 00 */	li r5, 0
/* 8050F94C  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8050F950  4B FF 52 85 */	bl anm_init__FP10e_rd_classifUcf
/* 8050F954  48 00 00 1C */	b lbl_8050F970
lbl_8050F958:
/* 8050F958  7F 83 E3 78 */	mr r3, r28
/* 8050F95C  38 80 00 26 */	li r4, 0x26
/* 8050F960  C0 3D 00 A8 */	lfs f1, 0xa8(r29)
/* 8050F964  38 A0 00 00 */	li r5, 0
/* 8050F968  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8050F96C  4B FF 52 69 */	bl anm_init__FP10e_rd_classifUcf
lbl_8050F970:
/* 8050F970  93 1C 06 80 */	stw r24, 0x680(r28)
lbl_8050F974:
/* 8050F974  A8 1C 09 72 */	lha r0, 0x972(r28)
/* 8050F978  2C 00 00 0D */	cmpwi r0, 0xd
/* 8050F97C  41 82 01 1C */	beq lbl_8050FA98
/* 8050F980  38 00 00 0D */	li r0, 0xd
/* 8050F984  B0 1C 09 72 */	sth r0, 0x972(r28)
/* 8050F988  38 00 00 00 */	li r0, 0
/* 8050F98C  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050F990  48 00 01 08 */	b lbl_8050FA98
lbl_8050F994:
/* 8050F994  88 1C 09 BC */	lbz r0, 0x9bc(r28)
/* 8050F998  7C 00 07 75 */	extsb. r0, r0
/* 8050F99C  41 82 00 6C */	beq lbl_8050FA08
/* 8050F9A0  80 7C 12 38 */	lwz r3, 0x1238(r28)
/* 8050F9A4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8050F9A8  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 8050F9AC  41 82 00 5C */	beq lbl_8050FA08
/* 8050F9B0  38 00 00 14 */	li r0, 0x14
/* 8050F9B4  B0 1C 09 98 */	sth r0, 0x998(r28)
/* 8050F9B8  A8 1C 09 72 */	lha r0, 0x972(r28)
/* 8050F9BC  2C 00 00 0D */	cmpwi r0, 0xd
/* 8050F9C0  40 82 00 70 */	bne lbl_8050FA30
/* 8050F9C4  7F 83 E3 78 */	mr r3, r28
/* 8050F9C8  38 80 00 27 */	li r4, 0x27
/* 8050F9CC  C0 3D 00 54 */	lfs f1, 0x54(r29)
/* 8050F9D0  38 A0 00 02 */	li r5, 2
/* 8050F9D4  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8050F9D8  4B FF 51 FD */	bl anm_init__FP10e_rd_classifUcf
/* 8050F9DC  38 00 00 32 */	li r0, 0x32
/* 8050F9E0  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050F9E4  C0 3D 00 CC */	lfs f1, 0xcc(r29)
/* 8050F9E8  4B D5 7F 6D */	bl cM_rndF__Ff
/* 8050F9EC  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 8050F9F0  EC 00 08 2A */	fadds f0, f0, f1
/* 8050F9F4  FC 00 00 1E */	fctiwz f0, f0
/* 8050F9F8  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 8050F9FC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8050FA00  B0 1C 09 96 */	sth r0, 0x996(r28)
/* 8050FA04  48 00 00 2C */	b lbl_8050FA30
lbl_8050FA08:
/* 8050FA08  7F 83 E3 78 */	mr r3, r28
/* 8050FA0C  4B FF EF DD */	bl big_damage__FP10e_rd_class
/* 8050FA10  48 00 00 20 */	b lbl_8050FA30
lbl_8050FA14:
/* 8050FA14  7F 44 D3 78 */	mr r4, r26
/* 8050FA18  88 1C 12 58 */	lbz r0, 0x1258(r28)
/* 8050FA1C  28 00 00 10 */	cmplwi r0, 0x10
/* 8050FA20  40 82 00 08 */	bne lbl_8050FA28
/* 8050FA24  38 80 00 00 */	li r4, 0
lbl_8050FA28:
/* 8050FA28  7F 83 E3 78 */	mr r3, r28
/* 8050FA2C  4B FF F1 CD */	bl small_damage__FP10e_rd_classi
lbl_8050FA30:
/* 8050FA30  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8050FA34  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8050FA38  80 1C 06 98 */	lwz r0, 0x698(r28)
/* 8050FA3C  28 00 00 00 */	cmplwi r0, 0
/* 8050FA40  41 82 00 58 */	beq lbl_8050FA98
/* 8050FA44  80 7C 06 78 */	lwz r3, 0x678(r28)
/* 8050FA48  38 80 00 0A */	li r4, 0xa
/* 8050FA4C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050FA50  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050FA54  3C A5 00 02 */	addis r5, r5, 2
/* 8050FA58  38 C0 00 80 */	li r6, 0x80
/* 8050FA5C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8050FA60  4B B2 C8 8D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8050FA64  7C 64 1B 78 */	mr r4, r3
/* 8050FA68  80 7C 06 98 */	lwz r3, 0x698(r28)
/* 8050FA6C  38 A0 00 00 */	li r5, 0
/* 8050FA70  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8050FA74  FC 40 08 90 */	fmr f2, f1
/* 8050FA78  C0 7D 00 04 */	lfs f3, 4(r29)
/* 8050FA7C  C0 9D 00 60 */	lfs f4, 0x60(r29)
/* 8050FA80  4B B0 13 F1 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8050FA84  48 00 00 14 */	b lbl_8050FA98
lbl_8050FA88:
/* 8050FA88  3B 5A 00 01 */	addi r26, r26, 1
/* 8050FA8C  2C 1A 00 02 */	cmpwi r26, 2
/* 8050FA90  3B 39 01 38 */	addi r25, r25, 0x138
/* 8050FA94  40 81 F5 9C */	ble lbl_8050F030
lbl_8050FA98:
/* 8050FA98  38 60 00 00 */	li r3, 0
/* 8050FA9C  38 80 00 03 */	li r4, 3
/* 8050FAA0  38 00 00 03 */	li r0, 3
/* 8050FAA4  7C 09 03 A6 */	mtctr r0
lbl_8050FAA8:
/* 8050FAA8  A8 1C 05 62 */	lha r0, 0x562(r28)
/* 8050FAAC  2C 00 00 01 */	cmpwi r0, 1
/* 8050FAB0  41 81 00 0C */	bgt lbl_8050FABC
/* 8050FAB4  38 03 0E 12 */	addi r0, r3, 0xe12
/* 8050FAB8  7C 9C 01 AE */	stbx r4, r28, r0
lbl_8050FABC:
/* 8050FABC  38 63 01 38 */	addi r3, r3, 0x138
/* 8050FAC0  42 00 FF E8 */	bdnz lbl_8050FAA8
lbl_8050FAC4:
/* 8050FAC4  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8050FAC8  4B E5 27 4D */	bl _restgpr_24
/* 8050FACC  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8050FAD0  7C 08 03 A6 */	mtlr r0
/* 8050FAD4  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8050FAD8  4E 80 00 20 */	blr 
