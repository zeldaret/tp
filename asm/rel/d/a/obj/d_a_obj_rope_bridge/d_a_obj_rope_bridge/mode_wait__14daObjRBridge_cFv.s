lbl_80597170:
/* 80597170  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80597174  7C 08 02 A6 */	mflr r0
/* 80597178  90 01 00 74 */	stw r0, 0x74(r1)
/* 8059717C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80597180  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80597184  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80597188  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 8059718C  39 61 00 50 */	addi r11, r1, 0x50
/* 80597190  4B DC B0 3D */	bl _savegpr_25
/* 80597194  7C 7E 1B 78 */	mr r30, r3
/* 80597198  3C 80 80 59 */	lis r4, l_brgBmdIdx@ha /* 0x80597D7C@ha */
/* 8059719C  3B E4 7D 7C */	addi r31, r4, l_brgBmdIdx@l /* 0x80597D7C@l */
/* 805971A0  4B FF F6 FD */	bl checkTight__14daObjRBridge_cFv
/* 805971A4  2C 03 00 00 */	cmpwi r3, 0
/* 805971A8  41 82 00 1C */	beq lbl_805971C4
/* 805971AC  38 00 00 00 */	li r0, 0
/* 805971B0  B0 1E 0B 18 */	sth r0, 0xb18(r30)
/* 805971B4  B0 1E 0B 1A */	sth r0, 0xb1a(r30)
/* 805971B8  38 00 06 00 */	li r0, 0x600
/* 805971BC  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 805971C0  48 00 00 2C */	b lbl_805971EC
lbl_805971C4:
/* 805971C4  38 00 00 32 */	li r0, 0x32
/* 805971C8  B0 1E 0B 18 */	sth r0, 0xb18(r30)
/* 805971CC  A8 7E 0B 1A */	lha r3, 0xb1a(r30)
/* 805971D0  A8 1E 0B 18 */	lha r0, 0xb18(r30)
/* 805971D4  7C 03 02 14 */	add r0, r3, r0
/* 805971D8  B0 1E 0B 1A */	sth r0, 0xb1a(r30)
/* 805971DC  A8 7E 04 E4 */	lha r3, 0x4e4(r30)
/* 805971E0  A8 1E 0B 1A */	lha r0, 0xb1a(r30)
/* 805971E4  7C 03 02 14 */	add r0, r3, r0
/* 805971E8  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
lbl_805971EC:
/* 805971EC  3B 40 00 00 */	li r26, 0
/* 805971F0  3B 80 00 00 */	li r28, 0
/* 805971F4  3B A0 00 00 */	li r29, 0
lbl_805971F8:
/* 805971F8  3B 7D 05 F4 */	addi r27, r29, 0x5f4
/* 805971FC  7F 7E DA 14 */	add r27, r30, r27
/* 80597200  7F 63 DB 78 */	mr r3, r27
/* 80597204  4B AE D2 5D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80597208  28 03 00 00 */	cmplwi r3, 0
/* 8059720C  41 82 00 2C */	beq lbl_80597238
/* 80597210  7F 63 DB 78 */	mr r3, r27
/* 80597214  4B AE D2 E5 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80597218  28 03 00 00 */	cmplwi r3, 0
/* 8059721C  41 82 00 1C */	beq lbl_80597238
/* 80597220  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80597224  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 80597228  40 82 00 0C */	bne lbl_80597234
/* 8059722C  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80597230  41 82 00 08 */	beq lbl_80597238
lbl_80597234:
/* 80597234  3B 40 00 01 */	li r26, 1
lbl_80597238:
/* 80597238  3B 9C 00 01 */	addi r28, r28, 1
/* 8059723C  2C 1C 00 02 */	cmpwi r28, 2
/* 80597240  3B BD 01 44 */	addi r29, r29, 0x144
/* 80597244  41 80 FF B4 */	blt lbl_805971F8
/* 80597248  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059724C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80597250  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80597254  54 04 46 3E */	srwi r4, r0, 0x18
/* 80597258  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8059725C  7C 05 07 74 */	extsb r5, r0
/* 80597260  4B A9 E1 01 */	bl isSwitch__10dSv_info_cCFii
/* 80597264  30 03 FF FF */	addic r0, r3, -1
/* 80597268  7C 00 19 10 */	subfe r0, r0, r3
/* 8059726C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80597270  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80597274  40 82 00 0C */	bne lbl_80597280
/* 80597278  28 03 00 00 */	cmplwi r3, 0
/* 8059727C  41 82 00 78 */	beq lbl_805972F4
lbl_80597280:
/* 80597280  7F C3 F3 78 */	mr r3, r30
/* 80597284  4B FF ED 01 */	bl checkE3Special__14daObjRBridge_cFv
/* 80597288  2C 03 00 00 */	cmpwi r3, 0
/* 8059728C  40 82 00 44 */	bne lbl_805972D0
/* 80597290  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080143@ha */
/* 80597294  38 03 01 43 */	addi r0, r3, 0x0143 /* 0x00080143@l */
/* 80597298  90 01 00 08 */	stw r0, 8(r1)
/* 8059729C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805972A0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805972A4  80 63 00 00 */	lwz r3, 0(r3)
/* 805972A8  38 81 00 08 */	addi r4, r1, 8
/* 805972AC  38 BE 0B 0C */	addi r5, r30, 0xb0c
/* 805972B0  38 C0 00 00 */	li r6, 0
/* 805972B4  38 E0 00 00 */	li r7, 0
/* 805972B8  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 805972BC  FC 40 08 90 */	fmr f2, f1
/* 805972C0  C0 7F 00 A8 */	lfs f3, 0xa8(r31)
/* 805972C4  FC 80 18 90 */	fmr f4, f3
/* 805972C8  39 00 00 00 */	li r8, 0
/* 805972CC  4B D1 46 B9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_805972D0:
/* 805972D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805972D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805972D8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 805972DC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 805972E0  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 805972E4  7C 05 07 74 */	extsb r5, r0
/* 805972E8  4B A9 DF 19 */	bl onSwitch__10dSv_info_cFii
/* 805972EC  7F C3 F3 78 */	mr r3, r30
/* 805972F0  48 00 00 CD */	bl init_cut__14daObjRBridge_cFv
lbl_805972F4:
/* 805972F4  3B 20 00 00 */	li r25, 0
/* 805972F8  3B A0 00 00 */	li r29, 0
/* 805972FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80597300  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80597304  3B 63 23 3C */	addi r27, r3, 0x233c
/* 80597308  C3 DF 00 80 */	lfs f30, 0x80(r31)
/* 8059730C  3B 9F 00 20 */	addi r28, r31, 0x20
/* 80597310  CB FF 00 B0 */	lfd f31, 0xb0(r31)
/* 80597314  3F E0 43 30 */	lis r31, 0x4330
lbl_80597318:
/* 80597318  7F C3 F3 78 */	mr r3, r30
/* 8059731C  38 81 00 18 */	addi r4, r1, 0x18
/* 80597320  4B FF F4 49 */	bl getLinePosSt__14daObjRBridge_cFP4cXyz
/* 80597324  7F C3 F3 78 */	mr r3, r30
/* 80597328  7F 24 CB 78 */	mr r4, r25
/* 8059732C  38 A1 00 0C */	addi r5, r1, 0xc
/* 80597330  4B FF F4 B5 */	bl getLinePosBrg__14daObjRBridge_cFiP4cXyz
/* 80597334  7F 5E EA 14 */	add r26, r30, r29
/* 80597338  38 7A 07 18 */	addi r3, r26, 0x718
/* 8059733C  38 81 00 18 */	addi r4, r1, 0x18
/* 80597340  38 A1 00 0C */	addi r5, r1, 0xc
/* 80597344  88 1E 0A F0 */	lbz r0, 0xaf0(r30)
/* 80597348  54 00 10 3A */	slwi r0, r0, 2
/* 8059734C  7C 1C 00 2E */	lwzx r0, r28, r0
/* 80597350  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80597354  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80597358  93 E1 00 28 */	stw r31, 0x28(r1)
/* 8059735C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80597360  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80597364  EC 3E 00 32 */	fmuls f1, f30, f0
/* 80597368  4B CD 7C 99 */	bl Set__8cM3dGCpsFRC4cXyzRC4cXyzf
/* 8059736C  3B 5A 05 F4 */	addi r26, r26, 0x5f4
/* 80597370  7F 43 D3 78 */	mr r3, r26
/* 80597374  4B AE D4 E1 */	bl CalcTgVec__8dCcD_CpsFv
/* 80597378  7F 63 DB 78 */	mr r3, r27
/* 8059737C  7F 44 D3 78 */	mr r4, r26
/* 80597380  4B CC D8 29 */	bl Set__4cCcSFP8cCcD_Obj
/* 80597384  3B 39 00 01 */	addi r25, r25, 1
/* 80597388  2C 19 00 02 */	cmpwi r25, 2
/* 8059738C  3B BD 01 44 */	addi r29, r29, 0x144
/* 80597390  41 80 FF 88 */	blt lbl_80597318
/* 80597394  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80597398  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8059739C  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 805973A0  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 805973A4  39 61 00 50 */	addi r11, r1, 0x50
/* 805973A8  4B DC AE 71 */	bl _restgpr_25
/* 805973AC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805973B0  7C 08 03 A6 */	mtlr r0
/* 805973B4  38 21 00 70 */	addi r1, r1, 0x70
/* 805973B8  4E 80 00 20 */	blr 
