lbl_805D9FF4:
/* 805D9FF4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805D9FF8  7C 08 02 A6 */	mflr r0
/* 805D9FFC  90 01 00 54 */	stw r0, 0x54(r1)
/* 805DA000  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 805DA004  93 C1 00 48 */	stw r30, 0x48(r1)
/* 805DA008  7C 7E 1B 78 */	mr r30, r3
/* 805DA00C  A8 03 05 62 */	lha r0, 0x562(r3)
/* 805DA010  2C 00 00 01 */	cmpwi r0, 1
/* 805DA014  40 80 00 0C */	bge lbl_805DA020
/* 805DA018  38 60 00 00 */	li r3, 0
/* 805DA01C  48 00 05 50 */	b lbl_805DA56C
lbl_805DA020:
/* 805DA020  38 7E 08 4E */	addi r3, r30, 0x84e
/* 805DA024  48 00 28 DD */	bl func_805DC900
/* 805DA028  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805DA02C  41 82 00 0C */	beq lbl_805DA038
/* 805DA030  38 60 00 00 */	li r3, 0
/* 805DA034  48 00 05 38 */	b lbl_805DA56C
lbl_805DA038:
/* 805DA038  38 7E 0A C4 */	addi r3, r30, 0xac4
/* 805DA03C  4B AA A4 25 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 805DA040  28 03 00 00 */	cmplwi r3, 0
/* 805DA044  41 82 05 10 */	beq lbl_805DA554
/* 805DA048  38 7E 0A C4 */	addi r3, r30, 0xac4
/* 805DA04C  4B AA A4 AD */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 805DA050  90 7E 2C F0 */	stw r3, 0x2cf0(r30)
/* 805DA054  38 61 00 18 */	addi r3, r1, 0x18
/* 805DA058  38 9E 06 E8 */	addi r4, r30, 0x6e8
/* 805DA05C  3B FE 0B 98 */	addi r31, r30, 0xb98
/* 805DA060  7F E5 FB 78 */	mr r5, r31
/* 805DA064  4B C8 CA D1 */	bl __mi__4cXyzCFRC3Vec
/* 805DA068  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805DA06C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805DA070  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805DA074  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805DA078  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805DA07C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805DA080  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805DA084  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805DA088  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805DA08C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805DA090  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805DA094  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805DA098  38 00 00 08 */	li r0, 8
/* 805DA09C  98 1E 08 4E */	stb r0, 0x84e(r30)
/* 805DA0A0  7F C3 F3 78 */	mr r3, r30
/* 805DA0A4  38 9E 2C F0 */	addi r4, r30, 0x2cf0
/* 805DA0A8  4B AA DB 5D */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 805DA0AC  38 00 00 00 */	li r0, 0
/* 805DA0B0  B0 01 00 10 */	sth r0, 0x10(r1)
/* 805DA0B4  38 61 00 30 */	addi r3, r1, 0x30
/* 805DA0B8  4B C8 D0 71 */	bl atan2sX_Z__4cXyzCFv
/* 805DA0BC  B0 61 00 12 */	sth r3, 0x12(r1)
/* 805DA0C0  38 00 00 00 */	li r0, 0
/* 805DA0C4  B0 01 00 14 */	sth r0, 0x14(r1)
/* 805DA0C8  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 805DA0CC  2C 00 00 01 */	cmpwi r0, 1
/* 805DA0D0  41 81 01 38 */	bgt lbl_805DA208
/* 805DA0D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805DA0D8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805DA0DC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 805DA0E0  38 80 00 03 */	li r4, 3
/* 805DA0E4  7F C5 F3 78 */	mr r5, r30
/* 805DA0E8  38 DE 05 38 */	addi r6, r30, 0x538
/* 805DA0EC  38 E1 00 10 */	addi r7, r1, 0x10
/* 805DA0F0  39 00 00 00 */	li r8, 0
/* 805DA0F4  39 20 00 00 */	li r9, 0
/* 805DA0F8  4B A7 21 21 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 805DA0FC  38 00 00 00 */	li r0, 0
/* 805DA100  98 1E 08 5F */	stb r0, 0x85f(r30)
/* 805DA104  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805DA108  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805DA10C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805DA110  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805DA114  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805DA118  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805DA11C  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805DA120  3C 80 00 04 */	lis r4, 4
/* 805DA124  38 A0 00 20 */	li r5, 0x20
/* 805DA128  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805DA12C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 805DA130  7D 89 03 A6 */	mtctr r12
/* 805DA134  4E 80 04 21 */	bctrl 
/* 805DA138  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 805DA13C  38 63 02 10 */	addi r3, r3, 0x210
/* 805DA140  80 9E 2E 14 */	lwz r4, 0x2e14(r30)
/* 805DA144  4B A7 17 D5 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 805DA148  28 03 00 00 */	cmplwi r3, 0
/* 805DA14C  41 82 00 10 */	beq lbl_805DA15C
/* 805DA150  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 805DA154  60 00 00 04 */	ori r0, r0, 4
/* 805DA158  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_805DA15C:
/* 805DA15C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805DA160  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805DA164  80 63 00 00 */	lwz r3, 0(r3)
/* 805DA168  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805DA16C  38 80 00 1E */	li r4, 0x1e
/* 805DA170  38 A0 00 00 */	li r5, 0
/* 805DA174  4B CD 52 95 */	bl bgmStop__8Z2SeqMgrFUll
/* 805DA178  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805DA17C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805DA180  80 63 00 00 */	lwz r3, 0(r3)
/* 805DA184  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805DA188  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000048@ha */
/* 805DA18C  38 84 00 48 */	addi r4, r4, 0x0048 /* 0x02000048@l */
/* 805DA190  4B CD 5A 05 */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 805DA194  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805DA198  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805DA19C  80 63 00 00 */	lwz r3, 0(r3)
/* 805DA1A0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805DA1A4  4B CD 5C 75 */	bl bgmStreamPlay__8Z2SeqMgrFv
/* 805DA1A8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704DA@ha */
/* 805DA1AC  38 03 04 DA */	addi r0, r3, 0x04DA /* 0x000704DA@l */
/* 805DA1B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805DA1B4  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805DA1B8  38 81 00 0C */	addi r4, r1, 0xc
/* 805DA1BC  38 A0 FF FF */	li r5, -1
/* 805DA1C0  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805DA1C4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805DA1C8  7D 89 03 A6 */	mtctr r12
/* 805DA1CC  4E 80 04 21 */	bctrl 
/* 805DA1D0  7F C3 F3 78 */	mr r3, r30
/* 805DA1D4  38 80 00 27 */	li r4, 0x27
/* 805DA1D8  38 A0 00 00 */	li r5, 0
/* 805DA1DC  3C C0 80 5E */	lis r6, lit_7137@ha /* 0x805DCE0C@ha */
/* 805DA1E0  C0 26 CE 0C */	lfs f1, lit_7137@l(r6)  /* 0x805DCE0C@l */
/* 805DA1E4  3C C0 80 5E */	lis r6, lit_3934@ha /* 0x805DCA5C@ha */
/* 805DA1E8  C0 46 CA 5C */	lfs f2, lit_3934@l(r6)  /* 0x805DCA5C@l */
/* 805DA1EC  4B FF 18 DD */	bl setBck__8daB_DS_cFiUcff
/* 805DA1F0  7F C3 F3 78 */	mr r3, r30
/* 805DA1F4  38 80 00 05 */	li r4, 5
/* 805DA1F8  38 A0 00 00 */	li r5, 0
/* 805DA1FC  4B FF 19 79 */	bl setActionMode__8daB_DS_cFii
/* 805DA200  38 60 00 01 */	li r3, 1
/* 805DA204  48 00 03 68 */	b lbl_805DA56C
lbl_805DA208:
/* 805DA208  38 7E 0A C4 */	addi r3, r30, 0xac4
/* 805DA20C  4B AA A2 ED */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 805DA210  80 03 00 10 */	lwz r0, 0x10(r3)
/* 805DA214  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 805DA218  40 82 00 18 */	bne lbl_805DA230
/* 805DA21C  38 7E 0A C4 */	addi r3, r30, 0xac4
/* 805DA220  4B AA A2 D9 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 805DA224  80 03 00 10 */	lwz r0, 0x10(r3)
/* 805DA228  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 805DA22C  41 82 01 B8 */	beq lbl_805DA3E4
lbl_805DA230:
/* 805DA230  7F C3 F3 78 */	mr r3, r30
/* 805DA234  38 80 00 27 */	li r4, 0x27
/* 805DA238  38 A0 00 00 */	li r5, 0
/* 805DA23C  3C C0 80 5E */	lis r6, lit_7137@ha /* 0x805DCE0C@ha */
/* 805DA240  C0 26 CE 0C */	lfs f1, lit_7137@l(r6)  /* 0x805DCE0C@l */
/* 805DA244  3C C0 80 5E */	lis r6, lit_3934@ha /* 0x805DCA5C@ha */
/* 805DA248  C0 46 CA 5C */	lfs f2, lit_3934@l(r6)  /* 0x805DCA5C@l */
/* 805DA24C  4B FF 18 7D */	bl setBck__8daB_DS_cFiUcff
/* 805DA250  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704D8@ha */
/* 805DA254  38 03 04 D8 */	addi r0, r3, 0x04D8 /* 0x000704D8@l */
/* 805DA258  90 01 00 08 */	stw r0, 8(r1)
/* 805DA25C  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805DA260  38 81 00 08 */	addi r4, r1, 8
/* 805DA264  38 A0 FF FF */	li r5, -1
/* 805DA268  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805DA26C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805DA270  7D 89 03 A6 */	mtctr r12
/* 805DA274  4E 80 04 21 */	bctrl 
/* 805DA278  3C 60 80 5E */	lis r3, d_a_b_ds__stringBase0@ha /* 0x805DD22C@ha */
/* 805DA27C  38 63 D2 2C */	addi r3, r3, d_a_b_ds__stringBase0@l /* 0x805DD22C@l */
/* 805DA280  38 80 00 4E */	li r4, 0x4e
/* 805DA284  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805DA288  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805DA28C  3F E5 00 02 */	addis r31, r5, 2
/* 805DA290  3B FF C2 F8 */	addi r31, r31, -15624
/* 805DA294  7F E5 FB 78 */	mr r5, r31
/* 805DA298  38 C0 00 80 */	li r6, 0x80
/* 805DA29C  4B A6 20 51 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805DA2A0  7C 65 1B 78 */	mr r5, r3
/* 805DA2A4  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 805DA2A8  80 83 00 04 */	lwz r4, 4(r3)
/* 805DA2AC  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 805DA2B0  38 84 00 58 */	addi r4, r4, 0x58
/* 805DA2B4  38 C0 00 01 */	li r6, 1
/* 805DA2B8  38 E0 00 00 */	li r7, 0
/* 805DA2BC  3D 00 80 5E */	lis r8, lit_3934@ha /* 0x805DCA5C@ha */
/* 805DA2C0  C0 28 CA 5C */	lfs f1, lit_3934@l(r8)  /* 0x805DCA5C@l */
/* 805DA2C4  39 00 00 00 */	li r8, 0
/* 805DA2C8  39 20 FF FF */	li r9, -1
/* 805DA2CC  4B A3 34 41 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 805DA2D0  3C 60 80 5E */	lis r3, d_a_b_ds__stringBase0@ha /* 0x805DD22C@ha */
/* 805DA2D4  38 63 D2 2C */	addi r3, r3, d_a_b_ds__stringBase0@l /* 0x805DD22C@l */
/* 805DA2D8  38 80 00 54 */	li r4, 0x54
/* 805DA2DC  7F E5 FB 78 */	mr r5, r31
/* 805DA2E0  38 C0 00 80 */	li r6, 0x80
/* 805DA2E4  4B A6 20 09 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805DA2E8  7C 65 1B 78 */	mr r5, r3
/* 805DA2EC  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 805DA2F0  80 83 00 04 */	lwz r4, 4(r3)
/* 805DA2F4  80 7E 05 D8 */	lwz r3, 0x5d8(r30)
/* 805DA2F8  38 84 00 58 */	addi r4, r4, 0x58
/* 805DA2FC  38 C0 00 01 */	li r6, 1
/* 805DA300  38 E0 00 00 */	li r7, 0
/* 805DA304  3D 00 80 5E */	lis r8, lit_3934@ha /* 0x805DCA5C@ha */
/* 805DA308  C0 28 CA 5C */	lfs f1, lit_3934@l(r8)  /* 0x805DCA5C@l */
/* 805DA30C  39 00 00 00 */	li r8, 0
/* 805DA310  39 20 FF FF */	li r9, -1
/* 805DA314  4B A3 33 29 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 805DA318  38 00 00 01 */	li r0, 1
/* 805DA31C  98 1E 08 5F */	stb r0, 0x85f(r30)
/* 805DA320  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805DA324  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805DA328  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805DA32C  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805DA330  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805DA334  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805DA338  88 1E 2D 0F */	lbz r0, 0x2d0f(r30)
/* 805DA33C  7C 00 07 75 */	extsb. r0, r0
/* 805DA340  40 82 00 54 */	bne lbl_805DA394
/* 805DA344  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805DA348  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805DA34C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805DA350  38 80 00 01 */	li r4, 1
/* 805DA354  7F C5 F3 78 */	mr r5, r30
/* 805DA358  38 DE 05 38 */	addi r6, r30, 0x538
/* 805DA35C  38 E1 00 10 */	addi r7, r1, 0x10
/* 805DA360  39 00 00 00 */	li r8, 0
/* 805DA364  39 20 00 00 */	li r9, 0
/* 805DA368  4B A7 1E B1 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 805DA36C  38 00 02 00 */	li r0, 0x200
/* 805DA370  B0 1E 07 D0 */	sth r0, 0x7d0(r30)
/* 805DA374  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805DA378  3C 80 00 04 */	lis r4, 4
/* 805DA37C  38 A0 00 1E */	li r5, 0x1e
/* 805DA380  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805DA384  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 805DA388  7D 89 03 A6 */	mtctr r12
/* 805DA38C  4E 80 04 21 */	bctrl 
/* 805DA390  48 00 00 90 */	b lbl_805DA420
lbl_805DA394:
/* 805DA394  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805DA398  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805DA39C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805DA3A0  38 80 00 03 */	li r4, 3
/* 805DA3A4  7F C5 F3 78 */	mr r5, r30
/* 805DA3A8  38 DE 05 38 */	addi r6, r30, 0x538
/* 805DA3AC  38 E1 00 10 */	addi r7, r1, 0x10
/* 805DA3B0  39 00 00 00 */	li r8, 0
/* 805DA3B4  39 20 00 00 */	li r9, 0
/* 805DA3B8  4B A7 1E 61 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 805DA3BC  38 00 04 00 */	li r0, 0x400
/* 805DA3C0  B0 1E 07 D0 */	sth r0, 0x7d0(r30)
/* 805DA3C4  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805DA3C8  3C 80 00 04 */	lis r4, 4
/* 805DA3CC  38 A0 00 1F */	li r5, 0x1f
/* 805DA3D0  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805DA3D4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 805DA3D8  7D 89 03 A6 */	mtctr r12
/* 805DA3DC  4E 80 04 21 */	bctrl 
/* 805DA3E0  48 00 00 40 */	b lbl_805DA420
lbl_805DA3E4:
/* 805DA3E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805DA3E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805DA3EC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805DA3F0  38 80 00 02 */	li r4, 2
/* 805DA3F4  7F C5 F3 78 */	mr r5, r30
/* 805DA3F8  38 DE 05 38 */	addi r6, r30, 0x538
/* 805DA3FC  38 E1 00 10 */	addi r7, r1, 0x10
/* 805DA400  39 00 00 00 */	li r8, 0
/* 805DA404  39 20 00 00 */	li r9, 0
/* 805DA408  4B A7 1E 11 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 805DA40C  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805DA410  80 9E 2C F0 */	lwz r4, 0x2cf0(r30)
/* 805DA414  38 A0 00 02 */	li r5, 2
/* 805DA418  38 C0 00 00 */	li r6, 0
/* 805DA41C  4B AA D0 F9 */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
lbl_805DA420:
/* 805DA420  3C 60 80 5E */	lis r3, d_a_b_ds__stringBase0@ha /* 0x805DD22C@ha */
/* 805DA424  38 63 D2 2C */	addi r3, r3, d_a_b_ds__stringBase0@l /* 0x805DD22C@l */
/* 805DA428  38 80 00 50 */	li r4, 0x50
/* 805DA42C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805DA430  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805DA434  3F E5 00 02 */	addis r31, r5, 2
/* 805DA438  3B FF C2 F8 */	addi r31, r31, -15624
/* 805DA43C  7F E5 FB 78 */	mr r5, r31
/* 805DA440  38 C0 00 80 */	li r6, 0x80
/* 805DA444  4B A6 1E A9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805DA448  7C 65 1B 78 */	mr r5, r3
/* 805DA44C  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 805DA450  80 63 00 04 */	lwz r3, 4(r3)
/* 805DA454  80 83 00 04 */	lwz r4, 4(r3)
/* 805DA458  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 805DA45C  38 84 00 58 */	addi r4, r4, 0x58
/* 805DA460  38 C0 00 01 */	li r6, 1
/* 805DA464  38 E0 00 01 */	li r7, 1
/* 805DA468  3D 00 80 5E */	lis r8, lit_3934@ha /* 0x805DCA5C@ha */
/* 805DA46C  C0 28 CA 5C */	lfs f1, lit_3934@l(r8)  /* 0x805DCA5C@l */
/* 805DA470  39 00 00 00 */	li r8, 0
/* 805DA474  39 20 FF FF */	li r9, -1
/* 805DA478  4B A3 32 95 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 805DA47C  7F C3 F3 78 */	mr r3, r30
/* 805DA480  4B FF 33 C5 */	bl mCutTypeCheck__8daB_DS_cFv
/* 805DA484  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805DA488  41 82 00 CC */	beq lbl_805DA554
/* 805DA48C  3C 60 80 5E */	lis r3, d_a_b_ds__stringBase0@ha /* 0x805DD22C@ha */
/* 805DA490  38 63 D2 2C */	addi r3, r3, d_a_b_ds__stringBase0@l /* 0x805DD22C@l */
/* 805DA494  38 80 00 4E */	li r4, 0x4e
/* 805DA498  7F E5 FB 78 */	mr r5, r31
/* 805DA49C  38 C0 00 80 */	li r6, 0x80
/* 805DA4A0  4B A6 1E 4D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805DA4A4  7C 65 1B 78 */	mr r5, r3
/* 805DA4A8  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 805DA4AC  80 83 00 04 */	lwz r4, 4(r3)
/* 805DA4B0  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 805DA4B4  38 84 00 58 */	addi r4, r4, 0x58
/* 805DA4B8  38 C0 00 01 */	li r6, 1
/* 805DA4BC  38 E0 00 00 */	li r7, 0
/* 805DA4C0  3D 00 80 5E */	lis r8, lit_3934@ha /* 0x805DCA5C@ha */
/* 805DA4C4  C0 28 CA 5C */	lfs f1, lit_3934@l(r8)  /* 0x805DCA5C@l */
/* 805DA4C8  39 00 00 00 */	li r8, 0
/* 805DA4CC  39 20 FF FF */	li r9, -1
/* 805DA4D0  4B A3 32 3D */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 805DA4D4  3C 60 80 5E */	lis r3, d_a_b_ds__stringBase0@ha /* 0x805DD22C@ha */
/* 805DA4D8  38 63 D2 2C */	addi r3, r3, d_a_b_ds__stringBase0@l /* 0x805DD22C@l */
/* 805DA4DC  38 80 00 54 */	li r4, 0x54
/* 805DA4E0  7F E5 FB 78 */	mr r5, r31
/* 805DA4E4  38 C0 00 80 */	li r6, 0x80
/* 805DA4E8  4B A6 1E 05 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805DA4EC  7C 65 1B 78 */	mr r5, r3
/* 805DA4F0  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 805DA4F4  80 83 00 04 */	lwz r4, 4(r3)
/* 805DA4F8  80 7E 05 D8 */	lwz r3, 0x5d8(r30)
/* 805DA4FC  38 84 00 58 */	addi r4, r4, 0x58
/* 805DA500  38 C0 00 01 */	li r6, 1
/* 805DA504  38 E0 00 00 */	li r7, 0
/* 805DA508  3D 00 80 5E */	lis r8, lit_3934@ha /* 0x805DCA5C@ha */
/* 805DA50C  C0 28 CA 5C */	lfs f1, lit_3934@l(r8)  /* 0x805DCA5C@l */
/* 805DA510  39 00 00 00 */	li r8, 0
/* 805DA514  39 20 FF FF */	li r9, -1
/* 805DA518  4B A3 31 25 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 805DA51C  38 00 00 01 */	li r0, 1
/* 805DA520  98 1E 08 5F */	stb r0, 0x85f(r30)
/* 805DA524  38 00 00 0C */	li r0, 0xc
/* 805DA528  98 1E 08 4E */	stb r0, 0x84e(r30)
/* 805DA52C  38 7E 0A C4 */	addi r3, r30, 0xac4
/* 805DA530  81 9E 0B 00 */	lwz r12, 0xb00(r30)
/* 805DA534  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805DA538  7D 89 03 A6 */	mtctr r12
/* 805DA53C  4E 80 04 21 */	bctrl 
/* 805DA540  80 1E 0B 60 */	lwz r0, 0xb60(r30)
/* 805DA544  60 00 20 00 */	ori r0, r0, 0x2000
/* 805DA548  90 1E 0B 60 */	stw r0, 0xb60(r30)
/* 805DA54C  38 60 00 00 */	li r3, 0
/* 805DA550  48 00 00 1C */	b lbl_805DA56C
lbl_805DA554:
/* 805DA554  80 1E 0B 60 */	lwz r0, 0xb60(r30)
/* 805DA558  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 805DA55C  90 1E 0B 60 */	stw r0, 0xb60(r30)
/* 805DA560  38 7E 0A A4 */	addi r3, r30, 0xaa4
/* 805DA564  4B AA 92 CD */	bl Move__10dCcD_GSttsFv
/* 805DA568  38 60 00 00 */	li r3, 0
lbl_805DA56C:
/* 805DA56C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 805DA570  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 805DA574  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805DA578  7C 08 03 A6 */	mtlr r0
/* 805DA57C  38 21 00 50 */	addi r1, r1, 0x50
/* 805DA580  4E 80 00 20 */	blr 
