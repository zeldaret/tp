lbl_80BFCBF0:
/* 80BFCBF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BFCBF4  7C 08 02 A6 */	mflr r0
/* 80BFCBF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BFCBFC  39 61 00 30 */	addi r11, r1, 0x30
/* 80BFCC00  4B 76 55 D9 */	bl _savegpr_28
/* 80BFCC04  7C 7F 1B 78 */	mr r31, r3
/* 80BFCC08  3C 80 80 C0 */	lis r4, lit_3686@ha /* 0x80BFD32C@ha */
/* 80BFCC0C  3B C4 D3 2C */	addi r30, r4, lit_3686@l /* 0x80BFD32C@l */
/* 80BFCC10  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BFCC14  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BFCC18  40 82 01 88 */	bne lbl_80BFCDA0
/* 80BFCC1C  7F E0 FB 79 */	or. r0, r31, r31
/* 80BFCC20  41 82 01 74 */	beq lbl_80BFCD94
/* 80BFCC24  7C 1D 03 78 */	mr r29, r0
/* 80BFCC28  4B 41 BF 3D */	bl __ct__10fopAc_ac_cFv
/* 80BFCC2C  38 7D 05 78 */	addi r3, r29, 0x578
/* 80BFCC30  4B 6C 37 99 */	bl __ct__10Z2CreatureFv
/* 80BFCC34  38 7D 06 14 */	addi r3, r29, 0x614
/* 80BFCC38  3C 80 80 C0 */	lis r4, __ct__4cXyzFv@ha /* 0x80BFD238@ha */
/* 80BFCC3C  38 84 D2 38 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80BFD238@l */
/* 80BFCC40  3C A0 80 C0 */	lis r5, __dt__4cXyzFv@ha /* 0x80BFB3D4@ha */
/* 80BFCC44  38 A5 B3 D4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80BFB3D4@l */
/* 80BFCC48  38 C0 00 0C */	li r6, 0xc
/* 80BFCC4C  38 E0 00 02 */	li r7, 2
/* 80BFCC50  4B 76 51 11 */	bl __construct_array
/* 80BFCC54  38 7D 06 54 */	addi r3, r29, 0x654
/* 80BFCC58  3C 80 80 C0 */	lis r4, __ct__4cXyzFv@ha /* 0x80BFD238@ha */
/* 80BFCC5C  38 84 D2 38 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80BFD238@l */
/* 80BFCC60  3C A0 80 C0 */	lis r5, __dt__4cXyzFv@ha /* 0x80BFB3D4@ha */
/* 80BFCC64  38 A5 B3 D4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80BFB3D4@l */
/* 80BFCC68  38 C0 00 0C */	li r6, 0xc
/* 80BFCC6C  38 E0 00 02 */	li r7, 2
/* 80BFCC70  4B 76 50 F1 */	bl __construct_array
/* 80BFCC74  38 7D 06 6C */	addi r3, r29, 0x66c
/* 80BFCC78  3C 80 80 C0 */	lis r4, __ct__4cXyzFv@ha /* 0x80BFD238@ha */
/* 80BFCC7C  38 84 D2 38 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80BFD238@l */
/* 80BFCC80  3C A0 80 C0 */	lis r5, __dt__4cXyzFv@ha /* 0x80BFB3D4@ha */
/* 80BFCC84  38 A5 B3 D4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80BFB3D4@l */
/* 80BFCC88  38 C0 00 0C */	li r6, 0xc
/* 80BFCC8C  38 E0 00 02 */	li r7, 2
/* 80BFCC90  4B 76 50 D1 */	bl __construct_array
/* 80BFCC94  38 7D 06 84 */	addi r3, r29, 0x684
/* 80BFCC98  3C 80 80 C0 */	lis r4, __ct__4cXyzFv@ha /* 0x80BFD238@ha */
/* 80BFCC9C  38 84 D2 38 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80BFD238@l */
/* 80BFCCA0  3C A0 80 C0 */	lis r5, __dt__4cXyzFv@ha /* 0x80BFB3D4@ha */
/* 80BFCCA4  38 A5 B3 D4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80BFB3D4@l */
/* 80BFCCA8  38 C0 00 0C */	li r6, 0xc
/* 80BFCCAC  38 E0 00 06 */	li r7, 6
/* 80BFCCB0  4B 76 50 B1 */	bl __construct_array
/* 80BFCCB4  38 7D 06 CC */	addi r3, r29, 0x6cc
/* 80BFCCB8  3C 80 80 C0 */	lis r4, __ct__4cXyzFv@ha /* 0x80BFD238@ha */
/* 80BFCCBC  38 84 D2 38 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80BFD238@l */
/* 80BFCCC0  3C A0 80 C0 */	lis r5, __dt__4cXyzFv@ha /* 0x80BFB3D4@ha */
/* 80BFCCC4  38 A5 B3 D4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80BFB3D4@l */
/* 80BFCCC8  38 C0 00 0C */	li r6, 0xc
/* 80BFCCCC  38 E0 00 06 */	li r7, 6
/* 80BFCCD0  4B 76 50 91 */	bl __construct_array
/* 80BFCCD4  38 7D 07 30 */	addi r3, r29, 0x730
/* 80BFCCD8  4B 47 91 D5 */	bl __ct__12dBgS_AcchCirFv
/* 80BFCCDC  3B 9D 07 70 */	addi r28, r29, 0x770
/* 80BFCCE0  7F 83 E3 78 */	mr r3, r28
/* 80BFCCE4  4B 47 93 BD */	bl __ct__9dBgS_AcchFv
/* 80BFCCE8  3C 60 80 C0 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80BFD560@ha */
/* 80BFCCEC  38 63 D5 60 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80BFD560@l */
/* 80BFCCF0  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80BFCCF4  38 03 00 0C */	addi r0, r3, 0xc
/* 80BFCCF8  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80BFCCFC  38 03 00 18 */	addi r0, r3, 0x18
/* 80BFCD00  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80BFCD04  38 7C 00 14 */	addi r3, r28, 0x14
/* 80BFCD08  4B 47 C1 61 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80BFCD0C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80BFCD10  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80BFCD14  90 1D 09 64 */	stw r0, 0x964(r29)
/* 80BFCD18  38 7D 09 68 */	addi r3, r29, 0x968
/* 80BFCD1C  4B 48 6A 45 */	bl __ct__10dCcD_GSttsFv
/* 80BFCD20  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80BFCD24  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80BFCD28  90 7D 09 64 */	stw r3, 0x964(r29)
/* 80BFCD2C  38 03 00 20 */	addi r0, r3, 0x20
/* 80BFCD30  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80BFCD34  3B 9D 09 88 */	addi r28, r29, 0x988
/* 80BFCD38  7F 83 E3 78 */	mr r3, r28
/* 80BFCD3C  4B 48 6C ED */	bl __ct__12dCcD_GObjInfFv
/* 80BFCD40  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BFCD44  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BFCD48  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80BFCD4C  3C 60 80 C0 */	lis r3, __vt__8cM3dGAab@ha /* 0x80BFD554@ha */
/* 80BFCD50  38 03 D5 54 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BFD554@l */
/* 80BFCD54  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80BFCD58  3C 60 80 C0 */	lis r3, __vt__8cM3dGSph@ha /* 0x80BFD548@ha */
/* 80BFCD5C  38 03 D5 48 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80BFD548@l */
/* 80BFCD60  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80BFCD64  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80BFCD68  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80BFCD6C  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80BFCD70  38 03 00 58 */	addi r0, r3, 0x58
/* 80BFCD74  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80BFCD78  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80BFCD7C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80BFCD80  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80BFCD84  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BFCD88  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80BFCD8C  38 03 00 84 */	addi r0, r3, 0x84
/* 80BFCD90  90 1C 01 34 */	stw r0, 0x134(r28)
lbl_80BFCD94:
/* 80BFCD94  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BFCD98  60 00 00 08 */	ori r0, r0, 8
/* 80BFCD9C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BFCDA0:
/* 80BFCDA0  38 7F 05 68 */	addi r3, r31, 0x568
/* 80BFCDA4  3C 80 80 C0 */	lis r4, d_a_obj_gm__stringBase0@ha /* 0x80BFD3C0@ha */
/* 80BFCDA8  38 84 D3 C0 */	addi r4, r4, d_a_obj_gm__stringBase0@l /* 0x80BFD3C0@l */
/* 80BFCDAC  4B 43 01 11 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BFCDB0  7C 7D 1B 78 */	mr r29, r3
/* 80BFCDB4  2C 1D 00 04 */	cmpwi r29, 4
/* 80BFCDB8  40 82 02 98 */	bne lbl_80BFD050
/* 80BFCDBC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BFCDC0  98 1F 05 65 */	stb r0, 0x565(r31)
/* 80BFCDC4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BFCDC8  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80BFCDCC  98 1F 05 70 */	stb r0, 0x570(r31)
/* 80BFCDD0  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80BFCDD4  28 00 00 0F */	cmplwi r0, 0xf
/* 80BFCDD8  40 82 00 0C */	bne lbl_80BFCDE4
/* 80BFCDDC  38 00 00 00 */	li r0, 0
/* 80BFCDE0  98 1F 05 70 */	stb r0, 0x570(r31)
lbl_80BFCDE4:
/* 80BFCDE4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BFCDE8  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80BFCDEC  98 1F 05 71 */	stb r0, 0x571(r31)
/* 80BFCDF0  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80BFCDF4  98 1F 05 72 */	stb r0, 0x572(r31)
/* 80BFCDF8  38 00 00 00 */	li r0, 0
/* 80BFCDFC  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80BFCE00  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80BFCE04  88 9F 05 72 */	lbz r4, 0x572(r31)
/* 80BFCE08  28 04 00 00 */	cmplwi r4, 0
/* 80BFCE0C  41 82 00 28 */	beq lbl_80BFCE34
/* 80BFCE10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BFCE14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BFCE18  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BFCE1C  7C 05 07 74 */	extsb r5, r0
/* 80BFCE20  4B 43 85 41 */	bl isSwitch__10dSv_info_cCFii
/* 80BFCE24  2C 03 00 00 */	cmpwi r3, 0
/* 80BFCE28  41 82 00 0C */	beq lbl_80BFCE34
/* 80BFCE2C  38 60 00 05 */	li r3, 5
/* 80BFCE30  48 00 02 24 */	b lbl_80BFD054
lbl_80BFCE34:
/* 80BFCE34  7F E3 FB 78 */	mr r3, r31
/* 80BFCE38  3C 80 80 C0 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80BFCB74@ha */
/* 80BFCE3C  38 84 CB 74 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80BFCB74@l */
/* 80BFCE40  38 A0 10 00 */	li r5, 0x1000
/* 80BFCE44  4B 41 D6 6D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80BFCE48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BFCE4C  40 82 00 0C */	bne lbl_80BFCE58
/* 80BFCE50  38 60 00 05 */	li r3, 5
/* 80BFCE54  48 00 02 00 */	b lbl_80BFD054
lbl_80BFCE58:
/* 80BFCE58  3C 60 80 C0 */	lis r3, data_80BFD598@ha /* 0x80BFD598@ha */
/* 80BFCE5C  8C 03 D5 98 */	lbzu r0, data_80BFD598@l(r3)  /* 0x80BFD598@l */
/* 80BFCE60  28 00 00 00 */	cmplwi r0, 0
/* 80BFCE64  40 82 00 20 */	bne lbl_80BFCE84
/* 80BFCE68  38 00 00 01 */	li r0, 1
/* 80BFCE6C  98 1F 0A F0 */	stb r0, 0xaf0(r31)
/* 80BFCE70  98 03 00 00 */	stb r0, 0(r3)
/* 80BFCE74  38 00 FF FF */	li r0, -1
/* 80BFCE78  3C 60 80 C0 */	lis r3, l_HIO@ha /* 0x80BFD5A8@ha */
/* 80BFCE7C  38 63 D5 A8 */	addi r3, r3, l_HIO@l /* 0x80BFD5A8@l */
/* 80BFCE80  98 03 00 04 */	stb r0, 4(r3)
lbl_80BFCE84:
/* 80BFCE84  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80BFCE88  38 03 00 24 */	addi r0, r3, 0x24
/* 80BFCE8C  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80BFCE90  7F E3 FB 78 */	mr r3, r31
/* 80BFCE94  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80BFCE98  FC 40 08 90 */	fmr f2, f1
/* 80BFCE9C  FC 60 08 90 */	fmr f3, f1
/* 80BFCEA0  4B 41 D6 89 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80BFCEA4  7F E3 FB 78 */	mr r3, r31
/* 80BFCEA8  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 80BFCEAC  FC 40 08 90 */	fmr f2, f1
/* 80BFCEB0  FC 60 08 90 */	fmr f3, f1
/* 80BFCEB4  4B 41 D6 85 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80BFCEB8  38 00 00 04 */	li r0, 4
/* 80BFCEBC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80BFCEC0  38 7F 09 4C */	addi r3, r31, 0x94c
/* 80BFCEC4  38 80 00 FF */	li r4, 0xff
/* 80BFCEC8  38 A0 00 00 */	li r5, 0
/* 80BFCECC  7F E6 FB 78 */	mr r6, r31
/* 80BFCED0  4B 48 69 91 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BFCED4  38 7F 09 88 */	addi r3, r31, 0x988
/* 80BFCED8  3C 80 80 C0 */	lis r4, cc_sph_src@ha /* 0x80BFD494@ha */
/* 80BFCEDC  38 84 D4 94 */	addi r4, r4, cc_sph_src@l /* 0x80BFD494@l */
/* 80BFCEE0  4B 48 7B 55 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80BFCEE4  38 1F 09 4C */	addi r0, r31, 0x94c
/* 80BFCEE8  90 1F 09 CC */	stw r0, 0x9cc(r31)
/* 80BFCEEC  38 7F 05 78 */	addi r3, r31, 0x578
/* 80BFCEF0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BFCEF4  7C 85 23 78 */	mr r5, r4
/* 80BFCEF8  38 C0 00 03 */	li r6, 3
/* 80BFCEFC  38 E0 00 01 */	li r7, 1
/* 80BFCF00  4B 6C 36 31 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80BFCF04  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80BFCF08  28 00 00 05 */	cmplwi r0, 5
/* 80BFCF0C  40 80 00 34 */	bge lbl_80BFCF40
/* 80BFCF10  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 80BFCF14  4B 66 AA 41 */	bl cM_rndF__Ff
/* 80BFCF18  FC 00 08 1E */	fctiwz f0, f1
/* 80BFCF1C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80BFCF20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFCF24  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80BFCF28  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 80BFCF2C  4B 66 AA 61 */	bl cM_rndFX__Ff
/* 80BFCF30  FC 00 08 1E */	fctiwz f0, f1
/* 80BFCF34  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80BFCF38  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80BFCF3C  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
lbl_80BFCF40:
/* 80BFCF40  38 00 00 00 */	li r0, 0
/* 80BFCF44  90 01 00 08 */	stw r0, 8(r1)
/* 80BFCF48  38 7F 07 70 */	addi r3, r31, 0x770
/* 80BFCF4C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BFCF50  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80BFCF54  7F E6 FB 78 */	mr r6, r31
/* 80BFCF58  38 E0 00 01 */	li r7, 1
/* 80BFCF5C  39 1F 07 30 */	addi r8, r31, 0x730
/* 80BFCF60  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80BFCF64  39 40 00 00 */	li r10, 0
/* 80BFCF68  4B 47 92 E1 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80BFCF6C  38 7F 07 30 */	addi r3, r31, 0x730
/* 80BFCF70  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80BFCF74  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80BFCF78  54 00 10 3A */	slwi r0, r0, 2
/* 80BFCF7C  3C 80 80 C0 */	lis r4, obj_size@ha /* 0x80BFD3E8@ha */
/* 80BFCF80  38 84 D3 E8 */	addi r4, r4, obj_size@l /* 0x80BFD3E8@l */
/* 80BFCF84  7C 44 04 2E */	lfsx f2, r4, r0
/* 80BFCF88  4B 47 8F D1 */	bl SetWall__12dBgS_AcchCirFff
/* 80BFCF8C  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 80BFCF90  4B 66 A9 C5 */	bl cM_rndF__Ff
/* 80BFCF94  FC 00 08 1E */	fctiwz f0, f1
/* 80BFCF98  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80BFCF9C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80BFCFA0  B0 1F 06 08 */	sth r0, 0x608(r31)
/* 80BFCFA4  7F E3 FB 78 */	mr r3, r31
/* 80BFCFA8  4B FF F9 01 */	bl daObj_Gm_Execute__FP12obj_gm_class
/* 80BFCFAC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BFCFB0  7C 07 07 74 */	extsb r7, r0
/* 80BFCFB4  38 00 00 00 */	li r0, 0
/* 80BFCFB8  90 01 00 08 */	stw r0, 8(r1)
/* 80BFCFBC  38 60 00 F0 */	li r3, 0xf0
/* 80BFCFC0  28 1F 00 00 */	cmplwi r31, 0
/* 80BFCFC4  41 82 00 0C */	beq lbl_80BFCFD0
/* 80BFCFC8  80 9F 00 04 */	lwz r4, 4(r31)
/* 80BFCFCC  48 00 00 08 */	b lbl_80BFCFD4
lbl_80BFCFD0:
/* 80BFCFD0  38 80 FF FF */	li r4, -1
lbl_80BFCFD4:
/* 80BFCFD4  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80BFCFD8  54 05 08 3C */	slwi r5, r0, 1
/* 80BFCFDC  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80BFCFE0  39 1F 04 DC */	addi r8, r31, 0x4dc
/* 80BFCFE4  39 20 00 00 */	li r9, 0
/* 80BFCFE8  39 40 FF FF */	li r10, -1
/* 80BFCFEC  4B 41 CF 05 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80BFCFF0  88 1F 05 71 */	lbz r0, 0x571(r31)
/* 80BFCFF4  28 00 00 01 */	cmplwi r0, 1
/* 80BFCFF8  40 82 00 50 */	bne lbl_80BFD048
/* 80BFCFFC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BFD000  7C 07 07 74 */	extsb r7, r0
/* 80BFD004  38 00 00 00 */	li r0, 0
/* 80BFD008  90 01 00 08 */	stw r0, 8(r1)
/* 80BFD00C  38 60 00 F0 */	li r3, 0xf0
/* 80BFD010  28 1F 00 00 */	cmplwi r31, 0
/* 80BFD014  41 82 00 0C */	beq lbl_80BFD020
/* 80BFD018  80 9F 00 04 */	lwz r4, 4(r31)
/* 80BFD01C  48 00 00 08 */	b lbl_80BFD024
lbl_80BFD020:
/* 80BFD020  38 80 FF FF */	li r4, -1
lbl_80BFD024:
/* 80BFD024  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80BFD028  54 00 08 3C */	slwi r0, r0, 1
/* 80BFD02C  60 05 00 01 */	ori r5, r0, 1
/* 80BFD030  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80BFD034  39 1F 04 DC */	addi r8, r31, 0x4dc
/* 80BFD038  39 20 00 00 */	li r9, 0
/* 80BFD03C  39 40 FF FF */	li r10, -1
/* 80BFD040  4B 41 CE B1 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80BFD044  48 00 00 0C */	b lbl_80BFD050
lbl_80BFD048:
/* 80BFD048  38 00 00 00 */	li r0, 0
/* 80BFD04C  B0 1F 04 DC */	sth r0, 0x4dc(r31)
lbl_80BFD050:
/* 80BFD050  7F A3 EB 78 */	mr r3, r29
lbl_80BFD054:
/* 80BFD054  39 61 00 30 */	addi r11, r1, 0x30
/* 80BFD058  4B 76 51 CD */	bl _restgpr_28
/* 80BFD05C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BFD060  7C 08 03 A6 */	mtlr r0
/* 80BFD064  38 21 00 30 */	addi r1, r1, 0x30
/* 80BFD068  4E 80 00 20 */	blr 
