lbl_80D39978:
/* 80D39978  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D3997C  7C 08 02 A6 */	mflr r0
/* 80D39980  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D39984  39 61 00 50 */	addi r11, r1, 0x50
/* 80D39988  4B 62 88 44 */	b _savegpr_25
/* 80D3998C  7C 7E 1B 78 */	mr r30, r3
/* 80D39990  3C 60 80 D4 */	lis r3, l_sph_src@ha
/* 80D39994  3B E3 9C 88 */	addi r31, r3, l_sph_src@l
/* 80D39998  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D3999C  54 00 C6 3F */	rlwinm. r0, r0, 0x18, 0x18, 0x1f
/* 80D399A0  7C 04 03 78 */	mr r4, r0
/* 80D399A4  41 82 00 0C */	beq lbl_80D399B0
/* 80D399A8  28 00 00 FF */	cmplwi r0, 0xff
/* 80D399AC  40 82 00 08 */	bne lbl_80D399B4
lbl_80D399B0:
/* 80D399B0  38 80 00 0A */	li r4, 0xa
lbl_80D399B4:
/* 80D399B4  A8 7E 09 58 */	lha r3, 0x958(r30)
/* 80D399B8  7C 60 07 35 */	extsh. r0, r3
/* 80D399BC  40 81 00 14 */	ble lbl_80D399D0
/* 80D399C0  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80D399C4  7C 00 00 D0 */	neg r0, r0
/* 80D399C8  B0 1E 09 5C */	sth r0, 0x95c(r30)
/* 80D399CC  48 00 00 20 */	b lbl_80D399EC
lbl_80D399D0:
/* 80D399D0  7C 60 07 35 */	extsh. r0, r3
/* 80D399D4  40 80 00 10 */	bge lbl_80D399E4
/* 80D399D8  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80D399DC  B0 1E 09 5C */	sth r0, 0x95c(r30)
/* 80D399E0  48 00 00 0C */	b lbl_80D399EC
lbl_80D399E4:
/* 80D399E4  38 00 00 00 */	li r0, 0
/* 80D399E8  B0 1E 09 5C */	sth r0, 0x95c(r30)
lbl_80D399EC:
/* 80D399EC  A8 7E 09 5A */	lha r3, 0x95a(r30)
/* 80D399F0  A8 1E 09 5C */	lha r0, 0x95c(r30)
/* 80D399F4  7C 03 02 14 */	add r0, r3, r0
/* 80D399F8  B0 1E 09 5A */	sth r0, 0x95a(r30)
/* 80D399FC  A8 7E 09 58 */	lha r3, 0x958(r30)
/* 80D39A00  A8 1E 09 5A */	lha r0, 0x95a(r30)
/* 80D39A04  7C 03 02 14 */	add r0, r3, r0
/* 80D39A08  B0 1E 09 58 */	sth r0, 0x958(r30)
/* 80D39A0C  7F C3 F3 78 */	mr r3, r30
/* 80D39A10  4B FF FA 45 */	bl setBaseMtx__13daObjWPndlm_cFv
/* 80D39A14  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80D39A18  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D39A1C  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80D39A20  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D39A24  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80D39A28  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80D39A2C  4B 2D 33 38 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80D39A30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D39A34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D39A38  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80D39A3C  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80D39A40  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 80D39A44  A8 1E 09 58 */	lha r0, 0x958(r30)
/* 80D39A48  7C 06 02 14 */	add r0, r6, r0
/* 80D39A4C  7C 06 07 34 */	extsh r6, r0
/* 80D39A50  4B 2D 28 50 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80D39A54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D39A58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D39A5C  38 81 00 08 */	addi r4, r1, 8
/* 80D39A60  7C 85 23 78 */	mr r5, r4
/* 80D39A64  4B 60 D3 08 */	b PSMTXMultVec
/* 80D39A68  38 7E 06 D4 */	addi r3, r30, 0x6d4
/* 80D39A6C  38 81 00 08 */	addi r4, r1, 8
/* 80D39A70  4B 53 5B D8 */	b SetC__8cM3dGSphFRC4cXyz
/* 80D39A74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D39A78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D39A7C  3B 63 23 3C */	addi r27, r3, 0x233c
/* 80D39A80  7F 63 DB 78 */	mr r3, r27
/* 80D39A84  38 9E 05 B0 */	addi r4, r30, 0x5b0
/* 80D39A88  4B 52 B1 20 */	b Set__4cCcSFP8cCcD_Obj
/* 80D39A8C  38 A1 00 10 */	addi r5, r1, 0x10
/* 80D39A90  38 9F 00 8C */	addi r4, r31, 0x8c
/* 80D39A94  38 00 00 03 */	li r0, 3
/* 80D39A98  7C 09 03 A6 */	mtctr r0
lbl_80D39A9C:
/* 80D39A9C  80 64 00 04 */	lwz r3, 4(r4)
/* 80D39AA0  84 04 00 08 */	lwzu r0, 8(r4)
/* 80D39AA4  90 65 00 04 */	stw r3, 4(r5)
/* 80D39AA8  94 05 00 08 */	stwu r0, 8(r5)
/* 80D39AAC  42 00 FF F0 */	bdnz lbl_80D39A9C
/* 80D39AB0  3B 20 00 00 */	li r25, 0
/* 80D39AB4  3B E0 00 00 */	li r31, 0
/* 80D39AB8  3B A0 00 00 */	li r29, 0
/* 80D39ABC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D39AC0  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
lbl_80D39AC4:
/* 80D39AC4  38 61 00 14 */	addi r3, r1, 0x14
/* 80D39AC8  7C 63 EA 14 */	add r3, r3, r29
/* 80D39ACC  C0 03 00 00 */	lfs f0, 0(r3)
/* 80D39AD0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D39AD4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80D39AD8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D39ADC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80D39AE0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D39AE4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80D39AE8  4B 2D 32 7C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80D39AEC  7F 83 E3 78 */	mr r3, r28
/* 80D39AF0  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80D39AF4  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80D39AF8  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 80D39AFC  A8 1E 09 58 */	lha r0, 0x958(r30)
/* 80D39B00  7C 06 02 14 */	add r0, r6, r0
/* 80D39B04  7C 06 07 34 */	extsh r6, r0
/* 80D39B08  4B 2D 27 98 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80D39B0C  7F 83 E3 78 */	mr r3, r28
/* 80D39B10  38 81 00 08 */	addi r4, r1, 8
/* 80D39B14  7C 85 23 78 */	mr r5, r4
/* 80D39B18  4B 60 D2 54 */	b PSMTXMultVec
/* 80D39B1C  7F 5E FA 14 */	add r26, r30, r31
/* 80D39B20  38 7A 08 0C */	addi r3, r26, 0x80c
/* 80D39B24  38 81 00 08 */	addi r4, r1, 8
/* 80D39B28  4B 53 5B 20 */	b SetC__8cM3dGSphFRC4cXyz
/* 80D39B2C  7F 63 DB 78 */	mr r3, r27
/* 80D39B30  38 9A 06 E8 */	addi r4, r26, 0x6e8
/* 80D39B34  4B 52 B0 74 */	b Set__4cCcSFP8cCcD_Obj
/* 80D39B38  3B 39 00 01 */	addi r25, r25, 1
/* 80D39B3C  2C 19 00 02 */	cmpwi r25, 2
/* 80D39B40  3B FF 01 38 */	addi r31, r31, 0x138
/* 80D39B44  3B BD 00 0C */	addi r29, r29, 0xc
/* 80D39B48  41 80 FF 7C */	blt lbl_80D39AC4
/* 80D39B4C  38 60 00 01 */	li r3, 1
/* 80D39B50  39 61 00 50 */	addi r11, r1, 0x50
/* 80D39B54  4B 62 86 C4 */	b _restgpr_25
/* 80D39B58  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D39B5C  7C 08 03 A6 */	mtlr r0
/* 80D39B60  38 21 00 50 */	addi r1, r1, 0x50
/* 80D39B64  4E 80 00 20 */	blr 
