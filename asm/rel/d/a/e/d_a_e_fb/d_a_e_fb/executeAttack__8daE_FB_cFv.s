lbl_806B70FC:
/* 806B70FC  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806B7100  7C 08 02 A6 */	mflr r0
/* 806B7104  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806B7108  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806B710C  4B CA B0 BD */	bl _savegpr_24
/* 806B7110  7C 7C 1B 78 */	mr r28, r3
/* 806B7114  3C 80 80 6C */	lis r4, lit_3662@ha /* 0x806B8F8C@ha */
/* 806B7118  3B C4 8F 8C */	addi r30, r4, lit_3662@l /* 0x806B8F8C@l */
/* 806B711C  C0 03 06 84 */	lfs f0, 0x684(r3)
/* 806B7120  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806B7124  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806B7128  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806B712C  80 03 06 6C */	lwz r0, 0x66c(r3)
/* 806B7130  2C 00 00 02 */	cmpwi r0, 2
/* 806B7134  41 82 01 68 */	beq lbl_806B729C
/* 806B7138  40 80 00 14 */	bge lbl_806B714C
/* 806B713C  2C 00 00 00 */	cmpwi r0, 0
/* 806B7140  41 82 00 18 */	beq lbl_806B7158
/* 806B7144  40 80 01 04 */	bge lbl_806B7248
/* 806B7148  48 00 07 38 */	b lbl_806B7880
lbl_806B714C:
/* 806B714C  2C 00 00 04 */	cmpwi r0, 4
/* 806B7150  40 80 07 30 */	bge lbl_806B7880
/* 806B7154  48 00 00 F4 */	b lbl_806B7248
lbl_806B7158:
/* 806B7158  38 00 00 00 */	li r0, 0
/* 806B715C  98 1C 06 8F */	stb r0, 0x68f(r28)
/* 806B7160  3C 80 80 6C */	lis r4, mFireTimer@ha /* 0x806B9220@ha */
/* 806B7164  90 04 92 20 */	stw r0, mFireTimer@l(r4)  /* 0x806B9220@l */
/* 806B7168  98 1C 06 90 */	stb r0, 0x690(r28)
/* 806B716C  88 BC 06 A0 */	lbz r5, 0x6a0(r28)
/* 806B7170  28 05 00 02 */	cmplwi r5, 2
/* 806B7174  40 82 00 38 */	bne lbl_806B71AC
/* 806B7178  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B717C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B7180  80 04 5F 18 */	lwz r0, 0x5f18(r4)
/* 806B7184  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 806B7188  41 82 00 24 */	beq lbl_806B71AC
/* 806B718C  38 80 00 06 */	li r4, 6
/* 806B7190  38 A0 00 02 */	li r5, 2
/* 806B7194  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 806B7198  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 806B719C  4B FF F6 45 */	bl setBck__8daE_FB_cFiUcff
/* 806B71A0  38 00 00 02 */	li r0, 2
/* 806B71A4  90 1C 06 6C */	stw r0, 0x66c(r28)
/* 806B71A8  48 00 06 D8 */	b lbl_806B7880
lbl_806B71AC:
/* 806B71AC  28 05 00 01 */	cmplwi r5, 1
/* 806B71B0  40 82 00 48 */	bne lbl_806B71F8
/* 806B71B4  7F 83 E3 78 */	mr r3, r28
/* 806B71B8  38 80 00 06 */	li r4, 6
/* 806B71BC  38 A0 00 02 */	li r5, 2
/* 806B71C0  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 806B71C4  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 806B71C8  4B FF F6 19 */	bl setBck__8daE_FB_cFiUcff
/* 806B71CC  38 00 00 03 */	li r0, 3
/* 806B71D0  90 1C 06 6C */	stw r0, 0x66c(r28)
/* 806B71D4  3C 60 80 6C */	lis r3, l_HIO@ha /* 0x806B91FC@ha */
/* 806B71D8  38 63 91 FC */	addi r3, r3, l_HIO@l /* 0x806B91FC@l */
/* 806B71DC  A8 03 00 20 */	lha r0, 0x20(r3)
/* 806B71E0  7C 00 0E 70 */	srawi r0, r0, 1
/* 806B71E4  1C 60 00 B6 */	mulli r3, r0, 0xb6
/* 806B71E8  A8 1C 04 B6 */	lha r0, 0x4b6(r28)
/* 806B71EC  7C 03 00 50 */	subf r0, r3, r0
/* 806B71F0  B0 1C 06 94 */	sth r0, 0x694(r28)
/* 806B71F4  48 00 06 8C */	b lbl_806B7880
lbl_806B71F8:
/* 806B71F8  7F 83 E3 78 */	mr r3, r28
/* 806B71FC  38 80 00 05 */	li r4, 5
/* 806B7200  38 A0 00 00 */	li r5, 0
/* 806B7204  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 806B7208  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 806B720C  4B FF F5 D5 */	bl setBck__8daE_FB_cFiUcff
/* 806B7210  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070386@ha */
/* 806B7214  38 03 03 86 */	addi r0, r3, 0x0386 /* 0x00070386@l */
/* 806B7218  90 01 00 2C */	stw r0, 0x2c(r1)
/* 806B721C  38 7C 05 C4 */	addi r3, r28, 0x5c4
/* 806B7220  38 81 00 2C */	addi r4, r1, 0x2c
/* 806B7224  38 A0 00 00 */	li r5, 0
/* 806B7228  38 C0 FF FF */	li r6, -1
/* 806B722C  81 9C 05 C4 */	lwz r12, 0x5c4(r28)
/* 806B7230  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806B7234  7D 89 03 A6 */	mtctr r12
/* 806B7238  4E 80 04 21 */	bctrl 
/* 806B723C  38 00 00 01 */	li r0, 1
/* 806B7240  90 1C 06 6C */	stw r0, 0x66c(r28)
/* 806B7244  48 00 06 3C */	b lbl_806B7880
lbl_806B7248:
/* 806B7248  80 1C 06 70 */	lwz r0, 0x670(r28)
/* 806B724C  2C 00 00 05 */	cmpwi r0, 5
/* 806B7250  40 82 00 4C */	bne lbl_806B729C
/* 806B7254  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806B7258  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806B725C  FC 00 00 1E */	fctiwz f0, f0
/* 806B7260  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 806B7264  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806B7268  2C 00 00 A0 */	cmpwi r0, 0xa0
/* 806B726C  40 82 00 30 */	bne lbl_806B729C
/* 806B7270  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070398@ha */
/* 806B7274  38 03 03 98 */	addi r0, r3, 0x0398 /* 0x00070398@l */
/* 806B7278  90 01 00 28 */	stw r0, 0x28(r1)
/* 806B727C  38 7C 05 C4 */	addi r3, r28, 0x5c4
/* 806B7280  38 81 00 28 */	addi r4, r1, 0x28
/* 806B7284  38 A0 00 00 */	li r5, 0
/* 806B7288  38 C0 FF FF */	li r6, -1
/* 806B728C  81 9C 05 C4 */	lwz r12, 0x5c4(r28)
/* 806B7290  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806B7294  7D 89 03 A6 */	mtctr r12
/* 806B7298  4E 80 04 21 */	bctrl 
lbl_806B729C:
/* 806B729C  80 1C 06 6C */	lwz r0, 0x66c(r28)
/* 806B72A0  2C 00 00 03 */	cmpwi r0, 3
/* 806B72A4  41 82 00 0C */	beq lbl_806B72B0
/* 806B72A8  7F 83 E3 78 */	mr r3, r28
/* 806B72AC  4B FF FB 49 */	bl search_check__8daE_FB_cFv
lbl_806B72B0:
/* 806B72B0  88 1C 06 A0 */	lbz r0, 0x6a0(r28)
/* 806B72B4  28 00 00 00 */	cmplwi r0, 0
/* 806B72B8  40 82 00 40 */	bne lbl_806B72F8
/* 806B72BC  7F 83 E3 78 */	mr r3, r28
/* 806B72C0  4B FF FA 61 */	bl mBgLineCheck__8daE_FB_cFv
/* 806B72C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806B72C8  41 82 00 30 */	beq lbl_806B72F8
/* 806B72CC  38 00 00 00 */	li r0, 0
/* 806B72D0  90 1C 06 9C */	stw r0, 0x69c(r28)
/* 806B72D4  3C 60 80 6C */	lis r3, l_HIO@ha /* 0x806B91FC@ha */
/* 806B72D8  38 63 91 FC */	addi r3, r3, l_HIO@l /* 0x806B91FC@l */
/* 806B72DC  A8 03 00 10 */	lha r0, 0x10(r3)
/* 806B72E0  B0 1C 06 80 */	sth r0, 0x680(r28)
/* 806B72E4  7F 83 E3 78 */	mr r3, r28
/* 806B72E8  38 80 00 00 */	li r4, 0
/* 806B72EC  38 A0 00 00 */	li r5, 0
/* 806B72F0  4B FF F5 9D */	bl setActionMode__8daE_FB_cFii
/* 806B72F4  48 00 05 8C */	b lbl_806B7880
lbl_806B72F8:
/* 806B72F8  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806B72FC  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806B7300  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 806B7304  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B7308  4C 41 13 82 */	cror 2, 1, 2
/* 806B730C  40 82 00 14 */	bne lbl_806B7320
/* 806B7310  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 806B7314  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B7318  4C 40 13 82 */	cror 2, 0, 2
/* 806B731C  41 82 00 18 */	beq lbl_806B7334
lbl_806B7320:
/* 806B7320  80 1C 06 6C */	lwz r0, 0x66c(r28)
/* 806B7324  2C 00 00 02 */	cmpwi r0, 2
/* 806B7328  41 82 00 0C */	beq lbl_806B7334
/* 806B732C  2C 00 00 03 */	cmpwi r0, 3
/* 806B7330  40 82 02 3C */	bne lbl_806B756C
lbl_806B7334:
/* 806B7334  3B E0 00 00 */	li r31, 0
/* 806B7338  3B A0 00 00 */	li r29, 0
/* 806B733C  3B 60 00 00 */	li r27, 0
/* 806B7340  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B7344  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B7348  3C 60 80 6C */	lis r3, a_eff_id@ha /* 0x806B90B4@ha */
/* 806B734C  3B 23 90 B4 */	addi r25, r3, a_eff_id@l /* 0x806B90B4@l */
lbl_806B7350:
/* 806B7350  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806B7354  38 00 00 FF */	li r0, 0xff
/* 806B7358  90 01 00 08 */	stw r0, 8(r1)
/* 806B735C  38 80 00 00 */	li r4, 0
/* 806B7360  90 81 00 0C */	stw r4, 0xc(r1)
/* 806B7364  38 00 FF FF */	li r0, -1
/* 806B7368  90 01 00 10 */	stw r0, 0x10(r1)
/* 806B736C  90 81 00 14 */	stw r4, 0x14(r1)
/* 806B7370  90 81 00 18 */	stw r4, 0x18(r1)
/* 806B7374  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806B7378  3B 5B 0C D8 */	addi r26, r27, 0xcd8
/* 806B737C  7C 9C D0 2E */	lwzx r4, r28, r26
/* 806B7380  38 A0 00 00 */	li r5, 0
/* 806B7384  7C D9 EA 2E */	lhzx r6, r25, r29
/* 806B7388  38 FC 04 D0 */	addi r7, r28, 0x4d0
/* 806B738C  39 00 00 00 */	li r8, 0
/* 806B7390  39 3C 04 E4 */	addi r9, r28, 0x4e4
/* 806B7394  39 41 00 38 */	addi r10, r1, 0x38
/* 806B7398  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 806B739C  4B 99 61 31 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806B73A0  7C 7C D1 2E */	stwx r3, r28, r26
/* 806B73A4  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806B73A8  38 63 02 10 */	addi r3, r3, 0x210
/* 806B73AC  7C 9C D0 2E */	lwzx r4, r28, r26
/* 806B73B0  4B 99 45 69 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 806B73B4  7C 7A 1B 79 */	or. r26, r3, r3
/* 806B73B8  41 82 00 38 */	beq lbl_806B73F0
/* 806B73BC  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806B73C0  80 63 00 04 */	lwz r3, 4(r3)
/* 806B73C4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806B73C8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806B73CC  38 63 00 60 */	addi r3, r3, 0x60
/* 806B73D0  38 9A 00 68 */	addi r4, r26, 0x68
/* 806B73D4  38 BA 00 98 */	addi r5, r26, 0x98
/* 806B73D8  38 DA 00 A4 */	addi r6, r26, 0xa4
/* 806B73DC  4B BC 94 2D */	bl func_80280808
/* 806B73E0  C0 3A 00 9C */	lfs f1, 0x9c(r26)
/* 806B73E4  C0 1A 00 98 */	lfs f0, 0x98(r26)
/* 806B73E8  D0 1A 00 B0 */	stfs f0, 0xb0(r26)
/* 806B73EC  D0 3A 00 B4 */	stfs f1, 0xb4(r26)
lbl_806B73F0:
/* 806B73F0  3B FF 00 01 */	addi r31, r31, 1
/* 806B73F4  2C 1F 00 03 */	cmpwi r31, 3
/* 806B73F8  3B BD 00 02 */	addi r29, r29, 2
/* 806B73FC  3B 7B 00 04 */	addi r27, r27, 4
/* 806B7400  41 80 FF 50 */	blt lbl_806B7350
/* 806B7404  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070326@ha */
/* 806B7408  38 03 03 26 */	addi r0, r3, 0x0326 /* 0x00070326@l */
/* 806B740C  90 01 00 24 */	stw r0, 0x24(r1)
/* 806B7410  38 7C 05 C4 */	addi r3, r28, 0x5c4
/* 806B7414  38 81 00 24 */	addi r4, r1, 0x24
/* 806B7418  38 A0 FF FF */	li r5, -1
/* 806B741C  81 9C 05 C4 */	lwz r12, 0x5c4(r28)
/* 806B7420  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 806B7424  7D 89 03 A6 */	mtctr r12
/* 806B7428  4E 80 04 21 */	bctrl 
/* 806B742C  88 7C 06 8F */	lbz r3, 0x68f(r28)
/* 806B7430  38 03 00 01 */	addi r0, r3, 1
/* 806B7434  98 1C 06 8F */	stb r0, 0x68f(r28)
/* 806B7438  88 1C 06 8F */	lbz r0, 0x68f(r28)
/* 806B743C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 806B7440  98 1C 06 8F */	stb r0, 0x68f(r28)
/* 806B7444  88 1C 06 8F */	lbz r0, 0x68f(r28)
/* 806B7448  28 00 00 00 */	cmplwi r0, 0
/* 806B744C  40 82 01 20 */	bne lbl_806B756C
/* 806B7450  3B E0 00 0A */	li r31, 0xa
/* 806B7454  A8 1C 04 E4 */	lha r0, 0x4e4(r28)
/* 806B7458  B0 01 00 30 */	sth r0, 0x30(r1)
/* 806B745C  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 806B7460  B0 01 00 32 */	sth r0, 0x32(r1)
/* 806B7464  A8 1C 04 E8 */	lha r0, 0x4e8(r28)
/* 806B7468  B0 01 00 34 */	sth r0, 0x34(r1)
/* 806B746C  A8 7C 06 98 */	lha r3, 0x698(r28)
/* 806B7470  38 03 02 BC */	addi r0, r3, 0x2bc
/* 806B7474  B0 01 00 30 */	sth r0, 0x30(r1)
/* 806B7478  88 1C 06 A0 */	lbz r0, 0x6a0(r28)
/* 806B747C  28 00 00 01 */	cmplwi r0, 1
/* 806B7480  40 82 00 2C */	bne lbl_806B74AC
/* 806B7484  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 806B7488  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 806B748C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B7490  4C 40 13 82 */	cror 2, 0, 2
/* 806B7494  40 82 00 10 */	bne lbl_806B74A4
/* 806B7498  38 03 07 D0 */	addi r0, r3, 0x7d0
/* 806B749C  B0 01 00 30 */	sth r0, 0x30(r1)
/* 806B74A0  48 00 00 0C */	b lbl_806B74AC
lbl_806B74A4:
/* 806B74A4  38 03 07 D0 */	addi r0, r3, 0x7d0
/* 806B74A8  B0 01 00 30 */	sth r0, 0x30(r1)
lbl_806B74AC:
/* 806B74AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B74B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B74B4  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 806B74B8  28 00 00 00 */	cmplwi r0, 0
/* 806B74BC  40 82 00 B0 */	bne lbl_806B756C
/* 806B74C0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806B74C4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806B74C8  80 63 00 00 */	lwz r3, 0(r3)
/* 806B74CC  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 806B74D0  4B 95 4F 0D */	bl mDoMtx_YrotS__FPA4_fs
/* 806B74D4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806B74D8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806B74DC  80 63 00 00 */	lwz r3, 0(r3)
/* 806B74E0  A8 81 00 30 */	lha r4, 0x30(r1)
/* 806B74E4  4B 95 4E B9 */	bl mDoMtx_XrotM__FPA4_fs
/* 806B74E8  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 806B74EC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806B74F0  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 806B74F4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806B74F8  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 806B74FC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806B7500  38 61 00 50 */	addi r3, r1, 0x50
/* 806B7504  38 81 00 44 */	addi r4, r1, 0x44
/* 806B7508  4B BB 99 E5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806B750C  38 61 00 44 */	addi r3, r1, 0x44
/* 806B7510  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 806B7514  7C 65 1B 78 */	mr r5, r3
/* 806B7518  4B C8 FB 79 */	bl PSVECAdd
/* 806B751C  88 1C 06 A0 */	lbz r0, 0x6a0(r28)
/* 806B7520  28 00 00 01 */	cmplwi r0, 1
/* 806B7524  40 82 00 08 */	bne lbl_806B752C
/* 806B7528  3B E0 00 0B */	li r31, 0xb
lbl_806B752C:
/* 806B752C  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 806B7530  7C 07 07 74 */	extsb r7, r0
/* 806B7534  38 00 00 00 */	li r0, 0
/* 806B7538  90 01 00 08 */	stw r0, 8(r1)
/* 806B753C  38 60 01 E5 */	li r3, 0x1e5
/* 806B7540  28 1C 00 00 */	cmplwi r28, 0
/* 806B7544  41 82 00 0C */	beq lbl_806B7550
/* 806B7548  80 9C 00 04 */	lwz r4, 4(r28)
/* 806B754C  48 00 00 08 */	b lbl_806B7554
lbl_806B7550:
/* 806B7550  38 80 FF FF */	li r4, -1
lbl_806B7554:
/* 806B7554  7F E5 FB 78 */	mr r5, r31
/* 806B7558  38 C1 00 44 */	addi r6, r1, 0x44
/* 806B755C  39 01 00 30 */	addi r8, r1, 0x30
/* 806B7560  39 20 00 00 */	li r9, 0
/* 806B7564  39 40 FF FF */	li r10, -1
/* 806B7568  4B 96 29 89 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
lbl_806B756C:
/* 806B756C  80 1C 06 6C */	lwz r0, 0x66c(r28)
/* 806B7570  2C 00 00 03 */	cmpwi r0, 3
/* 806B7574  40 82 02 44 */	bne lbl_806B77B8
/* 806B7578  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B757C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B7580  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 806B7584  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 806B7588  A8 9C 06 94 */	lha r4, 0x694(r28)
/* 806B758C  38 A0 00 01 */	li r5, 1
/* 806B7590  3C C0 80 6C */	lis r6, l_HIO@ha /* 0x806B91FC@ha */
/* 806B7594  38 C6 91 FC */	addi r6, r6, l_HIO@l /* 0x806B91FC@l */
/* 806B7598  A8 C6 00 16 */	lha r6, 0x16(r6)
/* 806B759C  4B BB 90 6D */	bl cLib_addCalcAngleS2__FPssss
/* 806B75A0  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 806B75A4  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 806B75A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B75AC  4C 40 13 82 */	cror 2, 0, 2
/* 806B75B0  40 82 00 78 */	bne lbl_806B7628
/* 806B75B4  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 806B75B8  4B CA DB 19 */	bl abs
/* 806B75BC  20 03 36 B0 */	subfic r0, r3, 0x36b0
/* 806B75C0  C8 3E 00 50 */	lfd f1, 0x50(r30)
/* 806B75C4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806B75C8  90 01 00 64 */	stw r0, 0x64(r1)
/* 806B75CC  3C 00 43 30 */	lis r0, 0x4330
/* 806B75D0  90 01 00 60 */	stw r0, 0x60(r1)
/* 806B75D4  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 806B75D8  EC 20 08 28 */	fsubs f1, f0, f1
/* 806B75DC  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 806B75E0  EC 01 00 24 */	fdivs f0, f1, f0
/* 806B75E4  FC 00 00 1E */	fctiwz f0, f0
/* 806B75E8  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 806B75EC  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 806B75F0  B0 1C 06 98 */	sth r0, 0x698(r28)
/* 806B75F4  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 806B75F8  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 806B75FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B7600  40 81 00 BC */	ble lbl_806B76BC
/* 806B7604  38 00 00 00 */	li r0, 0
/* 806B7608  90 1C 06 9C */	stw r0, 0x69c(r28)
/* 806B760C  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 806B7610  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 806B7614  7F 83 E3 78 */	mr r3, r28
/* 806B7618  38 80 00 00 */	li r4, 0
/* 806B761C  38 A0 00 00 */	li r5, 0
/* 806B7620  4B FF F2 6D */	bl setActionMode__8daE_FB_cFii
/* 806B7624  48 00 02 64 */	b lbl_806B7888
lbl_806B7628:
/* 806B7628  38 00 F6 3C */	li r0, -2500
/* 806B762C  B0 1C 06 98 */	sth r0, 0x698(r28)
/* 806B7630  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 806B7634  4B CA DA 9D */	bl abs
/* 806B7638  C8 5E 00 50 */	lfd f2, 0x50(r30)
/* 806B763C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 806B7640  90 01 00 6C */	stw r0, 0x6c(r1)
/* 806B7644  3C 60 43 30 */	lis r3, 0x4330
/* 806B7648  90 61 00 68 */	stw r3, 0x68(r1)
/* 806B764C  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 806B7650  EC 20 10 28 */	fsubs f1, f0, f2
/* 806B7654  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 806B7658  EC 20 00 72 */	fmuls f1, f0, f1
/* 806B765C  A8 1C 06 98 */	lha r0, 0x698(r28)
/* 806B7660  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806B7664  90 01 00 64 */	stw r0, 0x64(r1)
/* 806B7668  90 61 00 60 */	stw r3, 0x60(r1)
/* 806B766C  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 806B7670  EC 00 10 28 */	fsubs f0, f0, f2
/* 806B7674  EC 00 08 28 */	fsubs f0, f0, f1
/* 806B7678  FC 00 00 1E */	fctiwz f0, f0
/* 806B767C  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 806B7680  80 01 00 74 */	lwz r0, 0x74(r1)
/* 806B7684  B0 1C 06 98 */	sth r0, 0x698(r28)
/* 806B7688  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 806B768C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 806B7690  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B7694  40 80 00 28 */	bge lbl_806B76BC
/* 806B7698  38 00 00 00 */	li r0, 0
/* 806B769C  90 1C 06 9C */	stw r0, 0x69c(r28)
/* 806B76A0  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 806B76A4  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 806B76A8  7F 83 E3 78 */	mr r3, r28
/* 806B76AC  38 80 00 00 */	li r4, 0
/* 806B76B0  38 A0 00 00 */	li r5, 0
/* 806B76B4  4B FF F1 D9 */	bl setActionMode__8daE_FB_cFii
/* 806B76B8  48 00 01 D0 */	b lbl_806B7888
lbl_806B76BC:
/* 806B76BC  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 806B76C0  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 806B76C4  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 806B76C8  EC 20 08 28 */	fsubs f1, f0, f1
/* 806B76CC  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 806B76D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B76D4  41 81 00 10 */	bgt lbl_806B76E4
/* 806B76D8  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 806B76DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B76E0  40 80 00 28 */	bge lbl_806B7708
lbl_806B76E4:
/* 806B76E4  38 00 00 00 */	li r0, 0
/* 806B76E8  90 1C 06 9C */	stw r0, 0x69c(r28)
/* 806B76EC  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 806B76F0  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 806B76F4  7F 83 E3 78 */	mr r3, r28
/* 806B76F8  38 80 00 00 */	li r4, 0
/* 806B76FC  38 A0 00 00 */	li r5, 0
/* 806B7700  4B FF F1 8D */	bl setActionMode__8daE_FB_cFii
/* 806B7704  48 00 01 84 */	b lbl_806B7888
lbl_806B7708:
/* 806B7708  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070387@ha */
/* 806B770C  38 03 03 87 */	addi r0, r3, 0x0387 /* 0x00070387@l */
/* 806B7710  90 01 00 20 */	stw r0, 0x20(r1)
/* 806B7714  38 7C 05 C4 */	addi r3, r28, 0x5c4
/* 806B7718  38 81 00 20 */	addi r4, r1, 0x20
/* 806B771C  38 A0 00 00 */	li r5, 0
/* 806B7720  38 C0 FF FF */	li r6, -1
/* 806B7724  81 9C 05 C4 */	lwz r12, 0x5c4(r28)
/* 806B7728  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806B772C  7D 89 03 A6 */	mtctr r12
/* 806B7730  4E 80 04 21 */	bctrl 
/* 806B7734  A8 7C 06 94 */	lha r3, 0x694(r28)
/* 806B7738  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 806B773C  7C 03 00 50 */	subf r0, r3, r0
/* 806B7740  7C 03 07 34 */	extsh r3, r0
/* 806B7744  4B CA D9 8D */	bl abs
/* 806B7748  2C 03 02 00 */	cmpwi r3, 0x200
/* 806B774C  40 80 00 6C */	bge lbl_806B77B8
/* 806B7750  88 1C 06 90 */	lbz r0, 0x690(r28)
/* 806B7754  28 00 00 00 */	cmplwi r0, 0
/* 806B7758  40 82 00 28 */	bne lbl_806B7780
/* 806B775C  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 806B7760  3C 60 80 6C */	lis r3, l_HIO@ha /* 0x806B91FC@ha */
/* 806B7764  38 63 91 FC */	addi r3, r3, l_HIO@l /* 0x806B91FC@l */
/* 806B7768  A8 03 00 20 */	lha r0, 0x20(r3)
/* 806B776C  7C 00 0E 70 */	srawi r0, r0, 1
/* 806B7770  1C 00 00 B6 */	mulli r0, r0, 0xb6
/* 806B7774  7C 04 02 14 */	add r0, r4, r0
/* 806B7778  B0 1C 06 94 */	sth r0, 0x694(r28)
/* 806B777C  48 00 00 24 */	b lbl_806B77A0
lbl_806B7780:
/* 806B7780  3C 60 80 6C */	lis r3, l_HIO@ha /* 0x806B91FC@ha */
/* 806B7784  38 63 91 FC */	addi r3, r3, l_HIO@l /* 0x806B91FC@l */
/* 806B7788  A8 03 00 20 */	lha r0, 0x20(r3)
/* 806B778C  7C 00 0E 70 */	srawi r0, r0, 1
/* 806B7790  1C 60 00 B6 */	mulli r3, r0, 0xb6
/* 806B7794  A8 1C 04 B6 */	lha r0, 0x4b6(r28)
/* 806B7798  7C 03 00 50 */	subf r0, r3, r0
/* 806B779C  B0 1C 06 94 */	sth r0, 0x694(r28)
lbl_806B77A0:
/* 806B77A0  88 7C 06 90 */	lbz r3, 0x690(r28)
/* 806B77A4  38 03 00 01 */	addi r0, r3, 1
/* 806B77A8  98 1C 06 90 */	stb r0, 0x690(r28)
/* 806B77AC  88 1C 06 90 */	lbz r0, 0x690(r28)
/* 806B77B0  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 806B77B4  98 1C 06 90 */	stb r0, 0x690(r28)
lbl_806B77B8:
/* 806B77B8  80 BC 06 6C */	lwz r5, 0x66c(r28)
/* 806B77BC  2C 05 00 01 */	cmpwi r5, 1
/* 806B77C0  40 82 00 60 */	bne lbl_806B7820
/* 806B77C4  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806B77C8  38 80 00 01 */	li r4, 1
/* 806B77CC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806B77D0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806B77D4  40 82 00 18 */	bne lbl_806B77EC
/* 806B77D8  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 806B77DC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806B77E0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806B77E4  41 82 00 08 */	beq lbl_806B77EC
/* 806B77E8  38 80 00 00 */	li r4, 0
lbl_806B77EC:
/* 806B77EC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806B77F0  41 82 00 30 */	beq lbl_806B7820
/* 806B77F4  38 00 00 00 */	li r0, 0
/* 806B77F8  90 1C 06 9C */	stw r0, 0x69c(r28)
/* 806B77FC  3C 60 80 6C */	lis r3, l_HIO@ha /* 0x806B91FC@ha */
/* 806B7800  38 63 91 FC */	addi r3, r3, l_HIO@l /* 0x806B91FC@l */
/* 806B7804  A8 03 00 10 */	lha r0, 0x10(r3)
/* 806B7808  B0 1C 06 80 */	sth r0, 0x680(r28)
/* 806B780C  7F 83 E3 78 */	mr r3, r28
/* 806B7810  38 80 00 00 */	li r4, 0
/* 806B7814  38 A0 00 00 */	li r5, 0
/* 806B7818  4B FF F0 75 */	bl setActionMode__8daE_FB_cFii
/* 806B781C  48 00 00 64 */	b lbl_806B7880
lbl_806B7820:
/* 806B7820  2C 05 00 02 */	cmpwi r5, 2
/* 806B7824  40 82 00 5C */	bne lbl_806B7880
/* 806B7828  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B782C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B7830  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 806B7834  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 806B7838  40 82 00 48 */	bne lbl_806B7880
/* 806B783C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806B7840  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 806B7844  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 806B7848  EC 21 00 28 */	fsubs f1, f1, f0
/* 806B784C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 806B7850  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B7854  40 80 00 2C */	bge lbl_806B7880
/* 806B7858  38 00 00 00 */	li r0, 0
/* 806B785C  90 1C 06 9C */	stw r0, 0x69c(r28)
/* 806B7860  3C 60 80 6C */	lis r3, l_HIO@ha /* 0x806B91FC@ha */
/* 806B7864  38 63 91 FC */	addi r3, r3, l_HIO@l /* 0x806B91FC@l */
/* 806B7868  A8 03 00 10 */	lha r0, 0x10(r3)
/* 806B786C  B0 1C 06 80 */	sth r0, 0x680(r28)
/* 806B7870  7F 83 E3 78 */	mr r3, r28
/* 806B7874  38 80 00 00 */	li r4, 0
/* 806B7878  38 A0 00 00 */	li r5, 0
/* 806B787C  4B FF F0 11 */	bl setActionMode__8daE_FB_cFii
lbl_806B7880:
/* 806B7880  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 806B7884  B0 1C 04 DE */	sth r0, 0x4de(r28)
lbl_806B7888:
/* 806B7888  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806B788C  4B CA A9 89 */	bl _restgpr_24
/* 806B7890  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806B7894  7C 08 03 A6 */	mtlr r0
/* 806B7898  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806B789C  4E 80 00 20 */	blr 
