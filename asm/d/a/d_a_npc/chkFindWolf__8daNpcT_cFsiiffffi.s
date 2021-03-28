lbl_8014B0C8:
/* 8014B0C8  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8014B0CC  7C 08 02 A6 */	mflr r0
/* 8014B0D0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8014B0D4  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8014B0D8  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 8014B0DC  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 8014B0E0  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 8014B0E4  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 8014B0E8  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 8014B0EC  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 8014B0F0  F3 81 00 88 */	psq_st f28, 136(r1), 0, 0 /* qr0 */
/* 8014B0F4  39 61 00 80 */	addi r11, r1, 0x80
/* 8014B0F8  48 21 70 D9 */	bl _savegpr_26
/* 8014B0FC  7C 7A 1B 78 */	mr r26, r3
/* 8014B100  7C 9B 23 78 */	mr r27, r4
/* 8014B104  7C BC 2B 78 */	mr r28, r5
/* 8014B108  7C DD 33 78 */	mr r29, r6
/* 8014B10C  FF 80 08 90 */	fmr f28, f1
/* 8014B110  FF A0 10 90 */	fmr f29, f2
/* 8014B114  FF E0 18 90 */	fmr f31, f3
/* 8014B118  FF C0 20 90 */	fmr f30, f4
/* 8014B11C  7C FE 3B 78 */	mr r30, r7
/* 8014B120  38 61 00 50 */	addi r3, r1, 0x50
/* 8014B124  7F 44 D3 78 */	mr r4, r26
/* 8014B128  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8014B12C  3B E5 61 C0 */	addi r31, r5, g_dComIfG_gameInfo@l
/* 8014B130  80 BF 5D AC */	lwz r5, 0x5dac(r31)
/* 8014B134  48 00 02 B9 */	bl getAttnPos__8daNpcT_cFP10fopAc_ac_c
/* 8014B138  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 8014B13C  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 8014B140  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 8014B144  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 8014B148  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8014B14C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8014B150  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8014B154  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8014B158  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8014B15C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8014B160  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8014B164  41 82 01 98 */	beq lbl_8014B2FC
/* 8014B168  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8014B16C  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8014B170  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8014B174  C0 1A 05 50 */	lfs f0, 0x550(r26)
/* 8014B178  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8014B17C  C0 1A 05 54 */	lfs f0, 0x554(r26)
/* 8014B180  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8014B184  C0 1A 05 58 */	lfs f0, 0x558(r26)
/* 8014B188  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8014B18C  7F 43 D3 78 */	mr r3, r26
/* 8014B190  38 81 00 44 */	addi r4, r1, 0x44
/* 8014B194  38 A1 00 38 */	addi r5, r1, 0x38
/* 8014B198  FC 20 E0 90 */	fmr f1, f28
/* 8014B19C  FC 40 F8 90 */	fmr f2, f31
/* 8014B1A0  FC 60 F0 90 */	fmr f3, f30
/* 8014B1A4  38 C0 00 00 */	li r6, 0
/* 8014B1A8  4B FF FB 49 */	bl chkPointInArea__8daNpcT_cF4cXyz4cXyzfffs
/* 8014B1AC  2C 03 00 00 */	cmpwi r3, 0
/* 8014B1B0  41 82 00 28 */	beq lbl_8014B1D8
/* 8014B1B4  7F 43 D3 78 */	mr r3, r26
/* 8014B1B8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8014B1BC  FC 20 E8 90 */	fmr f1, f29
/* 8014B1C0  7F 65 DB 78 */	mr r5, r27
/* 8014B1C4  4B FF FA 0D */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 8014B1C8  2C 03 00 00 */	cmpwi r3, 0
/* 8014B1CC  41 82 00 0C */	beq lbl_8014B1D8
/* 8014B1D0  38 60 00 01 */	li r3, 1
/* 8014B1D4  48 00 01 2C */	b lbl_8014B300
lbl_8014B1D8:
/* 8014B1D8  7F 83 E3 78 */	mr r3, r28
/* 8014B1DC  4B FF FE 35 */	bl getDistTable__12dAttention_cFi
/* 8014B1E0  C3 C3 00 00 */	lfs f30, 0(r3)
/* 8014B1E4  7F 83 E3 78 */	mr r3, r28
/* 8014B1E8  4B FF FE 29 */	bl getDistTable__12dAttention_cFi
/* 8014B1EC  C3 E3 00 0C */	lfs f31, 0xc(r3)
/* 8014B1F0  7F 83 E3 78 */	mr r3, r28
/* 8014B1F4  4B FF FE 1D */	bl getDistTable__12dAttention_cFi
/* 8014B1F8  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 8014B1FC  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8014B200  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8014B204  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8014B208  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8014B20C  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8014B210  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8014B214  C0 1A 05 50 */	lfs f0, 0x550(r26)
/* 8014B218  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8014B21C  C0 1A 05 54 */	lfs f0, 0x554(r26)
/* 8014B220  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8014B224  C0 1A 05 58 */	lfs f0, 0x558(r26)
/* 8014B228  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8014B22C  7F 43 D3 78 */	mr r3, r26
/* 8014B230  38 81 00 2C */	addi r4, r1, 0x2c
/* 8014B234  38 A1 00 20 */	addi r5, r1, 0x20
/* 8014B238  FC 20 F0 90 */	fmr f1, f30
/* 8014B23C  FC 40 F8 90 */	fmr f2, f31
/* 8014B240  38 C0 00 00 */	li r6, 0
/* 8014B244  4B FF FA AD */	bl chkPointInArea__8daNpcT_cF4cXyz4cXyzfffs
/* 8014B248  2C 03 00 00 */	cmpwi r3, 0
/* 8014B24C  41 82 00 0C */	beq lbl_8014B258
/* 8014B250  38 60 00 01 */	li r3, 1
/* 8014B254  48 00 00 AC */	b lbl_8014B300
lbl_8014B258:
/* 8014B258  8B FA 05 45 */	lbz r31, 0x545(r26)
/* 8014B25C  7F E3 FB 78 */	mr r3, r31
/* 8014B260  4B FF FD B1 */	bl getDistTable__12dAttention_cFi
/* 8014B264  C3 E3 00 00 */	lfs f31, 0(r3)
/* 8014B268  7F E3 FB 78 */	mr r3, r31
/* 8014B26C  4B FF FD A5 */	bl getDistTable__12dAttention_cFi
/* 8014B270  C3 C3 00 0C */	lfs f30, 0xc(r3)
/* 8014B274  7F E3 FB 78 */	mr r3, r31
/* 8014B278  4B FF FD 99 */	bl getDistTable__12dAttention_cFi
/* 8014B27C  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 8014B280  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8014B284  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8014B288  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8014B28C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8014B290  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8014B294  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8014B298  C0 1A 05 50 */	lfs f0, 0x550(r26)
/* 8014B29C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8014B2A0  C0 1A 05 54 */	lfs f0, 0x554(r26)
/* 8014B2A4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8014B2A8  C0 1A 05 58 */	lfs f0, 0x558(r26)
/* 8014B2AC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8014B2B0  7F 43 D3 78 */	mr r3, r26
/* 8014B2B4  38 81 00 14 */	addi r4, r1, 0x14
/* 8014B2B8  38 A1 00 08 */	addi r5, r1, 8
/* 8014B2BC  FC 20 F8 90 */	fmr f1, f31
/* 8014B2C0  FC 40 F0 90 */	fmr f2, f30
/* 8014B2C4  38 C0 00 00 */	li r6, 0
/* 8014B2C8  4B FF FA 29 */	bl chkPointInArea__8daNpcT_cF4cXyz4cXyzfffs
/* 8014B2CC  2C 03 00 00 */	cmpwi r3, 0
/* 8014B2D0  41 82 00 2C */	beq lbl_8014B2FC
/* 8014B2D4  2C 1D 00 02 */	cmpwi r29, 2
/* 8014B2D8  40 80 00 24 */	bge lbl_8014B2FC
/* 8014B2DC  2C 1E 00 00 */	cmpwi r30, 0
/* 8014B2E0  41 82 00 1C */	beq lbl_8014B2FC
/* 8014B2E4  7F 43 D3 78 */	mr r3, r26
/* 8014B2E8  4B FF FD 3D */	bl chkWolfAction__8daNpcT_cFv
/* 8014B2EC  2C 03 00 00 */	cmpwi r3, 0
/* 8014B2F0  41 82 00 0C */	beq lbl_8014B2FC
/* 8014B2F4  38 60 00 01 */	li r3, 1
/* 8014B2F8  48 00 00 08 */	b lbl_8014B300
lbl_8014B2FC:
/* 8014B2FC  38 60 00 00 */	li r3, 0
lbl_8014B300:
/* 8014B300  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 8014B304  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8014B308  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 8014B30C  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 8014B310  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 8014B314  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 8014B318  E3 81 00 88 */	psq_l f28, 136(r1), 0, 0 /* qr0 */
/* 8014B31C  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 8014B320  39 61 00 80 */	addi r11, r1, 0x80
/* 8014B324  48 21 6E F9 */	bl _restgpr_26
/* 8014B328  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8014B32C  7C 08 03 A6 */	mtlr r0
/* 8014B330  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8014B334  4E 80 00 20 */	blr 
