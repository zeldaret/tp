lbl_80C729B4:
/* 80C729B4  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80C729B8  7C 08 02 A6 */	mflr r0
/* 80C729BC  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80C729C0  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80C729C4  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 80C729C8  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 80C729CC  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 80C729D0  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 80C729D4  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 80C729D8  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 80C729DC  F3 81 00 A8 */	psq_st f28, 168(r1), 0, 0 /* qr0 */
/* 80C729E0  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 80C729E4  F3 61 00 98 */	psq_st f27, 152(r1), 0, 0 /* qr0 */
/* 80C729E8  DB 41 00 80 */	stfd f26, 0x80(r1)
/* 80C729EC  F3 41 00 88 */	psq_st f26, 136(r1), 0, 0 /* qr0 */
/* 80C729F0  39 61 00 80 */	addi r11, r1, 0x80
/* 80C729F4  4B 6E F7 BC */	b _savegpr_18
/* 80C729F8  7C 7C 1B 78 */	mr r28, r3
/* 80C729FC  7C 92 23 78 */	mr r18, r4
/* 80C72A00  3C 80 80 C7 */	lis r4, lit_3625@ha
/* 80C72A04  3B E4 31 30 */	addi r31, r4, lit_3625@l
/* 80C72A08  48 00 02 A1 */	bl move__17daLv6FurikoTrap_cFv
/* 80C72A0C  80 7C 05 A8 */	lwz r3, 0x5a8(r28)
/* 80C72A10  38 03 00 24 */	addi r0, r3, 0x24
/* 80C72A14  90 12 00 00 */	stw r0, 0(r18)
/* 80C72A18  7F 83 E3 78 */	mr r3, r28
/* 80C72A1C  4B FF FA F5 */	bl setBaseMtx__17daLv6FurikoTrap_cFv
/* 80C72A20  3B A0 00 00 */	li r29, 0
/* 80C72A24  3B 40 00 00 */	li r26, 0
/* 80C72A28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C72A2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C72A30  3B C3 23 3C */	addi r30, r3, 0x233c
/* 80C72A34  C3 5F 00 38 */	lfs f26, 0x38(r31)
/* 80C72A38  C3 7F 00 3C */	lfs f27, 0x3c(r31)
/* 80C72A3C  C3 9F 00 40 */	lfs f28, 0x40(r31)
/* 80C72A40  C3 BF 00 44 */	lfs f29, 0x44(r31)
/* 80C72A44  C3 DF 00 48 */	lfs f30, 0x48(r31)
/* 80C72A48  CB FF 00 50 */	lfd f31, 0x50(r31)
/* 80C72A4C  3F 00 43 30 */	lis r24, 0x4330
/* 80C72A50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C72A54  3A E3 D4 70 */	addi r23, r3, now__14mDoMtx_stack_c@l
/* 80C72A58  7E F6 BB 78 */	mr r22, r23
lbl_80C72A5C:
/* 80C72A5C  D3 41 00 20 */	stfs f26, 0x20(r1)
/* 80C72A60  D3 61 00 24 */	stfs f27, 0x24(r1)
/* 80C72A64  D3 41 00 28 */	stfs f26, 0x28(r1)
/* 80C72A68  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 80C72A6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C72A70  93 01 00 30 */	stw r24, 0x30(r1)
/* 80C72A74  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80C72A78  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80C72A7C  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80C72A80  EC 1D 00 2A */	fadds f0, f29, f0
/* 80C72A84  EC 1C 00 32 */	fmuls f0, f28, f0
/* 80C72A88  FC 00 00 1E */	fctiwz f0, f0
/* 80C72A8C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80C72A90  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 80C72A94  7E E3 BB 78 */	mr r3, r23
/* 80C72A98  4B 39 99 DC */	b mDoMtx_ZrotS__FPA4_fs
/* 80C72A9C  7E E3 BB 78 */	mr r3, r23
/* 80C72AA0  A8 9C 04 E4 */	lha r4, 0x4e4(r28)
/* 80C72AA4  A8 BC 04 E6 */	lha r5, 0x4e6(r28)
/* 80C72AA8  A8 DC 04 E8 */	lha r6, 0x4e8(r28)
/* 80C72AAC  4B 39 97 F4 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80C72AB0  7E C3 B3 78 */	mr r3, r22
/* 80C72AB4  38 81 00 20 */	addi r4, r1, 0x20
/* 80C72AB8  7C 85 23 78 */	mr r5, r4
/* 80C72ABC  4B 6D 42 B0 */	b PSMTXMultVec
/* 80C72AC0  38 61 00 20 */	addi r3, r1, 0x20
/* 80C72AC4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80C72AC8  7C 65 1B 78 */	mr r5, r3
/* 80C72ACC  4B 6D 45 C4 */	b PSVECAdd
/* 80C72AD0  7F 7C D2 14 */	add r27, r28, r26
/* 80C72AD4  3B 3B 07 14 */	addi r25, r27, 0x714
/* 80C72AD8  7F 23 CB 78 */	mr r3, r25
/* 80C72ADC  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C72AE0  4B 5F CC 28 */	b SetR__8cM3dGSphFf
/* 80C72AE4  7F 23 CB 78 */	mr r3, r25
/* 80C72AE8  38 81 00 20 */	addi r4, r1, 0x20
/* 80C72AEC  4B 5F CB 5C */	b SetC__8cM3dGSphFRC4cXyz
/* 80C72AF0  7F C3 F3 78 */	mr r3, r30
/* 80C72AF4  3B 3B 05 F0 */	addi r25, r27, 0x5f0
/* 80C72AF8  7F 24 CB 78 */	mr r4, r25
/* 80C72AFC  4B 5F 20 AC */	b Set__4cCcSFP8cCcD_Obj
/* 80C72B00  7F 23 CB 78 */	mr r3, r25
/* 80C72B04  81 99 00 3C */	lwz r12, 0x3c(r25)
/* 80C72B08  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80C72B0C  7D 89 03 A6 */	mtctr r12
/* 80C72B10  4E 80 04 21 */	bctrl 
/* 80C72B14  3B BD 00 01 */	addi r29, r29, 1
/* 80C72B18  2C 1D 00 0D */	cmpwi r29, 0xd
/* 80C72B1C  3B 5A 01 38 */	addi r26, r26, 0x138
/* 80C72B20  41 80 FF 3C */	blt lbl_80C72A5C
/* 80C72B24  3B A0 00 00 */	li r29, 0
/* 80C72B28  3B 60 00 00 */	li r27, 0
/* 80C72B2C  3B 40 00 00 */	li r26, 0
/* 80C72B30  3C 60 80 C7 */	lis r3, posx@ha
/* 80C72B34  3A C3 31 E4 */	addi r22, r3, posx@l
/* 80C72B38  3C 60 80 C7 */	lis r3, posy@ha
/* 80C72B3C  3A E3 31 F0 */	addi r23, r3, posy@l
/* 80C72B40  C3 FF 00 38 */	lfs f31, 0x38(r31)
/* 80C72B44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C72B48  3B 03 D4 70 */	addi r24, r3, now__14mDoMtx_stack_c@l
/* 80C72B4C  7F 19 C3 78 */	mr r25, r24
lbl_80C72B50:
/* 80C72B50  7C 16 D4 2E */	lfsx f0, r22, r26
/* 80C72B54  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C72B58  7C 37 D4 2E */	lfsx f1, r23, r26
/* 80C72B5C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C72B60  D3 E1 00 1C */	stfs f31, 0x1c(r1)
/* 80C72B64  FC 00 00 50 */	fneg f0, f0
/* 80C72B68  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C72B6C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C72B70  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 80C72B74  7F 03 C3 78 */	mr r3, r24
/* 80C72B78  A8 9C 04 E4 */	lha r4, 0x4e4(r28)
/* 80C72B7C  A8 BC 04 E6 */	lha r5, 0x4e6(r28)
/* 80C72B80  A8 DC 04 E8 */	lha r6, 0x4e8(r28)
/* 80C72B84  4B 39 96 84 */	b mDoMtx_ZXYrotS__FPA4_fsss
/* 80C72B88  7F 03 C3 78 */	mr r3, r24
/* 80C72B8C  38 81 00 14 */	addi r4, r1, 0x14
/* 80C72B90  7C 85 23 78 */	mr r5, r4
/* 80C72B94  4B 6D 41 D8 */	b PSMTXMultVec
/* 80C72B98  7F 23 CB 78 */	mr r3, r25
/* 80C72B9C  38 81 00 08 */	addi r4, r1, 8
/* 80C72BA0  7C 85 23 78 */	mr r5, r4
/* 80C72BA4  4B 6D 41 C8 */	b PSMTXMultVec
/* 80C72BA8  38 61 00 14 */	addi r3, r1, 0x14
/* 80C72BAC  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80C72BB0  7C 65 1B 78 */	mr r5, r3
/* 80C72BB4  4B 6D 44 DC */	b PSVECAdd
/* 80C72BB8  38 61 00 08 */	addi r3, r1, 8
/* 80C72BBC  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80C72BC0  7C 65 1B 78 */	mr r5, r3
/* 80C72BC4  4B 6D 44 CC */	b PSVECAdd
/* 80C72BC8  7E 7C DA 14 */	add r19, r28, r27
/* 80C72BCC  3A B3 16 EC */	addi r21, r19, 0x16ec
/* 80C72BD0  7E A3 AB 78 */	mr r3, r21
/* 80C72BD4  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C72BD8  4B 5F CB 30 */	b SetR__8cM3dGSphFf
/* 80C72BDC  38 1D 00 03 */	addi r0, r29, 3
/* 80C72BE0  1C 00 01 38 */	mulli r0, r0, 0x138
/* 80C72BE4  7E 5C 02 14 */	add r18, r28, r0
/* 80C72BE8  3A 92 16 EC */	addi r20, r18, 0x16ec
/* 80C72BEC  7E 83 A3 78 */	mr r3, r20
/* 80C72BF0  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C72BF4  4B 5F CB 14 */	b SetR__8cM3dGSphFf
/* 80C72BF8  7E A3 AB 78 */	mr r3, r21
/* 80C72BFC  38 81 00 14 */	addi r4, r1, 0x14
/* 80C72C00  4B 5F CA 48 */	b SetC__8cM3dGSphFRC4cXyz
/* 80C72C04  7E 83 A3 78 */	mr r3, r20
/* 80C72C08  38 81 00 08 */	addi r4, r1, 8
/* 80C72C0C  4B 5F CA 3C */	b SetC__8cM3dGSphFRC4cXyz
/* 80C72C10  7F C3 F3 78 */	mr r3, r30
/* 80C72C14  3A 73 15 C8 */	addi r19, r19, 0x15c8
/* 80C72C18  7E 64 9B 78 */	mr r4, r19
/* 80C72C1C  4B 5F 1F 8C */	b Set__4cCcSFP8cCcD_Obj
/* 80C72C20  7F C3 F3 78 */	mr r3, r30
/* 80C72C24  38 92 15 C8 */	addi r4, r18, 0x15c8
/* 80C72C28  4B 5F 1F 80 */	b Set__4cCcSFP8cCcD_Obj
/* 80C72C2C  7E 63 9B 78 */	mr r3, r19
/* 80C72C30  81 93 00 3C */	lwz r12, 0x3c(r19)
/* 80C72C34  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80C72C38  7D 89 03 A6 */	mtctr r12
/* 80C72C3C  4E 80 04 21 */	bctrl 
/* 80C72C40  3B BD 00 01 */	addi r29, r29, 1
/* 80C72C44  2C 1D 00 03 */	cmpwi r29, 3
/* 80C72C48  3B 7B 01 38 */	addi r27, r27, 0x138
/* 80C72C4C  3B 5A 00 04 */	addi r26, r26, 4
/* 80C72C50  41 80 FF 00 */	blt lbl_80C72B50
/* 80C72C54  38 7C 05 D0 */	addi r3, r28, 0x5d0
/* 80C72C58  4B 41 0B D8 */	b Move__10dCcD_GSttsFv
/* 80C72C5C  38 60 00 01 */	li r3, 1
/* 80C72C60  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 80C72C64  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80C72C68  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 80C72C6C  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 80C72C70  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 80C72C74  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 80C72C78  E3 81 00 A8 */	psq_l f28, 168(r1), 0, 0 /* qr0 */
/* 80C72C7C  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 80C72C80  E3 61 00 98 */	psq_l f27, 152(r1), 0, 0 /* qr0 */
/* 80C72C84  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 80C72C88  E3 41 00 88 */	psq_l f26, 136(r1), 0, 0 /* qr0 */
/* 80C72C8C  CB 41 00 80 */	lfd f26, 0x80(r1)
/* 80C72C90  39 61 00 80 */	addi r11, r1, 0x80
/* 80C72C94  4B 6E F5 68 */	b _restgpr_18
/* 80C72C98  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80C72C9C  7C 08 03 A6 */	mtlr r0
/* 80C72CA0  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80C72CA4  4E 80 00 20 */	blr 
