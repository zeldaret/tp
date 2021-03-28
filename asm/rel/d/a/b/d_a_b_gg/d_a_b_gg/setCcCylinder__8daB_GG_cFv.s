lbl_805DE7A4:
/* 805DE7A4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 805DE7A8  7C 08 02 A6 */	mflr r0
/* 805DE7AC  90 01 00 94 */	stw r0, 0x94(r1)
/* 805DE7B0  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 805DE7B4  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 805DE7B8  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 805DE7BC  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 805DE7C0  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 805DE7C4  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 805DE7C8  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 805DE7CC  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 805DE7D0  39 61 00 50 */	addi r11, r1, 0x50
/* 805DE7D4  4B D8 39 EC */	b _savegpr_22
/* 805DE7D8  7C 7B 1B 78 */	mr r27, r3
/* 805DE7DC  3C 60 80 5F */	lis r3, lit_3911@ha
/* 805DE7E0  3B C3 D0 60 */	addi r30, r3, lit_3911@l
/* 805DE7E4  38 7B 07 FC */	addi r3, r27, 0x7fc
/* 805DE7E8  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805DE7EC  4B C9 09 F0 */	b SetC__8cM3dGCylFRC4cXyz
/* 805DE7F0  38 7B 07 FC */	addi r3, r27, 0x7fc
/* 805DE7F4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805DE7F8  3C 80 80 5F */	lis r4, l_HIO@ha
/* 805DE7FC  3B E4 D7 0C */	addi r31, r4, l_HIO@l
/* 805DE800  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805DE804  EC 21 00 32 */	fmuls f1, f1, f0
/* 805DE808  4B C9 09 F8 */	b SetR__8cM3dGCylFf
/* 805DE80C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805DE810  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805DE814  3B A3 23 3C */	addi r29, r3, 0x233c
/* 805DE818  7F A3 EB 78 */	mr r3, r29
/* 805DE81C  38 9B 06 D8 */	addi r4, r27, 0x6d8
/* 805DE820  4B C8 63 88 */	b Set__4cCcSFP8cCcD_Obj
/* 805DE824  38 7B 0C E0 */	addi r3, r27, 0xce0
/* 805DE828  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805DE82C  4B C9 09 B0 */	b SetC__8cM3dGCylFRC4cXyz
/* 805DE830  38 7B 0C E0 */	addi r3, r27, 0xce0
/* 805DE834  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805DE838  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805DE83C  EC 21 00 32 */	fmuls f1, f1, f0
/* 805DE840  4B C9 09 C0 */	b SetR__8cM3dGCylFf
/* 805DE844  7F A3 EB 78 */	mr r3, r29
/* 805DE848  38 9B 0B BC */	addi r4, r27, 0xbbc
/* 805DE84C  4B C8 63 5C */	b Set__4cCcSFP8cCcD_Obj
/* 805DE850  3B 80 00 00 */	li r28, 0
/* 805DE854  3B 40 00 00 */	li r26, 0
/* 805DE858  C3 9E 00 04 */	lfs f28, 4(r30)
/* 805DE85C  C3 BE 01 40 */	lfs f29, 0x140(r30)
/* 805DE860  C3 DE 00 00 */	lfs f30, 0(r30)
/* 805DE864  CB FE 01 48 */	lfd f31, 0x148(r30)
/* 805DE868  3F 00 43 30 */	lis r24, 0x4330
/* 805DE86C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805DE870  3B 23 D4 70 */	addi r25, r3, now__14mDoMtx_stack_c@l
lbl_805DE874:
/* 805DE874  D3 81 00 08 */	stfs f28, 8(r1)
/* 805DE878  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 805DE87C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805DE880  93 01 00 18 */	stw r24, 0x18(r1)
/* 805DE884  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805DE888  EC 00 F8 28 */	fsubs f0, f0, f31
/* 805DE88C  EC 1E 00 32 */	fmuls f0, f30, f0
/* 805DE890  EC 3D 00 2A */	fadds f1, f29, f0
/* 805DE894  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805DE898  EC 01 00 32 */	fmuls f0, f1, f0
/* 805DE89C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805DE8A0  D3 81 00 10 */	stfs f28, 0x10(r1)
/* 805DE8A4  80 7B 0E 30 */	lwz r3, 0xe30(r27)
/* 805DE8A8  80 63 00 04 */	lwz r3, 4(r3)
/* 805DE8AC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805DE8B0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805DE8B4  38 63 03 00 */	addi r3, r3, 0x300
/* 805DE8B8  7F 24 CB 78 */	mr r4, r25
/* 805DE8BC  4B D6 7B F4 */	b PSMTXCopy
/* 805DE8C0  7F 23 CB 78 */	mr r3, r25
/* 805DE8C4  38 81 00 08 */	addi r4, r1, 8
/* 805DE8C8  7C 85 23 78 */	mr r5, r4
/* 805DE8CC  4B D6 84 A0 */	b PSMTXMultVec
/* 805DE8D0  7E DB D2 14 */	add r22, r27, r26
/* 805DE8D4  3A F6 09 38 */	addi r23, r22, 0x938
/* 805DE8D8  7E E3 BB 78 */	mr r3, r23
/* 805DE8DC  38 81 00 08 */	addi r4, r1, 8
/* 805DE8E0  4B C9 0D 68 */	b SetC__8cM3dGSphFRC4cXyz
/* 805DE8E4  7E E3 BB 78 */	mr r3, r23
/* 805DE8E8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805DE8EC  EC 3E 00 32 */	fmuls f1, f30, f0
/* 805DE8F0  4B C9 0E 18 */	b SetR__8cM3dGSphFf
/* 805DE8F4  7F A3 EB 78 */	mr r3, r29
/* 805DE8F8  38 96 08 14 */	addi r4, r22, 0x814
/* 805DE8FC  4B C8 62 AC */	b Set__4cCcSFP8cCcD_Obj
/* 805DE900  3B 9C 00 01 */	addi r28, r28, 1
/* 805DE904  2C 1C 00 03 */	cmpwi r28, 3
/* 805DE908  3B 5A 01 38 */	addi r26, r26, 0x138
/* 805DE90C  41 80 FF 68 */	blt lbl_805DE874
/* 805DE910  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805DE914  D0 01 00 08 */	stfs f0, 8(r1)
/* 805DE918  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805DE91C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805DE920  80 7B 0E 30 */	lwz r3, 0xe30(r27)
/* 805DE924  80 63 00 04 */	lwz r3, 4(r3)
/* 805DE928  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805DE92C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805DE930  38 63 02 10 */	addi r3, r3, 0x210
/* 805DE934  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805DE938  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805DE93C  4B D6 7B 74 */	b PSMTXCopy
/* 805DE940  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805DE944  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805DE948  38 81 00 08 */	addi r4, r1, 8
/* 805DE94C  7C 85 23 78 */	mr r5, r4
/* 805DE950  4B D6 84 1C */	b PSMTXMultVec
/* 805DE954  38 7B 0E 1C */	addi r3, r27, 0xe1c
/* 805DE958  38 81 00 08 */	addi r4, r1, 8
/* 805DE95C  4B C9 0C EC */	b SetC__8cM3dGSphFRC4cXyz
/* 805DE960  38 7B 0E 1C */	addi r3, r27, 0xe1c
/* 805DE964  C0 3E 01 40 */	lfs f1, 0x140(r30)
/* 805DE968  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805DE96C  EC 21 00 32 */	fmuls f1, f1, f0
/* 805DE970  4B C9 0D 98 */	b SetR__8cM3dGSphFf
/* 805DE974  7F A3 EB 78 */	mr r3, r29
/* 805DE978  38 9B 0C F8 */	addi r4, r27, 0xcf8
/* 805DE97C  4B C8 62 2C */	b Set__4cCcSFP8cCcD_Obj
/* 805DE980  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 805DE984  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 805DE988  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 805DE98C  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 805DE990  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 805DE994  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 805DE998  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 805DE99C  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 805DE9A0  39 61 00 50 */	addi r11, r1, 0x50
/* 805DE9A4  4B D8 38 68 */	b _restgpr_22
/* 805DE9A8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 805DE9AC  7C 08 03 A6 */	mtlr r0
/* 805DE9B0  38 21 00 90 */	addi r1, r1, 0x90
/* 805DE9B4  4E 80 00 20 */	blr 
