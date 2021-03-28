lbl_80CE88A0:
/* 80CE88A0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80CE88A4  7C 08 02 A6 */	mflr r0
/* 80CE88A8  90 01 00 84 */	stw r0, 0x84(r1)
/* 80CE88AC  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80CE88B0  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80CE88B4  39 61 00 70 */	addi r11, r1, 0x70
/* 80CE88B8  4B 67 98 F8 */	b _savegpr_18
/* 80CE88BC  7C 78 1B 78 */	mr r24, r3
/* 80CE88C0  3C 60 80 CF */	lis r3, lit_3651@ha
/* 80CE88C4  3B 63 8D BC */	addi r27, r3, lit_3651@l
/* 80CE88C8  3B 20 00 00 */	li r25, 0
/* 80CE88CC  3B E0 00 00 */	li r31, 0
/* 80CE88D0  3B C0 00 00 */	li r30, 0
/* 80CE88D4  3B A0 00 00 */	li r29, 0
/* 80CE88D8  3B 80 00 00 */	li r28, 0
/* 80CE88DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CE88E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CE88E4  3B 43 23 3C */	addi r26, r3, 0x233c
/* 80CE88E8  C3 FB 01 0C */	lfs f31, 0x10c(r27)
/* 80CE88EC  3C 60 80 CF */	lis r3, l_HIO@ha
/* 80CE88F0  3A E3 8F D4 */	addi r23, r3, l_HIO@l
lbl_80CE88F4:
/* 80CE88F4  7E D8 E2 14 */	add r22, r24, r28
/* 80CE88F8  3A B6 06 FC */	addi r21, r22, 0x6fc
/* 80CE88FC  7E A3 AB 78 */	mr r3, r21
/* 80CE8900  4B 39 BD 58 */	b ChkCoHit__12dCcD_GObjInfFv
/* 80CE8904  28 03 00 00 */	cmplwi r3, 0
/* 80CE8908  41 82 00 A8 */	beq lbl_80CE89B0
/* 80CE890C  38 79 06 B4 */	addi r3, r25, 0x6b4
/* 80CE8910  7C 18 18 AE */	lbzx r0, r24, r3
/* 80CE8914  28 00 00 00 */	cmplwi r0, 0
/* 80CE8918  40 82 00 84 */	bne lbl_80CE899C
/* 80CE891C  80 16 07 28 */	lwz r0, 0x728(r22)
/* 80CE8920  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80CE8924  90 16 07 28 */	stw r0, 0x728(r22)
/* 80CE8928  38 00 00 01 */	li r0, 1
/* 80CE892C  7C 18 19 AE */	stbx r0, r24, r3
/* 80CE8930  38 7B 00 84 */	addi r3, r27, 0x84
/* 80CE8934  7C 63 EA 14 */	add r3, r3, r29
/* 80CE8938  C0 03 00 00 */	lfs f0, 0(r3)
/* 80CE893C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CE8940  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CE8944  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CE8948  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CE894C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CE8950  88 18 04 E2 */	lbz r0, 0x4e2(r24)
/* 80CE8954  7C 03 07 74 */	extsb r3, r0
/* 80CE8958  4B 34 47 14 */	b dComIfGp_getReverb__Fi
/* 80CE895C  7C 67 1B 78 */	mr r7, r3
/* 80CE8960  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008003D@ha */
/* 80CE8964  38 03 00 3D */	addi r0, r3, 0x003D /* 0x0008003D@l */
/* 80CE8968  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CE896C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CE8970  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CE8974  80 63 00 00 */	lwz r3, 0(r3)
/* 80CE8978  38 81 00 10 */	addi r4, r1, 0x10
/* 80CE897C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80CE8980  38 C0 00 00 */	li r6, 0
/* 80CE8984  C0 3B 00 FC */	lfs f1, 0xfc(r27)
/* 80CE8988  FC 40 08 90 */	fmr f2, f1
/* 80CE898C  C0 7B 01 08 */	lfs f3, 0x108(r27)
/* 80CE8990  FC 80 18 90 */	fmr f4, f3
/* 80CE8994  39 00 00 00 */	li r8, 0
/* 80CE8998  4B 5C 2F EC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CE899C:
/* 80CE899C  7E A3 AB 78 */	mr r3, r21
/* 80CE89A0  81 95 00 3C */	lwz r12, 0x3c(r21)
/* 80CE89A4  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80CE89A8  7D 89 03 A6 */	mtctr r12
/* 80CE89AC  4E 80 04 21 */	bctrl 
lbl_80CE89B0:
/* 80CE89B0  3A 96 08 20 */	addi r20, r22, 0x820
/* 80CE89B4  7E 83 A3 78 */	mr r3, r20
/* 80CE89B8  7C 97 F2 14 */	add r4, r23, r30
/* 80CE89BC  C0 04 00 04 */	lfs f0, 4(r4)
/* 80CE89C0  EC 3F 00 2A */	fadds f1, f31, f0
/* 80CE89C4  4B 58 6D 44 */	b SetR__8cM3dGSphFf
/* 80CE89C8  3A DB 00 84 */	addi r22, r27, 0x84
/* 80CE89CC  7E D6 EA 14 */	add r22, r22, r29
/* 80CE89D0  C0 16 00 00 */	lfs f0, 0(r22)
/* 80CE89D4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CE89D8  3A 76 00 04 */	addi r19, r22, 4
/* 80CE89DC  C0 16 00 04 */	lfs f0, 4(r22)
/* 80CE89E0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CE89E4  3A 56 00 08 */	addi r18, r22, 8
/* 80CE89E8  C0 16 00 08 */	lfs f0, 8(r22)
/* 80CE89EC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CE89F0  7E 83 A3 78 */	mr r3, r20
/* 80CE89F4  38 81 00 20 */	addi r4, r1, 0x20
/* 80CE89F8  4B 58 6C 50 */	b SetC__8cM3dGSphFRC4cXyz
/* 80CE89FC  7F 43 D3 78 */	mr r3, r26
/* 80CE8A00  7E A4 AB 78 */	mr r4, r21
/* 80CE8A04  4B 57 C1 A4 */	b Set__4cCcSFP8cCcD_Obj
/* 80CE8A08  3A 99 06 B4 */	addi r20, r25, 0x6b4
/* 80CE8A0C  7C 18 A0 AE */	lbzx r0, r24, r20
/* 80CE8A10  28 00 00 00 */	cmplwi r0, 0
/* 80CE8A14  41 82 00 D0 */	beq lbl_80CE8AE4
/* 80CE8A18  38 7F 05 9C */	addi r3, r31, 0x59c
/* 80CE8A1C  7C 78 1A 14 */	add r3, r24, r3
/* 80CE8A20  4B 32 4A 08 */	b play__14mDoExt_baseAnmFv
/* 80CE8A24  2C 03 00 00 */	cmpwi r3, 0
/* 80CE8A28  41 82 00 BC */	beq lbl_80CE8AE4
/* 80CE8A2C  38 00 00 00 */	li r0, 0
/* 80CE8A30  7C 18 A1 AE */	stbx r0, r24, r20
/* 80CE8A34  C0 16 00 00 */	lfs f0, 0(r22)
/* 80CE8A38  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CE8A3C  C0 13 00 00 */	lfs f0, 0(r19)
/* 80CE8A40  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CE8A44  C0 12 00 00 */	lfs f0, 0(r18)
/* 80CE8A48  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CE8A4C  88 18 04 E2 */	lbz r0, 0x4e2(r24)
/* 80CE8A50  7C 03 07 74 */	extsb r3, r0
/* 80CE8A54  4B 34 46 18 */	b dComIfGp_getReverb__Fi
/* 80CE8A58  7C 67 1B 78 */	mr r7, r3
/* 80CE8A5C  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008003B@ha */
/* 80CE8A60  38 03 00 3B */	addi r0, r3, 0x003B /* 0x0008003B@l */
/* 80CE8A64  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE8A68  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CE8A6C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CE8A70  80 63 00 00 */	lwz r3, 0(r3)
/* 80CE8A74  38 81 00 0C */	addi r4, r1, 0xc
/* 80CE8A78  38 A1 00 14 */	addi r5, r1, 0x14
/* 80CE8A7C  38 C0 00 00 */	li r6, 0
/* 80CE8A80  C0 3B 00 FC */	lfs f1, 0xfc(r27)
/* 80CE8A84  FC 40 08 90 */	fmr f2, f1
/* 80CE8A88  C0 7B 01 08 */	lfs f3, 0x108(r27)
/* 80CE8A8C  FC 80 18 90 */	fmr f4, f3
/* 80CE8A90  39 00 00 00 */	li r8, 0
/* 80CE8A94  4B 5C 2E F0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CE8A98  88 18 04 E2 */	lbz r0, 0x4e2(r24)
/* 80CE8A9C  7C 03 07 74 */	extsb r3, r0
/* 80CE8AA0  4B 34 45 CC */	b dComIfGp_getReverb__Fi
/* 80CE8AA4  7C 67 1B 78 */	mr r7, r3
/* 80CE8AA8  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080029@ha */
/* 80CE8AAC  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00080029@l */
/* 80CE8AB0  90 01 00 08 */	stw r0, 8(r1)
/* 80CE8AB4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CE8AB8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CE8ABC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CE8AC0  38 81 00 08 */	addi r4, r1, 8
/* 80CE8AC4  38 A1 00 14 */	addi r5, r1, 0x14
/* 80CE8AC8  38 C0 00 00 */	li r6, 0
/* 80CE8ACC  C0 3B 00 FC */	lfs f1, 0xfc(r27)
/* 80CE8AD0  FC 40 08 90 */	fmr f2, f1
/* 80CE8AD4  C0 7B 01 08 */	lfs f3, 0x108(r27)
/* 80CE8AD8  FC 80 18 90 */	fmr f4, f3
/* 80CE8ADC  39 00 00 00 */	li r8, 0
/* 80CE8AE0  4B 5C 2E A4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CE8AE4:
/* 80CE8AE4  3B 39 00 01 */	addi r25, r25, 1
/* 80CE8AE8  2C 19 00 0A */	cmpwi r25, 0xa
/* 80CE8AEC  3B FF 00 1C */	addi r31, r31, 0x1c
/* 80CE8AF0  3B DE 00 04 */	addi r30, r30, 4
/* 80CE8AF4  3B BD 00 0C */	addi r29, r29, 0xc
/* 80CE8AF8  3B 9C 01 38 */	addi r28, r28, 0x138
/* 80CE8AFC  41 80 FD F8 */	blt lbl_80CE88F4
/* 80CE8B00  38 60 00 01 */	li r3, 1
/* 80CE8B04  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80CE8B08  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80CE8B0C  39 61 00 70 */	addi r11, r1, 0x70
/* 80CE8B10  4B 67 96 EC */	b _restgpr_18
/* 80CE8B14  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80CE8B18  7C 08 03 A6 */	mtlr r0
/* 80CE8B1C  38 21 00 80 */	addi r1, r1, 0x80
/* 80CE8B20  4E 80 00 20 */	blr 
