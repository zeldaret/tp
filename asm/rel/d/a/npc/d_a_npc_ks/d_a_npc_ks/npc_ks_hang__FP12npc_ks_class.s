lbl_80A4E000:
/* 80A4E000  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A4E004  7C 08 02 A6 */	mflr r0
/* 80A4E008  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A4E00C  39 61 00 60 */	addi r11, r1, 0x60
/* 80A4E010  4B 91 41 BD */	bl _savegpr_25
/* 80A4E014  7C 79 1B 78 */	mr r25, r3
/* 80A4E018  3C 60 80 A6 */	lis r3, lit_1109@ha /* 0x80A5FE48@ha */
/* 80A4E01C  3B A3 FE 48 */	addi r29, r3, lit_1109@l /* 0x80A5FE48@l */
/* 80A4E020  3C 60 80 A6 */	lis r3, lit_4030@ha /* 0x80A5DEFC@ha */
/* 80A4E024  3B C3 DE FC */	addi r30, r3, lit_4030@l /* 0x80A5DEFC@l */
/* 80A4E028  80 1D 00 58 */	lwz r0, 0x58(r29)
/* 80A4E02C  28 00 00 00 */	cmplwi r0, 0
/* 80A4E030  41 82 07 B8 */	beq lbl_80A4E7E8
/* 80A4E034  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A4E038  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A4E03C  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 80A4E040  88 19 04 E2 */	lbz r0, 0x4e2(r25)
/* 80A4E044  2C 00 00 04 */	cmpwi r0, 4
/* 80A4E048  40 82 00 48 */	bne lbl_80A4E090
/* 80A4E04C  38 60 00 00 */	li r3, 0
/* 80A4E050  3C 80 80 A6 */	lis r4, saru_p@ha /* 0x80A5E478@ha */
/* 80A4E054  38 84 E4 78 */	addi r4, r4, saru_p@l /* 0x80A5E478@l */
/* 80A4E058  38 00 00 04 */	li r0, 4
/* 80A4E05C  7C 09 03 A6 */	mtctr r0
lbl_80A4E060:
/* 80A4E060  7C 04 18 2E */	lwzx r0, r4, r3
/* 80A4E064  28 00 00 00 */	cmplwi r0, 0
/* 80A4E068  41 82 07 80 */	beq lbl_80A4E7E8
/* 80A4E06C  38 63 00 04 */	addi r3, r3, 4
/* 80A4E070  42 00 FF F0 */	bdnz lbl_80A4E060
/* 80A4E074  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80A4E078  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80A4E07C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4E080  40 80 00 10 */	bge lbl_80A4E090
/* 80A4E084  38 00 00 04 */	li r0, 4
/* 80A4E088  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 80A4E08C  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
lbl_80A4E090:
/* 80A4E090  80 19 04 A4 */	lwz r0, 0x4a4(r25)
/* 80A4E094  90 01 00 08 */	stw r0, 8(r1)
/* 80A4E098  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80A4E09C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80A4E0A0  38 81 00 08 */	addi r4, r1, 8
/* 80A4E0A4  4B 5C B7 55 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80A4E0A8  7C 7B 1B 79 */	or. r27, r3, r3
/* 80A4E0AC  40 82 00 64 */	bne lbl_80A4E110
/* 80A4E0B0  3C 60 80 A5 */	lis r3, s_sw_sub__FPvPv@ha /* 0x80A4BA14@ha */
/* 80A4E0B4  38 63 BA 14 */	addi r3, r3, s_sw_sub__FPvPv@l /* 0x80A4BA14@l */
/* 80A4E0B8  7F 24 CB 78 */	mr r4, r25
/* 80A4E0BC  4B 5D 32 7D */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80A4E0C0  7C 7B 1B 79 */	or. r27, r3, r3
/* 80A4E0C4  41 82 07 24 */	beq lbl_80A4E7E8
/* 80A4E0C8  41 82 00 0C */	beq lbl_80A4E0D4
/* 80A4E0CC  80 1B 00 04 */	lwz r0, 4(r27)
/* 80A4E0D0  48 00 00 08 */	b lbl_80A4E0D8
lbl_80A4E0D4:
/* 80A4E0D4  38 00 FF FF */	li r0, -1
lbl_80A4E0D8:
/* 80A4E0D8  90 19 04 A4 */	stw r0, 0x4a4(r25)
/* 80A4E0DC  93 79 09 34 */	stw r27, 0x934(r25)
/* 80A4E0E0  88 79 05 B6 */	lbz r3, 0x5b6(r25)
/* 80A4E0E4  38 A3 00 01 */	addi r5, r3, 1
/* 80A4E0E8  80 79 09 34 */	lwz r3, 0x934(r25)
/* 80A4E0EC  80 83 0D 8C */	lwz r4, 0xd8c(r3)
/* 80A4E0F0  80 63 09 1C */	lwz r3, 0x91c(r3)
/* 80A4E0F4  38 03 00 01 */	addi r0, r3, 1
/* 80A4E0F8  7C 04 03 D6 */	divw r0, r4, r0
/* 80A4E0FC  7C 65 01 D6 */	mullw r3, r5, r0
/* 80A4E100  38 03 FF FF */	addi r0, r3, -1
/* 80A4E104  90 19 06 30 */	stw r0, 0x630(r25)
/* 80A4E108  48 00 00 08 */	b lbl_80A4E110
/* 80A4E10C  48 00 06 DC */	b lbl_80A4E7E8
lbl_80A4E110:
/* 80A4E110  C0 3B 09 00 */	lfs f1, 0x900(r27)
/* 80A4E114  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80A4E118  EC 01 00 2A */	fadds f0, f1, f0
/* 80A4E11C  D0 1B 09 00 */	stfs f0, 0x900(r27)
/* 80A4E120  3B 40 00 00 */	li r26, 0
/* 80A4E124  38 79 04 DE */	addi r3, r25, 0x4de
/* 80A4E128  A8 99 04 B6 */	lha r4, 0x4b6(r25)
/* 80A4E12C  38 04 40 00 */	addi r0, r4, 0x4000
/* 80A4E130  7C 04 07 34 */	extsh r4, r0
/* 80A4E134  38 A0 00 02 */	li r5, 2
/* 80A4E138  38 C0 08 00 */	li r6, 0x800
/* 80A4E13C  4B 82 24 CD */	bl cLib_addCalcAngleS2__FPssss
/* 80A4E140  88 1D 00 FE */	lbz r0, 0xfe(r29)
/* 80A4E144  7C 00 07 75 */	extsb. r0, r0
/* 80A4E148  40 82 00 14 */	bne lbl_80A4E15C
/* 80A4E14C  38 00 00 00 */	li r0, 0
/* 80A4E150  B0 1D 00 FC */	sth r0, 0xfc(r29)
/* 80A4E154  38 00 00 01 */	li r0, 1
/* 80A4E158  98 1D 00 FE */	stb r0, 0xfe(r29)
lbl_80A4E15C:
/* 80A4E15C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A4E160  80 03 05 80 */	lwz r0, 0x580(r3)
/* 80A4E164  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80A4E168  40 82 00 0C */	bne lbl_80A4E174
/* 80A4E16C  A8 19 05 C8 */	lha r0, 0x5c8(r25)
/* 80A4E170  B0 1D 00 FC */	sth r0, 0xfc(r29)
lbl_80A4E174:
/* 80A4E174  A8 99 05 EA */	lha r4, 0x5ea(r25)
/* 80A4E178  28 04 00 0A */	cmplwi r4, 0xa
/* 80A4E17C  41 81 05 9C */	bgt lbl_80A4E718
/* 80A4E180  3C 60 80 A6 */	lis r3, lit_6229@ha /* 0x80A5E894@ha */
/* 80A4E184  38 63 E8 94 */	addi r3, r3, lit_6229@l /* 0x80A5E894@l */
/* 80A4E188  54 80 10 3A */	slwi r0, r4, 2
/* 80A4E18C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A4E190  7C 09 03 A6 */	mtctr r0
/* 80A4E194  4E 80 04 20 */	bctr 
lbl_80A4E198:
/* 80A4E198  38 80 00 00 */	li r4, 0
/* 80A4E19C  B0 99 05 F0 */	sth r4, 0x5f0(r25)
/* 80A4E1A0  A8 79 05 EA */	lha r3, 0x5ea(r25)
/* 80A4E1A4  38 03 00 01 */	addi r0, r3, 1
/* 80A4E1A8  B0 19 05 EA */	sth r0, 0x5ea(r25)
/* 80A4E1AC  B0 99 06 04 */	sth r4, 0x604(r25)
lbl_80A4E1B0:
/* 80A4E1B0  88 19 05 B6 */	lbz r0, 0x5b6(r25)
/* 80A4E1B4  28 00 00 00 */	cmplwi r0, 0
/* 80A4E1B8  40 82 00 1C */	bne lbl_80A4E1D4
/* 80A4E1BC  80 7D 00 58 */	lwz r3, 0x58(r29)
/* 80A4E1C0  A8 03 0B 42 */	lha r0, 0xb42(r3)
/* 80A4E1C4  2C 00 00 00 */	cmpwi r0, 0
/* 80A4E1C8  40 82 00 0C */	bne lbl_80A4E1D4
/* 80A4E1CC  80 7B 09 1C */	lwz r3, 0x91c(r27)
/* 80A4E1D0  4B FF FB A1 */	bl order_set__Fi
lbl_80A4E1D4:
/* 80A4E1D4  80 19 05 B8 */	lwz r0, 0x5b8(r25)
/* 80A4E1D8  2C 00 00 00 */	cmpwi r0, 0
/* 80A4E1DC  40 82 00 58 */	bne lbl_80A4E234
/* 80A4E1E0  80 19 05 D0 */	lwz r0, 0x5d0(r25)
/* 80A4E1E4  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A4E1E8  41 82 00 4C */	beq lbl_80A4E234
/* 80A4E1EC  C0 39 05 C4 */	lfs f1, 0x5c4(r25)
/* 80A4E1F0  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 80A4E1F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4E1F8  40 80 00 3C */	bge lbl_80A4E234
/* 80A4E1FC  7F 23 CB 78 */	mr r3, r25
/* 80A4E200  38 80 00 10 */	li r4, 0x10
/* 80A4E204  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80A4E208  38 A0 00 02 */	li r5, 2
/* 80A4E20C  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A4E210  4B FF AF 95 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4E214  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80A4E218  4B 81 97 3D */	bl cM_rndF__Ff
/* 80A4E21C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80A4E220  EC 00 08 2A */	fadds f0, f0, f1
/* 80A4E224  FC 00 00 1E */	fctiwz f0, f0
/* 80A4E228  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80A4E22C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80A4E230  B0 19 05 F0 */	sth r0, 0x5f0(r25)
lbl_80A4E234:
/* 80A4E234  A8 19 05 F0 */	lha r0, 0x5f0(r25)
/* 80A4E238  2C 00 00 00 */	cmpwi r0, 0
/* 80A4E23C  40 82 00 9C */	bne lbl_80A4E2D8
/* 80A4E240  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 80A4E244  4B 81 97 11 */	bl cM_rndF__Ff
/* 80A4E248  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80A4E24C  EC 00 08 2A */	fadds f0, f0, f1
/* 80A4E250  FC 00 00 1E */	fctiwz f0, f0
/* 80A4E254  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80A4E258  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80A4E25C  B0 19 05 F0 */	sth r0, 0x5f0(r25)
/* 80A4E260  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80A4E264  4B 81 96 F1 */	bl cM_rndF__Ff
/* 80A4E268  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 80A4E26C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4E270  40 80 00 20 */	bge lbl_80A4E290
/* 80A4E274  7F 23 CB 78 */	mr r3, r25
/* 80A4E278  38 80 00 11 */	li r4, 0x11
/* 80A4E27C  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80A4E280  38 A0 00 02 */	li r5, 2
/* 80A4E284  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A4E288  4B FF AF 1D */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4E28C  48 00 00 4C */	b lbl_80A4E2D8
lbl_80A4E290:
/* 80A4E290  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80A4E294  4B 81 96 C1 */	bl cM_rndF__Ff
/* 80A4E298  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 80A4E29C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4E2A0  40 80 00 20 */	bge lbl_80A4E2C0
/* 80A4E2A4  7F 23 CB 78 */	mr r3, r25
/* 80A4E2A8  38 80 00 12 */	li r4, 0x12
/* 80A4E2AC  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80A4E2B0  38 A0 00 02 */	li r5, 2
/* 80A4E2B4  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A4E2B8  4B FF AE ED */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4E2BC  48 00 00 1C */	b lbl_80A4E2D8
lbl_80A4E2C0:
/* 80A4E2C0  7F 23 CB 78 */	mr r3, r25
/* 80A4E2C4  38 80 00 13 */	li r4, 0x13
/* 80A4E2C8  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80A4E2CC  38 A0 00 02 */	li r5, 2
/* 80A4E2D0  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A4E2D4  4B FF AE D1 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A4E2D8:
/* 80A4E2D8  38 80 00 00 */	li r4, 0
/* 80A4E2DC  80 7D 00 58 */	lwz r3, 0x58(r29)
/* 80A4E2E0  98 83 09 2C */	stb r4, 0x92c(r3)
/* 80A4E2E4  80 19 05 B8 */	lwz r0, 0x5b8(r25)
/* 80A4E2E8  2C 00 00 00 */	cmpwi r0, 0
/* 80A4E2EC  40 82 01 2C */	bne lbl_80A4E418
/* 80A4E2F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A4E2F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A4E2F8  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A4E2FC  28 00 00 00 */	cmplwi r0, 0
/* 80A4E300  40 82 01 18 */	bne lbl_80A4E418
/* 80A4E304  A8 19 09 4E */	lha r0, 0x94e(r25)
/* 80A4E308  2C 00 00 00 */	cmpwi r0, 0
/* 80A4E30C  40 82 01 0C */	bne lbl_80A4E418
/* 80A4E310  C0 39 05 C4 */	lfs f1, 0x5c4(r25)
/* 80A4E314  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 80A4E318  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4E31C  40 80 00 FC */	bge lbl_80A4E418
/* 80A4E320  38 00 00 01 */	li r0, 1
/* 80A4E324  80 7D 00 58 */	lwz r3, 0x58(r29)
/* 80A4E328  B0 03 0B 42 */	sth r0, 0xb42(r3)
/* 80A4E32C  98 19 06 20 */	stb r0, 0x620(r25)
/* 80A4E330  B0 99 06 10 */	sth r4, 0x610(r25)
/* 80A4E334  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80A4E338  D0 1D 00 4C */	stfs f0, 0x4c(r29)
/* 80A4E33C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80A4E340  38 7D 00 4C */	addi r3, r29, 0x4c
/* 80A4E344  D0 03 00 04 */	stfs f0, 4(r3)
/* 80A4E348  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80A4E34C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80A4E350  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A4E354  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A4E358  80 63 00 00 */	lwz r3, 0(r3)
/* 80A4E35C  A8 99 04 B6 */	lha r4, 0x4b6(r25)
/* 80A4E360  4B 5B E0 7D */	bl mDoMtx_YrotS__FPA4_fs
/* 80A4E364  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A4E368  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A4E36C  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 80A4E370  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A4E374  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 80A4E378  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A4E37C  38 61 00 28 */	addi r3, r1, 0x28
/* 80A4E380  38 9D 00 4C */	addi r4, r29, 0x4c
/* 80A4E384  4B 82 2B 69 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80A4E388  38 7D 00 4C */	addi r3, r29, 0x4c
/* 80A4E38C  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 80A4E390  7C 65 1B 78 */	mr r5, r3
/* 80A4E394  4B 8F 8C FD */	bl PSVECAdd
/* 80A4E398  38 61 00 1C */	addi r3, r1, 0x1c
/* 80A4E39C  38 9D 00 4C */	addi r4, r29, 0x4c
/* 80A4E3A0  38 B9 06 14 */	addi r5, r25, 0x614
/* 80A4E3A4  4B 81 87 91 */	bl __mi__4cXyzCFRC3Vec
/* 80A4E3A8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A4E3AC  D0 19 06 24 */	stfs f0, 0x624(r25)
/* 80A4E3B0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A4E3B4  D0 19 06 28 */	stfs f0, 0x628(r25)
/* 80A4E3B8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80A4E3BC  D0 19 06 2C */	stfs f0, 0x62c(r25)
/* 80A4E3C0  38 79 06 24 */	addi r3, r25, 0x624
/* 80A4E3C4  7C 64 1B 78 */	mr r4, r3
/* 80A4E3C8  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80A4E3CC  4B 8F 8D 0D */	bl PSVECScale
/* 80A4E3D0  38 00 00 04 */	li r0, 4
/* 80A4E3D4  B0 19 05 EA */	sth r0, 0x5ea(r25)
/* 80A4E3D8  38 00 00 11 */	li r0, 0x11
/* 80A4E3DC  B0 19 05 F0 */	sth r0, 0x5f0(r25)
/* 80A4E3E0  38 00 00 19 */	li r0, 0x19
/* 80A4E3E4  B0 19 05 F2 */	sth r0, 0x5f2(r25)
/* 80A4E3E8  38 00 40 00 */	li r0, 0x4000
/* 80A4E3EC  B0 19 05 FA */	sth r0, 0x5fa(r25)
/* 80A4E3F0  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 80A4E3F4  D0 19 06 0C */	stfs f0, 0x60c(r25)
/* 80A4E3F8  38 00 00 00 */	li r0, 0
/* 80A4E3FC  B0 19 06 04 */	sth r0, 0x604(r25)
/* 80A4E400  7F 23 CB 78 */	mr r3, r25
/* 80A4E404  38 80 00 18 */	li r4, 0x18
/* 80A4E408  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80A4E40C  38 A0 00 02 */	li r5, 2
/* 80A4E410  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A4E414  4B FF AD 91 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A4E418:
/* 80A4E418  A8 7B 04 DE */	lha r3, 0x4de(r27)
/* 80A4E41C  A8 1D 00 FC */	lha r0, 0xfc(r29)
/* 80A4E420  7C 03 00 50 */	subf r0, r3, r0
/* 80A4E424  7C 00 07 34 */	extsh r0, r0
/* 80A4E428  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80A4E42C  40 80 00 1C */	bge lbl_80A4E448
/* 80A4E430  2C 00 C0 00 */	cmpwi r0, -16384
/* 80A4E434  40 81 00 14 */	ble lbl_80A4E448
/* 80A4E438  3C 63 00 01 */	addis r3, r3, 1
/* 80A4E43C  38 03 80 00 */	addi r0, r3, -32768
/* 80A4E440  B0 19 04 B6 */	sth r0, 0x4b6(r25)
/* 80A4E444  48 00 02 D4 */	b lbl_80A4E718
lbl_80A4E448:
/* 80A4E448  B0 79 04 B6 */	sth r3, 0x4b6(r25)
/* 80A4E44C  48 00 02 CC */	b lbl_80A4E718
lbl_80A4E450:
/* 80A4E450  38 04 00 01 */	addi r0, r4, 1
/* 80A4E454  B0 19 05 EA */	sth r0, 0x5ea(r25)
/* 80A4E458  38 00 00 0A */	li r0, 0xa
/* 80A4E45C  B0 19 05 F0 */	sth r0, 0x5f0(r25)
lbl_80A4E460:
/* 80A4E460  38 00 40 00 */	li r0, 0x4000
/* 80A4E464  B0 19 05 FA */	sth r0, 0x5fa(r25)
/* 80A4E468  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 80A4E46C  D0 19 06 0C */	stfs f0, 0x60c(r25)
/* 80A4E470  A8 19 05 F0 */	lha r0, 0x5f0(r25)
/* 80A4E474  2C 00 00 08 */	cmpwi r0, 8
/* 80A4E478  40 82 00 3C */	bne lbl_80A4E4B4
/* 80A4E47C  3C 60 80 A5 */	lis r3, s_next_get_sub__FPvPv@ha /* 0x80A4DC80@ha */
/* 80A4E480  38 63 DC 80 */	addi r3, r3, s_next_get_sub__FPvPv@l /* 0x80A4DC80@l */
/* 80A4E484  7F 24 CB 78 */	mr r4, r25
/* 80A4E488  4B 5D 2E B1 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80A4E48C  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050019@ha */
/* 80A4E490  38 03 00 19 */	addi r0, r3, 0x0019 /* 0x00050019@l */
/* 80A4E494  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A4E498  38 79 08 60 */	addi r3, r25, 0x860
/* 80A4E49C  38 81 00 18 */	addi r4, r1, 0x18
/* 80A4E4A0  38 A0 FF FF */	li r5, -1
/* 80A4E4A4  81 99 08 60 */	lwz r12, 0x860(r25)
/* 80A4E4A8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A4E4AC  7D 89 03 A6 */	mtctr r12
/* 80A4E4B0  4E 80 04 21 */	bctrl 
lbl_80A4E4B4:
/* 80A4E4B4  A8 19 05 F0 */	lha r0, 0x5f0(r25)
/* 80A4E4B8  2C 00 00 02 */	cmpwi r0, 2
/* 80A4E4BC  40 82 00 0C */	bne lbl_80A4E4C8
/* 80A4E4C0  38 00 00 0F */	li r0, 0xf
/* 80A4E4C4  B0 19 05 F4 */	sth r0, 0x5f4(r25)
lbl_80A4E4C8:
/* 80A4E4C8  A8 19 05 F0 */	lha r0, 0x5f0(r25)
/* 80A4E4CC  2C 00 00 00 */	cmpwi r0, 0
/* 80A4E4D0  40 82 02 48 */	bne lbl_80A4E718
/* 80A4E4D4  A8 79 05 EA */	lha r3, 0x5ea(r25)
/* 80A4E4D8  38 03 00 01 */	addi r0, r3, 1
/* 80A4E4DC  B0 19 05 EA */	sth r0, 0x5ea(r25)
/* 80A4E4E0  38 00 00 0A */	li r0, 0xa
/* 80A4E4E4  B0 19 05 F0 */	sth r0, 0x5f0(r25)
/* 80A4E4E8  38 00 00 12 */	li r0, 0x12
/* 80A4E4EC  B0 19 05 F2 */	sth r0, 0x5f2(r25)
/* 80A4E4F0  48 00 02 28 */	b lbl_80A4E718
lbl_80A4E4F4:
/* 80A4E4F4  A8 19 05 F0 */	lha r0, 0x5f0(r25)
/* 80A4E4F8  2C 00 00 08 */	cmpwi r0, 8
/* 80A4E4FC  40 81 00 14 */	ble lbl_80A4E510
/* 80A4E500  38 00 40 00 */	li r0, 0x4000
/* 80A4E504  B0 19 05 FA */	sth r0, 0x5fa(r25)
/* 80A4E508  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 80A4E50C  D0 19 06 0C */	stfs f0, 0x60c(r25)
lbl_80A4E510:
/* 80A4E510  A8 19 05 F0 */	lha r0, 0x5f0(r25)
/* 80A4E514  2C 00 00 08 */	cmpwi r0, 8
/* 80A4E518  40 82 00 88 */	bne lbl_80A4E5A0
/* 80A4E51C  7F 23 CB 78 */	mr r3, r25
/* 80A4E520  38 80 00 30 */	li r4, 0x30
/* 80A4E524  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 80A4E528  38 A0 00 02 */	li r5, 2
/* 80A4E52C  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A4E530  4B FF AC 75 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4E534  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050018@ha */
/* 80A4E538  38 03 00 18 */	addi r0, r3, 0x0018 /* 0x00050018@l */
/* 80A4E53C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A4E540  38 79 08 60 */	addi r3, r25, 0x860
/* 80A4E544  38 81 00 14 */	addi r4, r1, 0x14
/* 80A4E548  38 A0 FF FF */	li r5, -1
/* 80A4E54C  81 99 08 60 */	lwz r12, 0x860(r25)
/* 80A4E550  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A4E554  7D 89 03 A6 */	mtctr r12
/* 80A4E558  4E 80 04 21 */	bctrl 
/* 80A4E55C  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003000E@ha */
/* 80A4E560  38 03 00 0E */	addi r0, r3, 0x000E /* 0x0003000E@l */
/* 80A4E564  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A4E568  38 79 08 60 */	addi r3, r25, 0x860
/* 80A4E56C  38 81 00 10 */	addi r4, r1, 0x10
/* 80A4E570  38 A0 00 00 */	li r5, 0
/* 80A4E574  38 C0 FF FF */	li r6, -1
/* 80A4E578  81 99 08 60 */	lwz r12, 0x860(r25)
/* 80A4E57C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A4E580  7D 89 03 A6 */	mtctr r12
/* 80A4E584  4E 80 04 21 */	bctrl 
/* 80A4E588  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80A4E58C  D0 1B 08 FC */	stfs f0, 0x8fc(r27)
/* 80A4E590  38 80 00 0A */	li r4, 0xa
/* 80A4E594  80 19 06 30 */	lwz r0, 0x630(r25)
/* 80A4E598  7C 7B 02 14 */	add r3, r27, r0
/* 80A4E59C  98 83 0D 10 */	stb r4, 0xd10(r3)
lbl_80A4E5A0:
/* 80A4E5A0  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 80A4E5A4  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 80A4E5A8  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80A4E5AC  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80A4E5B0  41 82 01 68 */	beq lbl_80A4E718
/* 80A4E5B4  A8 19 05 F2 */	lha r0, 0x5f2(r25)
/* 80A4E5B8  2C 00 00 09 */	cmpwi r0, 9
/* 80A4E5BC  41 81 00 7C */	bgt lbl_80A4E638
/* 80A4E5C0  A8 19 06 04 */	lha r0, 0x604(r25)
/* 80A4E5C4  2C 00 00 00 */	cmpwi r0, 0
/* 80A4E5C8  40 80 00 70 */	bge lbl_80A4E638
/* 80A4E5CC  A8 19 06 02 */	lha r0, 0x602(r25)
/* 80A4E5D0  2C 00 00 00 */	cmpwi r0, 0
/* 80A4E5D4  40 80 00 64 */	bge lbl_80A4E638
/* 80A4E5D8  38 00 00 01 */	li r0, 1
/* 80A4E5DC  80 7D 00 58 */	lwz r3, 0x58(r29)
/* 80A4E5E0  98 03 09 2C */	stb r0, 0x92c(r3)
/* 80A4E5E4  3C 60 80 A5 */	lis r3, s_next_do_sub__FPvPv@ha /* 0x80A4DBF8@ha */
/* 80A4E5E8  38 63 DB F8 */	addi r3, r3, s_next_do_sub__FPvPv@l /* 0x80A4DBF8@l */
/* 80A4E5EC  7F 24 CB 78 */	mr r4, r25
/* 80A4E5F0  4B 5D 2D 49 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80A4E5F4  80 99 05 B8 */	lwz r4, 0x5b8(r25)
/* 80A4E5F8  80 7B 09 1C */	lwz r3, 0x91c(r27)
/* 80A4E5FC  38 03 FF FF */	addi r0, r3, -1
/* 80A4E600  7C 04 00 00 */	cmpw r4, r0
/* 80A4E604  40 82 00 10 */	bne lbl_80A4E614
/* 80A4E608  38 00 00 05 */	li r0, 5
/* 80A4E60C  B0 19 05 EA */	sth r0, 0x5ea(r25)
/* 80A4E610  48 00 01 08 */	b lbl_80A4E718
lbl_80A4E614:
/* 80A4E614  38 00 00 0A */	li r0, 0xa
/* 80A4E618  B0 19 05 EA */	sth r0, 0x5ea(r25)
/* 80A4E61C  7F 23 CB 78 */	mr r3, r25
/* 80A4E620  38 80 00 18 */	li r4, 0x18
/* 80A4E624  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80A4E628  38 A0 00 02 */	li r5, 2
/* 80A4E62C  FC 40 08 90 */	fmr f2, f1
/* 80A4E630  4B FF AB 75 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4E634  48 00 00 E4 */	b lbl_80A4E718
lbl_80A4E638:
/* 80A4E638  38 00 00 64 */	li r0, 0x64
/* 80A4E63C  80 7D 00 58 */	lwz r3, 0x58(r29)
/* 80A4E640  B0 03 0B 42 */	sth r0, 0xb42(r3)
/* 80A4E644  38 00 00 00 */	li r0, 0
/* 80A4E648  98 19 06 20 */	stb r0, 0x620(r25)
/* 80A4E64C  3B 40 00 01 */	li r26, 1
/* 80A4E650  38 00 00 14 */	li r0, 0x14
/* 80A4E654  B0 19 09 4E */	sth r0, 0x94e(r25)
/* 80A4E658  48 00 00 C0 */	b lbl_80A4E718
lbl_80A4E65C:
/* 80A4E65C  A8 19 06 02 */	lha r0, 0x602(r25)
/* 80A4E660  2C 00 00 00 */	cmpwi r0, 0
/* 80A4E664  40 80 00 B4 */	bge lbl_80A4E718
/* 80A4E668  A8 19 06 04 */	lha r0, 0x604(r25)
/* 80A4E66C  2C 00 00 00 */	cmpwi r0, 0
/* 80A4E670  40 80 00 A8 */	bge lbl_80A4E718
/* 80A4E674  38 00 00 00 */	li r0, 0
/* 80A4E678  98 19 06 20 */	stb r0, 0x620(r25)
/* 80A4E67C  38 00 00 0F */	li r0, 0xf
/* 80A4E680  B0 19 05 F0 */	sth r0, 0x5f0(r25)
/* 80A4E684  38 00 00 06 */	li r0, 6
/* 80A4E688  B0 19 05 EA */	sth r0, 0x5ea(r25)
/* 80A4E68C  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050019@ha */
/* 80A4E690  38 03 00 19 */	addi r0, r3, 0x0019 /* 0x00050019@l */
/* 80A4E694  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A4E698  38 79 08 60 */	addi r3, r25, 0x860
/* 80A4E69C  38 81 00 0C */	addi r4, r1, 0xc
/* 80A4E6A0  38 A0 FF FF */	li r5, -1
/* 80A4E6A4  81 99 08 60 */	lwz r12, 0x860(r25)
/* 80A4E6A8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A4E6AC  7D 89 03 A6 */	mtctr r12
/* 80A4E6B0  4E 80 04 21 */	bctrl 
/* 80A4E6B4  38 00 00 18 */	li r0, 0x18
/* 80A4E6B8  90 1C 06 14 */	stw r0, 0x614(r28)
/* 80A4E6BC  38 00 00 00 */	li r0, 0
/* 80A4E6C0  90 1C 06 0C */	stw r0, 0x60c(r28)
/* 80A4E6C4  90 1C 06 10 */	stw r0, 0x610(r28)
/* 80A4E6C8  B0 1C 06 0A */	sth r0, 0x60a(r28)
/* 80A4E6CC  7F 23 CB 78 */	mr r3, r25
/* 80A4E6D0  38 80 00 18 */	li r4, 0x18
/* 80A4E6D4  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80A4E6D8  38 A0 00 02 */	li r5, 2
/* 80A4E6DC  FC 40 08 90 */	fmr f2, f1
/* 80A4E6E0  4B FF AA C5 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A4E6E4:
/* 80A4E6E4  A8 19 05 F0 */	lha r0, 0x5f0(r25)
/* 80A4E6E8  2C 00 00 08 */	cmpwi r0, 8
/* 80A4E6EC  40 82 00 1C */	bne lbl_80A4E708
/* 80A4E6F0  38 00 00 03 */	li r0, 3
/* 80A4E6F4  80 7D 00 58 */	lwz r3, 0x58(r29)
/* 80A4E6F8  B0 03 0B 42 */	sth r0, 0xb42(r3)
/* 80A4E6FC  38 00 00 00 */	li r0, 0
/* 80A4E700  80 7D 00 58 */	lwz r3, 0x58(r29)
/* 80A4E704  B0 03 0B 44 */	sth r0, 0xb44(r3)
lbl_80A4E708:
/* 80A4E708  A8 19 05 F0 */	lha r0, 0x5f0(r25)
/* 80A4E70C  2C 00 00 01 */	cmpwi r0, 1
/* 80A4E710  40 82 00 08 */	bne lbl_80A4E718
/* 80A4E714  3B 40 00 01 */	li r26, 1
lbl_80A4E718:
/* 80A4E718  80 19 06 30 */	lwz r0, 0x630(r25)
/* 80A4E71C  1C 60 00 0C */	mulli r3, r0, 0xc
/* 80A4E720  38 63 09 20 */	addi r3, r3, 0x920
/* 80A4E724  7C 7B 1A 14 */	add r3, r27, r3
/* 80A4E728  C0 03 00 00 */	lfs f0, 0(r3)
/* 80A4E72C  D0 19 04 D0 */	stfs f0, 0x4d0(r25)
/* 80A4E730  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A4E734  D0 19 04 D4 */	stfs f0, 0x4d4(r25)
/* 80A4E738  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A4E73C  D0 19 04 D8 */	stfs f0, 0x4d8(r25)
/* 80A4E740  AB 99 06 02 */	lha r28, 0x602(r25)
/* 80A4E744  A8 19 05 FA */	lha r0, 0x5fa(r25)
/* 80A4E748  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80A4E74C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80A4E750  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80A4E754  7C 23 04 2E */	lfsx f1, r3, r0
/* 80A4E758  38 79 06 02 */	addi r3, r25, 0x602
/* 80A4E75C  C0 19 06 0C */	lfs f0, 0x60c(r25)
/* 80A4E760  EC 00 00 72 */	fmuls f0, f0, f1
/* 80A4E764  FC 00 00 1E */	fctiwz f0, f0
/* 80A4E768  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80A4E76C  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 80A4E770  38 A0 00 04 */	li r5, 4
/* 80A4E774  38 C0 10 00 */	li r6, 0x1000
/* 80A4E778  4B 82 1E 91 */	bl cLib_addCalcAngleS2__FPssss
/* 80A4E77C  A8 19 06 02 */	lha r0, 0x602(r25)
/* 80A4E780  7C 1C 00 50 */	subf r0, r28, r0
/* 80A4E784  B0 19 06 04 */	sth r0, 0x604(r25)
/* 80A4E788  A8 79 05 FA */	lha r3, 0x5fa(r25)
/* 80A4E78C  38 03 08 00 */	addi r0, r3, 0x800
/* 80A4E790  B0 19 05 FA */	sth r0, 0x5fa(r25)
/* 80A4E794  A8 19 06 02 */	lha r0, 0x602(r25)
/* 80A4E798  7C 00 16 70 */	srawi r0, r0, 2
/* 80A4E79C  7C 00 01 94 */	addze r0, r0
/* 80A4E7A0  7C 00 00 D0 */	neg r0, r0
/* 80A4E7A4  B0 19 04 E0 */	sth r0, 0x4e0(r25)
/* 80A4E7A8  A8 19 05 EA */	lha r0, 0x5ea(r25)
/* 80A4E7AC  2C 00 00 04 */	cmpwi r0, 4
/* 80A4E7B0  41 82 00 14 */	beq lbl_80A4E7C4
/* 80A4E7B4  38 79 06 0C */	addi r3, r25, 0x60c
/* 80A4E7B8  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 80A4E7BC  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 80A4E7C0  4B 82 12 C1 */	bl cLib_addCalc0__FPfff
lbl_80A4E7C4:
/* 80A4E7C4  7F 23 CB 78 */	mr r3, r25
/* 80A4E7C8  4B FF F6 6D */	bl hang_end_check__FP12npc_ks_class
/* 80A4E7CC  2C 1A 00 00 */	cmpwi r26, 0
/* 80A4E7D0  41 82 00 18 */	beq lbl_80A4E7E8
/* 80A4E7D4  38 00 00 00 */	li r0, 0
/* 80A4E7D8  98 19 06 20 */	stb r0, 0x620(r25)
/* 80A4E7DC  B0 19 05 EA */	sth r0, 0x5ea(r25)
/* 80A4E7E0  80 7B 09 1C */	lwz r3, 0x91c(r27)
/* 80A4E7E4  4B FF F6 15 */	bl all_carry_finish__Fi
lbl_80A4E7E8:
/* 80A4E7E8  39 61 00 60 */	addi r11, r1, 0x60
/* 80A4E7EC  4B 91 3A 2D */	bl _restgpr_25
/* 80A4E7F0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A4E7F4  7C 08 03 A6 */	mtlr r0
/* 80A4E7F8  38 21 00 60 */	addi r1, r1, 0x60
/* 80A4E7FC  4E 80 00 20 */	blr 
