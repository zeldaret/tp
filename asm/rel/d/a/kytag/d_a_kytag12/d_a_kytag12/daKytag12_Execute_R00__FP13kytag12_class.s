lbl_8085DFF0:
/* 8085DFF0  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 8085DFF4  7C 08 02 A6 */	mflr r0
/* 8085DFF8  90 01 01 64 */	stw r0, 0x164(r1)
/* 8085DFFC  DB E1 01 50 */	stfd f31, 0x150(r1)
/* 8085E000  F3 E1 01 58 */	psq_st f31, 344(r1), 0, 0 /* qr0 */
/* 8085E004  DB C1 01 40 */	stfd f30, 0x140(r1)
/* 8085E008  F3 C1 01 48 */	psq_st f30, 328(r1), 0, 0 /* qr0 */
/* 8085E00C  DB A1 01 30 */	stfd f29, 0x130(r1)
/* 8085E010  F3 A1 01 38 */	psq_st f29, 312(r1), 0, 0 /* qr0 */
/* 8085E014  DB 81 01 20 */	stfd f28, 0x120(r1)
/* 8085E018  F3 81 01 28 */	psq_st f28, 296(r1), 0, 0 /* qr0 */
/* 8085E01C  DB 61 01 10 */	stfd f27, 0x110(r1)
/* 8085E020  F3 61 01 18 */	psq_st f27, 280(r1), 0, 0 /* qr0 */
/* 8085E024  DB 41 01 00 */	stfd f26, 0x100(r1)
/* 8085E028  F3 41 01 08 */	psq_st f26, 264(r1), 0, 0 /* qr0 */
/* 8085E02C  DB 21 00 F0 */	stfd f25, 0xf0(r1)
/* 8085E030  F3 21 00 F8 */	psq_st f25, 248(r1), 0, 0 /* qr0 */
/* 8085E034  39 61 00 F0 */	addi r11, r1, 0xf0
/* 8085E038  4B B0 41 78 */	b _savegpr_18
/* 8085E03C  7C 74 1B 78 */	mr r20, r3
/* 8085E040  3C 60 80 86 */	lis r3, lit_3836@ha
/* 8085E044  3B 83 EF 00 */	addi r28, r3, lit_3836@l
/* 8085E048  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8085E04C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 8085E050  83 5D 5D AC */	lwz r26, 0x5dac(r29)
/* 8085E054  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8085E058  3B C3 CA 54 */	addi r30, r3, g_env_light@l
/* 8085E05C  83 3E 10 58 */	lwz r25, 0x1058(r30)
/* 8085E060  3B 00 00 00 */	li r24, 0
/* 8085E064  28 19 00 00 */	cmplwi r25, 0
/* 8085E068  40 82 00 0C */	bne lbl_8085E074
/* 8085E06C  38 60 00 01 */	li r3, 1
/* 8085E070  48 00 0C 88 */	b lbl_8085ECF8
lbl_8085E074:
/* 8085E074  3A E0 00 00 */	li r23, 0
/* 8085E078  3A 60 00 00 */	li r19, 0
/* 8085E07C  C3 7C 01 B0 */	lfs f27, 0x1b0(r28)
/* 8085E080  C3 9C 00 5C */	lfs f28, 0x5c(r28)
/* 8085E084  CB BC 01 30 */	lfd f29, 0x130(r28)
/* 8085E088  3F E0 43 30 */	lis r31, 0x4330
/* 8085E08C  C3 DC 00 10 */	lfs f30, 0x10(r28)
/* 8085E090  C3 FC 01 E8 */	lfs f31, 0x1e8(r28)
/* 8085E094  48 00 0B 3C */	b lbl_8085EBD0
lbl_8085E098:
/* 8085E098  3A D3 00 1C */	addi r22, r19, 0x1c
/* 8085E09C  7E D9 B2 14 */	add r22, r25, r22
/* 8085E0A0  C3 3C 00 0C */	lfs f25, 0xc(r28)
/* 8085E0A4  88 16 00 00 */	lbz r0, 0(r22)
/* 8085E0A8  7C 00 07 74 */	extsb r0, r0
/* 8085E0AC  2C 00 00 01 */	cmpwi r0, 1
/* 8085E0B0  41 82 02 60 */	beq lbl_8085E310
/* 8085E0B4  40 80 00 10 */	bge lbl_8085E0C4
/* 8085E0B8  2C 00 00 00 */	cmpwi r0, 0
/* 8085E0BC  40 80 00 14 */	bge lbl_8085E0D0
/* 8085E0C0  48 00 04 18 */	b lbl_8085E4D8
lbl_8085E0C4:
/* 8085E0C4  2C 00 00 03 */	cmpwi r0, 3
/* 8085E0C8  40 80 04 10 */	bge lbl_8085E4D8
/* 8085E0CC  48 00 03 44 */	b lbl_8085E410
lbl_8085E0D0:
/* 8085E0D0  2C 17 01 F4 */	cmpwi r23, 0x1f4
/* 8085E0D4  40 80 00 68 */	bge lbl_8085E13C
/* 8085E0D8  C0 3C 01 68 */	lfs f1, 0x168(r28)
/* 8085E0DC  4B A0 98 B0 */	b cM_rndFX__Ff
/* 8085E0E0  C0 14 04 D0 */	lfs f0, 0x4d0(r20)
/* 8085E0E4  EC 00 08 2A */	fadds f0, f0, f1
/* 8085E0E8  D0 16 00 10 */	stfs f0, 0x10(r22)
/* 8085E0EC  C0 3C 01 70 */	lfs f1, 0x170(r28)
/* 8085E0F0  4B A0 98 64 */	b cM_rndF__Ff
/* 8085E0F4  C0 1C 01 6C */	lfs f0, 0x16c(r28)
/* 8085E0F8  EC 00 08 2A */	fadds f0, f0, f1
/* 8085E0FC  D0 16 00 14 */	stfs f0, 0x14(r22)
/* 8085E100  C0 3C 01 74 */	lfs f1, 0x174(r28)
/* 8085E104  4B A0 98 88 */	b cM_rndFX__Ff
/* 8085E108  C0 14 04 D8 */	lfs f0, 0x4d8(r20)
/* 8085E10C  EC 00 08 2A */	fadds f0, f0, f1
/* 8085E110  D0 16 00 18 */	stfs f0, 0x18(r22)
/* 8085E114  FC 00 C8 90 */	fmr f0, f25
/* 8085E118  D0 16 00 24 */	stfs f0, 0x24(r22)
/* 8085E11C  FC 00 D2 10 */	fabs f0, f26
/* 8085E120  C0 5C 00 00 */	lfs f2, 0(r28)
/* 8085E124  C0 3C 00 3C */	lfs f1, 0x3c(r28)
/* 8085E128  FC 00 00 18 */	frsp f0, f0
/* 8085E12C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085E130  EC 02 00 2A */	fadds f0, f2, f0
/* 8085E134  D0 16 00 38 */	stfs f0, 0x38(r22)
/* 8085E138  48 00 01 BC */	b lbl_8085E2F4
lbl_8085E13C:
/* 8085E13C  41 80 00 70 */	blt lbl_8085E1AC
/* 8085E140  2C 17 03 E8 */	cmpwi r23, 0x3e8
/* 8085E144  40 80 00 68 */	bge lbl_8085E1AC
/* 8085E148  C0 3C 00 F8 */	lfs f1, 0xf8(r28)
/* 8085E14C  4B A0 98 40 */	b cM_rndFX__Ff
/* 8085E150  C0 1C 01 78 */	lfs f0, 0x178(r28)
/* 8085E154  EC 00 08 2A */	fadds f0, f0, f1
/* 8085E158  D0 16 00 10 */	stfs f0, 0x10(r22)
/* 8085E15C  C0 3C 01 80 */	lfs f1, 0x180(r28)
/* 8085E160  4B A0 97 F4 */	b cM_rndF__Ff
/* 8085E164  C0 1C 01 7C */	lfs f0, 0x17c(r28)
/* 8085E168  EC 00 08 2A */	fadds f0, f0, f1
/* 8085E16C  D0 16 00 14 */	stfs f0, 0x14(r22)
/* 8085E170  C0 3C 00 3C */	lfs f1, 0x3c(r28)
/* 8085E174  4B A0 98 18 */	b cM_rndFX__Ff
/* 8085E178  C0 1C 01 84 */	lfs f0, 0x184(r28)
/* 8085E17C  EC 00 08 2A */	fadds f0, f0, f1
/* 8085E180  D0 16 00 18 */	stfs f0, 0x18(r22)
/* 8085E184  FC 00 C8 90 */	fmr f0, f25
/* 8085E188  D0 16 00 24 */	stfs f0, 0x24(r22)
/* 8085E18C  FC 00 D2 10 */	fabs f0, f26
/* 8085E190  C0 5C 00 00 */	lfs f2, 0(r28)
/* 8085E194  C0 3C 00 3C */	lfs f1, 0x3c(r28)
/* 8085E198  FC 00 00 18 */	frsp f0, f0
/* 8085E19C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085E1A0  EC 02 00 2A */	fadds f0, f2, f0
/* 8085E1A4  D0 16 00 38 */	stfs f0, 0x38(r22)
/* 8085E1A8  48 00 01 4C */	b lbl_8085E2F4
lbl_8085E1AC:
/* 8085E1AC  2C 17 03 E8 */	cmpwi r23, 0x3e8
/* 8085E1B0  41 80 00 7C */	blt lbl_8085E22C
/* 8085E1B4  2C 17 05 DC */	cmpwi r23, 0x5dc
/* 8085E1B8  40 80 00 74 */	bge lbl_8085E22C
/* 8085E1BC  C0 3C 01 8C */	lfs f1, 0x18c(r28)
/* 8085E1C0  4B A0 97 94 */	b cM_rndF__Ff
/* 8085E1C4  C0 1C 01 88 */	lfs f0, 0x188(r28)
/* 8085E1C8  EC 00 08 2A */	fadds f0, f0, f1
/* 8085E1CC  D0 16 00 14 */	stfs f0, 0x14(r22)
/* 8085E1D0  C0 3C 01 94 */	lfs f1, 0x194(r28)
/* 8085E1D4  4B A0 97 B8 */	b cM_rndFX__Ff
/* 8085E1D8  C0 1C 01 90 */	lfs f0, 0x190(r28)
/* 8085E1DC  EC 00 08 2A */	fadds f0, f0, f1
/* 8085E1E0  D0 16 00 18 */	stfs f0, 0x18(r22)
/* 8085E1E4  C0 36 00 14 */	lfs f1, 0x14(r22)
/* 8085E1E8  C0 1C 00 4C */	lfs f0, 0x4c(r28)
/* 8085E1EC  EC 41 00 24 */	fdivs f2, f1, f0
/* 8085E1F0  C0 3C 01 6C */	lfs f1, 0x16c(r28)
/* 8085E1F4  C0 1C 01 98 */	lfs f0, 0x198(r28)
/* 8085E1F8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8085E1FC  EC 01 00 2A */	fadds f0, f1, f0
/* 8085E200  D0 16 00 10 */	stfs f0, 0x10(r22)
/* 8085E204  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8085E208  D0 16 00 24 */	stfs f0, 0x24(r22)
/* 8085E20C  FC 00 D2 10 */	fabs f0, f26
/* 8085E210  C0 5C 00 1C */	lfs f2, 0x1c(r28)
/* 8085E214  C0 3C 00 3C */	lfs f1, 0x3c(r28)
/* 8085E218  FC 00 00 18 */	frsp f0, f0
/* 8085E21C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085E220  EC 02 00 2A */	fadds f0, f2, f0
/* 8085E224  D0 16 00 38 */	stfs f0, 0x38(r22)
/* 8085E228  48 00 00 CC */	b lbl_8085E2F4
lbl_8085E22C:
/* 8085E22C  2C 17 05 DC */	cmpwi r23, 0x5dc
/* 8085E230  41 80 00 7C */	blt lbl_8085E2AC
/* 8085E234  2C 17 07 D0 */	cmpwi r23, 0x7d0
/* 8085E238  40 80 00 74 */	bge lbl_8085E2AC
/* 8085E23C  C0 3C 01 8C */	lfs f1, 0x18c(r28)
/* 8085E240  4B A0 97 14 */	b cM_rndF__Ff
/* 8085E244  C0 1C 01 88 */	lfs f0, 0x188(r28)
/* 8085E248  EC 00 08 2A */	fadds f0, f0, f1
/* 8085E24C  D0 16 00 14 */	stfs f0, 0x14(r22)
/* 8085E250  C0 3C 01 A0 */	lfs f1, 0x1a0(r28)
/* 8085E254  4B A0 97 38 */	b cM_rndFX__Ff
/* 8085E258  C0 1C 01 9C */	lfs f0, 0x19c(r28)
/* 8085E25C  EC 00 08 2A */	fadds f0, f0, f1
/* 8085E260  D0 16 00 18 */	stfs f0, 0x18(r22)
/* 8085E264  C0 36 00 14 */	lfs f1, 0x14(r22)
/* 8085E268  C0 1C 00 4C */	lfs f0, 0x4c(r28)
/* 8085E26C  EC 41 00 24 */	fdivs f2, f1, f0
/* 8085E270  C0 3C 01 A4 */	lfs f1, 0x1a4(r28)
/* 8085E274  C0 1C 01 98 */	lfs f0, 0x198(r28)
/* 8085E278  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8085E27C  EC 01 00 2A */	fadds f0, f1, f0
/* 8085E280  D0 16 00 10 */	stfs f0, 0x10(r22)
/* 8085E284  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8085E288  D0 16 00 24 */	stfs f0, 0x24(r22)
/* 8085E28C  FC 00 D2 10 */	fabs f0, f26
/* 8085E290  C0 5C 00 1C */	lfs f2, 0x1c(r28)
/* 8085E294  C0 3C 00 3C */	lfs f1, 0x3c(r28)
/* 8085E298  FC 00 00 18 */	frsp f0, f0
/* 8085E29C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085E2A0  EC 02 00 2A */	fadds f0, f2, f0
/* 8085E2A4  D0 16 00 38 */	stfs f0, 0x38(r22)
/* 8085E2A8  48 00 00 4C */	b lbl_8085E2F4
lbl_8085E2AC:
/* 8085E2AC  C0 3C 01 A8 */	lfs f1, 0x1a8(r28)
/* 8085E2B0  4B A0 96 DC */	b cM_rndFX__Ff
/* 8085E2B4  D0 36 00 10 */	stfs f1, 0x10(r22)
/* 8085E2B8  C0 3C 01 AC */	lfs f1, 0x1ac(r28)
/* 8085E2BC  4B A0 96 98 */	b cM_rndF__Ff
/* 8085E2C0  D0 36 00 14 */	stfs f1, 0x14(r22)
/* 8085E2C4  C0 3C 00 00 */	lfs f1, 0(r28)
/* 8085E2C8  4B A0 96 C4 */	b cM_rndFX__Ff
/* 8085E2CC  D0 36 00 18 */	stfs f1, 0x18(r22)
/* 8085E2D0  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8085E2D4  D0 16 00 24 */	stfs f0, 0x24(r22)
/* 8085E2D8  FC 00 D2 10 */	fabs f0, f26
/* 8085E2DC  C0 5C 00 00 */	lfs f2, 0(r28)
/* 8085E2E0  C0 3C 00 3C */	lfs f1, 0x3c(r28)
/* 8085E2E4  FC 00 00 18 */	frsp f0, f0
/* 8085E2E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085E2EC  EC 02 00 2A */	fadds f0, f2, f0
/* 8085E2F0  D0 16 00 38 */	stfs f0, 0x38(r22)
lbl_8085E2F4:
/* 8085E2F4  38 00 00 00 */	li r0, 0
/* 8085E2F8  B0 16 00 40 */	sth r0, 0x40(r22)
/* 8085E2FC  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 8085E300  D0 16 00 2C */	stfs f0, 0x2c(r22)
/* 8085E304  88 76 00 00 */	lbz r3, 0(r22)
/* 8085E308  38 03 00 01 */	addi r0, r3, 1
/* 8085E30C  98 16 00 00 */	stb r0, 0(r22)
lbl_8085E310:
/* 8085E310  A0 96 00 3C */	lhz r4, 0x3c(r22)
/* 8085E314  54 80 04 38 */	rlwinm r0, r4, 0, 0x10, 0x1c
/* 8085E318  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8085E31C  38 C3 9A 20 */	addi r6, r3, sincosTable___5JMath@l
/* 8085E320  7C A6 04 2E */	lfsx f5, r6, r0
/* 8085E324  FF 40 28 90 */	fmr f26, f5
/* 8085E328  C8 9C 01 28 */	lfd f4, 0x128(r28)
/* 8085E32C  90 81 00 8C */	stw r4, 0x8c(r1)
/* 8085E330  3C A0 43 30 */	lis r5, 0x4330
/* 8085E334  90 A1 00 88 */	stw r5, 0x88(r1)
/* 8085E338  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 8085E33C  EC 40 20 28 */	fsubs f2, f0, f4
/* 8085E340  C0 3C 01 38 */	lfs f1, 0x138(r28)
/* 8085E344  56 E0 06 36 */	rlwinm r0, r23, 0, 0x18, 0x1b
/* 8085E348  C8 7C 01 30 */	lfd f3, 0x130(r28)
/* 8085E34C  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 8085E350  90 81 00 94 */	stw r4, 0x94(r1)
/* 8085E354  90 A1 00 90 */	stw r5, 0x90(r1)
/* 8085E358  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 8085E35C  EC 00 18 28 */	fsubs f0, f0, f3
/* 8085E360  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085E364  EC 02 00 2A */	fadds f0, f2, f0
/* 8085E368  FC 00 00 1E */	fctiwz f0, f0
/* 8085E36C  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 8085E370  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 8085E374  B0 16 00 3C */	sth r0, 0x3c(r22)
/* 8085E378  A0 76 00 3E */	lhz r3, 0x3e(r22)
/* 8085E37C  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8085E380  7C C6 04 2E */	lfsx f6, r6, r0
/* 8085E384  90 61 00 A4 */	stw r3, 0xa4(r1)
/* 8085E388  90 A1 00 A0 */	stw r5, 0xa0(r1)
/* 8085E38C  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 8085E390  FC 40 20 28 */	fsub f2, f0, f4
/* 8085E394  C8 3C 01 40 */	lfd f1, 0x140(r28)
/* 8085E398  90 81 00 AC */	stw r4, 0xac(r1)
/* 8085E39C  90 A1 00 A8 */	stw r5, 0xa8(r1)
/* 8085E3A0  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 8085E3A4  EC 00 18 28 */	fsubs f0, f0, f3
/* 8085E3A8  FC 01 00 32 */	fmul f0, f1, f0
/* 8085E3AC  FC 02 00 2A */	fadd f0, f2, f0
/* 8085E3B0  FC 00 00 1E */	fctiwz f0, f0
/* 8085E3B4  D8 01 00 B0 */	stfd f0, 0xb0(r1)
/* 8085E3B8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8085E3BC  B0 16 00 3E */	sth r0, 0x3e(r22)
/* 8085E3C0  C0 3C 01 54 */	lfs f1, 0x154(r28)
/* 8085E3C4  EC 41 01 B2 */	fmuls f2, f1, f6
/* 8085E3C8  D0 56 00 04 */	stfs f2, 4(r22)
/* 8085E3CC  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8085E3D0  EC 00 28 2A */	fadds f0, f0, f5
/* 8085E3D4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085E3D8  D0 16 00 08 */	stfs f0, 8(r22)
/* 8085E3DC  D0 56 00 0C */	stfs f2, 0xc(r22)
/* 8085E3E0  C0 36 00 38 */	lfs f1, 0x38(r22)
/* 8085E3E4  C0 1C 00 A8 */	lfs f0, 0xa8(r28)
/* 8085E3E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085E3EC  40 80 00 EC */	bge lbl_8085E4D8
/* 8085E3F0  C0 5C 00 B0 */	lfs f2, 0xb0(r28)
/* 8085E3F4  C0 3C 00 AC */	lfs f1, 0xac(r28)
/* 8085E3F8  C0 1C 00 5C */	lfs f0, 0x5c(r28)
/* 8085E3FC  EC 00 01 B2 */	fmuls f0, f0, f6
/* 8085E400  EC 01 00 2A */	fadds f0, f1, f0
/* 8085E404  EC 02 00 32 */	fmuls f0, f2, f0
/* 8085E408  D0 16 00 38 */	stfs f0, 0x38(r22)
/* 8085E40C  48 00 00 CC */	b lbl_8085E4D8
lbl_8085E410:
/* 8085E410  38 61 00 40 */	addi r3, r1, 0x40
/* 8085E414  38 96 00 10 */	addi r4, r22, 0x10
/* 8085E418  38 B6 00 04 */	addi r5, r22, 4
/* 8085E41C  4B A0 86 C8 */	b __pl__4cXyzCFRC3Vec
/* 8085E420  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8085E424  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8085E428  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8085E42C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8085E430  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8085E434  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8085E438  C3 3C 00 10 */	lfs f25, 0x10(r28)
/* 8085E43C  C0 3C 00 B8 */	lfs f1, 0xb8(r28)
/* 8085E440  4B A0 95 4C */	b cM_rndFX__Ff
/* 8085E444  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 8085E448  C0 3C 00 B8 */	lfs f1, 0xb8(r28)
/* 8085E44C  4B A0 95 40 */	b cM_rndFX__Ff
/* 8085E450  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 8085E454  C0 9C 00 0C */	lfs f4, 0xc(r28)
/* 8085E458  D0 81 00 74 */	stfs f4, 0x74(r1)
/* 8085E45C  C0 56 00 04 */	lfs f2, 4(r22)
/* 8085E460  C0 7C 01 64 */	lfs f3, 0x164(r28)
/* 8085E464  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8085E468  EC 03 00 32 */	fmuls f0, f3, f0
/* 8085E46C  EC 02 00 2A */	fadds f0, f2, f0
/* 8085E470  D0 16 00 04 */	stfs f0, 4(r22)
/* 8085E474  C0 56 00 08 */	lfs f2, 8(r22)
/* 8085E478  EC 03 01 32 */	fmuls f0, f3, f4
/* 8085E47C  EC 02 00 2A */	fadds f0, f2, f0
/* 8085E480  D0 16 00 08 */	stfs f0, 8(r22)
/* 8085E484  C0 56 00 0C */	lfs f2, 0xc(r22)
/* 8085E488  FC 00 08 18 */	frsp f0, f1
/* 8085E48C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8085E490  EC 02 00 2A */	fadds f0, f2, f0
/* 8085E494  D0 16 00 0C */	stfs f0, 0xc(r22)
/* 8085E498  C0 36 00 38 */	lfs f1, 0x38(r22)
/* 8085E49C  C0 1C 00 C0 */	lfs f0, 0xc0(r28)
/* 8085E4A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085E4A4  40 81 00 0C */	ble lbl_8085E4B0
/* 8085E4A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8085E4AC  D0 16 00 38 */	stfs f0, 0x38(r22)
lbl_8085E4B0:
/* 8085E4B0  C0 36 00 24 */	lfs f1, 0x24(r22)
/* 8085E4B4  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 8085E4B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085E4BC  4C 40 13 82 */	cror 2, 0, 2
/* 8085E4C0  40 82 00 18 */	bne lbl_8085E4D8
/* 8085E4C4  A0 16 00 40 */	lhz r0, 0x40(r22)
/* 8085E4C8  28 00 00 00 */	cmplwi r0, 0
/* 8085E4CC  40 82 00 0C */	bne lbl_8085E4D8
/* 8085E4D0  38 00 00 01 */	li r0, 1
/* 8085E4D4  98 16 00 00 */	stb r0, 0(r22)
lbl_8085E4D8:
/* 8085E4D8  C0 56 00 14 */	lfs f2, 0x14(r22)
/* 8085E4DC  6E E0 80 00 */	xoris r0, r23, 0x8000
/* 8085E4E0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8085E4E4  93 E1 00 B0 */	stw r31, 0xb0(r1)
/* 8085E4E8  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 8085E4EC  EC 20 E8 28 */	fsubs f1, f0, f29
/* 8085E4F0  80 1E 10 54 */	lwz r0, 0x1054(r30)
/* 8085E4F4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8085E4F8  90 01 00 AC */	stw r0, 0xac(r1)
/* 8085E4FC  93 E1 00 A8 */	stw r31, 0xa8(r1)
/* 8085E500  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 8085E504  EC 00 E8 28 */	fsubs f0, f0, f29
/* 8085E508  EC 01 00 24 */	fdivs f0, f1, f0
/* 8085E50C  EC 1C 00 32 */	fmuls f0, f28, f0
/* 8085E510  EC 1B 00 2A */	fadds f0, f27, f0
/* 8085E514  EC 02 00 28 */	fsubs f0, f2, f0
/* 8085E518  D0 16 00 14 */	stfs f0, 0x14(r22)
/* 8085E51C  2C 17 01 F4 */	cmpwi r23, 0x1f4
/* 8085E520  40 80 00 30 */	bge lbl_8085E550
/* 8085E524  C0 36 00 14 */	lfs f1, 0x14(r22)
/* 8085E528  C0 1C 01 6C */	lfs f0, 0x16c(r28)
/* 8085E52C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085E530  40 80 01 C8 */	bge lbl_8085E6F8
/* 8085E534  C0 1C 01 B4 */	lfs f0, 0x1b4(r28)
/* 8085E538  D0 16 00 14 */	stfs f0, 0x14(r22)
/* 8085E53C  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 8085E540  D0 16 00 24 */	stfs f0, 0x24(r22)
/* 8085E544  38 00 00 01 */	li r0, 1
/* 8085E548  98 16 00 00 */	stb r0, 0(r22)
/* 8085E54C  48 00 01 AC */	b lbl_8085E6F8
lbl_8085E550:
/* 8085E550  41 80 00 38 */	blt lbl_8085E588
/* 8085E554  2C 17 03 E8 */	cmpwi r23, 0x3e8
/* 8085E558  40 80 00 30 */	bge lbl_8085E588
/* 8085E55C  C0 36 00 14 */	lfs f1, 0x14(r22)
/* 8085E560  C0 1C 01 7C */	lfs f0, 0x17c(r28)
/* 8085E564  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085E568  40 80 01 90 */	bge lbl_8085E6F8
/* 8085E56C  C0 1C 01 B8 */	lfs f0, 0x1b8(r28)
/* 8085E570  D0 16 00 14 */	stfs f0, 0x14(r22)
/* 8085E574  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 8085E578  D0 16 00 24 */	stfs f0, 0x24(r22)
/* 8085E57C  38 00 00 01 */	li r0, 1
/* 8085E580  98 16 00 00 */	stb r0, 0(r22)
/* 8085E584  48 00 01 74 */	b lbl_8085E6F8
lbl_8085E588:
/* 8085E588  2C 17 03 E8 */	cmpwi r23, 0x3e8
/* 8085E58C  41 80 00 B4 */	blt lbl_8085E640
/* 8085E590  2C 17 05 DC */	cmpwi r23, 0x5dc
/* 8085E594  40 80 00 AC */	bge lbl_8085E640
/* 8085E598  C0 36 00 14 */	lfs f1, 0x14(r22)
/* 8085E59C  C0 1C 01 BC */	lfs f0, 0x1bc(r28)
/* 8085E5A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085E5A4  40 80 00 1C */	bge lbl_8085E5C0
/* 8085E5A8  C0 1C 01 C0 */	lfs f0, 0x1c0(r28)
/* 8085E5AC  D0 16 00 14 */	stfs f0, 0x14(r22)
/* 8085E5B0  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 8085E5B4  D0 16 00 24 */	stfs f0, 0x24(r22)
/* 8085E5B8  38 00 00 01 */	li r0, 1
/* 8085E5BC  98 16 00 00 */	stb r0, 0(r22)
lbl_8085E5C0:
/* 8085E5C0  C0 16 00 14 */	lfs f0, 0x14(r22)
/* 8085E5C4  C0 5C 00 4C */	lfs f2, 0x4c(r28)
/* 8085E5C8  EC 60 10 24 */	fdivs f3, f0, f2
/* 8085E5CC  C0 3C 01 6C */	lfs f1, 0x16c(r28)
/* 8085E5D0  C0 1C 01 98 */	lfs f0, 0x198(r28)
/* 8085E5D4  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8085E5D8  EC 01 00 2A */	fadds f0, f1, f0
/* 8085E5DC  D0 16 00 10 */	stfs f0, 0x10(r22)
/* 8085E5E0  C0 76 00 14 */	lfs f3, 0x14(r22)
/* 8085E5E4  C0 1C 01 60 */	lfs f0, 0x160(r28)
/* 8085E5E8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8085E5EC  40 80 00 20 */	bge lbl_8085E60C
/* 8085E5F0  EC 43 10 24 */	fdivs f2, f3, f2
/* 8085E5F4  C0 3C 01 C4 */	lfs f1, 0x1c4(r28)
/* 8085E5F8  C0 1C 01 C8 */	lfs f0, 0x1c8(r28)
/* 8085E5FC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8085E600  EC 01 00 2A */	fadds f0, f1, f0
/* 8085E604  D0 16 00 10 */	stfs f0, 0x10(r22)
/* 8085E608  48 00 00 F0 */	b lbl_8085E6F8
lbl_8085E60C:
/* 8085E60C  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 8085E610  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8085E614  40 80 00 E4 */	bge lbl_8085E6F8
/* 8085E618  EC 43 10 24 */	fdivs f2, f3, f2
/* 8085E61C  C0 1C 01 CC */	lfs f0, 0x1cc(r28)
/* 8085E620  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8085E624  EC 01 00 2A */	fadds f0, f1, f0
/* 8085E628  D0 16 00 10 */	stfs f0, 0x10(r22)
/* 8085E62C  C0 36 00 14 */	lfs f1, 0x14(r22)
/* 8085E630  C0 1C 00 5C */	lfs f0, 0x5c(r28)
/* 8085E634  EC 01 00 2A */	fadds f0, f1, f0
/* 8085E638  D0 16 00 14 */	stfs f0, 0x14(r22)
/* 8085E63C  48 00 00 BC */	b lbl_8085E6F8
lbl_8085E640:
/* 8085E640  2C 17 05 DC */	cmpwi r23, 0x5dc
/* 8085E644  41 80 00 B4 */	blt lbl_8085E6F8
/* 8085E648  2C 17 07 D0 */	cmpwi r23, 0x7d0
/* 8085E64C  40 80 00 AC */	bge lbl_8085E6F8
/* 8085E650  C0 36 00 14 */	lfs f1, 0x14(r22)
/* 8085E654  C0 1C 01 BC */	lfs f0, 0x1bc(r28)
/* 8085E658  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085E65C  40 80 00 1C */	bge lbl_8085E678
/* 8085E660  C0 1C 01 C0 */	lfs f0, 0x1c0(r28)
/* 8085E664  D0 16 00 14 */	stfs f0, 0x14(r22)
/* 8085E668  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 8085E66C  D0 16 00 24 */	stfs f0, 0x24(r22)
/* 8085E670  38 00 00 01 */	li r0, 1
/* 8085E674  98 16 00 00 */	stb r0, 0(r22)
lbl_8085E678:
/* 8085E678  C0 16 00 14 */	lfs f0, 0x14(r22)
/* 8085E67C  C0 7C 00 4C */	lfs f3, 0x4c(r28)
/* 8085E680  EC 00 18 24 */	fdivs f0, f0, f3
/* 8085E684  C0 5C 01 A4 */	lfs f2, 0x1a4(r28)
/* 8085E688  C0 3C 00 38 */	lfs f1, 0x38(r28)
/* 8085E68C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085E690  EC 02 00 2A */	fadds f0, f2, f0
/* 8085E694  D0 16 00 10 */	stfs f0, 0x10(r22)
/* 8085E698  C0 56 00 14 */	lfs f2, 0x14(r22)
/* 8085E69C  C0 1C 01 D0 */	lfs f0, 0x1d0(r28)
/* 8085E6A0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8085E6A4  40 80 00 20 */	bge lbl_8085E6C4
/* 8085E6A8  EC 42 18 24 */	fdivs f2, f2, f3
/* 8085E6AC  C0 3C 01 D4 */	lfs f1, 0x1d4(r28)
/* 8085E6B0  C0 1C 01 C8 */	lfs f0, 0x1c8(r28)
/* 8085E6B4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8085E6B8  EC 01 00 2A */	fadds f0, f1, f0
/* 8085E6BC  D0 16 00 10 */	stfs f0, 0x10(r22)
/* 8085E6C0  48 00 00 38 */	b lbl_8085E6F8
lbl_8085E6C4:
/* 8085E6C4  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8085E6C8  40 80 00 30 */	bge lbl_8085E6F8
/* 8085E6CC  C0 1C 01 D8 */	lfs f0, 0x1d8(r28)
/* 8085E6D0  EC 42 00 24 */	fdivs f2, f2, f0
/* 8085E6D4  C0 3C 00 48 */	lfs f1, 0x48(r28)
/* 8085E6D8  C0 1C 01 DC */	lfs f0, 0x1dc(r28)
/* 8085E6DC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8085E6E0  EC 01 00 2A */	fadds f0, f1, f0
/* 8085E6E4  D0 16 00 10 */	stfs f0, 0x10(r22)
/* 8085E6E8  C0 36 00 14 */	lfs f1, 0x14(r22)
/* 8085E6EC  C0 1C 00 5C */	lfs f0, 0x5c(r28)
/* 8085E6F0  EC 01 00 2A */	fadds f0, f1, f0
/* 8085E6F4  D0 16 00 14 */	stfs f0, 0x14(r22)
lbl_8085E6F8:
/* 8085E6F8  88 14 05 75 */	lbz r0, 0x575(r20)
/* 8085E6FC  28 00 00 00 */	cmplwi r0, 0
/* 8085E700  40 82 00 28 */	bne lbl_8085E728
/* 8085E704  C0 3A 04 D8 */	lfs f1, 0x4d8(r26)
/* 8085E708  C0 1C 01 D4 */	lfs f0, 0x1d4(r28)
/* 8085E70C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085E710  40 80 00 18 */	bge lbl_8085E728
/* 8085E714  C0 1C 01 E0 */	lfs f0, 0x1e0(r28)
/* 8085E718  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085E71C  40 81 00 0C */	ble lbl_8085E728
/* 8085E720  C0 1C 01 E4 */	lfs f0, 0x1e4(r28)
/* 8085E724  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
lbl_8085E728:
/* 8085E728  38 61 00 34 */	addi r3, r1, 0x34
/* 8085E72C  38 96 00 10 */	addi r4, r22, 0x10
/* 8085E730  38 B6 00 04 */	addi r5, r22, 4
/* 8085E734  4B A0 83 B0 */	b __pl__4cXyzCFRC3Vec
/* 8085E738  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8085E73C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8085E740  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8085E744  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8085E748  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8085E74C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8085E750  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 8085E754  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8085E758  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 8085E75C  38 81 00 7C */	addi r4, r1, 0x7c
/* 8085E760  4B AE 8C 3C */	b PSVECSquareDistance
/* 8085E764  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 8085E768  40 81 00 58 */	ble lbl_8085E7C0
/* 8085E76C  FC 00 08 34 */	frsqrte f0, f1
/* 8085E770  C8 9C 00 E8 */	lfd f4, 0xe8(r28)
/* 8085E774  FC 44 00 32 */	fmul f2, f4, f0
/* 8085E778  C8 7C 00 F0 */	lfd f3, 0xf0(r28)
/* 8085E77C  FC 00 00 32 */	fmul f0, f0, f0
/* 8085E780  FC 01 00 32 */	fmul f0, f1, f0
/* 8085E784  FC 03 00 28 */	fsub f0, f3, f0
/* 8085E788  FC 02 00 32 */	fmul f0, f2, f0
/* 8085E78C  FC 44 00 32 */	fmul f2, f4, f0
/* 8085E790  FC 00 00 32 */	fmul f0, f0, f0
/* 8085E794  FC 01 00 32 */	fmul f0, f1, f0
/* 8085E798  FC 03 00 28 */	fsub f0, f3, f0
/* 8085E79C  FC 02 00 32 */	fmul f0, f2, f0
/* 8085E7A0  FC 44 00 32 */	fmul f2, f4, f0
/* 8085E7A4  FC 00 00 32 */	fmul f0, f0, f0
/* 8085E7A8  FC 01 00 32 */	fmul f0, f1, f0
/* 8085E7AC  FC 03 00 28 */	fsub f0, f3, f0
/* 8085E7B0  FC 02 00 32 */	fmul f0, f2, f0
/* 8085E7B4  FC 21 00 32 */	fmul f1, f1, f0
/* 8085E7B8  FC 20 08 18 */	frsp f1, f1
/* 8085E7BC  48 00 00 88 */	b lbl_8085E844
lbl_8085E7C0:
/* 8085E7C0  C8 1C 00 80 */	lfd f0, 0x80(r28)
/* 8085E7C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085E7C8  40 80 00 10 */	bge lbl_8085E7D8
/* 8085E7CC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8085E7D0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8085E7D4  48 00 00 70 */	b lbl_8085E844
lbl_8085E7D8:
/* 8085E7D8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8085E7DC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8085E7E0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8085E7E4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8085E7E8  7C 03 00 00 */	cmpw r3, r0
/* 8085E7EC  41 82 00 14 */	beq lbl_8085E800
/* 8085E7F0  40 80 00 40 */	bge lbl_8085E830
/* 8085E7F4  2C 03 00 00 */	cmpwi r3, 0
/* 8085E7F8  41 82 00 20 */	beq lbl_8085E818
/* 8085E7FC  48 00 00 34 */	b lbl_8085E830
lbl_8085E800:
/* 8085E800  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085E804  41 82 00 0C */	beq lbl_8085E810
/* 8085E808  38 00 00 01 */	li r0, 1
/* 8085E80C  48 00 00 28 */	b lbl_8085E834
lbl_8085E810:
/* 8085E810  38 00 00 02 */	li r0, 2
/* 8085E814  48 00 00 20 */	b lbl_8085E834
lbl_8085E818:
/* 8085E818  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085E81C  41 82 00 0C */	beq lbl_8085E828
/* 8085E820  38 00 00 05 */	li r0, 5
/* 8085E824  48 00 00 10 */	b lbl_8085E834
lbl_8085E828:
/* 8085E828  38 00 00 03 */	li r0, 3
/* 8085E82C  48 00 00 08 */	b lbl_8085E834
lbl_8085E830:
/* 8085E830  38 00 00 04 */	li r0, 4
lbl_8085E834:
/* 8085E834  2C 00 00 01 */	cmpwi r0, 1
/* 8085E838  40 82 00 0C */	bne lbl_8085E844
/* 8085E83C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8085E840  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8085E844:
/* 8085E844  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8085E848  40 80 00 30 */	bge lbl_8085E878
/* 8085E84C  88 1D 00 14 */	lbz r0, 0x14(r29)
/* 8085E850  28 00 00 49 */	cmplwi r0, 0x49
/* 8085E854  40 82 00 24 */	bne lbl_8085E878
/* 8085E858  88 1A 05 68 */	lbz r0, 0x568(r26)
/* 8085E85C  28 00 00 00 */	cmplwi r0, 0
/* 8085E860  41 82 00 18 */	beq lbl_8085E878
/* 8085E864  4B FF D2 D5 */	bl d_kytag12_cut_turn_check__Fv
/* 8085E868  2C 03 00 00 */	cmpwi r3, 0
/* 8085E86C  41 82 00 0C */	beq lbl_8085E878
/* 8085E870  38 00 00 01 */	li r0, 1
/* 8085E874  98 14 05 75 */	stb r0, 0x575(r20)
lbl_8085E878:
/* 8085E878  88 14 05 75 */	lbz r0, 0x575(r20)
/* 8085E87C  28 00 00 01 */	cmplwi r0, 1
/* 8085E880  40 82 00 58 */	bne lbl_8085E8D8
/* 8085E884  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080215@ha */
/* 8085E888  38 03 02 15 */	addi r0, r3, 0x0215 /* 0x00080215@l */
/* 8085E88C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8085E890  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8085E894  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8085E898  80 63 00 00 */	lwz r3, 0(r3)
/* 8085E89C  38 81 00 20 */	addi r4, r1, 0x20
/* 8085E8A0  38 A1 00 7C */	addi r5, r1, 0x7c
/* 8085E8A4  38 C0 00 00 */	li r6, 0
/* 8085E8A8  38 E0 00 00 */	li r7, 0
/* 8085E8AC  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 8085E8B0  FC 40 08 90 */	fmr f2, f1
/* 8085E8B4  C0 7C 00 74 */	lfs f3, 0x74(r28)
/* 8085E8B8  FC 80 18 90 */	fmr f4, f3
/* 8085E8BC  39 00 00 00 */	li r8, 0
/* 8085E8C0  4B A4 D0 C4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8085E8C4  38 00 00 02 */	li r0, 2
/* 8085E8C8  98 14 05 75 */	stb r0, 0x575(r20)
/* 8085E8CC  98 16 00 00 */	stb r0, 0(r22)
/* 8085E8D0  38 00 01 68 */	li r0, 0x168
/* 8085E8D4  B0 16 00 40 */	sth r0, 0x40(r22)
lbl_8085E8D8:
/* 8085E8D8  3A A0 00 00 */	li r21, 0
/* 8085E8DC  3A 40 00 00 */	li r18, 0
lbl_8085E8E0:
/* 8085E8E0  7C 7E 92 14 */	add r3, r30, r18
/* 8085E8E4  3B 63 09 90 */	addi r27, r3, 0x990
/* 8085E8E8  80 63 09 90 */	lwz r3, 0x990(r3)
/* 8085E8EC  28 03 00 00 */	cmplwi r3, 0
/* 8085E8F0  41 82 01 58 */	beq lbl_8085EA48
/* 8085E8F4  38 96 00 10 */	addi r4, r22, 0x10
/* 8085E8F8  4B AE 8A A4 */	b PSVECSquareDistance
/* 8085E8FC  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 8085E900  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085E904  40 81 00 58 */	ble lbl_8085E95C
/* 8085E908  FC 00 08 34 */	frsqrte f0, f1
/* 8085E90C  C8 9C 00 E8 */	lfd f4, 0xe8(r28)
/* 8085E910  FC 44 00 32 */	fmul f2, f4, f0
/* 8085E914  C8 7C 00 F0 */	lfd f3, 0xf0(r28)
/* 8085E918  FC 00 00 32 */	fmul f0, f0, f0
/* 8085E91C  FC 01 00 32 */	fmul f0, f1, f0
/* 8085E920  FC 03 00 28 */	fsub f0, f3, f0
/* 8085E924  FC 02 00 32 */	fmul f0, f2, f0
/* 8085E928  FC 44 00 32 */	fmul f2, f4, f0
/* 8085E92C  FC 00 00 32 */	fmul f0, f0, f0
/* 8085E930  FC 01 00 32 */	fmul f0, f1, f0
/* 8085E934  FC 03 00 28 */	fsub f0, f3, f0
/* 8085E938  FC 02 00 32 */	fmul f0, f2, f0
/* 8085E93C  FC 44 00 32 */	fmul f2, f4, f0
/* 8085E940  FC 00 00 32 */	fmul f0, f0, f0
/* 8085E944  FC 01 00 32 */	fmul f0, f1, f0
/* 8085E948  FC 03 00 28 */	fsub f0, f3, f0
/* 8085E94C  FC 02 00 32 */	fmul f0, f2, f0
/* 8085E950  FC 21 00 32 */	fmul f1, f1, f0
/* 8085E954  FC 20 08 18 */	frsp f1, f1
/* 8085E958  48 00 00 88 */	b lbl_8085E9E0
lbl_8085E95C:
/* 8085E95C  C8 1C 00 80 */	lfd f0, 0x80(r28)
/* 8085E960  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085E964  40 80 00 10 */	bge lbl_8085E974
/* 8085E968  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8085E96C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8085E970  48 00 00 70 */	b lbl_8085E9E0
lbl_8085E974:
/* 8085E974  D0 21 00 08 */	stfs f1, 8(r1)
/* 8085E978  80 81 00 08 */	lwz r4, 8(r1)
/* 8085E97C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8085E980  3C 00 7F 80 */	lis r0, 0x7f80
/* 8085E984  7C 03 00 00 */	cmpw r3, r0
/* 8085E988  41 82 00 14 */	beq lbl_8085E99C
/* 8085E98C  40 80 00 40 */	bge lbl_8085E9CC
/* 8085E990  2C 03 00 00 */	cmpwi r3, 0
/* 8085E994  41 82 00 20 */	beq lbl_8085E9B4
/* 8085E998  48 00 00 34 */	b lbl_8085E9CC
lbl_8085E99C:
/* 8085E99C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085E9A0  41 82 00 0C */	beq lbl_8085E9AC
/* 8085E9A4  38 00 00 01 */	li r0, 1
/* 8085E9A8  48 00 00 28 */	b lbl_8085E9D0
lbl_8085E9AC:
/* 8085E9AC  38 00 00 02 */	li r0, 2
/* 8085E9B0  48 00 00 20 */	b lbl_8085E9D0
lbl_8085E9B4:
/* 8085E9B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085E9B8  41 82 00 0C */	beq lbl_8085E9C4
/* 8085E9BC  38 00 00 05 */	li r0, 5
/* 8085E9C0  48 00 00 10 */	b lbl_8085E9D0
lbl_8085E9C4:
/* 8085E9C4  38 00 00 03 */	li r0, 3
/* 8085E9C8  48 00 00 08 */	b lbl_8085E9D0
lbl_8085E9CC:
/* 8085E9CC  38 00 00 04 */	li r0, 4
lbl_8085E9D0:
/* 8085E9D0  2C 00 00 01 */	cmpwi r0, 1
/* 8085E9D4  40 82 00 0C */	bne lbl_8085E9E0
/* 8085E9D8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8085E9DC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8085E9E0:
/* 8085E9E0  C0 5C 00 00 */	lfs f2, 0(r28)
/* 8085E9E4  80 7B 00 00 */	lwz r3, 0(r27)
/* 8085E9E8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8085E9EC  EC 02 00 2A */	fadds f0, f2, f0
/* 8085E9F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085E9F4  40 80 00 54 */	bge lbl_8085EA48
/* 8085E9F8  88 16 00 00 */	lbz r0, 0(r22)
/* 8085E9FC  2C 00 00 02 */	cmpwi r0, 2
/* 8085EA00  41 82 00 34 */	beq lbl_8085EA34
/* 8085EA04  A0 16 00 40 */	lhz r0, 0x40(r22)
/* 8085EA08  28 00 00 00 */	cmplwi r0, 0
/* 8085EA0C  40 82 00 28 */	bne lbl_8085EA34
/* 8085EA10  2C 18 00 01 */	cmpwi r24, 1
/* 8085EA14  40 80 00 20 */	bge lbl_8085EA34
/* 8085EA18  C0 16 00 10 */	lfs f0, 0x10(r22)
/* 8085EA1C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8085EA20  C0 16 00 14 */	lfs f0, 0x14(r22)
/* 8085EA24  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8085EA28  C0 16 00 18 */	lfs f0, 0x18(r22)
/* 8085EA2C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8085EA30  3B 18 00 01 */	addi r24, r24, 1
lbl_8085EA34:
/* 8085EA34  38 00 00 02 */	li r0, 2
/* 8085EA38  98 16 00 00 */	stb r0, 0(r22)
/* 8085EA3C  38 00 00 B4 */	li r0, 0xb4
/* 8085EA40  B0 16 00 40 */	sth r0, 0x40(r22)
/* 8085EA44  48 00 00 14 */	b lbl_8085EA58
lbl_8085EA48:
/* 8085EA48  3A B5 00 01 */	addi r21, r21, 1
/* 8085EA4C  2C 15 00 0A */	cmpwi r21, 0xa
/* 8085EA50  3A 52 00 04 */	addi r18, r18, 4
/* 8085EA54  41 80 FE 8C */	blt lbl_8085E8E0
lbl_8085EA58:
/* 8085EA58  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 8085EA5C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8085EA60  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8085EA64  40 82 00 FC */	bne lbl_8085EB60
/* 8085EA68  C0 36 00 38 */	lfs f1, 0x38(r22)
/* 8085EA6C  C0 1C 00 A8 */	lfs f0, 0xa8(r28)
/* 8085EA70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085EA74  4C 41 13 82 */	cror 2, 1, 2
/* 8085EA78  40 82 00 08 */	bne lbl_8085EA80
/* 8085EA7C  C3 3C 00 10 */	lfs f25, 0x10(r28)
lbl_8085EA80:
/* 8085EA80  38 61 00 28 */	addi r3, r1, 0x28
/* 8085EA84  38 96 00 10 */	addi r4, r22, 0x10
/* 8085EA88  38 B6 00 04 */	addi r5, r22, 4
/* 8085EA8C  4B A0 80 58 */	b __pl__4cXyzCFRC3Vec
/* 8085EA90  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8085EA94  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8085EA98  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8085EA9C  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 8085EAA0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8085EAA4  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8085EAA8  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8085EAAC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8085EAB0  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8085EAB4  38 61 00 7C */	addi r3, r1, 0x7c
/* 8085EAB8  38 81 00 58 */	addi r4, r1, 0x58
/* 8085EABC  38 A1 00 24 */	addi r5, r1, 0x24
/* 8085EAC0  4B 7F C7 A0 */	b dKyw_pntlight_collision_get_info__FP4cXyzP4cXyzPf
/* 8085EAC4  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8085EAC8  C0 1C 01 00 */	lfs f0, 0x100(r28)
/* 8085EACC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085EAD0  40 81 00 90 */	ble lbl_8085EB60
/* 8085EAD4  88 16 00 00 */	lbz r0, 0(r22)
/* 8085EAD8  2C 00 00 02 */	cmpwi r0, 2
/* 8085EADC  41 82 00 74 */	beq lbl_8085EB50
/* 8085EAE0  A0 16 00 40 */	lhz r0, 0x40(r22)
/* 8085EAE4  28 00 00 00 */	cmplwi r0, 0
/* 8085EAE8  40 82 00 68 */	bne lbl_8085EB50
/* 8085EAEC  2C 18 00 01 */	cmpwi r24, 1
/* 8085EAF0  40 80 00 60 */	bge lbl_8085EB50
/* 8085EAF4  C0 16 00 10 */	lfs f0, 0x10(r22)
/* 8085EAF8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8085EAFC  C0 16 00 14 */	lfs f0, 0x14(r22)
/* 8085EB00  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8085EB04  C0 16 00 18 */	lfs f0, 0x18(r22)
/* 8085EB08  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8085EB0C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080215@ha */
/* 8085EB10  38 03 02 15 */	addi r0, r3, 0x0215 /* 0x00080215@l */
/* 8085EB14  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8085EB18  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8085EB1C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8085EB20  80 63 00 00 */	lwz r3, 0(r3)
/* 8085EB24  38 81 00 1C */	addi r4, r1, 0x1c
/* 8085EB28  38 A1 00 4C */	addi r5, r1, 0x4c
/* 8085EB2C  38 C0 00 00 */	li r6, 0
/* 8085EB30  38 E0 00 00 */	li r7, 0
/* 8085EB34  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 8085EB38  FC 40 08 90 */	fmr f2, f1
/* 8085EB3C  C0 7C 00 74 */	lfs f3, 0x74(r28)
/* 8085EB40  FC 80 18 90 */	fmr f4, f3
/* 8085EB44  39 00 00 00 */	li r8, 0
/* 8085EB48  4B A4 CE 3C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8085EB4C  3B 18 00 01 */	addi r24, r24, 1
lbl_8085EB50:
/* 8085EB50  38 00 00 02 */	li r0, 2
/* 8085EB54  98 16 00 00 */	stb r0, 0(r22)
/* 8085EB58  38 00 01 68 */	li r0, 0x168
/* 8085EB5C  B0 16 00 40 */	sth r0, 0x40(r22)
lbl_8085EB60:
/* 8085EB60  FC 19 F0 40 */	fcmpo cr0, f25, f30
/* 8085EB64  4C 40 13 82 */	cror 2, 0, 2
/* 8085EB68  40 82 00 20 */	bne lbl_8085EB88
/* 8085EB6C  38 76 00 24 */	addi r3, r22, 0x24
/* 8085EB70  FC 20 C8 90 */	fmr f1, f25
/* 8085EB74  C0 5C 01 0C */	lfs f2, 0x10c(r28)
/* 8085EB78  C0 7C 01 10 */	lfs f3, 0x110(r28)
/* 8085EB7C  C0 9C 01 14 */	lfs f4, 0x114(r28)
/* 8085EB80  4B A1 0D FC */	b cLib_addCalc__FPfffff
/* 8085EB84  48 00 00 1C */	b lbl_8085EBA0
lbl_8085EB88:
/* 8085EB88  38 76 00 24 */	addi r3, r22, 0x24
/* 8085EB8C  FC 20 C8 90 */	fmr f1, f25
/* 8085EB90  C0 5C 01 0C */	lfs f2, 0x10c(r28)
/* 8085EB94  C0 7C 01 1C */	lfs f3, 0x11c(r28)
/* 8085EB98  C0 9C 01 14 */	lfs f4, 0x114(r28)
/* 8085EB9C  4B A1 0D E0 */	b cLib_addCalc__FPfffff
lbl_8085EBA0:
/* 8085EBA0  A0 76 00 40 */	lhz r3, 0x40(r22)
/* 8085EBA4  28 03 00 00 */	cmplwi r3, 0
/* 8085EBA8  41 82 00 20 */	beq lbl_8085EBC8
/* 8085EBAC  38 03 FF FF */	addi r0, r3, -1
/* 8085EBB0  B0 16 00 40 */	sth r0, 0x40(r22)
/* 8085EBB4  A0 16 00 40 */	lhz r0, 0x40(r22)
/* 8085EBB8  28 00 00 00 */	cmplwi r0, 0
/* 8085EBBC  40 82 00 0C */	bne lbl_8085EBC8
/* 8085EBC0  38 00 00 00 */	li r0, 0
/* 8085EBC4  98 14 05 75 */	stb r0, 0x575(r20)
lbl_8085EBC8:
/* 8085EBC8  3A F7 00 01 */	addi r23, r23, 1
/* 8085EBCC  3A 73 00 44 */	addi r19, r19, 0x44
lbl_8085EBD0:
/* 8085EBD0  80 1E 10 54 */	lwz r0, 0x1054(r30)
/* 8085EBD4  7C 17 00 00 */	cmpw r23, r0
/* 8085EBD8  41 80 F4 C0 */	blt lbl_8085E098
/* 8085EBDC  38 00 00 00 */	li r0, 0
/* 8085EBE0  B0 14 05 78 */	sth r0, 0x578(r20)
/* 8085EBE4  7E 83 A3 78 */	mr r3, r20
/* 8085EBE8  4B FF CF D9 */	bl daKytag12_light_swprd_proc__FP13kytag12_class
/* 8085EBEC  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 8085EBF0  D0 14 05 80 */	stfs f0, 0x580(r20)
/* 8085EBF4  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 8085EBF8  D0 14 05 8C */	stfs f0, 0x58c(r20)
/* 8085EBFC  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 8085EC00  D0 14 05 98 */	stfs f0, 0x598(r20)
/* 8085EC04  C0 14 04 D0 */	lfs f0, 0x4d0(r20)
/* 8085EC08  D0 14 05 7C */	stfs f0, 0x57c(r20)
/* 8085EC0C  C0 14 04 D8 */	lfs f0, 0x4d8(r20)
/* 8085EC10  D0 14 05 84 */	stfs f0, 0x584(r20)
/* 8085EC14  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080218@ha */
/* 8085EC18  38 03 02 18 */	addi r0, r3, 0x0218 /* 0x00080218@l */
/* 8085EC1C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8085EC20  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8085EC24  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8085EC28  80 63 00 00 */	lwz r3, 0(r3)
/* 8085EC2C  38 81 00 18 */	addi r4, r1, 0x18
/* 8085EC30  38 B4 05 7C */	addi r5, r20, 0x57c
/* 8085EC34  38 C0 00 64 */	li r6, 0x64
/* 8085EC38  38 E0 00 00 */	li r7, 0
/* 8085EC3C  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 8085EC40  FC 40 08 90 */	fmr f2, f1
/* 8085EC44  C0 7C 00 74 */	lfs f3, 0x74(r28)
/* 8085EC48  FC 80 18 90 */	fmr f4, f3
/* 8085EC4C  39 00 00 00 */	li r8, 0
/* 8085EC50  4B A4 D8 BC */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8085EC54  C0 1C 01 6C */	lfs f0, 0x16c(r28)
/* 8085EC58  D0 14 05 88 */	stfs f0, 0x588(r20)
/* 8085EC5C  C0 1C 01 90 */	lfs f0, 0x190(r28)
/* 8085EC60  D0 14 05 90 */	stfs f0, 0x590(r20)
/* 8085EC64  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080218@ha */
/* 8085EC68  38 03 02 18 */	addi r0, r3, 0x0218 /* 0x00080218@l */
/* 8085EC6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8085EC70  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8085EC74  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8085EC78  80 63 00 00 */	lwz r3, 0(r3)
/* 8085EC7C  38 81 00 14 */	addi r4, r1, 0x14
/* 8085EC80  38 B4 05 88 */	addi r5, r20, 0x588
/* 8085EC84  38 C0 00 64 */	li r6, 0x64
/* 8085EC88  38 E0 00 00 */	li r7, 0
/* 8085EC8C  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 8085EC90  FC 40 08 90 */	fmr f2, f1
/* 8085EC94  C0 7C 00 74 */	lfs f3, 0x74(r28)
/* 8085EC98  FC 80 18 90 */	fmr f4, f3
/* 8085EC9C  39 00 00 00 */	li r8, 0
/* 8085ECA0  4B A4 D8 6C */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8085ECA4  C0 1C 01 A4 */	lfs f0, 0x1a4(r28)
/* 8085ECA8  D0 14 05 94 */	stfs f0, 0x594(r20)
/* 8085ECAC  C0 1C 01 9C */	lfs f0, 0x19c(r28)
/* 8085ECB0  D0 14 05 9C */	stfs f0, 0x59c(r20)
/* 8085ECB4  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080218@ha */
/* 8085ECB8  38 03 02 18 */	addi r0, r3, 0x0218 /* 0x00080218@l */
/* 8085ECBC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8085ECC0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8085ECC4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8085ECC8  80 63 00 00 */	lwz r3, 0(r3)
/* 8085ECCC  38 81 00 10 */	addi r4, r1, 0x10
/* 8085ECD0  38 B4 05 94 */	addi r5, r20, 0x594
/* 8085ECD4  38 C0 00 64 */	li r6, 0x64
/* 8085ECD8  38 E0 00 00 */	li r7, 0
/* 8085ECDC  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 8085ECE0  FC 40 08 90 */	fmr f2, f1
/* 8085ECE4  C0 7C 00 74 */	lfs f3, 0x74(r28)
/* 8085ECE8  FC 80 18 90 */	fmr f4, f3
/* 8085ECEC  39 00 00 00 */	li r8, 0
/* 8085ECF0  4B A4 D8 1C */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8085ECF4  38 60 00 01 */	li r3, 1
lbl_8085ECF8:
/* 8085ECF8  E3 E1 01 58 */	psq_l f31, 344(r1), 0, 0 /* qr0 */
/* 8085ECFC  CB E1 01 50 */	lfd f31, 0x150(r1)
/* 8085ED00  E3 C1 01 48 */	psq_l f30, 328(r1), 0, 0 /* qr0 */
/* 8085ED04  CB C1 01 40 */	lfd f30, 0x140(r1)
/* 8085ED08  E3 A1 01 38 */	psq_l f29, 312(r1), 0, 0 /* qr0 */
/* 8085ED0C  CB A1 01 30 */	lfd f29, 0x130(r1)
/* 8085ED10  E3 81 01 28 */	psq_l f28, 296(r1), 0, 0 /* qr0 */
/* 8085ED14  CB 81 01 20 */	lfd f28, 0x120(r1)
/* 8085ED18  E3 61 01 18 */	psq_l f27, 280(r1), 0, 0 /* qr0 */
/* 8085ED1C  CB 61 01 10 */	lfd f27, 0x110(r1)
/* 8085ED20  E3 41 01 08 */	psq_l f26, 264(r1), 0, 0 /* qr0 */
/* 8085ED24  CB 41 01 00 */	lfd f26, 0x100(r1)
/* 8085ED28  E3 21 00 F8 */	psq_l f25, 248(r1), 0, 0 /* qr0 */
/* 8085ED2C  CB 21 00 F0 */	lfd f25, 0xf0(r1)
/* 8085ED30  39 61 00 F0 */	addi r11, r1, 0xf0
/* 8085ED34  4B B0 34 C8 */	b _restgpr_18
/* 8085ED38  80 01 01 64 */	lwz r0, 0x164(r1)
/* 8085ED3C  7C 08 03 A6 */	mtlr r0
/* 8085ED40  38 21 01 60 */	addi r1, r1, 0x160
/* 8085ED44  4E 80 00 20 */	blr 
