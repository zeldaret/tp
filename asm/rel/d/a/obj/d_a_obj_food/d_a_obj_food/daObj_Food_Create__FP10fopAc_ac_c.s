lbl_80BF18CC:
/* 80BF18CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BF18D0  7C 08 02 A6 */	mflr r0
/* 80BF18D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BF18D8  39 61 00 30 */	addi r11, r1, 0x30
/* 80BF18DC  4B 77 08 F0 */	b _savegpr_25
/* 80BF18E0  7C 7B 1B 78 */	mr r27, r3
/* 80BF18E4  3C 80 80 BF */	lis r4, lit_3647@ha
/* 80BF18E8  3B E4 1D 90 */	addi r31, r4, lit_3647@l
/* 80BF18EC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BF18F0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BF18F4  40 82 01 3C */	bne lbl_80BF1A30
/* 80BF18F8  7F 60 DB 79 */	or. r0, r27, r27
/* 80BF18FC  41 82 01 28 */	beq lbl_80BF1A24
/* 80BF1900  7C 1A 03 78 */	mr r26, r0
/* 80BF1904  4B 42 72 60 */	b __ct__10fopAc_ac_cFv
/* 80BF1908  38 7A 05 98 */	addi r3, r26, 0x598
/* 80BF190C  4B 6C CF 38 */	b __ct__16Z2SoundObjSimpleFv
/* 80BF1910  38 7A 05 C8 */	addi r3, r26, 0x5c8
/* 80BF1914  4B 48 45 98 */	b __ct__12dBgS_AcchCirFv
/* 80BF1918  3B 3A 06 08 */	addi r25, r26, 0x608
/* 80BF191C  7F 23 CB 78 */	mr r3, r25
/* 80BF1920  4B 48 47 80 */	b __ct__9dBgS_AcchFv
/* 80BF1924  3C 60 80 BF */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80BF1928  38 63 1F 08 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80BF192C  90 79 00 10 */	stw r3, 0x10(r25)
/* 80BF1930  38 03 00 0C */	addi r0, r3, 0xc
/* 80BF1934  90 19 00 14 */	stw r0, 0x14(r25)
/* 80BF1938  38 03 00 18 */	addi r0, r3, 0x18
/* 80BF193C  90 19 00 24 */	stw r0, 0x24(r25)
/* 80BF1940  38 79 00 14 */	addi r3, r25, 0x14
/* 80BF1944  4B 48 75 24 */	b SetObj__16dBgS_PolyPassChkFv
/* 80BF1948  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80BF194C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80BF1950  90 1A 07 F8 */	stw r0, 0x7f8(r26)
/* 80BF1954  38 7A 07 FC */	addi r3, r26, 0x7fc
/* 80BF1958  4B 49 1E 08 */	b __ct__10dCcD_GSttsFv
/* 80BF195C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80BF1960  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80BF1964  90 7A 07 F8 */	stw r3, 0x7f8(r26)
/* 80BF1968  38 03 00 20 */	addi r0, r3, 0x20
/* 80BF196C  90 1A 07 FC */	stw r0, 0x7fc(r26)
/* 80BF1970  3B 3A 08 1C */	addi r25, r26, 0x81c
/* 80BF1974  7F 23 CB 78 */	mr r3, r25
/* 80BF1978  4B 49 20 B0 */	b __ct__12dCcD_GObjInfFv
/* 80BF197C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BF1980  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BF1984  90 19 01 20 */	stw r0, 0x120(r25)
/* 80BF1988  3C 60 80 BF */	lis r3, __vt__8cM3dGAab@ha
/* 80BF198C  38 03 1E FC */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BF1990  90 19 01 1C */	stw r0, 0x11c(r25)
/* 80BF1994  3C 60 80 BF */	lis r3, __vt__8cM3dGSph@ha
/* 80BF1998  38 03 1E F0 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80BF199C  90 19 01 34 */	stw r0, 0x134(r25)
/* 80BF19A0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80BF19A4  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80BF19A8  90 79 01 20 */	stw r3, 0x120(r25)
/* 80BF19AC  3B C3 00 58 */	addi r30, r3, 0x58
/* 80BF19B0  93 D9 01 34 */	stw r30, 0x134(r25)
/* 80BF19B4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80BF19B8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80BF19BC  90 79 00 3C */	stw r3, 0x3c(r25)
/* 80BF19C0  3B A3 00 2C */	addi r29, r3, 0x2c
/* 80BF19C4  93 B9 01 20 */	stw r29, 0x120(r25)
/* 80BF19C8  3B 83 00 84 */	addi r28, r3, 0x84
/* 80BF19CC  93 99 01 34 */	stw r28, 0x134(r25)
/* 80BF19D0  3B 3A 09 54 */	addi r25, r26, 0x954
/* 80BF19D4  7F 23 CB 78 */	mr r3, r25
/* 80BF19D8  4B 49 20 50 */	b __ct__12dCcD_GObjInfFv
/* 80BF19DC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BF19E0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BF19E4  90 19 01 20 */	stw r0, 0x120(r25)
/* 80BF19E8  3C 60 80 BF */	lis r3, __vt__8cM3dGAab@ha
/* 80BF19EC  38 03 1E FC */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BF19F0  90 19 01 1C */	stw r0, 0x11c(r25)
/* 80BF19F4  3C 60 80 BF */	lis r3, __vt__8cM3dGSph@ha
/* 80BF19F8  38 03 1E F0 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80BF19FC  90 19 01 34 */	stw r0, 0x134(r25)
/* 80BF1A00  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80BF1A04  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 80BF1A08  90 19 01 20 */	stw r0, 0x120(r25)
/* 80BF1A0C  93 D9 01 34 */	stw r30, 0x134(r25)
/* 80BF1A10  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80BF1A14  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 80BF1A18  90 19 00 3C */	stw r0, 0x3c(r25)
/* 80BF1A1C  93 B9 01 20 */	stw r29, 0x120(r25)
/* 80BF1A20  93 99 01 34 */	stw r28, 0x134(r25)
lbl_80BF1A24:
/* 80BF1A24  80 1B 04 A0 */	lwz r0, 0x4a0(r27)
/* 80BF1A28  60 00 00 08 */	ori r0, r0, 8
/* 80BF1A2C  90 1B 04 A0 */	stw r0, 0x4a0(r27)
lbl_80BF1A30:
/* 80BF1A30  38 7B 05 68 */	addi r3, r27, 0x568
/* 80BF1A34  3C 80 80 BF */	lis r4, stringBase0@ha
/* 80BF1A38  38 84 1E 10 */	addi r4, r4, stringBase0@l
/* 80BF1A3C  4B 43 B4 80 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BF1A40  7C 7C 1B 78 */	mr r28, r3
/* 80BF1A44  2C 1C 00 04 */	cmpwi r28, 4
/* 80BF1A48  40 82 01 84 */	bne lbl_80BF1BCC
/* 80BF1A4C  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80BF1A50  98 1B 05 70 */	stb r0, 0x570(r27)
/* 80BF1A54  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80BF1A58  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80BF1A5C  98 1B 05 71 */	stb r0, 0x571(r27)
/* 80BF1A60  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80BF1A64  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80BF1A68  98 1B 05 72 */	stb r0, 0x572(r27)
/* 80BF1A6C  88 1B 05 70 */	lbz r0, 0x570(r27)
/* 80BF1A70  28 00 00 FF */	cmplwi r0, 0xff
/* 80BF1A74  40 82 00 0C */	bne lbl_80BF1A80
/* 80BF1A78  38 00 00 00 */	li r0, 0
/* 80BF1A7C  98 1B 05 70 */	stb r0, 0x570(r27)
lbl_80BF1A80:
/* 80BF1A80  7F 63 DB 78 */	mr r3, r27
/* 80BF1A84  3C 80 80 BF */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80BF1A88  38 84 18 04 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80BF1A8C  38 A0 08 10 */	li r5, 0x810
/* 80BF1A90  4B 42 8A 20 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80BF1A94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BF1A98  40 82 00 0C */	bne lbl_80BF1AA4
/* 80BF1A9C  38 60 00 05 */	li r3, 5
/* 80BF1AA0  48 00 01 30 */	b lbl_80BF1BD0
lbl_80BF1AA4:
/* 80BF1AA4  3C 60 80 BF */	lis r3, data_80BF1F40@ha
/* 80BF1AA8  8C 03 1F 40 */	lbzu r0, data_80BF1F40@l(r3)
/* 80BF1AAC  28 00 00 00 */	cmplwi r0, 0
/* 80BF1AB0  40 82 00 20 */	bne lbl_80BF1AD0
/* 80BF1AB4  38 00 00 01 */	li r0, 1
/* 80BF1AB8  98 1B 0A 8C */	stb r0, 0xa8c(r27)
/* 80BF1ABC  98 03 00 00 */	stb r0, 0(r3)
/* 80BF1AC0  38 00 FF FF */	li r0, -1
/* 80BF1AC4  3C 60 80 BF */	lis r3, l_HIO@ha
/* 80BF1AC8  38 63 1F 50 */	addi r3, r3, l_HIO@l
/* 80BF1ACC  98 03 00 04 */	stb r0, 4(r3)
lbl_80BF1AD0:
/* 80BF1AD0  80 7B 05 74 */	lwz r3, 0x574(r27)
/* 80BF1AD4  38 03 00 24 */	addi r0, r3, 0x24
/* 80BF1AD8  90 1B 05 04 */	stw r0, 0x504(r27)
/* 80BF1ADC  38 7B 07 E0 */	addi r3, r27, 0x7e0
/* 80BF1AE0  38 80 00 0A */	li r4, 0xa
/* 80BF1AE4  38 A0 00 00 */	li r5, 0
/* 80BF1AE8  7F 66 DB 78 */	mr r6, r27
/* 80BF1AEC  4B 49 1D 74 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BF1AF0  38 7B 08 1C */	addi r3, r27, 0x81c
/* 80BF1AF4  3C 80 80 BF */	lis r4, cc_sph_src@ha
/* 80BF1AF8  38 84 1E 20 */	addi r4, r4, cc_sph_src@l
/* 80BF1AFC  4B 49 2F 38 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80BF1B00  38 1B 07 E0 */	addi r0, r27, 0x7e0
/* 80BF1B04  90 1B 08 60 */	stw r0, 0x860(r27)
/* 80BF1B08  38 00 00 00 */	li r0, 0
/* 80BF1B0C  90 01 00 08 */	stw r0, 8(r1)
/* 80BF1B10  38 7B 06 08 */	addi r3, r27, 0x608
/* 80BF1B14  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80BF1B18  38 BB 04 BC */	addi r5, r27, 0x4bc
/* 80BF1B1C  7F 66 DB 78 */	mr r6, r27
/* 80BF1B20  38 E0 00 01 */	li r7, 1
/* 80BF1B24  39 1B 05 C8 */	addi r8, r27, 0x5c8
/* 80BF1B28  39 3B 04 F8 */	addi r9, r27, 0x4f8
/* 80BF1B2C  39 40 00 00 */	li r10, 0
/* 80BF1B30  4B 48 47 18 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80BF1B34  88 1B 05 70 */	lbz r0, 0x570(r27)
/* 80BF1B38  28 00 00 01 */	cmplwi r0, 1
/* 80BF1B3C  40 82 00 20 */	bne lbl_80BF1B5C
/* 80BF1B40  38 7B 05 C8 */	addi r3, r27, 0x5c8
/* 80BF1B44  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80BF1B48  FC 40 08 90 */	fmr f2, f1
/* 80BF1B4C  4B 48 44 0C */	b SetWall__12dBgS_AcchCirFff
/* 80BF1B50  38 00 00 05 */	li r0, 5
/* 80BF1B54  98 1B 05 67 */	stb r0, 0x567(r27)
/* 80BF1B58  48 00 00 5C */	b lbl_80BF1BB4
lbl_80BF1B5C:
/* 80BF1B5C  38 7B 05 C8 */	addi r3, r27, 0x5c8
/* 80BF1B60  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80BF1B64  FC 40 08 90 */	fmr f2, f1
/* 80BF1B68  4B 48 43 F0 */	b SetWall__12dBgS_AcchCirFff
/* 80BF1B6C  38 00 00 07 */	li r0, 7
/* 80BF1B70  98 1B 05 48 */	stb r0, 0x548(r27)
/* 80BF1B74  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80BF1B78  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 80BF1B7C  38 00 00 00 */	li r0, 0
/* 80BF1B80  98 1B 05 67 */	stb r0, 0x567(r27)
/* 80BF1B84  88 1B 04 9A */	lbz r0, 0x49a(r27)
/* 80BF1B88  60 00 00 30 */	ori r0, r0, 0x30
/* 80BF1B8C  98 1B 04 9A */	stb r0, 0x49a(r27)
/* 80BF1B90  38 7B 09 54 */	addi r3, r27, 0x954
/* 80BF1B94  3C 80 80 BF */	lis r4, at_sph_src@ha
/* 80BF1B98  38 84 1E 60 */	addi r4, r4, at_sph_src@l
/* 80BF1B9C  4B 49 2E 98 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80BF1BA0  38 1B 07 E0 */	addi r0, r27, 0x7e0
/* 80BF1BA4  90 1B 09 98 */	stw r0, 0x998(r27)
/* 80BF1BA8  80 1B 09 54 */	lwz r0, 0x954(r27)
/* 80BF1BAC  54 00 07 B6 */	rlwinm r0, r0, 0, 0x1e, 0x1b
/* 80BF1BB0  90 1B 09 54 */	stw r0, 0x954(r27)
lbl_80BF1BB4:
/* 80BF1BB4  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80BF1BB8  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 80BF1BBC  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80BF1BC0  D0 1B 05 34 */	stfs f0, 0x534(r27)
/* 80BF1BC4  7F 63 DB 78 */	mr r3, r27
/* 80BF1BC8  4B FF FB 39 */	bl daObj_Food_Execute__FP14obj_food_class
lbl_80BF1BCC:
/* 80BF1BCC  7F 83 E3 78 */	mr r3, r28
lbl_80BF1BD0:
/* 80BF1BD0  39 61 00 30 */	addi r11, r1, 0x30
/* 80BF1BD4  4B 77 06 44 */	b _restgpr_25
/* 80BF1BD8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BF1BDC  7C 08 03 A6 */	mtlr r0
/* 80BF1BE0  38 21 00 30 */	addi r1, r1, 0x30
/* 80BF1BE4  4E 80 00 20 */	blr 
