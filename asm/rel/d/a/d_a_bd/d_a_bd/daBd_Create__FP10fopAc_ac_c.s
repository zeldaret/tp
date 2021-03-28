lbl_804D981C:
/* 804D981C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804D9820  7C 08 02 A6 */	mflr r0
/* 804D9824  90 01 00 44 */	stw r0, 0x44(r1)
/* 804D9828  39 61 00 40 */	addi r11, r1, 0x40
/* 804D982C  4B E8 89 A8 */	b _savegpr_27
/* 804D9830  7C 7D 1B 78 */	mr r29, r3
/* 804D9834  3C 80 80 4E */	lis r4, lit_1109@ha
/* 804D9838  3B C4 A3 20 */	addi r30, r4, lit_1109@l
/* 804D983C  3C 80 80 4E */	lis r4, lit_3942@ha
/* 804D9840  3B E4 9E 64 */	addi r31, r4, lit_3942@l
/* 804D9844  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 804D9848  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804D984C  40 82 00 E8 */	bne lbl_804D9934
/* 804D9850  7F A0 EB 79 */	or. r0, r29, r29
/* 804D9854  41 82 00 D4 */	beq lbl_804D9928
/* 804D9858  7C 1C 03 78 */	mr r28, r0
/* 804D985C  4B B3 F3 08 */	b __ct__10fopAc_ac_cFv
/* 804D9860  38 7C 05 F8 */	addi r3, r28, 0x5f8
/* 804D9864  4B DE 4F E0 */	b __ct__16Z2SoundObjSimpleFv
/* 804D9868  38 7C 06 5C */	addi r3, r28, 0x65c
/* 804D986C  4B B9 C6 40 */	b __ct__12dBgS_AcchCirFv
/* 804D9870  3B 7C 06 9C */	addi r27, r28, 0x69c
/* 804D9874  7F 63 DB 78 */	mr r3, r27
/* 804D9878  4B B9 C8 28 */	b __ct__9dBgS_AcchFv
/* 804D987C  3C 60 80 4E */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 804D9880  38 63 A2 DC */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 804D9884  90 7B 00 10 */	stw r3, 0x10(r27)
/* 804D9888  38 03 00 0C */	addi r0, r3, 0xc
/* 804D988C  90 1B 00 14 */	stw r0, 0x14(r27)
/* 804D9890  38 03 00 18 */	addi r0, r3, 0x18
/* 804D9894  90 1B 00 24 */	stw r0, 0x24(r27)
/* 804D9898  38 7B 00 14 */	addi r3, r27, 0x14
/* 804D989C  4B B9 F5 CC */	b SetObj__16dBgS_PolyPassChkFv
/* 804D98A0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 804D98A4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 804D98A8  90 1C 08 8C */	stw r0, 0x88c(r28)
/* 804D98AC  38 7C 08 90 */	addi r3, r28, 0x890
/* 804D98B0  4B BA 9E B0 */	b __ct__10dCcD_GSttsFv
/* 804D98B4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 804D98B8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 804D98BC  90 7C 08 8C */	stw r3, 0x88c(r28)
/* 804D98C0  38 03 00 20 */	addi r0, r3, 0x20
/* 804D98C4  90 1C 08 90 */	stw r0, 0x890(r28)
/* 804D98C8  3B 9C 08 B0 */	addi r28, r28, 0x8b0
/* 804D98CC  7F 83 E3 78 */	mr r3, r28
/* 804D98D0  4B BA A1 58 */	b __ct__12dCcD_GObjInfFv
/* 804D98D4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 804D98D8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 804D98DC  90 1C 01 20 */	stw r0, 0x120(r28)
/* 804D98E0  3C 60 80 4E */	lis r3, __vt__8cM3dGAab@ha
/* 804D98E4  38 03 A2 D0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 804D98E8  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 804D98EC  3C 60 80 4E */	lis r3, __vt__8cM3dGSph@ha
/* 804D98F0  38 03 A2 C4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 804D98F4  90 1C 01 34 */	stw r0, 0x134(r28)
/* 804D98F8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 804D98FC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 804D9900  90 7C 01 20 */	stw r3, 0x120(r28)
/* 804D9904  38 03 00 58 */	addi r0, r3, 0x58
/* 804D9908  90 1C 01 34 */	stw r0, 0x134(r28)
/* 804D990C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 804D9910  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 804D9914  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 804D9918  38 03 00 2C */	addi r0, r3, 0x2c
/* 804D991C  90 1C 01 20 */	stw r0, 0x120(r28)
/* 804D9920  38 03 00 84 */	addi r0, r3, 0x84
/* 804D9924  90 1C 01 34 */	stw r0, 0x134(r28)
lbl_804D9928:
/* 804D9928  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 804D992C  60 00 00 08 */	ori r0, r0, 8
/* 804D9930  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_804D9934:
/* 804D9934  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 804D9938  3C 80 80 4E */	lis r4, stringBase0@ha
/* 804D993C  38 84 9F 6C */	addi r4, r4, stringBase0@l
/* 804D9940  4B B5 35 7C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 804D9944  7C 7C 1B 78 */	mr r28, r3
/* 804D9948  2C 1C 00 04 */	cmpwi r28, 4
/* 804D994C  40 82 02 50 */	bne lbl_804D9B9C
/* 804D9950  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 804D9954  98 1D 05 B4 */	stb r0, 0x5b4(r29)
/* 804D9958  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 804D995C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 804D9960  98 1D 05 B5 */	stb r0, 0x5b5(r29)
/* 804D9964  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 804D9968  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 804D996C  98 1D 05 B6 */	stb r0, 0x5b6(r29)
/* 804D9970  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 804D9974  54 00 46 3E */	srwi r0, r0, 0x18
/* 804D9978  98 1D 05 B7 */	stb r0, 0x5b7(r29)
/* 804D997C  88 1D 05 B6 */	lbz r0, 0x5b6(r29)
/* 804D9980  28 00 00 FF */	cmplwi r0, 0xff
/* 804D9984  40 82 00 0C */	bne lbl_804D9990
/* 804D9988  38 00 00 00 */	li r0, 0
/* 804D998C  98 1D 05 B6 */	stb r0, 0x5b6(r29)
lbl_804D9990:
/* 804D9990  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 804D9994  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 804D9998  98 1D 05 B9 */	stb r0, 0x5b9(r29)
/* 804D999C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 804D99A0  54 00 46 3E */	srwi r0, r0, 0x18
/* 804D99A4  98 1D 05 B8 */	stb r0, 0x5b8(r29)
/* 804D99A8  7F A3 EB 78 */	mr r3, r29
/* 804D99AC  3C 80 80 4E */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 804D99B0  38 84 96 0C */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 804D99B4  38 A0 0B E0 */	li r5, 0xbe0
/* 804D99B8  4B B4 0A F8 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 804D99BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804D99C0  40 82 00 0C */	bne lbl_804D99CC
/* 804D99C4  38 60 00 05 */	li r3, 5
/* 804D99C8  48 00 01 D8 */	b lbl_804D9BA0
lbl_804D99CC:
/* 804D99CC  88 1E 00 3D */	lbz r0, 0x3d(r30)
/* 804D99D0  28 00 00 00 */	cmplwi r0, 0
/* 804D99D4  40 82 00 1C */	bne lbl_804D99F0
/* 804D99D8  38 00 00 01 */	li r0, 1
/* 804D99DC  98 1D 09 E8 */	stb r0, 0x9e8(r29)
/* 804D99E0  98 1E 00 3D */	stb r0, 0x3d(r30)
/* 804D99E4  38 00 FF FF */	li r0, -1
/* 804D99E8  38 7E 00 4C */	addi r3, r30, 0x4c
/* 804D99EC  98 03 00 04 */	stb r0, 4(r3)
lbl_804D99F0:
/* 804D99F0  80 7D 05 E4 */	lwz r3, 0x5e4(r29)
/* 804D99F4  80 63 00 04 */	lwz r3, 4(r3)
/* 804D99F8  38 03 00 24 */	addi r0, r3, 0x24
/* 804D99FC  90 1D 05 04 */	stw r0, 0x504(r29)
/* 804D9A00  38 00 00 00 */	li r0, 0
/* 804D9A04  90 01 00 08 */	stw r0, 8(r1)
/* 804D9A08  38 7D 06 9C */	addi r3, r29, 0x69c
/* 804D9A0C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804D9A10  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 804D9A14  7F A6 EB 78 */	mr r6, r29
/* 804D9A18  38 E0 00 01 */	li r7, 1
/* 804D9A1C  39 1D 06 5C */	addi r8, r29, 0x65c
/* 804D9A20  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 804D9A24  39 40 00 00 */	li r10, 0
/* 804D9A28  4B B9 C8 20 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 804D9A2C  38 7D 06 5C */	addi r3, r29, 0x65c
/* 804D9A30  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 804D9A34  FC 40 08 90 */	fmr f2, f1
/* 804D9A38  4B B9 C5 20 */	b SetWall__12dBgS_AcchCirFff
/* 804D9A3C  38 00 00 01 */	li r0, 1
/* 804D9A40  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 804D9A44  B0 1D 05 60 */	sth r0, 0x560(r29)
/* 804D9A48  38 7D 08 74 */	addi r3, r29, 0x874
/* 804D9A4C  38 80 00 64 */	li r4, 0x64
/* 804D9A50  38 A0 00 00 */	li r5, 0
/* 804D9A54  7F A6 EB 78 */	mr r6, r29
/* 804D9A58  4B BA 9E 08 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 804D9A5C  38 7D 08 B0 */	addi r3, r29, 0x8b0
/* 804D9A60  3C 80 80 4E */	lis r4, cc_sph_src@ha
/* 804D9A64  38 84 A2 34 */	addi r4, r4, cc_sph_src@l
/* 804D9A68  4B BA AF CC */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 804D9A6C  38 1D 08 74 */	addi r0, r29, 0x874
/* 804D9A70  90 1D 08 F4 */	stw r0, 0x8f4(r29)
/* 804D9A74  88 1D 05 B5 */	lbz r0, 0x5b5(r29)
/* 804D9A78  28 00 00 FF */	cmplwi r0, 0xff
/* 804D9A7C  40 82 00 20 */	bne lbl_804D9A9C
/* 804D9A80  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 804D9A84  4B D8 DE D0 */	b cM_rndF__Ff
/* 804D9A88  FC 00 08 1E */	fctiwz f0, f1
/* 804D9A8C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804D9A90  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804D9A94  98 1D 05 EC */	stb r0, 0x5ec(r29)
/* 804D9A98  48 00 00 20 */	b lbl_804D9AB8
lbl_804D9A9C:
/* 804D9A9C  98 1D 05 EC */	stb r0, 0x5ec(r29)
/* 804D9AA0  88 1D 05 EC */	lbz r0, 0x5ec(r29)
/* 804D9AA4  7C 00 07 74 */	extsb r0, r0
/* 804D9AA8  2C 00 00 07 */	cmpwi r0, 7
/* 804D9AAC  40 81 00 0C */	ble lbl_804D9AB8
/* 804D9AB0  38 00 00 07 */	li r0, 7
/* 804D9AB4  98 1D 05 EC */	stb r0, 0x5ec(r29)
lbl_804D9AB8:
/* 804D9AB8  38 80 00 00 */	li r4, 0
/* 804D9ABC  B0 9D 06 1A */	sth r4, 0x61a(r29)
/* 804D9AC0  38 00 FF FF */	li r0, -1
/* 804D9AC4  B0 1D 06 1C */	sth r0, 0x61c(r29)
/* 804D9AC8  80 1E 00 CC */	lwz r0, 0xcc(r30)
/* 804D9ACC  90 1D 06 30 */	stw r0, 0x630(r29)
/* 804D9AD0  80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 804D9AD4  38 03 00 01 */	addi r0, r3, 1
/* 804D9AD8  90 1E 00 CC */	stw r0, 0xcc(r30)
/* 804D9ADC  2C 00 00 0D */	cmpwi r0, 0xd
/* 804D9AE0  40 81 00 08 */	ble lbl_804D9AE8
/* 804D9AE4  90 9E 00 CC */	stw r4, 0xcc(r30)
lbl_804D9AE8:
/* 804D9AE8  38 00 00 14 */	li r0, 0x14
/* 804D9AEC  B0 1D 06 42 */	sth r0, 0x642(r29)
/* 804D9AF0  7F A3 EB 78 */	mr r3, r29
/* 804D9AF4  4B FF F7 05 */	bl daBd_Execute__FP8bd_class
/* 804D9AF8  80 1D 04 DC */	lwz r0, 0x4dc(r29)
/* 804D9AFC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804D9B00  A0 1D 04 E0 */	lhz r0, 0x4e0(r29)
/* 804D9B04  B0 01 00 14 */	sth r0, 0x14(r1)
/* 804D9B08  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 804D9B0C  4B D8 DE 48 */	b cM_rndF__Ff
/* 804D9B10  FC 00 08 1E */	fctiwz f0, f1
/* 804D9B14  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804D9B18  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804D9B1C  B0 01 00 12 */	sth r0, 0x12(r1)
/* 804D9B20  88 1D 05 B4 */	lbz r0, 0x5b4(r29)
/* 804D9B24  28 00 00 FF */	cmplwi r0, 0xff
/* 804D9B28  41 82 00 74 */	beq lbl_804D9B9C
/* 804D9B2C  28 00 00 00 */	cmplwi r0, 0
/* 804D9B30  41 82 00 6C */	beq lbl_804D9B9C
/* 804D9B34  28 00 00 01 */	cmplwi r0, 1
/* 804D9B38  41 82 00 64 */	beq lbl_804D9B9C
/* 804D9B3C  3B E0 00 00 */	li r31, 0
/* 804D9B40  3B C0 00 00 */	li r30, 0
/* 804D9B44  48 00 00 48 */	b lbl_804D9B8C
lbl_804D9B48:
/* 804D9B48  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 804D9B4C  7C 07 07 74 */	extsb r7, r0
/* 804D9B50  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 804D9B54  93 C1 00 08 */	stw r30, 8(r1)
/* 804D9B58  38 60 03 00 */	li r3, 0x300
/* 804D9B5C  28 1D 00 00 */	cmplwi r29, 0
/* 804D9B60  41 82 00 0C */	beq lbl_804D9B6C
/* 804D9B64  80 9D 00 04 */	lwz r4, 4(r29)
/* 804D9B68  48 00 00 08 */	b lbl_804D9B70
lbl_804D9B6C:
/* 804D9B6C  38 80 FF FF */	li r4, -1
lbl_804D9B70:
/* 804D9B70  54 05 00 2E */	rlwinm r5, r0, 0, 0, 0x17
/* 804D9B74  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 804D9B78  39 01 00 10 */	addi r8, r1, 0x10
/* 804D9B7C  39 20 00 00 */	li r9, 0
/* 804D9B80  39 40 FF FF */	li r10, -1
/* 804D9B84  4B B4 03 6C */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 804D9B88  3B FF 00 01 */	addi r31, r31, 1
lbl_804D9B8C:
/* 804D9B8C  88 7D 05 B4 */	lbz r3, 0x5b4(r29)
/* 804D9B90  38 03 FF FF */	addi r0, r3, -1
/* 804D9B94  7C 1F 00 00 */	cmpw r31, r0
/* 804D9B98  41 80 FF B0 */	blt lbl_804D9B48
lbl_804D9B9C:
/* 804D9B9C  7F 83 E3 78 */	mr r3, r28
lbl_804D9BA0:
/* 804D9BA0  39 61 00 40 */	addi r11, r1, 0x40
/* 804D9BA4  4B E8 86 7C */	b _restgpr_27
/* 804D9BA8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804D9BAC  7C 08 03 A6 */	mtlr r0
/* 804D9BB0  38 21 00 40 */	addi r1, r1, 0x40
/* 804D9BB4  4E 80 00 20 */	blr 
