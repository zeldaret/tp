lbl_806DB768:
/* 806DB768  94 21 FE 20 */	stwu r1, -0x1e0(r1)
/* 806DB76C  7C 08 02 A6 */	mflr r0
/* 806DB770  90 01 01 E4 */	stw r0, 0x1e4(r1)
/* 806DB774  DB E1 01 D0 */	stfd f31, 0x1d0(r1)
/* 806DB778  F3 E1 01 D8 */	psq_st f31, 472(r1), 0, 0 /* qr0 */
/* 806DB77C  DB C1 01 C0 */	stfd f30, 0x1c0(r1)
/* 806DB780  F3 C1 01 C8 */	psq_st f30, 456(r1), 0, 0 /* qr0 */
/* 806DB784  DB A1 01 B0 */	stfd f29, 0x1b0(r1)
/* 806DB788  F3 A1 01 B8 */	psq_st f29, 440(r1), 0, 0 /* qr0 */
/* 806DB78C  39 61 01 B0 */	addi r11, r1, 0x1b0
/* 806DB790  4B C8 6A 19 */	bl _savegpr_16
/* 806DB794  7C 7C 1B 78 */	mr r28, r3
/* 806DB798  3C 80 80 6E */	lis r4, lit_3763@ha /* 0x806DEE38@ha */
/* 806DB79C  3B 44 EE 38 */	addi r26, r4, lit_3763@l /* 0x806DEE38@l */
/* 806DB7A0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806DB7A4  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806DB7A8  83 3B 5D AC */	lwz r25, 0x5dac(r27)
/* 806DB7AC  80 1B 5F 18 */	lwz r0, 0x5f18(r27)
/* 806DB7B0  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 806DB7B4  41 82 00 30 */	beq lbl_806DB7E4
/* 806DB7B8  C0 3C 04 A8 */	lfs f1, 0x4a8(r28)
/* 806DB7BC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 806DB7C0  EC 21 00 28 */	fsubs f1, f1, f0
/* 806DB7C4  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 806DB7C8  C0 5C 04 B0 */	lfs f2, 0x4b0(r28)
/* 806DB7CC  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 806DB7D0  EC 42 00 28 */	fsubs f2, f2, f0
/* 806DB7D4  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 806DB7D8  4B B8 BE 9D */	bl cM_atan2s__Fff
/* 806DB7DC  B0 7C 06 68 */	sth r3, 0x668(r28)
/* 806DB7E0  48 00 00 10 */	b lbl_806DB7F0
lbl_806DB7E4:
/* 806DB7E4  7F 24 CB 78 */	mr r4, r25
/* 806DB7E8  4B 93 EF 29 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806DB7EC  B0 7C 06 6A */	sth r3, 0x66a(r28)
lbl_806DB7F0:
/* 806DB7F0  7F 83 E3 78 */	mr r3, r28
/* 806DB7F4  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 806DB7F8  4B 93 EF E9 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806DB7FC  D0 3C 06 6C */	stfs f1, 0x66c(r28)
/* 806DB800  3B 00 00 01 */	li r24, 1
/* 806DB804  3A E0 00 01 */	li r23, 1
/* 806DB808  3A C0 00 00 */	li r22, 0
/* 806DB80C  3A A0 00 01 */	li r21, 1
/* 806DB810  3A 80 00 00 */	li r20, 0
/* 806DB814  3B E0 00 01 */	li r31, 1
/* 806DB818  3A 20 00 01 */	li r17, 1
/* 806DB81C  3B C0 00 01 */	li r30, 1
/* 806DB820  3A 60 00 01 */	li r19, 1
/* 806DB824  3A 40 00 01 */	li r18, 1
/* 806DB828  3B A0 00 04 */	li r29, 4
/* 806DB82C  80 7C 05 5C */	lwz r3, 0x55c(r28)
/* 806DB830  38 00 FF E5 */	li r0, -27
/* 806DB834  7C 60 00 38 */	and r0, r3, r0
/* 806DB838  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 806DB83C  A8 1C 06 56 */	lha r0, 0x656(r28)
/* 806DB840  28 00 00 0B */	cmplwi r0, 0xb
/* 806DB844  41 81 01 60 */	bgt lbl_806DB9A4
/* 806DB848  3C 60 80 6E */	lis r3, lit_5446@ha /* 0x806DF104@ha */
/* 806DB84C  38 63 F1 04 */	addi r3, r3, lit_5446@l /* 0x806DF104@l */
/* 806DB850  54 00 10 3A */	slwi r0, r0, 2
/* 806DB854  7C 03 00 2E */	lwzx r0, r3, r0
/* 806DB858  7C 09 03 A6 */	mtctr r0
/* 806DB85C  4E 80 04 20 */	bctr 
lbl_806DB860:
/* 806DB860  7F 83 E3 78 */	mr r3, r28
/* 806DB864  4B FF FC A9 */	bl s_set__FP11e_gob_class
/* 806DB868  3A A0 00 00 */	li r21, 0
/* 806DB86C  3A E0 00 00 */	li r23, 0
/* 806DB870  3A 40 00 00 */	li r18, 0
/* 806DB874  48 00 01 30 */	b lbl_806DB9A4
lbl_806DB878:
/* 806DB878  7F 83 E3 78 */	mr r3, r28
/* 806DB87C  4B FF F7 BD */	bl start__FP11e_gob_class
/* 806DB880  3A A0 00 00 */	li r21, 0
/* 806DB884  3A 60 00 00 */	li r19, 0
/* 806DB888  3A 40 00 00 */	li r18, 0
/* 806DB88C  48 00 01 18 */	b lbl_806DB9A4
lbl_806DB890:
/* 806DB890  7F 83 E3 78 */	mr r3, r28
/* 806DB894  4B FF CF D9 */	bl fight__FP11e_gob_class
/* 806DB898  38 00 00 01 */	li r0, 1
/* 806DB89C  98 1C 06 AC */	stb r0, 0x6ac(r28)
/* 806DB8A0  3A 80 00 01 */	li r20, 1
/* 806DB8A4  48 00 01 00 */	b lbl_806DB9A4
lbl_806DB8A8:
/* 806DB8A8  7F 83 E3 78 */	mr r3, r28
/* 806DB8AC  4B FF D5 01 */	bl attack__FP11e_gob_class
/* 806DB8B0  7C 71 1B 78 */	mr r17, r3
/* 806DB8B4  38 00 00 01 */	li r0, 1
/* 806DB8B8  98 1C 06 AC */	stb r0, 0x6ac(r28)
/* 806DB8BC  48 00 00 E8 */	b lbl_806DB9A4
lbl_806DB8C0:
/* 806DB8C0  7F 83 E3 78 */	mr r3, r28
/* 806DB8C4  4B FF DB 09 */	bl defence__FP11e_gob_class
/* 806DB8C8  38 00 00 01 */	li r0, 1
/* 806DB8CC  98 1C 06 AC */	stb r0, 0x6ac(r28)
/* 806DB8D0  3A 80 00 01 */	li r20, 1
/* 806DB8D4  48 00 00 D0 */	b lbl_806DB9A4
lbl_806DB8D8:
/* 806DB8D8  7F 83 E3 78 */	mr r3, r28
/* 806DB8DC  4B FF DC 39 */	bl ball__FP11e_gob_class
/* 806DB8E0  7C 7F 1B 78 */	mr r31, r3
/* 806DB8E4  3A C0 00 01 */	li r22, 1
/* 806DB8E8  3B A0 00 01 */	li r29, 1
/* 806DB8EC  48 00 00 B8 */	b lbl_806DB9A4
lbl_806DB8F0:
/* 806DB8F0  7F 83 E3 78 */	mr r3, r28
/* 806DB8F4  4B FF E3 8D */	bl s_damage__FP11e_gob_class
/* 806DB8F8  48 00 00 AC */	b lbl_806DB9A4
lbl_806DB8FC:
/* 806DB8FC  7F 83 E3 78 */	mr r3, r28
/* 806DB900  4B FF E4 45 */	bl damage__FP11e_gob_class
/* 806DB904  48 00 00 A0 */	b lbl_806DB9A4
lbl_806DB908:
/* 806DB908  7F 83 E3 78 */	mr r3, r28
/* 806DB90C  4B FF E4 D5 */	bl glab__FP11e_gob_class
/* 806DB910  3B 00 00 00 */	li r24, 0
/* 806DB914  54 60 07 FE */	clrlwi r0, r3, 0x1f
/* 806DB918  7C 1F 03 78 */	mr r31, r0
/* 806DB91C  54 60 07 BC */	rlwinm r0, r3, 0, 0x1e, 0x1e
/* 806DB920  7C 17 03 78 */	mr r23, r0
/* 806DB924  3A C0 00 01 */	li r22, 1
/* 806DB928  3A 60 00 00 */	li r19, 0
/* 806DB92C  A8 1C 06 58 */	lha r0, 0x658(r28)
/* 806DB930  2C 00 00 05 */	cmpwi r0, 5
/* 806DB934  41 80 00 70 */	blt lbl_806DB9A4
/* 806DB938  3B C0 00 00 */	li r30, 0
/* 806DB93C  48 00 00 68 */	b lbl_806DB9A4
lbl_806DB940:
/* 806DB940  7F 83 E3 78 */	mr r3, r28
/* 806DB944  4B FF F2 29 */	bl jump__FP11e_gob_class
/* 806DB948  3A A0 00 00 */	li r21, 0
/* 806DB94C  3B 00 00 00 */	li r24, 0
/* 806DB950  3A 80 00 00 */	li r20, 0
/* 806DB954  3B E0 00 00 */	li r31, 0
/* 806DB958  3A E0 00 00 */	li r23, 0
/* 806DB95C  3B C0 00 00 */	li r30, 0
/* 806DB960  3A 60 00 00 */	li r19, 0
/* 806DB964  48 00 00 40 */	b lbl_806DB9A4
lbl_806DB968:
/* 806DB968  7F 83 E3 78 */	mr r3, r28
/* 806DB96C  4B FF F9 99 */	bl end__FP11e_gob_class
/* 806DB970  3A A0 00 00 */	li r21, 0
/* 806DB974  3B C0 00 00 */	li r30, 0
/* 806DB978  3A 60 00 00 */	li r19, 0
/* 806DB97C  48 00 00 28 */	b lbl_806DB9A4
lbl_806DB980:
/* 806DB980  3B C0 00 00 */	li r30, 0
/* 806DB984  3A 60 00 00 */	li r19, 0
/* 806DB988  80 1C 0B D8 */	lwz r0, 0xbd8(r28)
/* 806DB98C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806DB990  90 1C 0B D8 */	stw r0, 0xbd8(r28)
/* 806DB994  38 00 00 01 */	li r0, 1
/* 806DB998  98 1C 06 AC */	stb r0, 0x6ac(r28)
/* 806DB99C  7F 83 E3 78 */	mr r3, r28
/* 806DB9A0  4B FF FB A9 */	bl message__FP11e_gob_class
lbl_806DB9A4:
/* 806DB9A4  56 40 06 3F */	clrlwi. r0, r18, 0x18
/* 806DB9A8  41 82 00 28 */	beq lbl_806DB9D0
/* 806DB9AC  C0 39 04 D4 */	lfs f1, 0x4d4(r25)
/* 806DB9B0  C0 1A 00 70 */	lfs f0, 0x70(r26)
/* 806DB9B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806DB9B8  40 80 00 18 */	bge lbl_806DB9D0
/* 806DB9BC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806DB9C0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806DB9C4  80 63 00 00 */	lwz r3, 0(r3)
/* 806DB9C8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806DB9CC  4B BD 3E B9 */	bl subBgmStop__8Z2SeqMgrFv
lbl_806DB9D0:
/* 806DB9D0  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 806DB9D4  41 82 00 14 */	beq lbl_806DB9E8
/* 806DB9D8  80 1C 0B EC */	lwz r0, 0xbec(r28)
/* 806DB9DC  60 00 00 01 */	ori r0, r0, 1
/* 806DB9E0  90 1C 0B EC */	stw r0, 0xbec(r28)
/* 806DB9E4  48 00 00 10 */	b lbl_806DB9F4
lbl_806DB9E8:
/* 806DB9E8  80 1C 0B EC */	lwz r0, 0xbec(r28)
/* 806DB9EC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806DB9F0  90 1C 0B EC */	stw r0, 0xbec(r28)
lbl_806DB9F4:
/* 806DB9F4  56 A0 06 3F */	clrlwi. r0, r21, 0x18
/* 806DB9F8  41 82 00 14 */	beq lbl_806DBA0C
/* 806DB9FC  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 806DBA00  60 00 00 04 */	ori r0, r0, 4
/* 806DBA04  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 806DBA08  48 00 00 1C */	b lbl_806DBA24
lbl_806DBA0C:
/* 806DBA0C  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 806DBA10  54 00 00 3E */	slwi r0, r0, 0
/* 806DBA14  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 806DBA18  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 806DBA1C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 806DBA20  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_806DBA24:
/* 806DBA24  56 80 06 3F */	clrlwi. r0, r20, 0x18
/* 806DBA28  41 82 00 6C */	beq lbl_806DBA94
/* 806DBA2C  C0 3C 06 6C */	lfs f1, 0x66c(r28)
/* 806DBA30  C0 1A 00 54 */	lfs f0, 0x54(r26)
/* 806DBA34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806DBA38  40 80 00 5C */	bge lbl_806DBA94
/* 806DBA3C  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 806DBA40  88 03 05 68 */	lbz r0, 0x568(r3)
/* 806DBA44  28 00 00 29 */	cmplwi r0, 0x29
/* 806DBA48  41 82 00 4C */	beq lbl_806DBA94
/* 806DBA4C  80 03 05 70 */	lwz r0, 0x570(r3)
/* 806DBA50  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 806DBA54  41 82 00 40 */	beq lbl_806DBA94
/* 806DBA58  88 1C 06 AA */	lbz r0, 0x6aa(r28)
/* 806DBA5C  7C 00 07 75 */	extsb. r0, r0
/* 806DBA60  40 82 00 34 */	bne lbl_806DBA94
/* 806DBA64  38 00 00 04 */	li r0, 4
/* 806DBA68  B0 1C 06 56 */	sth r0, 0x656(r28)
/* 806DBA6C  38 00 00 00 */	li r0, 0
/* 806DBA70  B0 1C 06 58 */	sth r0, 0x658(r28)
/* 806DBA74  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 806DBA78  88 63 05 68 */	lbz r3, 0x568(r3)
/* 806DBA7C  4B 9A B9 35 */	bl pl_cut_LRC__Fi
/* 806DBA80  98 7C 0D 21 */	stb r3, 0xd21(r28)
/* 806DBA84  38 00 00 01 */	li r0, 1
/* 806DBA88  98 1C 0D 20 */	stb r0, 0xd20(r28)
/* 806DBA8C  38 00 00 14 */	li r0, 0x14
/* 806DBA90  98 1C 06 AA */	stb r0, 0x6aa(r28)
lbl_806DBA94:
/* 806DBA94  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 806DBA98  41 82 00 14 */	beq lbl_806DBAAC
/* 806DBA9C  80 1C 0B EC */	lwz r0, 0xbec(r28)
/* 806DBAA0  60 00 00 01 */	ori r0, r0, 1
/* 806DBAA4  90 1C 0B EC */	stw r0, 0xbec(r28)
/* 806DBAA8  48 00 00 10 */	b lbl_806DBAB8
lbl_806DBAAC:
/* 806DBAAC  80 1C 0B EC */	lwz r0, 0xbec(r28)
/* 806DBAB0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806DBAB4  90 1C 0B EC */	stw r0, 0xbec(r28)
lbl_806DBAB8:
/* 806DBAB8  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 806DBABC  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 806DBAC0  38 A0 00 02 */	li r5, 2
/* 806DBAC4  38 C0 10 00 */	li r6, 0x1000
/* 806DBAC8  4B B9 4B 41 */	bl cLib_addCalcAngleS2__FPssss
/* 806DBACC  38 7C 04 E8 */	addi r3, r28, 0x4e8
/* 806DBAD0  A8 9C 04 E0 */	lha r4, 0x4e0(r28)
/* 806DBAD4  38 A0 00 02 */	li r5, 2
/* 806DBAD8  38 C0 01 00 */	li r6, 0x100
/* 806DBADC  4B B9 4B 2D */	bl cLib_addCalcAngleS2__FPssss
/* 806DBAE0  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 806DBAE4  41 82 01 1C */	beq lbl_806DBC00
/* 806DBAE8  A8 1C 06 7C */	lha r0, 0x67c(r28)
/* 806DBAEC  2C 00 00 00 */	cmpwi r0, 0
/* 806DBAF0  41 82 00 28 */	beq lbl_806DBB18
/* 806DBAF4  C0 1A 00 18 */	lfs f0, 0x18(r26)
/* 806DBAF8  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 806DBAFC  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 806DBB00  C0 3A 00 58 */	lfs f1, 0x58(r26)
/* 806DBB04  EC 00 08 2A */	fadds f0, f0, f1
/* 806DBB08  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 806DBB0C  C0 1C 04 C0 */	lfs f0, 0x4c0(r28)
/* 806DBB10  EC 00 08 2A */	fadds f0, f0, f1
/* 806DBB14  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
lbl_806DBB18:
/* 806DBB18  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806DBB1C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806DBB20  80 63 00 00 */	lwz r3, 0(r3)
/* 806DBB24  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 806DBB28  4B 93 08 B5 */	bl mDoMtx_YrotS__FPA4_fs
/* 806DBB2C  C0 1A 00 18 */	lfs f0, 0x18(r26)
/* 806DBB30  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 806DBB34  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806DBB38  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 806DBB3C  3C 60 80 6E */	lis r3, l_HIO@ha /* 0x806DF2D4@ha */
/* 806DBB40  38 63 F2 D4 */	addi r3, r3, l_HIO@l /* 0x806DF2D4@l */
/* 806DBB44  C0 03 00 08 */	lfs f0, 8(r3)
/* 806DBB48  EC 01 00 32 */	fmuls f0, f1, f0
/* 806DBB4C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806DBB50  38 61 00 48 */	addi r3, r1, 0x48
/* 806DBB54  38 81 00 3C */	addi r4, r1, 0x3c
/* 806DBB58  4B B9 53 95 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806DBB5C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 806DBB60  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 806DBB64  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 806DBB68  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 806DBB6C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 806DBB70  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 806DBB74  7C 65 1B 78 */	mr r5, r3
/* 806DBB78  4B C6 B5 19 */	bl PSVECAdd
/* 806DBB7C  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 806DBB80  C0 1C 05 30 */	lfs f0, 0x530(r28)
/* 806DBB84  EC 01 00 2A */	fadds f0, f1, f0
/* 806DBB88  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 806DBB8C  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 806DBB90  C0 1C 06 88 */	lfs f0, 0x688(r28)
/* 806DBB94  EC 01 00 28 */	fsubs f0, f1, f0
/* 806DBB98  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 806DBB9C  C0 3C 04 C0 */	lfs f1, 0x4c0(r28)
/* 806DBBA0  C0 1C 06 88 */	lfs f0, 0x688(r28)
/* 806DBBA4  EC 01 00 28 */	fsubs f0, f1, f0
/* 806DBBA8  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
/* 806DBBAC  38 7C 07 3C */	addi r3, r28, 0x73c
/* 806DBBB0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806DBBB4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806DBBB8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806DBBBC  4B 99 AE F1 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 806DBBC0  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 806DBBC4  C0 1C 06 88 */	lfs f0, 0x688(r28)
/* 806DBBC8  EC 01 00 2A */	fadds f0, f1, f0
/* 806DBBCC  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 806DBBD0  C0 3C 04 C0 */	lfs f1, 0x4c0(r28)
/* 806DBBD4  C0 1C 06 88 */	lfs f0, 0x688(r28)
/* 806DBBD8  EC 01 00 2A */	fadds f0, f1, f0
/* 806DBBDC  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
/* 806DBBE0  A8 1C 06 7C */	lha r0, 0x67c(r28)
/* 806DBBE4  2C 00 00 00 */	cmpwi r0, 0
/* 806DBBE8  40 82 00 18 */	bne lbl_806DBC00
/* 806DBBEC  80 1C 07 68 */	lwz r0, 0x768(r28)
/* 806DBBF0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806DBBF4  41 82 00 0C */	beq lbl_806DBC00
/* 806DBBF8  C0 1A 00 D4 */	lfs f0, 0xd4(r26)
/* 806DBBFC  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
lbl_806DBC00:
/* 806DBC00  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 806DBC04  41 82 01 8C */	beq lbl_806DBD90
/* 806DBC08  38 61 00 18 */	addi r3, r1, 0x18
/* 806DBC0C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 806DBC10  38 BC 04 A8 */	addi r5, r28, 0x4a8
/* 806DBC14  4B B8 AF 21 */	bl __mi__4cXyzCFRC3Vec
/* 806DBC18  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806DBC1C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 806DBC20  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806DBC24  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806DBC28  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 806DBC2C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806DBC30  C0 1A 00 18 */	lfs f0, 0x18(r26)
/* 806DBC34  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806DBC38  38 61 00 48 */	addi r3, r1, 0x48
/* 806DBC3C  4B C6 B4 FD */	bl PSVECSquareMag
/* 806DBC40  C0 1A 00 18 */	lfs f0, 0x18(r26)
/* 806DBC44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806DBC48  40 81 00 58 */	ble lbl_806DBCA0
/* 806DBC4C  FC 00 08 34 */	frsqrte f0, f1
/* 806DBC50  C8 9A 00 98 */	lfd f4, 0x98(r26)
/* 806DBC54  FC 44 00 32 */	fmul f2, f4, f0
/* 806DBC58  C8 7A 00 A0 */	lfd f3, 0xa0(r26)
/* 806DBC5C  FC 00 00 32 */	fmul f0, f0, f0
/* 806DBC60  FC 01 00 32 */	fmul f0, f1, f0
/* 806DBC64  FC 03 00 28 */	fsub f0, f3, f0
/* 806DBC68  FC 02 00 32 */	fmul f0, f2, f0
/* 806DBC6C  FC 44 00 32 */	fmul f2, f4, f0
/* 806DBC70  FC 00 00 32 */	fmul f0, f0, f0
/* 806DBC74  FC 01 00 32 */	fmul f0, f1, f0
/* 806DBC78  FC 03 00 28 */	fsub f0, f3, f0
/* 806DBC7C  FC 02 00 32 */	fmul f0, f2, f0
/* 806DBC80  FC 44 00 32 */	fmul f2, f4, f0
/* 806DBC84  FC 00 00 32 */	fmul f0, f0, f0
/* 806DBC88  FC 01 00 32 */	fmul f0, f1, f0
/* 806DBC8C  FC 03 00 28 */	fsub f0, f3, f0
/* 806DBC90  FC 02 00 32 */	fmul f0, f2, f0
/* 806DBC94  FC 21 00 32 */	fmul f1, f1, f0
/* 806DBC98  FC 20 08 18 */	frsp f1, f1
/* 806DBC9C  48 00 00 88 */	b lbl_806DBD24
lbl_806DBCA0:
/* 806DBCA0  C8 1A 00 A8 */	lfd f0, 0xa8(r26)
/* 806DBCA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806DBCA8  40 80 00 10 */	bge lbl_806DBCB8
/* 806DBCAC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806DBCB0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806DBCB4  48 00 00 70 */	b lbl_806DBD24
lbl_806DBCB8:
/* 806DBCB8  D0 21 00 08 */	stfs f1, 8(r1)
/* 806DBCBC  80 81 00 08 */	lwz r4, 8(r1)
/* 806DBCC0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806DBCC4  3C 00 7F 80 */	lis r0, 0x7f80
/* 806DBCC8  7C 03 00 00 */	cmpw r3, r0
/* 806DBCCC  41 82 00 14 */	beq lbl_806DBCE0
/* 806DBCD0  40 80 00 40 */	bge lbl_806DBD10
/* 806DBCD4  2C 03 00 00 */	cmpwi r3, 0
/* 806DBCD8  41 82 00 20 */	beq lbl_806DBCF8
/* 806DBCDC  48 00 00 34 */	b lbl_806DBD10
lbl_806DBCE0:
/* 806DBCE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806DBCE4  41 82 00 0C */	beq lbl_806DBCF0
/* 806DBCE8  38 00 00 01 */	li r0, 1
/* 806DBCEC  48 00 00 28 */	b lbl_806DBD14
lbl_806DBCF0:
/* 806DBCF0  38 00 00 02 */	li r0, 2
/* 806DBCF4  48 00 00 20 */	b lbl_806DBD14
lbl_806DBCF8:
/* 806DBCF8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806DBCFC  41 82 00 0C */	beq lbl_806DBD08
/* 806DBD00  38 00 00 05 */	li r0, 5
/* 806DBD04  48 00 00 10 */	b lbl_806DBD14
lbl_806DBD08:
/* 806DBD08  38 00 00 03 */	li r0, 3
/* 806DBD0C  48 00 00 08 */	b lbl_806DBD14
lbl_806DBD10:
/* 806DBD10  38 00 00 04 */	li r0, 4
lbl_806DBD14:
/* 806DBD14  2C 00 00 01 */	cmpwi r0, 1
/* 806DBD18  40 82 00 0C */	bne lbl_806DBD24
/* 806DBD1C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806DBD20  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806DBD24:
/* 806DBD24  C0 1A 00 D8 */	lfs f0, 0xd8(r26)
/* 806DBD28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806DBD2C  40 81 00 64 */	ble lbl_806DBD90
/* 806DBD30  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 806DBD34  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 806DBD38  4B B8 B9 3D */	bl cM_atan2s__Fff
/* 806DBD3C  7C 64 1B 78 */	mr r4, r3
/* 806DBD40  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806DBD44  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806DBD48  80 63 00 00 */	lwz r3, 0(r3)
/* 806DBD4C  4B 93 06 91 */	bl mDoMtx_YrotS__FPA4_fs
/* 806DBD50  C0 1A 00 18 */	lfs f0, 0x18(r26)
/* 806DBD54  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 806DBD58  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806DBD5C  C0 1A 00 D8 */	lfs f0, 0xd8(r26)
/* 806DBD60  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806DBD64  38 61 00 48 */	addi r3, r1, 0x48
/* 806DBD68  38 81 00 3C */	addi r4, r1, 0x3c
/* 806DBD6C  4B B9 51 81 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806DBD70  C0 3C 04 A8 */	lfs f1, 0x4a8(r28)
/* 806DBD74  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 806DBD78  EC 01 00 2A */	fadds f0, f1, f0
/* 806DBD7C  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 806DBD80  C0 3C 04 B0 */	lfs f1, 0x4b0(r28)
/* 806DBD84  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 806DBD88  EC 01 00 2A */	fadds f0, f1, f0
/* 806DBD8C  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
lbl_806DBD90:
/* 806DBD90  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 806DBD94  41 82 00 44 */	beq lbl_806DBDD8
/* 806DBD98  38 7C 06 80 */	addi r3, r28, 0x680
/* 806DBD9C  C0 3A 00 DC */	lfs f1, 0xdc(r26)
/* 806DBDA0  C0 5A 00 1C */	lfs f2, 0x1c(r26)
/* 806DBDA4  C0 7A 00 E0 */	lfs f3, 0xe0(r26)
/* 806DBDA8  4B B9 3C 95 */	bl cLib_addCalc2__FPffff
/* 806DBDAC  38 7C 06 84 */	addi r3, r28, 0x684
/* 806DBDB0  C0 3A 00 10 */	lfs f1, 0x10(r26)
/* 806DBDB4  C0 5A 00 1C */	lfs f2, 0x1c(r26)
/* 806DBDB8  C0 7A 00 48 */	lfs f3, 0x48(r26)
/* 806DBDBC  4B B9 3C 81 */	bl cLib_addCalc2__FPffff
/* 806DBDC0  38 7C 06 88 */	addi r3, r28, 0x688
/* 806DBDC4  C0 3A 00 8C */	lfs f1, 0x8c(r26)
/* 806DBDC8  C0 5A 00 1C */	lfs f2, 0x1c(r26)
/* 806DBDCC  FC 60 10 90 */	fmr f3, f2
/* 806DBDD0  4B B9 3C 6D */	bl cLib_addCalc2__FPffff
/* 806DBDD4  48 00 00 34 */	b lbl_806DBE08
lbl_806DBDD8:
/* 806DBDD8  38 7C 06 80 */	addi r3, r28, 0x680
/* 806DBDDC  C0 3A 00 1C */	lfs f1, 0x1c(r26)
/* 806DBDE0  C0 5A 00 E0 */	lfs f2, 0xe0(r26)
/* 806DBDE4  4B B9 3C 9D */	bl cLib_addCalc0__FPfff
/* 806DBDE8  38 7C 06 84 */	addi r3, r28, 0x684
/* 806DBDEC  C0 3A 00 1C */	lfs f1, 0x1c(r26)
/* 806DBDF0  C0 5A 00 48 */	lfs f2, 0x48(r26)
/* 806DBDF4  4B B9 3C 8D */	bl cLib_addCalc0__FPfff
/* 806DBDF8  38 7C 06 88 */	addi r3, r28, 0x688
/* 806DBDFC  C0 3A 00 1C */	lfs f1, 0x1c(r26)
/* 806DBE00  FC 40 08 90 */	fmr f2, f1
/* 806DBE04  4B B9 3C 7D */	bl cLib_addCalc0__FPfff
lbl_806DBE08:
/* 806DBE08  88 7C 06 D9 */	lbz r3, 0x6d9(r28)
/* 806DBE0C  7C 60 07 75 */	extsb. r0, r3
/* 806DBE10  41 82 00 0C */	beq lbl_806DBE1C
/* 806DBE14  38 03 FF FF */	addi r0, r3, -1
/* 806DBE18  98 1C 06 D9 */	stb r0, 0x6d9(r28)
lbl_806DBE1C:
/* 806DBE1C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 806DBE20  41 82 00 74 */	beq lbl_806DBE94
/* 806DBE24  88 1C 06 D9 */	lbz r0, 0x6d9(r28)
/* 806DBE28  7C 00 07 75 */	extsb. r0, r0
/* 806DBE2C  40 82 00 68 */	bne lbl_806DBE94
/* 806DBE30  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 806DBE34  C0 5C 06 9C */	lfs f2, 0x69c(r28)
/* 806DBE38  EC 20 10 2A */	fadds f1, f0, f2
/* 806DBE3C  C0 1A 00 18 */	lfs f0, 0x18(r26)
/* 806DBE40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806DBE44  40 80 00 50 */	bge lbl_806DBE94
/* 806DBE48  FC 00 10 50 */	fneg f0, f2
/* 806DBE4C  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 806DBE50  38 00 00 0A */	li r0, 0xa
/* 806DBE54  98 1C 06 D9 */	stb r0, 0x6d9(r28)
/* 806DBE58  38 00 00 09 */	li r0, 9
/* 806DBE5C  B0 1C 06 56 */	sth r0, 0x656(r28)
/* 806DBE60  38 00 00 00 */	li r0, 0
/* 806DBE64  B0 1C 06 58 */	sth r0, 0x658(r28)
/* 806DBE68  B0 1C 06 D6 */	sth r0, 0x6d6(r28)
/* 806DBE6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806DBE70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806DBE74  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 806DBE78  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 806DBE7C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 806DBE80  A0 84 05 3E */	lhz r4, 0x53e(r4)
/* 806DBE84  4B 95 8B 09 */	bl onEventBit__11dSv_event_cFUs
/* 806DBE88  88 7C 06 D8 */	lbz r3, 0x6d8(r28)
/* 806DBE8C  38 03 00 01 */	addi r0, r3, 1
/* 806DBE90  98 1C 06 D8 */	stb r0, 0x6d8(r28)
lbl_806DBE94:
/* 806DBE94  3A 01 00 FC */	addi r16, r1, 0xfc
/* 806DBE98  7E 03 83 78 */	mr r3, r16
/* 806DBE9C  4B 99 B6 E1 */	bl __ct__11dBgS_GndChkFv
/* 806DBEA0  3C 60 80 6E */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x806DF240@ha */
/* 806DBEA4  38 63 F2 40 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x806DF240@l */
/* 806DBEA8  90 61 01 0C */	stw r3, 0x10c(r1)
/* 806DBEAC  3A 43 00 0C */	addi r18, r3, 0xc
/* 806DBEB0  92 41 01 1C */	stw r18, 0x11c(r1)
/* 806DBEB4  3A 63 00 18 */	addi r19, r3, 0x18
/* 806DBEB8  92 61 01 38 */	stw r19, 0x138(r1)
/* 806DBEBC  3A 83 00 24 */	addi r20, r3, 0x24
/* 806DBEC0  92 81 01 48 */	stw r20, 0x148(r1)
/* 806DBEC4  38 70 00 3C */	addi r3, r16, 0x3c
/* 806DBEC8  4B 99 CF A1 */	bl SetObj__16dBgS_PolyPassChkFv
/* 806DBECC  38 61 00 A8 */	addi r3, r1, 0xa8
/* 806DBED0  4B 99 B8 E1 */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 806DBED4  38 00 00 00 */	li r0, 0
/* 806DBED8  98 1C 06 AB */	stb r0, 0x6ab(r28)
/* 806DBEDC  C3 BA 00 1C */	lfs f29, 0x1c(r26)
/* 806DBEE0  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 806DBEE4  C0 1A 00 24 */	lfs f0, 0x24(r26)
/* 806DBEE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806DBEEC  4C 41 13 82 */	cror 2, 1, 2
/* 806DBEF0  40 82 00 08 */	bne lbl_806DBEF8
/* 806DBEF4  C3 BA 00 58 */	lfs f29, 0x58(r26)
lbl_806DBEF8:
/* 806DBEF8  3A A0 00 00 */	li r21, 0
/* 806DBEFC  3A C0 00 00 */	li r22, 0
/* 806DBF00  C0 1A 00 6C */	lfs f0, 0x6c(r26)
/* 806DBF04  EF C0 07 72 */	fmuls f30, f0, f29
/* 806DBF08  3C 60 80 6E */	lis r3, l_HIO@ha /* 0x806DF2D4@ha */
/* 806DBF0C  3B C3 F2 D4 */	addi r30, r3, l_HIO@l /* 0x806DF2D4@l */
/* 806DBF10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806DBF14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806DBF18  3A 03 0F 38 */	addi r16, r3, 0xf38
/* 806DBF1C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806DBF20  3B 63 07 68 */	addi r27, r3, calc_mtx@l /* 0x80450768@l */
/* 806DBF24  3C 60 80 6E */	lis r3, bg_x@ha /* 0x806DF0E4@ha */
/* 806DBF28  3B 03 F0 E4 */	addi r24, r3, bg_x@l /* 0x806DF0E4@l */
/* 806DBF2C  3C 60 80 6E */	lis r3, bg_z@ha /* 0x806DF0F4@ha */
/* 806DBF30  3A E3 F0 F4 */	addi r23, r3, bg_z@l /* 0x806DF0F4@l */
/* 806DBF34  48 00 00 B0 */	b lbl_806DBFE4
lbl_806DBF38:
/* 806DBF38  80 7B 00 00 */	lwz r3, 0(r27)
/* 806DBF3C  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 806DBF40  4B 93 04 9D */	bl mDoMtx_YrotS__FPA4_fs
/* 806DBF44  7C 18 B4 2E */	lfsx f0, r24, r22
/* 806DBF48  EC 1D 00 32 */	fmuls f0, f29, f0
/* 806DBF4C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 806DBF50  D3 C1 00 4C */	stfs f30, 0x4c(r1)
/* 806DBF54  7C 17 B4 2E */	lfsx f0, r23, r22
/* 806DBF58  EC 1D 00 32 */	fmuls f0, f29, f0
/* 806DBF5C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806DBF60  C0 3E 00 08 */	lfs f1, 8(r30)
/* 806DBF64  FC 40 08 90 */	fmr f2, f1
/* 806DBF68  FC 60 08 90 */	fmr f3, f1
/* 806DBF6C  38 60 00 01 */	li r3, 1
/* 806DBF70  4B B9 4F 35 */	bl MtxScale__FfffUc
/* 806DBF74  38 61 00 48 */	addi r3, r1, 0x48
/* 806DBF78  38 81 00 3C */	addi r4, r1, 0x3c
/* 806DBF7C  4B B9 4F 71 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806DBF80  38 61 00 3C */	addi r3, r1, 0x3c
/* 806DBF84  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 806DBF88  7C 65 1B 78 */	mr r5, r3
/* 806DBF8C  4B C6 B1 05 */	bl PSVECAdd
/* 806DBF90  38 61 00 FC */	addi r3, r1, 0xfc
/* 806DBF94  38 81 00 3C */	addi r4, r1, 0x3c
/* 806DBF98  4B B8 BD 91 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 806DBF9C  38 61 00 A8 */	addi r3, r1, 0xa8
/* 806DBFA0  38 81 00 3C */	addi r4, r1, 0x3c
/* 806DBFA4  4B B8 BD 85 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 806DBFA8  7E 03 83 78 */	mr r3, r16
/* 806DBFAC  38 81 00 A8 */	addi r4, r1, 0xa8
/* 806DBFB0  4B 99 84 F1 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 806DBFB4  FF E0 08 90 */	fmr f31, f1
/* 806DBFB8  7E 03 83 78 */	mr r3, r16
/* 806DBFBC  38 81 00 FC */	addi r4, r1, 0xfc
/* 806DBFC0  4B 99 84 E1 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 806DBFC4  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 806DBFC8  4C 41 13 82 */	cror 2, 1, 2
/* 806DBFCC  40 82 00 10 */	bne lbl_806DBFDC
/* 806DBFD0  38 00 00 01 */	li r0, 1
/* 806DBFD4  98 1C 06 AB */	stb r0, 0x6ab(r28)
/* 806DBFD8  48 00 00 14 */	b lbl_806DBFEC
lbl_806DBFDC:
/* 806DBFDC  3A B5 00 01 */	addi r21, r21, 1
/* 806DBFE0  3A D6 00 04 */	addi r22, r22, 4
lbl_806DBFE4:
/* 806DBFE4  7C 15 E8 00 */	cmpw r21, r29
/* 806DBFE8  41 80 FF 50 */	blt lbl_806DBF38
lbl_806DBFEC:
/* 806DBFEC  3A A0 00 00 */	li r21, 0
/* 806DBFF0  3A C0 00 00 */	li r22, 0
/* 806DBFF4  88 1C 06 AC */	lbz r0, 0x6ac(r28)
/* 806DBFF8  7C 00 07 75 */	extsb. r0, r0
/* 806DBFFC  41 82 00 C4 */	beq lbl_806DC0C0
/* 806DC000  38 61 00 0C */	addi r3, r1, 0xc
/* 806DC004  38 99 05 38 */	addi r4, r25, 0x538
/* 806DC008  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 806DC00C  4B B8 AB 29 */	bl __mi__4cXyzCFRC3Vec
/* 806DC010  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 806DC014  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 806DC018  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 806DC01C  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 806DC020  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 806DC024  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 806DC028  C0 1A 00 E4 */	lfs f0, 0xe4(r26)
/* 806DC02C  EC 03 00 2A */	fadds f0, f3, f0
/* 806DC030  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806DC034  4B B8 B6 41 */	bl cM_atan2s__Fff
/* 806DC038  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 806DC03C  7C 00 18 50 */	subf r0, r0, r3
/* 806DC040  7C 00 00 D0 */	neg r0, r0
/* 806DC044  7C 15 07 34 */	extsh r21, r0
/* 806DC048  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 806DC04C  EC 20 00 32 */	fmuls f1, f0, f0
/* 806DC050  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 806DC054  EC 00 00 32 */	fmuls f0, f0, f0
/* 806DC058  EC 41 00 2A */	fadds f2, f1, f0
/* 806DC05C  C0 1A 00 18 */	lfs f0, 0x18(r26)
/* 806DC060  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806DC064  40 81 00 0C */	ble lbl_806DC070
/* 806DC068  FC 00 10 34 */	frsqrte f0, f2
/* 806DC06C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806DC070:
/* 806DC070  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 806DC074  4B B8 B6 01 */	bl cM_atan2s__Fff
/* 806DC078  A8 1C 04 E4 */	lha r0, 0x4e4(r28)
/* 806DC07C  7C 00 1A 14 */	add r0, r0, r3
/* 806DC080  7C 00 00 D0 */	neg r0, r0
/* 806DC084  7C 16 07 34 */	extsh r22, r0
/* 806DC088  2C 15 17 70 */	cmpwi r21, 0x1770
/* 806DC08C  40 81 00 0C */	ble lbl_806DC098
/* 806DC090  3A A0 17 70 */	li r21, 0x1770
/* 806DC094  48 00 00 10 */	b lbl_806DC0A4
lbl_806DC098:
/* 806DC098  2C 15 E8 90 */	cmpwi r21, -6000
/* 806DC09C  40 80 00 08 */	bge lbl_806DC0A4
/* 806DC0A0  3A A0 E8 90 */	li r21, -6000
lbl_806DC0A4:
/* 806DC0A4  2C 16 17 70 */	cmpwi r22, 0x1770
/* 806DC0A8  40 81 00 0C */	ble lbl_806DC0B4
/* 806DC0AC  3A C0 17 70 */	li r22, 0x1770
/* 806DC0B0  48 00 00 10 */	b lbl_806DC0C0
lbl_806DC0B4:
/* 806DC0B4  2C 16 E8 90 */	cmpwi r22, -6000
/* 806DC0B8  40 80 00 08 */	bge lbl_806DC0C0
/* 806DC0BC  3A C0 E8 90 */	li r22, -6000
lbl_806DC0C0:
/* 806DC0C0  38 7C 06 AE */	addi r3, r28, 0x6ae
/* 806DC0C4  7E A0 07 34 */	extsh r0, r21
/* 806DC0C8  7C 00 0E 70 */	srawi r0, r0, 1
/* 806DC0CC  7C 00 01 94 */	addze r0, r0
/* 806DC0D0  7C 04 07 34 */	extsh r4, r0
/* 806DC0D4  38 A0 00 02 */	li r5, 2
/* 806DC0D8  38 C0 08 00 */	li r6, 0x800
/* 806DC0DC  4B B9 45 2D */	bl cLib_addCalcAngleS2__FPssss
/* 806DC0E0  38 7C 06 B0 */	addi r3, r28, 0x6b0
/* 806DC0E4  7E C0 07 34 */	extsh r0, r22
/* 806DC0E8  7C 00 0E 70 */	srawi r0, r0, 1
/* 806DC0EC  7C 00 01 94 */	addze r0, r0
/* 806DC0F0  7C 04 07 34 */	extsh r4, r0
/* 806DC0F4  38 A0 00 02 */	li r5, 2
/* 806DC0F8  38 C0 08 00 */	li r6, 0x800
/* 806DC0FC  4B B9 45 0D */	bl cLib_addCalcAngleS2__FPssss
/* 806DC100  3A A0 00 00 */	li r21, 0
/* 806DC104  3A C0 00 00 */	li r22, 0
/* 806DC108  3A E0 00 00 */	li r23, 0
/* 806DC10C  3B 00 00 00 */	li r24, 0
/* 806DC110  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 806DC114  41 82 02 1C */	beq lbl_806DC330
/* 806DC118  80 1C 07 68 */	lwz r0, 0x768(r28)
/* 806DC11C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806DC120  41 82 02 10 */	beq lbl_806DC330
/* 806DC124  38 61 00 54 */	addi r3, r1, 0x54
/* 806DC128  4B 99 B4 55 */	bl __ct__11dBgS_GndChkFv
/* 806DC12C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 806DC130  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806DC134  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 806DC138  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 806DC13C  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 806DC140  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806DC144  C0 1A 00 10 */	lfs f0, 0x10(r26)
/* 806DC148  EC 01 00 2A */	fadds f0, f1, f0
/* 806DC14C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806DC150  38 61 00 54 */	addi r3, r1, 0x54
/* 806DC154  38 81 00 24 */	addi r4, r1, 0x24
/* 806DC158  4B B8 BB D1 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 806DC15C  7E 03 83 78 */	mr r3, r16
/* 806DC160  38 81 00 54 */	addi r4, r1, 0x54
/* 806DC164  4B 99 83 3D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 806DC168  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 806DC16C  C0 1A 00 E8 */	lfs f0, 0xe8(r26)
/* 806DC170  FC 40 08 18 */	frsp f2, f1
/* 806DC174  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 806DC178  41 82 01 04 */	beq lbl_806DC27C
/* 806DC17C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 806DC180  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806DC184  C0 3A 00 10 */	lfs f1, 0x10(r26)
/* 806DC188  EC 01 10 2A */	fadds f0, f1, f2
/* 806DC18C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806DC190  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 806DC194  EC 00 08 2A */	fadds f0, f0, f1
/* 806DC198  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806DC19C  38 61 00 54 */	addi r3, r1, 0x54
/* 806DC1A0  38 81 00 30 */	addi r4, r1, 0x30
/* 806DC1A4  4B B8 BB 69 */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 806DC1A8  7E 03 83 78 */	mr r3, r16
/* 806DC1AC  38 81 00 54 */	addi r4, r1, 0x54
/* 806DC1B0  4B 99 82 F1 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 806DC1B4  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 806DC1B8  C0 1A 00 E8 */	lfs f0, 0xe8(r26)
/* 806DC1BC  FC 20 08 18 */	frsp f1, f1
/* 806DC1C0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 806DC1C4  41 82 00 38 */	beq lbl_806DC1FC
/* 806DC1C8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 806DC1CC  EC 21 00 28 */	fsubs f1, f1, f0
/* 806DC1D0  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 806DC1D4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 806DC1D8  EC 42 00 28 */	fsubs f2, f2, f0
/* 806DC1DC  4B B8 B4 99 */	bl cM_atan2s__Fff
/* 806DC1E0  7C 03 00 D0 */	neg r0, r3
/* 806DC1E4  7C 15 07 34 */	extsh r21, r0
/* 806DC1E8  2C 15 20 00 */	cmpwi r21, 0x2000
/* 806DC1EC  41 81 00 0C */	bgt lbl_806DC1F8
/* 806DC1F0  2C 15 E0 00 */	cmpwi r21, -8192
/* 806DC1F4  40 80 00 08 */	bge lbl_806DC1FC
lbl_806DC1F8:
/* 806DC1F8  3A A0 00 00 */	li r21, 0
lbl_806DC1FC:
/* 806DC1FC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 806DC200  C0 3A 00 10 */	lfs f1, 0x10(r26)
/* 806DC204  EC 00 08 2A */	fadds f0, f0, f1
/* 806DC208  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806DC20C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 806DC210  EC 01 00 2A */	fadds f0, f1, f0
/* 806DC214  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806DC218  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 806DC21C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806DC220  38 61 00 54 */	addi r3, r1, 0x54
/* 806DC224  38 81 00 30 */	addi r4, r1, 0x30
/* 806DC228  4B B8 BA E5 */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 806DC22C  7E 03 83 78 */	mr r3, r16
/* 806DC230  38 81 00 54 */	addi r4, r1, 0x54
/* 806DC234  4B 99 82 6D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 806DC238  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 806DC23C  C0 1A 00 E8 */	lfs f0, 0xe8(r26)
/* 806DC240  FC 20 08 18 */	frsp f1, f1
/* 806DC244  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 806DC248  41 82 00 34 */	beq lbl_806DC27C
/* 806DC24C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 806DC250  EC 21 00 28 */	fsubs f1, f1, f0
/* 806DC254  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 806DC258  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 806DC25C  EC 42 00 28 */	fsubs f2, f2, f0
/* 806DC260  4B B8 B4 15 */	bl cM_atan2s__Fff
/* 806DC264  7C 76 07 34 */	extsh r22, r3
/* 806DC268  2C 16 20 00 */	cmpwi r22, 0x2000
/* 806DC26C  41 81 00 0C */	bgt lbl_806DC278
/* 806DC270  2C 16 E0 00 */	cmpwi r22, -8192
/* 806DC274  40 80 00 08 */	bge lbl_806DC27C
lbl_806DC278:
/* 806DC278  3A C0 00 00 */	li r22, 0
lbl_806DC27C:
/* 806DC27C  56 20 06 3F */	clrlwi. r0, r17, 0x18
/* 806DC280  41 82 00 A4 */	beq lbl_806DC324
/* 806DC284  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806DC288  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806DC28C  80 63 00 00 */	lwz r3, 0(r3)
/* 806DC290  A8 9C 06 A0 */	lha r4, 0x6a0(r28)
/* 806DC294  4B 93 00 B1 */	bl mDoMtx_XrotS__FPA4_fs
/* 806DC298  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806DC29C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806DC2A0  80 63 00 00 */	lwz r3, 0(r3)
/* 806DC2A4  A8 9C 06 A2 */	lha r4, 0x6a2(r28)
/* 806DC2A8  4B 93 02 25 */	bl mDoMtx_ZrotM__FPA4_fs
/* 806DC2AC  C0 3A 00 18 */	lfs f1, 0x18(r26)
/* 806DC2B0  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 806DC2B4  C0 1A 00 EC */	lfs f0, 0xec(r26)
/* 806DC2B8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806DC2BC  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 806DC2C0  38 61 00 48 */	addi r3, r1, 0x48
/* 806DC2C4  38 81 00 3C */	addi r4, r1, 0x3c
/* 806DC2C8  4B B9 4C 25 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806DC2CC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806DC2D0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806DC2D4  80 63 00 00 */	lwz r3, 0(r3)
/* 806DC2D8  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 806DC2DC  7C 00 00 D0 */	neg r0, r0
/* 806DC2E0  7C 04 07 34 */	extsh r4, r0
/* 806DC2E4  4B 93 00 F9 */	bl mDoMtx_YrotS__FPA4_fs
/* 806DC2E8  38 61 00 3C */	addi r3, r1, 0x3c
/* 806DC2EC  38 81 00 48 */	addi r4, r1, 0x48
/* 806DC2F0  4B B9 4B FD */	bl MtxPosition__FP4cXyzP4cXyz
/* 806DC2F4  C0 3A 00 F0 */	lfs f1, 0xf0(r26)
/* 806DC2F8  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 806DC2FC  EC 01 00 32 */	fmuls f0, f1, f0
/* 806DC300  FC 00 00 1E */	fctiwz f0, f0
/* 806DC304  D8 01 01 50 */	stfd f0, 0x150(r1)
/* 806DC308  83 01 01 54 */	lwz r24, 0x154(r1)
/* 806DC30C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 806DC310  FC 00 00 50 */	fneg f0, f0
/* 806DC314  EC 01 00 32 */	fmuls f0, f1, f0
/* 806DC318  FC 00 00 1E */	fctiwz f0, f0
/* 806DC31C  D8 01 01 58 */	stfd f0, 0x158(r1)
/* 806DC320  82 E1 01 5C */	lwz r23, 0x15c(r1)
lbl_806DC324:
/* 806DC324  38 61 00 54 */	addi r3, r1, 0x54
/* 806DC328  38 80 FF FF */	li r4, -1
/* 806DC32C  4B 99 B2 C5 */	bl __dt__11dBgS_GndChkFv
lbl_806DC330:
/* 806DC330  38 7C 06 A0 */	addi r3, r28, 0x6a0
/* 806DC334  7E A4 AB 78 */	mr r4, r21
/* 806DC338  38 A0 00 02 */	li r5, 2
/* 806DC33C  38 C0 01 00 */	li r6, 0x100
/* 806DC340  4B B9 42 C9 */	bl cLib_addCalcAngleS2__FPssss
/* 806DC344  38 7C 06 A2 */	addi r3, r28, 0x6a2
/* 806DC348  7E C4 B3 78 */	mr r4, r22
/* 806DC34C  38 A0 00 02 */	li r5, 2
/* 806DC350  38 C0 01 00 */	li r6, 0x100
/* 806DC354  4B B9 42 B5 */	bl cLib_addCalcAngleS2__FPssss
/* 806DC358  38 7C 06 A4 */	addi r3, r28, 0x6a4
/* 806DC35C  7E E4 BB 78 */	mr r4, r23
/* 806DC360  38 A0 00 04 */	li r5, 4
/* 806DC364  A8 DC 06 A8 */	lha r6, 0x6a8(r28)
/* 806DC368  4B B9 42 A1 */	bl cLib_addCalcAngleS2__FPssss
/* 806DC36C  38 7C 06 A6 */	addi r3, r28, 0x6a6
/* 806DC370  7F 04 C3 78 */	mr r4, r24
/* 806DC374  38 A0 00 04 */	li r5, 4
/* 806DC378  A8 DC 06 A8 */	lha r6, 0x6a8(r28)
/* 806DC37C  4B B9 42 8D */	bl cLib_addCalcAngleS2__FPssss
/* 806DC380  38 00 00 14 */	li r0, 0x14
/* 806DC384  B0 1C 06 A8 */	sth r0, 0x6a8(r28)
/* 806DC388  A8 7C 06 C4 */	lha r3, 0x6c4(r28)
/* 806DC38C  2C 03 00 00 */	cmpwi r3, 0
/* 806DC390  41 82 01 00 */	beq lbl_806DC490
/* 806DC394  38 03 FF FF */	addi r0, r3, -1
/* 806DC398  B0 1C 06 C4 */	sth r0, 0x6c4(r28)
/* 806DC39C  C0 5A 00 F4 */	lfs f2, 0xf4(r26)
/* 806DC3A0  A8 1C 06 C4 */	lha r0, 0x6c4(r28)
/* 806DC3A4  C8 3A 01 00 */	lfd f1, 0x100(r26)
/* 806DC3A8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806DC3AC  90 01 01 5C */	stw r0, 0x15c(r1)
/* 806DC3B0  3C 00 43 30 */	lis r0, 0x4330
/* 806DC3B4  90 01 01 58 */	stw r0, 0x158(r1)
/* 806DC3B8  C8 01 01 58 */	lfd f0, 0x158(r1)
/* 806DC3BC  EC 00 08 28 */	fsubs f0, f0, f1
/* 806DC3C0  EC 22 00 32 */	fmuls f1, f2, f0
/* 806DC3C4  C0 1A 00 F8 */	lfs f0, 0xf8(r26)
/* 806DC3C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806DC3CC  40 81 00 08 */	ble lbl_806DC3D4
/* 806DC3D0  FC 20 00 90 */	fmr f1, f0
lbl_806DC3D4:
/* 806DC3D4  C0 1A 00 FC */	lfs f0, 0xfc(r26)
/* 806DC3D8  EC 00 00 72 */	fmuls f0, f0, f1
/* 806DC3DC  FC 00 00 1E */	fctiwz f0, f0
/* 806DC3E0  D8 01 01 50 */	stfd f0, 0x150(r1)
/* 806DC3E4  80 01 01 54 */	lwz r0, 0x154(r1)
/* 806DC3E8  38 60 00 00 */	li r3, 0
/* 806DC3EC  38 80 00 00 */	li r4, 0
/* 806DC3F0  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 806DC3F4  38 E5 9A 20 */	addi r7, r5, sincosTable___5JMath@l /* 0x80439A20@l */
/* 806DC3F8  7C 00 07 34 */	extsh r0, r0
/* 806DC3FC  C8 3A 01 00 */	lfd f1, 0x100(r26)
/* 806DC400  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 806DC404  3C A0 43 30 */	lis r5, 0x4330
/* 806DC408  38 00 00 04 */	li r0, 4
/* 806DC40C  7C 09 03 A6 */	mtctr r0
lbl_806DC410:
/* 806DC410  A8 1C 06 C4 */	lha r0, 0x6c4(r28)
/* 806DC414  1C 00 3A 00 */	mulli r0, r0, 0x3a00
/* 806DC418  7C 00 22 14 */	add r0, r0, r4
/* 806DC41C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806DC420  7C 47 04 2E */	lfsx f2, r7, r0
/* 806DC424  90 C1 01 5C */	stw r6, 0x15c(r1)
/* 806DC428  90 A1 01 58 */	stw r5, 0x158(r1)
/* 806DC42C  C8 01 01 58 */	lfd f0, 0x158(r1)
/* 806DC430  EC 00 08 28 */	fsubs f0, f0, f1
/* 806DC434  EC 00 00 B2 */	fmuls f0, f0, f2
/* 806DC438  FC 00 00 1E */	fctiwz f0, f0
/* 806DC43C  D8 01 01 50 */	stfd f0, 0x150(r1)
/* 806DC440  80 01 01 54 */	lwz r0, 0x154(r1)
/* 806DC444  7D 1C 1A 14 */	add r8, r28, r3
/* 806DC448  B0 08 06 CE */	sth r0, 0x6ce(r8)
/* 806DC44C  A8 1C 06 C4 */	lha r0, 0x6c4(r28)
/* 806DC450  1C 00 32 00 */	mulli r0, r0, 0x3200
/* 806DC454  7C 00 22 14 */	add r0, r0, r4
/* 806DC458  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806DC45C  7C 47 04 2E */	lfsx f2, r7, r0
/* 806DC460  90 C1 01 64 */	stw r6, 0x164(r1)
/* 806DC464  90 A1 01 60 */	stw r5, 0x160(r1)
/* 806DC468  C8 01 01 60 */	lfd f0, 0x160(r1)
/* 806DC46C  EC 00 08 28 */	fsubs f0, f0, f1
/* 806DC470  EC 00 00 B2 */	fmuls f0, f0, f2
/* 806DC474  FC 00 00 1E */	fctiwz f0, f0
/* 806DC478  D8 01 01 68 */	stfd f0, 0x168(r1)
/* 806DC47C  80 01 01 6C */	lwz r0, 0x16c(r1)
/* 806DC480  B0 08 06 C6 */	sth r0, 0x6c6(r8)
/* 806DC484  38 63 00 02 */	addi r3, r3, 2
/* 806DC488  38 84 D8 F0 */	addi r4, r4, -10000
/* 806DC48C  42 00 FF 84 */	bdnz lbl_806DC410
lbl_806DC490:
/* 806DC490  38 61 00 A8 */	addi r3, r1, 0xa8
/* 806DC494  38 80 FF FF */	li r4, -1
/* 806DC498  4B 99 B3 B1 */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 806DC49C  3C 60 80 6E */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x806DF240@ha */
/* 806DC4A0  38 03 F2 40 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l /* 0x806DF240@l */
/* 806DC4A4  90 01 01 0C */	stw r0, 0x10c(r1)
/* 806DC4A8  92 41 01 1C */	stw r18, 0x11c(r1)
/* 806DC4AC  92 61 01 38 */	stw r19, 0x138(r1)
/* 806DC4B0  92 81 01 48 */	stw r20, 0x148(r1)
/* 806DC4B4  38 61 00 FC */	addi r3, r1, 0xfc
/* 806DC4B8  38 80 00 00 */	li r4, 0
/* 806DC4BC  4B 99 B1 35 */	bl __dt__11dBgS_GndChkFv
/* 806DC4C0  E3 E1 01 D8 */	psq_l f31, 472(r1), 0, 0 /* qr0 */
/* 806DC4C4  CB E1 01 D0 */	lfd f31, 0x1d0(r1)
/* 806DC4C8  E3 C1 01 C8 */	psq_l f30, 456(r1), 0, 0 /* qr0 */
/* 806DC4CC  CB C1 01 C0 */	lfd f30, 0x1c0(r1)
/* 806DC4D0  E3 A1 01 B8 */	psq_l f29, 440(r1), 0, 0 /* qr0 */
/* 806DC4D4  CB A1 01 B0 */	lfd f29, 0x1b0(r1)
/* 806DC4D8  39 61 01 B0 */	addi r11, r1, 0x1b0
/* 806DC4DC  4B C8 5D 19 */	bl _restgpr_16
/* 806DC4E0  80 01 01 E4 */	lwz r0, 0x1e4(r1)
/* 806DC4E4  7C 08 03 A6 */	mtlr r0
/* 806DC4E8  38 21 01 E0 */	addi r1, r1, 0x1e0
/* 806DC4EC  4E 80 00 20 */	blr 
