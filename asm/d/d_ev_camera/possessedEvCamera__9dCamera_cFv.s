lbl_80094A70:
/* 80094A70  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 80094A74  7C 08 02 A6 */	mflr r0
/* 80094A78  90 01 01 24 */	stw r0, 0x124(r1)
/* 80094A7C  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 80094A80  F3 E1 01 18 */	psq_st f31, 280(r1), 0, 0 /* qr0 */
/* 80094A84  39 61 01 10 */	addi r11, r1, 0x110
/* 80094A88  48 2C D7 55 */	bl _savegpr_29
/* 80094A8C  7C 7E 1B 78 */	mr r30, r3
/* 80094A90  3B E0 00 00 */	li r31, 0
/* 80094A94  80 03 01 74 */	lwz r0, 0x174(r3)
/* 80094A98  28 00 00 00 */	cmplwi r0, 0
/* 80094A9C  40 82 00 0C */	bne lbl_80094AA8
/* 80094AA0  38 00 00 00 */	li r0, 0
/* 80094AA4  90 1E 03 E8 */	stw r0, 0x3e8(r30)
lbl_80094AA8:
/* 80094AA8  80 1E 03 E8 */	lwz r0, 0x3e8(r30)
/* 80094AAC  2C 00 00 01 */	cmpwi r0, 1
/* 80094AB0  41 82 02 A8 */	beq lbl_80094D58
/* 80094AB4  40 80 00 08 */	bge lbl_80094ABC
/* 80094AB8  48 00 00 0C */	b lbl_80094AC4
lbl_80094ABC:
/* 80094ABC  2C 00 00 63 */	cmpwi r0, 0x63
/* 80094AC0  41 82 05 20 */	beq lbl_80094FE0
lbl_80094AC4:
/* 80094AC4  7F C3 F3 78 */	mr r3, r30
/* 80094AC8  3C 80 80 38 */	lis r4, d_d_ev_camera__stringBase0@ha
/* 80094ACC  38 A4 AA F4 */	addi r5, r4, d_d_ev_camera__stringBase0@l
/* 80094AD0  38 85 00 6B */	addi r4, r5, 0x6b
/* 80094AD4  38 A5 00 72 */	addi r5, r5, 0x72
/* 80094AD8  4B FF 4B 1D */	bl getEvActor__9dCamera_cFPcPc
/* 80094ADC  90 7E 04 0C */	stw r3, 0x40c(r30)
/* 80094AE0  28 03 00 00 */	cmplwi r3, 0
/* 80094AE4  40 82 00 0C */	bne lbl_80094AF0
/* 80094AE8  38 60 00 01 */	li r3, 1
/* 80094AEC  48 00 05 04 */	b lbl_80094FF0
lbl_80094AF0:
/* 80094AF0  7F C3 F3 78 */	mr r3, r30
/* 80094AF4  38 9E 03 EC */	addi r4, r30, 0x3ec
/* 80094AF8  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80094AFC  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80094B00  38 A5 01 7B */	addi r5, r5, 0x17b
/* 80094B04  38 C0 00 00 */	li r6, 0
/* 80094B08  4B FF 45 85 */	bl getEvIntData__9dCamera_cFPiPci
/* 80094B0C  7F C3 F3 78 */	mr r3, r30
/* 80094B10  38 9E 03 F0 */	addi r4, r30, 0x3f0
/* 80094B14  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80094B18  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80094B1C  38 C0 00 0A */	li r6, 0xa
/* 80094B20  4B FF 45 6D */	bl getEvIntData__9dCamera_cFPiPci
/* 80094B24  7F C3 F3 78 */	mr r3, r30
/* 80094B28  38 9E 03 F8 */	addi r4, r30, 0x3f8
/* 80094B2C  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80094B30  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80094B34  38 A5 00 9C */	addi r5, r5, 0x9c
/* 80094B38  C0 22 8F 5C */	lfs f1, lit_8184(r2)
/* 80094B3C  4B FF 46 19 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 80094B40  7F C3 F3 78 */	mr r3, r30
/* 80094B44  38 9E 04 04 */	addi r4, r30, 0x404
/* 80094B48  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80094B4C  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80094B50  38 A5 01 04 */	addi r5, r5, 0x104
/* 80094B54  C0 22 8E DC */	lfs f1, lit_5346(r2)
/* 80094B58  4B FF 45 FD */	bl getEvFloatData__9dCamera_cFPfPcf
/* 80094B5C  7F C3 F3 78 */	mr r3, r30
/* 80094B60  38 81 00 38 */	addi r4, r1, 0x38
/* 80094B64  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80094B68  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80094B6C  38 A5 00 93 */	addi r5, r5, 0x93
/* 80094B70  C0 22 8F 24 */	lfs f1, lit_7341(r2)
/* 80094B74  4B FF 45 E1 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 80094B78  38 7E 03 FC */	addi r3, r30, 0x3fc
/* 80094B7C  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80094B80  48 1D C4 8D */	bl Val__7cSAngleFf
/* 80094B84  7F C3 F3 78 */	mr r3, r30
/* 80094B88  38 81 00 38 */	addi r4, r1, 0x38
/* 80094B8C  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80094B90  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80094B94  38 A5 01 91 */	addi r5, r5, 0x191
/* 80094B98  C0 22 8E B8 */	lfs f1, lit_5141(r2)
/* 80094B9C  4B FF 45 B9 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 80094BA0  38 7E 03 FE */	addi r3, r30, 0x3fe
/* 80094BA4  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80094BA8  48 1D C4 65 */	bl Val__7cSAngleFf
/* 80094BAC  7F C3 F3 78 */	mr r3, r30
/* 80094BB0  38 9E 04 00 */	addi r4, r30, 0x400
/* 80094BB4  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80094BB8  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80094BBC  38 A5 00 1E */	addi r5, r5, 0x1e
/* 80094BC0  C0 22 8F 64 */	lfs f1, lit_8186(r2)
/* 80094BC4  4B FF 45 91 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 80094BC8  7F C3 F3 78 */	mr r3, r30
/* 80094BCC  38 9E 04 08 */	addi r4, r30, 0x408
/* 80094BD0  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80094BD4  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80094BD8  38 A5 01 4F */	addi r5, r5, 0x14f
/* 80094BDC  38 C0 00 00 */	li r6, 0
/* 80094BE0  4B FF 44 AD */	bl getEvIntData__9dCamera_cFPiPci
/* 80094BE4  80 1E 03 EC */	lwz r0, 0x3ec(r30)
/* 80094BE8  2C 00 00 00 */	cmpwi r0, 0
/* 80094BEC  40 82 00 54 */	bne lbl_80094C40
/* 80094BF0  38 61 00 34 */	addi r3, r1, 0x34
/* 80094BF4  7F C4 F3 78 */	mr r4, r30
/* 80094BF8  80 BE 04 0C */	lwz r5, 0x40c(r30)
/* 80094BFC  48 00 2B 3D */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 80094C00  38 61 00 30 */	addi r3, r1, 0x30
/* 80094C04  38 9E 03 FE */	addi r4, r30, 0x3fe
/* 80094C08  38 A1 00 34 */	addi r5, r1, 0x34
/* 80094C0C  48 1D C5 69 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80094C10  38 7E 04 10 */	addi r3, r30, 0x410
/* 80094C14  C0 3E 03 F8 */	lfs f1, 0x3f8(r30)
/* 80094C18  38 9E 03 FC */	addi r4, r30, 0x3fc
/* 80094C1C  38 A1 00 30 */	addi r5, r1, 0x30
/* 80094C20  48 1D CD E9 */	bl Val__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 80094C24  7F C3 F3 78 */	mr r3, r30
/* 80094C28  38 9E 00 F0 */	addi r4, r30, 0xf0
/* 80094C2C  38 A0 00 02 */	li r5, 2
/* 80094C30  48 0D 00 35 */	bl pushInfo__9dCamera_cFPQ29dCamera_c10dCamInfo_cs
/* 80094C34  38 00 00 02 */	li r0, 2
/* 80094C38  B0 1E 01 0E */	sth r0, 0x10e(r30)
/* 80094C3C  48 00 00 B8 */	b lbl_80094CF4
lbl_80094C40:
/* 80094C40  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80094C44  7F C4 F3 78 */	mr r4, r30
/* 80094C48  80 BE 04 0C */	lwz r5, 0x40c(r30)
/* 80094C4C  48 00 2B 41 */	bl eyePos__9dCamera_cFP10fopAc_ac_c
/* 80094C50  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 80094C54  D0 1E 00 64 */	stfs f0, 0x64(r30)
/* 80094C58  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 80094C5C  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 80094C60  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 80094C64  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 80094C68  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80094C6C  38 9E 00 FC */	addi r4, r30, 0xfc
/* 80094C70  38 BE 00 F0 */	addi r5, r30, 0xf0
/* 80094C74  48 1D 1E C1 */	bl __mi__4cXyzCFRC3Vec
/* 80094C78  38 7E 04 10 */	addi r3, r30, 0x410
/* 80094C7C  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80094C80  48 1D CD F1 */	bl Val__7cSGlobeFRC4cXyz
/* 80094C84  38 61 00 2C */	addi r3, r1, 0x2c
/* 80094C88  7F C4 F3 78 */	mr r4, r30
/* 80094C8C  80 BE 04 0C */	lwz r5, 0x40c(r30)
/* 80094C90  48 00 2A A9 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 80094C94  38 61 00 28 */	addi r3, r1, 0x28
/* 80094C98  38 9E 03 FE */	addi r4, r30, 0x3fe
/* 80094C9C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80094CA0  48 1D C4 D5 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80094CA4  38 7E 00 5C */	addi r3, r30, 0x5c
/* 80094CA8  C0 3E 03 F8 */	lfs f1, 0x3f8(r30)
/* 80094CAC  38 9E 03 FC */	addi r4, r30, 0x3fc
/* 80094CB0  38 A1 00 28 */	addi r5, r1, 0x28
/* 80094CB4  48 1D CD 55 */	bl Val__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 80094CB8  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80094CBC  38 9E 00 5C */	addi r4, r30, 0x5c
/* 80094CC0  48 1D CD F5 */	bl Xyz__7cSGlobeCFv
/* 80094CC4  38 61 00 9C */	addi r3, r1, 0x9c
/* 80094CC8  38 9E 00 64 */	addi r4, r30, 0x64
/* 80094CCC  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 80094CD0  48 1D 1E 15 */	bl __pl__4cXyzCFRC3Vec
/* 80094CD4  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80094CD8  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 80094CDC  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 80094CE0  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 80094CE4  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80094CE8  D0 1E 00 78 */	stfs f0, 0x78(r30)
/* 80094CEC  C0 1E 04 00 */	lfs f0, 0x400(r30)
/* 80094CF0  D0 1E 00 80 */	stfs f0, 0x80(r30)
lbl_80094CF4:
/* 80094CF4  38 00 00 01 */	li r0, 1
/* 80094CF8  90 1E 03 E8 */	stw r0, 0x3e8(r30)
/* 80094CFC  80 1E 03 F0 */	lwz r0, 0x3f0(r30)
/* 80094D00  90 1E 03 F4 */	stw r0, 0x3f4(r30)
/* 80094D04  80 1E 04 08 */	lwz r0, 0x408(r30)
/* 80094D08  2C 00 00 02 */	cmpwi r0, 2
/* 80094D0C  41 82 00 30 */	beq lbl_80094D3C
/* 80094D10  40 80 02 DC */	bge lbl_80094FEC
/* 80094D14  2C 00 00 01 */	cmpwi r0, 1
/* 80094D18  40 80 00 08 */	bge lbl_80094D20
/* 80094D1C  48 00 02 D0 */	b lbl_80094FEC
lbl_80094D20:
/* 80094D20  7F C3 F3 78 */	mr r3, r30
/* 80094D24  80 9E 03 F0 */	lwz r4, 0x3f0(r30)
/* 80094D28  80 BE 04 0C */	lwz r5, 0x40c(r30)
/* 80094D2C  C0 22 91 78 */	lfs f1, lit_10278(r2)
/* 80094D30  C0 42 91 7C */	lfs f2, lit_10279(r2)
/* 80094D34  48 0E C4 3D */	bl StartBlure__9dCamera_cFiP10fopAc_ac_cff
/* 80094D38  48 00 02 B4 */	b lbl_80094FEC
lbl_80094D3C:
/* 80094D3C  7F C3 F3 78 */	mr r3, r30
/* 80094D40  80 9E 03 F0 */	lwz r4, 0x3f0(r30)
/* 80094D44  80 BE 04 0C */	lwz r5, 0x40c(r30)
/* 80094D48  C0 22 91 80 */	lfs f1, lit_10280(r2)
/* 80094D4C  C0 42 91 7C */	lfs f2, lit_10279(r2)
/* 80094D50  48 0E C4 21 */	bl StartBlure__9dCamera_cFiP10fopAc_ac_cff
/* 80094D54  48 00 02 98 */	b lbl_80094FEC
lbl_80094D58:
/* 80094D58  C0 42 8E DC */	lfs f2, lit_5346(r2)
/* 80094D5C  80 1E 03 F4 */	lwz r0, 0x3f4(r30)
/* 80094D60  C8 22 8E F8 */	lfd f1, lit_5962(r2)
/* 80094D64  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80094D68  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80094D6C  3C 00 43 30 */	lis r0, 0x4330
/* 80094D70  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 80094D74  C8 01 00 F0 */	lfd f0, 0xf0(r1)
/* 80094D78  EC 00 08 28 */	fsubs f0, f0, f1
/* 80094D7C  EF E2 00 24 */	fdivs f31, f2, f0
/* 80094D80  38 61 00 90 */	addi r3, r1, 0x90
/* 80094D84  7F C4 F3 78 */	mr r4, r30
/* 80094D88  80 BE 04 0C */	lwz r5, 0x40c(r30)
/* 80094D8C  48 00 2A 01 */	bl eyePos__9dCamera_cFP10fopAc_ac_c
/* 80094D90  38 61 00 84 */	addi r3, r1, 0x84
/* 80094D94  38 81 00 90 */	addi r4, r1, 0x90
/* 80094D98  38 BE 00 64 */	addi r5, r30, 0x64
/* 80094D9C  48 1D 1D 99 */	bl __mi__4cXyzCFRC3Vec
/* 80094DA0  38 61 00 78 */	addi r3, r1, 0x78
/* 80094DA4  38 81 00 84 */	addi r4, r1, 0x84
/* 80094DA8  FC 20 F8 90 */	fmr f1, f31
/* 80094DAC  48 1D 1D D9 */	bl __ml__4cXyzCFf
/* 80094DB0  38 7E 00 64 */	addi r3, r30, 0x64
/* 80094DB4  38 81 00 78 */	addi r4, r1, 0x78
/* 80094DB8  7C 65 1B 78 */	mr r5, r3
/* 80094DBC  48 2B 22 D5 */	bl PSVECAdd
/* 80094DC0  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80094DC4  C0 1E 04 10 */	lfs f0, 0x410(r30)
/* 80094DC8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80094DCC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80094DD0  EC 01 00 2A */	fadds f0, f1, f0
/* 80094DD4  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 80094DD8  38 61 00 24 */	addi r3, r1, 0x24
/* 80094DDC  38 9E 04 14 */	addi r4, r30, 0x414
/* 80094DE0  3B BE 00 60 */	addi r29, r30, 0x60
/* 80094DE4  7F A5 EB 78 */	mr r5, r29
/* 80094DE8  48 1D C3 BD */	bl __mi__7cSAngleCFRC7cSAngle
/* 80094DEC  38 61 00 20 */	addi r3, r1, 0x20
/* 80094DF0  38 81 00 24 */	addi r4, r1, 0x24
/* 80094DF4  FC 20 F8 90 */	fmr f1, f31
/* 80094DF8  48 1D C4 6D */	bl __ml__7cSAngleCFf
/* 80094DFC  38 61 00 1C */	addi r3, r1, 0x1c
/* 80094E00  7F A4 EB 78 */	mr r4, r29
/* 80094E04  38 A1 00 20 */	addi r5, r1, 0x20
/* 80094E08  48 1D C3 6D */	bl __pl__7cSAngleCFRC7cSAngle
/* 80094E0C  38 61 00 0C */	addi r3, r1, 0xc
/* 80094E10  A8 81 00 1C */	lha r4, 0x1c(r1)
/* 80094E14  48 1D C1 85 */	bl __ct__7cSAngleFs
/* 80094E18  A8 01 00 0C */	lha r0, 0xc(r1)
/* 80094E1C  B0 1E 00 60 */	sth r0, 0x60(r30)
/* 80094E20  38 61 00 18 */	addi r3, r1, 0x18
/* 80094E24  38 9E 04 16 */	addi r4, r30, 0x416
/* 80094E28  3B BE 00 62 */	addi r29, r30, 0x62
/* 80094E2C  7F A5 EB 78 */	mr r5, r29
/* 80094E30  48 1D C3 75 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80094E34  38 61 00 14 */	addi r3, r1, 0x14
/* 80094E38  38 81 00 18 */	addi r4, r1, 0x18
/* 80094E3C  FC 20 F8 90 */	fmr f1, f31
/* 80094E40  48 1D C4 25 */	bl __ml__7cSAngleCFf
/* 80094E44  38 61 00 10 */	addi r3, r1, 0x10
/* 80094E48  7F A4 EB 78 */	mr r4, r29
/* 80094E4C  38 A1 00 14 */	addi r5, r1, 0x14
/* 80094E50  48 1D C3 25 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80094E54  38 61 00 08 */	addi r3, r1, 8
/* 80094E58  A8 81 00 10 */	lha r4, 0x10(r1)
/* 80094E5C  48 1D C1 3D */	bl __ct__7cSAngleFs
/* 80094E60  A8 01 00 08 */	lha r0, 8(r1)
/* 80094E64  B0 1E 00 62 */	sth r0, 0x62(r30)
/* 80094E68  38 61 00 6C */	addi r3, r1, 0x6c
/* 80094E6C  38 9E 00 5C */	addi r4, r30, 0x5c
/* 80094E70  48 1D CC 45 */	bl Xyz__7cSGlobeCFv
/* 80094E74  38 61 00 60 */	addi r3, r1, 0x60
/* 80094E78  38 9E 00 64 */	addi r4, r30, 0x64
/* 80094E7C  38 A1 00 6C */	addi r5, r1, 0x6c
/* 80094E80  48 1D 1C 65 */	bl __pl__4cXyzCFRC3Vec
/* 80094E84  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80094E88  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80094E8C  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80094E90  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 80094E94  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80094E98  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80094E9C  38 61 00 54 */	addi r3, r1, 0x54
/* 80094EA0  38 81 00 E4 */	addi r4, r1, 0xe4
/* 80094EA4  38 BE 00 70 */	addi r5, r30, 0x70
/* 80094EA8  48 1D 1C 8D */	bl __mi__4cXyzCFRC3Vec
/* 80094EAC  38 61 00 48 */	addi r3, r1, 0x48
/* 80094EB0  38 81 00 54 */	addi r4, r1, 0x54
/* 80094EB4  C0 3E 04 04 */	lfs f1, 0x404(r30)
/* 80094EB8  48 1D 1C CD */	bl __ml__4cXyzCFf
/* 80094EBC  38 7E 00 70 */	addi r3, r30, 0x70
/* 80094EC0  38 81 00 48 */	addi r4, r1, 0x48
/* 80094EC4  7C 65 1B 78 */	mr r5, r3
/* 80094EC8  48 2B 21 C9 */	bl PSVECAdd
/* 80094ECC  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80094ED0  C0 1E 04 00 */	lfs f0, 0x400(r30)
/* 80094ED4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80094ED8  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80094EDC  EC 01 00 2A */	fadds f0, f1, f0
/* 80094EE0  D0 1E 00 80 */	stfs f0, 0x80(r30)
/* 80094EE4  80 1E 04 08 */	lwz r0, 0x408(r30)
/* 80094EE8  2C 00 00 01 */	cmpwi r0, 1
/* 80094EEC  41 82 00 08 */	beq lbl_80094EF4
/* 80094EF0  48 00 00 CC */	b lbl_80094FBC
lbl_80094EF4:
/* 80094EF4  80 7E 00 00 */	lwz r3, 0(r30)
/* 80094EF8  4B F8 94 11 */	bl fopCamM_GetParam__FP12camera_class
/* 80094EFC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80094F00  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80094F04  1C 03 00 38 */	mulli r0, r3, 0x38
/* 80094F08  7C 64 02 14 */	add r3, r4, r0
/* 80094F0C  88 03 5D 78 */	lbz r0, 0x5d78(r3)
/* 80094F10  7C 00 07 74 */	extsb r0, r0
/* 80094F14  1C 00 00 2C */	mulli r0, r0, 0x2c
/* 80094F18  7C 64 02 14 */	add r3, r4, r0
/* 80094F1C  3B A3 5D 60 */	addi r29, r3, 0x5d60
/* 80094F20  38 61 00 3C */	addi r3, r1, 0x3c
/* 80094F24  7F C4 F3 78 */	mr r4, r30
/* 80094F28  80 BE 04 0C */	lwz r5, 0x40c(r30)
/* 80094F2C  48 00 28 61 */	bl eyePos__9dCamera_cFP10fopAc_ac_c
/* 80094F30  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80094F34  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80094F38  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80094F3C  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80094F40  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80094F44  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80094F48  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80094F4C  38 81 00 CC */	addi r4, r1, 0xcc
/* 80094F50  4B F8 03 C1 */	bl mDoLib_project__FP3VecP3Vec
/* 80094F54  7F C3 F3 78 */	mr r3, r30
/* 80094F58  C0 21 00 CC */	lfs f1, 0xcc(r1)
/* 80094F5C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80094F60  EC 21 00 24 */	fdivs f1, f1, f0
/* 80094F64  C0 41 00 D0 */	lfs f2, 0xd0(r1)
/* 80094F68  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80094F6C  EC 42 00 24 */	fdivs f2, f2, f0
/* 80094F70  C0 62 8E B8 */	lfs f3, lit_5141(r2)
/* 80094F74  48 0E C2 AD */	bl SetBlurePosition__9dCamera_cFfff
/* 80094F78  7F C3 F3 78 */	mr r3, r30
/* 80094F7C  C0 22 91 78 */	lfs f1, lit_10278(r2)
/* 80094F80  C0 02 91 84 */	lfs f0, lit_10281(r2)
/* 80094F84  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80094F88  EC 21 00 2A */	fadds f1, f1, f0
/* 80094F8C  48 0E C2 7D */	bl SetBlureAlpha__9dCamera_cFf
/* 80094F90  7F C3 F3 78 */	mr r3, r30
/* 80094F94  C0 22 91 88 */	lfs f1, lit_10282(r2)
/* 80094F98  C0 02 91 8C */	lfs f0, lit_10283(r2)
/* 80094F9C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80094FA0  EC 21 00 2A */	fadds f1, f1, f0
/* 80094FA4  C0 42 90 04 */	lfs f2, lit_8226(r2)
/* 80094FA8  C0 02 91 90 */	lfs f0, lit_10284(r2)
/* 80094FAC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80094FB0  EC 42 00 28 */	fsubs f2, f2, f0
/* 80094FB4  C0 62 8E B8 */	lfs f3, lit_5141(r2)
/* 80094FB8  48 0E C2 59 */	bl SetBlureScale__9dCamera_cFfff
lbl_80094FBC:
/* 80094FBC  80 7E 03 F4 */	lwz r3, 0x3f4(r30)
/* 80094FC0  38 03 FF FF */	addi r0, r3, -1
/* 80094FC4  90 1E 03 F4 */	stw r0, 0x3f4(r30)
/* 80094FC8  80 1E 03 F4 */	lwz r0, 0x3f4(r30)
/* 80094FCC  2C 00 00 00 */	cmpwi r0, 0
/* 80094FD0  41 81 00 1C */	bgt lbl_80094FEC
/* 80094FD4  38 00 00 63 */	li r0, 0x63
/* 80094FD8  90 1E 03 E8 */	stw r0, 0x3e8(r30)
/* 80094FDC  48 00 00 10 */	b lbl_80094FEC
lbl_80094FE0:
/* 80094FE0  3B E0 00 01 */	li r31, 1
/* 80094FE4  38 00 00 01 */	li r0, 1
/* 80094FE8  98 1E 01 58 */	stb r0, 0x158(r30)
lbl_80094FEC:
/* 80094FEC  7F E3 FB 78 */	mr r3, r31
lbl_80094FF0:
/* 80094FF0  E3 E1 01 18 */	psq_l f31, 280(r1), 0, 0 /* qr0 */
/* 80094FF4  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 80094FF8  39 61 01 10 */	addi r11, r1, 0x110
/* 80094FFC  48 2C D2 2D */	bl _restgpr_29
/* 80095000  80 01 01 24 */	lwz r0, 0x124(r1)
/* 80095004  7C 08 03 A6 */	mtlr r0
/* 80095008  38 21 01 20 */	addi r1, r1, 0x120
/* 8009500C  4E 80 00 20 */	blr 
