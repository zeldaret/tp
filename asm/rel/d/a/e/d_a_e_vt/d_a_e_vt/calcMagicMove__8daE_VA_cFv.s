lbl_807CB8CC:
/* 807CB8CC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 807CB8D0  7C 08 02 A6 */	mflr r0
/* 807CB8D4  90 01 00 64 */	stw r0, 0x64(r1)
/* 807CB8D8  39 61 00 60 */	addi r11, r1, 0x60
/* 807CB8DC  4B B9 68 D1 */	bl _savegpr_17
/* 807CB8E0  7C 7E 1B 78 */	mr r30, r3
/* 807CB8E4  3C 60 80 7D */	lis r3, lit_3907@ha /* 0x807CECA8@ha */
/* 807CB8E8  3B 03 EC A8 */	addi r24, r3, lit_3907@l /* 0x807CECA8@l */
/* 807CB8EC  3B E0 00 00 */	li r31, 0
/* 807CB8F0  3B A0 00 00 */	li r29, 0
/* 807CB8F4  3B 80 00 00 */	li r28, 0
/* 807CB8F8  3B 60 00 00 */	li r27, 0
/* 807CB8FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807CB900  3B 23 D4 70 */	addi r25, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807CB904  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807CB908  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807CB90C  3A FA 23 3C */	addi r23, r26, 0x233c
/* 807CB910  3A DA 0F 38 */	addi r22, r26, 0xf38
lbl_807CB914:
/* 807CB914  3A BF 12 28 */	addi r21, r31, 0x1228
/* 807CB918  7C 1E A8 AE */	lbzx r0, r30, r21
/* 807CB91C  2C 00 00 01 */	cmpwi r0, 1
/* 807CB920  41 82 00 38 */	beq lbl_807CB958
/* 807CB924  40 80 00 10 */	bge lbl_807CB934
/* 807CB928  2C 00 00 00 */	cmpwi r0, 0
/* 807CB92C  40 80 00 14 */	bge lbl_807CB940
/* 807CB930  48 00 02 A0 */	b lbl_807CBBD0
lbl_807CB934:
/* 807CB934  2C 00 00 03 */	cmpwi r0, 3
/* 807CB938  40 80 02 98 */	bge lbl_807CBBD0
/* 807CB93C  48 00 01 50 */	b lbl_807CBA8C
lbl_807CB940:
/* 807CB940  3C 7B 00 01 */	addis r3, r27, 1
/* 807CB944  38 63 0C D4 */	addi r3, r3, 0xcd4
/* 807CB948  7C 1E 18 2E */	lwzx r0, r30, r3
/* 807CB94C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807CB950  7C 1E 19 2E */	stwx r0, r30, r3
/* 807CB954  48 00 02 7C */	b lbl_807CBBD0
lbl_807CB958:
/* 807CB958  7E 5E DA 14 */	add r18, r30, r27
/* 807CB95C  3C 72 00 01 */	addis r3, r18, 1
/* 807CB960  80 03 0C D4 */	lwz r0, 0xcd4(r3)
/* 807CB964  60 00 00 01 */	ori r0, r0, 1
/* 807CB968  90 03 0C D4 */	stw r0, 0xcd4(r3)
/* 807CB96C  38 00 00 02 */	li r0, 2
/* 807CB970  7C 1E A9 AE */	stbx r0, r30, r21
/* 807CB974  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807CB978  38 63 00 24 */	addi r3, r3, 0x24
/* 807CB97C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807CB980  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807CB984  4B B7 AB 2D */	bl PSMTXCopy
/* 807CB988  C0 38 01 A8 */	lfs f1, 0x1a8(r24)
/* 807CB98C  C0 58 01 DC */	lfs f2, 0x1dc(r24)
/* 807CB990  C0 78 00 AC */	lfs f3, 0xac(r24)
/* 807CB994  4B 84 14 09 */	bl transM__14mDoMtx_stack_cFfff
/* 807CB998  C0 19 00 0C */	lfs f0, 0xc(r25)
/* 807CB99C  7E 7E E2 14 */	add r19, r30, r28
/* 807CB9A0  3A 93 11 E0 */	addi r20, r19, 0x11e0
/* 807CB9A4  D0 13 11 E0 */	stfs f0, 0x11e0(r19)
/* 807CB9A8  C0 19 00 1C */	lfs f0, 0x1c(r25)
/* 807CB9AC  D0 13 11 E4 */	stfs f0, 0x11e4(r19)
/* 807CB9B0  C0 19 00 2C */	lfs f0, 0x2c(r25)
/* 807CB9B4  D0 13 11 E8 */	stfs f0, 0x11e8(r19)
/* 807CB9B8  C0 13 11 E0 */	lfs f0, 0x11e0(r19)
/* 807CB9BC  D0 13 11 F8 */	stfs f0, 0x11f8(r19)
/* 807CB9C0  C0 13 11 E4 */	lfs f0, 0x11e4(r19)
/* 807CB9C4  D0 13 11 FC */	stfs f0, 0x11fc(r19)
/* 807CB9C8  C0 13 11 E8 */	lfs f0, 0x11e8(r19)
/* 807CB9CC  D0 13 12 00 */	stfs f0, 0x1200(r19)
/* 807CB9D0  38 7D 17 7C */	addi r3, r29, 0x177c
/* 807CB9D4  7C 1E 18 2E */	lwzx r0, r30, r3
/* 807CB9D8  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 807CB9DC  7C 1E 19 2E */	stwx r0, r30, r3
/* 807CB9E0  7C 1E 18 2E */	lwzx r0, r30, r3
/* 807CB9E4  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 807CB9E8  7C 1E 19 2E */	stwx r0, r30, r3
/* 807CB9EC  3C 72 00 01 */	addis r3, r18, 1
/* 807CB9F0  81 83 0D 10 */	lwz r12, 0xd10(r3)
/* 807CB9F4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 807CB9F8  7D 89 03 A6 */	mtctr r12
/* 807CB9FC  38 63 0C D4 */	addi r3, r3, 0xcd4
/* 807CBA00  4E 80 04 21 */	bctrl 
/* 807CBA04  80 7A 5D AC */	lwz r3, 0x5dac(r26)
/* 807CBA08  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 807CBA0C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807CBA10  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 807CBA14  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807CBA18  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 807CBA1C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807CBA20  7E 83 A3 78 */	mr r3, r20
/* 807CBA24  38 81 00 10 */	addi r4, r1, 0x10
/* 807CBA28  4B AA 51 DD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 807CBA2C  7C 71 1B 78 */	mr r17, r3
/* 807CBA30  7E 83 A3 78 */	mr r3, r20
/* 807CBA34  38 81 00 10 */	addi r4, r1, 0x10
/* 807CBA38  4B AA 52 3D */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 807CBA3C  C0 38 00 70 */	lfs f1, 0x70(r24)
/* 807CBA40  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 807CBA44  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 807CBA48  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 807CBA4C  7C 83 02 14 */	add r4, r3, r0
/* 807CBA50  C0 04 00 04 */	lfs f0, 4(r4)
/* 807CBA54  EC 01 00 32 */	fmuls f0, f1, f0
/* 807CBA58  FC 00 02 10 */	fabs f0, f0
/* 807CBA5C  FC 60 00 18 */	frsp f3, f0
/* 807CBA60  56 20 04 38 */	rlwinm r0, r17, 0, 0x10, 0x1c
/* 807CBA64  7C 63 02 14 */	add r3, r3, r0
/* 807CBA68  C0 03 00 04 */	lfs f0, 4(r3)
/* 807CBA6C  EC 43 00 32 */	fmuls f2, f3, f0
/* 807CBA70  C0 04 00 00 */	lfs f0, 0(r4)
/* 807CBA74  EC 21 00 32 */	fmuls f1, f1, f0
/* 807CBA78  C0 03 00 00 */	lfs f0, 0(r3)
/* 807CBA7C  EC 03 00 32 */	fmuls f0, f3, f0
/* 807CBA80  D0 13 12 10 */	stfs f0, 0x1210(r19)
/* 807CBA84  D0 33 12 14 */	stfs f1, 0x1214(r19)
/* 807CBA88  D0 53 12 18 */	stfs f2, 0x1218(r19)
lbl_807CBA8C:
/* 807CBA8C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070346@ha */
/* 807CBA90  38 03 03 46 */	addi r0, r3, 0x0346 /* 0x00070346@l */
/* 807CBA94  90 01 00 0C */	stw r0, 0xc(r1)
/* 807CBA98  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 807CBA9C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 807CBAA0  80 63 00 00 */	lwz r3, 0(r3)
/* 807CBAA4  38 81 00 0C */	addi r4, r1, 0xc
/* 807CBAA8  7E 9E E2 14 */	add r20, r30, r28
/* 807CBAAC  3A 54 11 E0 */	addi r18, r20, 0x11e0
/* 807CBAB0  7E 45 93 78 */	mr r5, r18
/* 807CBAB4  38 C0 00 00 */	li r6, 0
/* 807CBAB8  38 E0 00 00 */	li r7, 0
/* 807CBABC  C0 38 00 08 */	lfs f1, 8(r24)
/* 807CBAC0  FC 40 08 90 */	fmr f2, f1
/* 807CBAC4  C0 78 00 98 */	lfs f3, 0x98(r24)
/* 807CBAC8  FC 80 18 90 */	fmr f4, f3
/* 807CBACC  39 00 00 00 */	li r8, 0
/* 807CBAD0  4B AE 0A 3D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 807CBAD4  7F C3 F3 78 */	mr r3, r30
/* 807CBAD8  7F E4 FB 78 */	mr r4, r31
/* 807CBADC  4B FF 96 AD */	bl setMagicEffect__8daE_VA_cFi
/* 807CBAE0  7E 7E DA 14 */	add r19, r30, r27
/* 807CBAE4  3E 33 00 01 */	addis r17, r19, 1
/* 807CBAE8  3A 31 0D F8 */	addi r17, r17, 0xdf8
/* 807CBAEC  7E 23 8B 78 */	mr r3, r17
/* 807CBAF0  7E 44 93 78 */	mr r4, r18
/* 807CBAF4  4B AA 3B 55 */	bl SetC__8cM3dGSphFRC4cXyz
/* 807CBAF8  7E 23 8B 78 */	mr r3, r17
/* 807CBAFC  C0 38 00 70 */	lfs f1, 0x70(r24)
/* 807CBB00  4B AA 3C 09 */	bl SetR__8cM3dGSphFf
/* 807CBB04  7E E3 BB 78 */	mr r3, r23
/* 807CBB08  3E 73 00 01 */	addis r19, r19, 1
/* 807CBB0C  3A 73 0C D4 */	addi r19, r19, 0xcd4
/* 807CBB10  7E 64 9B 78 */	mr r4, r19
/* 807CBB14  4B A9 90 95 */	bl Set__4cCcSFP8cCcD_Obj
/* 807CBB18  7E 3E EA 14 */	add r17, r30, r29
/* 807CBB1C  80 71 17 7C */	lwz r3, 0x177c(r17)
/* 807CBB20  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 807CBB24  40 82 00 1C */	bne lbl_807CBB40
/* 807CBB28  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 807CBB2C  40 82 00 14 */	bne lbl_807CBB40
/* 807CBB30  7E 63 9B 78 */	mr r3, r19
/* 807CBB34  4B 8B 87 8D */	bl ChkAtHit__12dCcD_GObjInfFv
/* 807CBB38  28 03 00 00 */	cmplwi r3, 0
/* 807CBB3C  41 82 00 60 */	beq lbl_807CBB9C
lbl_807CBB40:
/* 807CBB40  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007049D@ha */
/* 807CBB44  38 03 04 9D */	addi r0, r3, 0x049D /* 0x0007049D@l */
/* 807CBB48  90 01 00 08 */	stw r0, 8(r1)
/* 807CBB4C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 807CBB50  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 807CBB54  80 63 00 00 */	lwz r3, 0(r3)
/* 807CBB58  38 81 00 08 */	addi r4, r1, 8
/* 807CBB5C  7E 45 93 78 */	mr r5, r18
/* 807CBB60  38 C0 00 00 */	li r6, 0
/* 807CBB64  38 E0 00 00 */	li r7, 0
/* 807CBB68  C0 38 00 08 */	lfs f1, 8(r24)
/* 807CBB6C  FC 40 08 90 */	fmr f2, f1
/* 807CBB70  C0 78 00 98 */	lfs f3, 0x98(r24)
/* 807CBB74  FC 80 18 90 */	fmr f4, f3
/* 807CBB78  39 00 00 00 */	li r8, 0
/* 807CBB7C  4B AD FE 09 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 807CBB80  C0 18 00 04 */	lfs f0, 4(r24)
/* 807CBB84  D0 14 11 E4 */	stfs f0, 0x11e4(r20)
/* 807CBB88  7F C3 F3 78 */	mr r3, r30
/* 807CBB8C  7F E4 FB 78 */	mr r4, r31
/* 807CBB90  4B FF 96 C9 */	bl setMagicHitEffect__8daE_VA_cFi
/* 807CBB94  38 00 00 00 */	li r0, 0
/* 807CBB98  7C 1E A9 AE */	stbx r0, r30, r21
lbl_807CBB9C:
/* 807CBB9C  C0 14 11 E0 */	lfs f0, 0x11e0(r20)
/* 807CBBA0  D0 14 11 F8 */	stfs f0, 0x11f8(r20)
/* 807CBBA4  C0 14 11 E4 */	lfs f0, 0x11e4(r20)
/* 807CBBA8  D0 14 11 FC */	stfs f0, 0x11fc(r20)
/* 807CBBAC  C0 14 11 E8 */	lfs f0, 0x11e8(r20)
/* 807CBBB0  D0 14 12 00 */	stfs f0, 0x1200(r20)
/* 807CBBB4  7E 43 93 78 */	mr r3, r18
/* 807CBBB8  38 94 12 10 */	addi r4, r20, 0x1210
/* 807CBBBC  7E 45 93 78 */	mr r5, r18
/* 807CBBC0  4B B7 B4 D1 */	bl PSVECAdd
/* 807CBBC4  38 71 17 50 */	addi r3, r17, 0x1750
/* 807CBBC8  7E C4 B3 78 */	mr r4, r22
/* 807CBBCC  4B 8A AE E1 */	bl CrrPos__9dBgS_AcchFR4dBgS
lbl_807CBBD0:
/* 807CBBD0  3B FF 00 01 */	addi r31, r31, 1
/* 807CBBD4  2C 1F 00 02 */	cmpwi r31, 2
/* 807CBBD8  3B BD 01 D8 */	addi r29, r29, 0x1d8
/* 807CBBDC  3B 9C 00 0C */	addi r28, r28, 0xc
/* 807CBBE0  3B 7B 01 38 */	addi r27, r27, 0x138
/* 807CBBE4  41 80 FD 30 */	blt lbl_807CB914
/* 807CBBE8  39 61 00 60 */	addi r11, r1, 0x60
/* 807CBBEC  4B B9 66 0D */	bl _restgpr_17
/* 807CBBF0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 807CBBF4  7C 08 03 A6 */	mtlr r0
/* 807CBBF8  38 21 00 60 */	addi r1, r1, 0x60
/* 807CBBFC  4E 80 00 20 */	blr 
