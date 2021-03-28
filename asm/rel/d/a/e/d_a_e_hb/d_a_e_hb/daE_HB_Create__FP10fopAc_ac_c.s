lbl_804FFD60:
/* 804FFD60  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804FFD64  7C 08 02 A6 */	mflr r0
/* 804FFD68  90 01 00 44 */	stw r0, 0x44(r1)
/* 804FFD6C  39 61 00 40 */	addi r11, r1, 0x40
/* 804FFD70  4B E6 24 58 */	b _savegpr_24
/* 804FFD74  7C 7F 1B 78 */	mr r31, r3
/* 804FFD78  3C 80 80 50 */	lis r4, cNullVec__6Z2Calc@ha
/* 804FFD7C  3B A4 0C 3C */	addi r29, r4, cNullVec__6Z2Calc@l
/* 804FFD80  3C 80 80 50 */	lis r4, lit_3788@ha
/* 804FFD84  3B C4 0B 04 */	addi r30, r4, lit_3788@l
/* 804FFD88  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 804FFD8C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804FFD90  40 82 01 B4 */	bne lbl_804FFF44
/* 804FFD94  7F E0 FB 79 */	or. r0, r31, r31
/* 804FFD98  41 82 01 A0 */	beq lbl_804FFF38
/* 804FFD9C  7C 19 03 78 */	mr r25, r0
/* 804FFDA0  4B B1 8D C4 */	b __ct__10fopAc_ac_cFv
/* 804FFDA4  38 79 05 BC */	addi r3, r25, 0x5bc
/* 804FFDA8  4B DC 11 BC */	b __ct__15Z2CreatureEnemyFv
/* 804FFDAC  38 79 06 A0 */	addi r3, r25, 0x6a0
/* 804FFDB0  3C 80 80 50 */	lis r4, __ct__4cXyzFv@ha
/* 804FFDB4  38 84 05 84 */	addi r4, r4, __ct__4cXyzFv@l
/* 804FFDB8  3C A0 80 50 */	lis r5, __dt__4cXyzFv@ha
/* 804FFDBC  38 A5 0A B4 */	addi r5, r5, __dt__4cXyzFv@l
/* 804FFDC0  38 C0 00 0C */	li r6, 0xc
/* 804FFDC4  38 E0 00 0C */	li r7, 0xc
/* 804FFDC8  4B E6 1F 98 */	b __construct_array
/* 804FFDCC  38 79 07 30 */	addi r3, r25, 0x730
/* 804FFDD0  3C 80 80 50 */	lis r4, __ct__5csXyzFv@ha
/* 804FFDD4  38 84 05 80 */	addi r4, r4, __ct__5csXyzFv@l
/* 804FFDD8  3C A0 80 50 */	lis r5, __dt__5csXyzFv@ha
/* 804FFDDC  38 A5 0A 78 */	addi r5, r5, __dt__5csXyzFv@l
/* 804FFDE0  38 C0 00 06 */	li r6, 6
/* 804FFDE4  38 E0 00 0C */	li r7, 0xc
/* 804FFDE8  4B E6 1F 78 */	b __construct_array
/* 804FFDEC  3C 60 80 50 */	lis r3, __vt__18mDoExt_3DlineMat_c@ha
/* 804FFDF0  38 03 0E 38 */	addi r0, r3, __vt__18mDoExt_3DlineMat_c@l
/* 804FFDF4  90 19 08 08 */	stw r0, 0x808(r25)
/* 804FFDF8  3C 60 80 3A */	lis r3, __vt__19mDoExt_3DlineMat1_c@ha
/* 804FFDFC  38 03 32 48 */	addi r0, r3, __vt__19mDoExt_3DlineMat1_c@l
/* 804FFE00  90 19 08 08 */	stw r0, 0x808(r25)
/* 804FFE04  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 804FFE08  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 804FFE0C  90 19 08 78 */	stw r0, 0x878(r25)
/* 804FFE10  38 79 08 7C */	addi r3, r25, 0x87c
/* 804FFE14  4B B8 39 4C */	b __ct__10dCcD_GSttsFv
/* 804FFE18  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 804FFE1C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 804FFE20  90 79 08 78 */	stw r3, 0x878(r25)
/* 804FFE24  38 03 00 20 */	addi r0, r3, 0x20
/* 804FFE28  90 19 08 7C */	stw r0, 0x87c(r25)
/* 804FFE2C  3B 19 08 9C */	addi r24, r25, 0x89c
/* 804FFE30  7F 03 C3 78 */	mr r3, r24
/* 804FFE34  4B B8 3B F4 */	b __ct__12dCcD_GObjInfFv
/* 804FFE38  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 804FFE3C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 804FFE40  90 18 01 20 */	stw r0, 0x120(r24)
/* 804FFE44  3C 60 80 50 */	lis r3, __vt__8cM3dGAab@ha
/* 804FFE48  38 03 0E 2C */	addi r0, r3, __vt__8cM3dGAab@l
/* 804FFE4C  90 18 01 1C */	stw r0, 0x11c(r24)
/* 804FFE50  3C 60 80 50 */	lis r3, __vt__8cM3dGSph@ha
/* 804FFE54  38 03 0E 20 */	addi r0, r3, __vt__8cM3dGSph@l
/* 804FFE58  90 18 01 34 */	stw r0, 0x134(r24)
/* 804FFE5C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 804FFE60  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 804FFE64  90 78 01 20 */	stw r3, 0x120(r24)
/* 804FFE68  3B 83 00 58 */	addi r28, r3, 0x58
/* 804FFE6C  93 98 01 34 */	stw r28, 0x134(r24)
/* 804FFE70  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 804FFE74  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 804FFE78  90 78 00 3C */	stw r3, 0x3c(r24)
/* 804FFE7C  3B 63 00 2C */	addi r27, r3, 0x2c
/* 804FFE80  93 78 01 20 */	stw r27, 0x120(r24)
/* 804FFE84  3B 43 00 84 */	addi r26, r3, 0x84
/* 804FFE88  93 58 01 34 */	stw r26, 0x134(r24)
/* 804FFE8C  3B 19 09 D4 */	addi r24, r25, 0x9d4
/* 804FFE90  7F 03 C3 78 */	mr r3, r24
/* 804FFE94  4B B8 3B 94 */	b __ct__12dCcD_GObjInfFv
/* 804FFE98  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 804FFE9C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 804FFEA0  90 18 01 20 */	stw r0, 0x120(r24)
/* 804FFEA4  3C 60 80 50 */	lis r3, __vt__8cM3dGAab@ha
/* 804FFEA8  38 03 0E 2C */	addi r0, r3, __vt__8cM3dGAab@l
/* 804FFEAC  90 18 01 1C */	stw r0, 0x11c(r24)
/* 804FFEB0  3C 60 80 50 */	lis r3, __vt__8cM3dGSph@ha
/* 804FFEB4  38 03 0E 20 */	addi r0, r3, __vt__8cM3dGSph@l
/* 804FFEB8  90 18 01 34 */	stw r0, 0x134(r24)
/* 804FFEBC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 804FFEC0  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 804FFEC4  90 18 01 20 */	stw r0, 0x120(r24)
/* 804FFEC8  93 98 01 34 */	stw r28, 0x134(r24)
/* 804FFECC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 804FFED0  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 804FFED4  90 18 00 3C */	stw r0, 0x3c(r24)
/* 804FFED8  93 78 01 20 */	stw r27, 0x120(r24)
/* 804FFEDC  93 58 01 34 */	stw r26, 0x134(r24)
/* 804FFEE0  38 79 0B 10 */	addi r3, r25, 0xb10
/* 804FFEE4  3C 80 80 50 */	lis r4, __ct__8dCcD_SphFv@ha
/* 804FFEE8  38 84 03 44 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 804FFEEC  3C A0 80 50 */	lis r5, __dt__8dCcD_SphFv@ha
/* 804FFEF0  38 A5 03 C8 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 804FFEF4  38 C0 01 38 */	li r6, 0x138
/* 804FFEF8  38 E0 00 04 */	li r7, 4
/* 804FFEFC  4B E6 1E 64 */	b __construct_array
/* 804FFF00  38 79 10 14 */	addi r3, r25, 0x1014
/* 804FFF04  4B B7 5F A8 */	b __ct__12dBgS_AcchCirFv
/* 804FFF08  3B 19 10 54 */	addi r24, r25, 0x1054
/* 804FFF0C  7F 03 C3 78 */	mr r3, r24
/* 804FFF10  4B B7 61 90 */	b __ct__9dBgS_AcchFv
/* 804FFF14  3C 60 80 50 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 804FFF18  38 63 0D FC */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 804FFF1C  90 78 00 10 */	stw r3, 0x10(r24)
/* 804FFF20  38 03 00 0C */	addi r0, r3, 0xc
/* 804FFF24  90 18 00 14 */	stw r0, 0x14(r24)
/* 804FFF28  38 03 00 18 */	addi r0, r3, 0x18
/* 804FFF2C  90 18 00 24 */	stw r0, 0x24(r24)
/* 804FFF30  38 78 00 14 */	addi r3, r24, 0x14
/* 804FFF34  4B B7 8F 34 */	b SetObj__16dBgS_PolyPassChkFv
lbl_804FFF38:
/* 804FFF38  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 804FFF3C  60 00 00 08 */	ori r0, r0, 8
/* 804FFF40  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_804FFF44:
/* 804FFF44  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 804FFF48  3C 80 80 50 */	lis r4, stringBase0@ha
/* 804FFF4C  38 84 0C 34 */	addi r4, r4, stringBase0@l
/* 804FFF50  4B B2 CF 6C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 804FFF54  7C 7A 1B 78 */	mr r26, r3
/* 804FFF58  2C 1A 00 04 */	cmpwi r26, 4
/* 804FFF5C  40 82 02 EC */	bne lbl_80500248
/* 804FFF60  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804FFF64  54 04 46 3E */	srwi r4, r0, 0x18
/* 804FFF68  28 04 00 FF */	cmplwi r4, 0xff
/* 804FFF6C  41 82 00 28 */	beq lbl_804FFF94
/* 804FFF70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804FFF74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804FFF78  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804FFF7C  7C 05 07 74 */	extsb r5, r0
/* 804FFF80  4B B3 53 E0 */	b isSwitch__10dSv_info_cCFii
/* 804FFF84  2C 03 00 00 */	cmpwi r3, 0
/* 804FFF88  41 82 00 0C */	beq lbl_804FFF94
/* 804FFF8C  38 60 00 05 */	li r3, 5
/* 804FFF90  48 00 02 BC */	b lbl_8050024C
lbl_804FFF94:
/* 804FFF94  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804FFF98  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 804FFF9C  98 1F 05 B4 */	stb r0, 0x5b4(r31)
/* 804FFFA0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804FFFA4  54 00 E7 BE */	rlwinm r0, r0, 0x1c, 0x1e, 0x1f
/* 804FFFA8  98 1F 05 B6 */	stb r0, 0x5b6(r31)
/* 804FFFAC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804FFFB0  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 804FFFB4  98 1F 05 B7 */	stb r0, 0x5b7(r31)
/* 804FFFB8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804FFFBC  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 804FFFC0  98 1F 05 B5 */	stb r0, 0x5b5(r31)
/* 804FFFC4  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 804FFFC8  28 00 00 0F */	cmplwi r0, 0xf
/* 804FFFCC  40 82 00 0C */	bne lbl_804FFFD8
/* 804FFFD0  38 00 00 00 */	li r0, 0
/* 804FFFD4  98 1F 05 B4 */	stb r0, 0x5b4(r31)
lbl_804FFFD8:
/* 804FFFD8  88 1F 05 B5 */	lbz r0, 0x5b5(r31)
/* 804FFFDC  28 00 00 FF */	cmplwi r0, 0xff
/* 804FFFE0  41 82 00 0C */	beq lbl_804FFFEC
/* 804FFFE4  28 00 00 00 */	cmplwi r0, 0
/* 804FFFE8  40 82 00 10 */	bne lbl_804FFFF8
lbl_804FFFEC:
/* 804FFFEC  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 804FFFF0  D0 1F 06 70 */	stfs f0, 0x670(r31)
/* 804FFFF4  48 00 00 28 */	b lbl_8050001C
lbl_804FFFF8:
/* 804FFFF8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 804FFFFC  C8 3E 01 28 */	lfd f1, 0x128(r30)
/* 80500000  90 01 00 14 */	stw r0, 0x14(r1)
/* 80500004  3C 00 43 30 */	lis r0, 0x4330
/* 80500008  90 01 00 10 */	stw r0, 0x10(r1)
/* 8050000C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80500010  EC 00 08 28 */	fsubs f0, f0, f1
/* 80500014  EC 02 00 32 */	fmuls f0, f2, f0
/* 80500018  D0 1F 06 70 */	stfs f0, 0x670(r31)
lbl_8050001C:
/* 8050001C  7F E3 FB 78 */	mr r3, r31
/* 80500020  3C 80 80 50 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80500024  38 84 FB 6C */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80500028  38 A0 40 60 */	li r5, 0x4060
/* 8050002C  4B B1 A4 84 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80500030  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80500034  40 82 00 0C */	bne lbl_80500040
/* 80500038  38 60 00 05 */	li r3, 5
/* 8050003C  48 00 02 10 */	b lbl_8050024C
lbl_80500040:
/* 80500040  3C 60 80 50 */	lis r3, data_80500E60@ha
/* 80500044  8C 03 0E 60 */	lbzu r0, data_80500E60@l(r3)
/* 80500048  28 00 00 00 */	cmplwi r0, 0
/* 8050004C  40 82 00 20 */	bne lbl_8050006C
/* 80500050  38 00 00 01 */	li r0, 1
/* 80500054  98 1F 12 64 */	stb r0, 0x1264(r31)
/* 80500058  98 03 00 00 */	stb r0, 0(r3)
/* 8050005C  38 00 FF FF */	li r0, -1
/* 80500060  3C 60 80 50 */	lis r3, l_HIO@ha
/* 80500064  38 63 0E 70 */	addi r3, r3, l_HIO@l
/* 80500068  98 03 00 04 */	stb r0, 4(r3)
lbl_8050006C:
/* 8050006C  38 00 00 04 */	li r0, 4
/* 80500070  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80500074  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80500078  80 63 00 04 */	lwz r3, 4(r3)
/* 8050007C  38 03 00 24 */	addi r0, r3, 0x24
/* 80500080  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80500084  7F E3 FB 78 */	mr r3, r31
/* 80500088  C0 3E 01 14 */	lfs f1, 0x114(r30)
/* 8050008C  C0 5E 01 18 */	lfs f2, 0x118(r30)
/* 80500090  FC 60 08 90 */	fmr f3, f1
/* 80500094  4B B1 A4 94 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80500098  7F E3 FB 78 */	mr r3, r31
/* 8050009C  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 805000A0  C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 805000A4  FC 60 08 90 */	fmr f3, f1
/* 805000A8  4B B1 A4 90 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 805000AC  38 00 00 1E */	li r0, 0x1e
/* 805000B0  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 805000B4  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 805000B8  38 7F 08 60 */	addi r3, r31, 0x860
/* 805000BC  38 80 00 64 */	li r4, 0x64
/* 805000C0  38 A0 00 00 */	li r5, 0
/* 805000C4  7F E6 FB 78 */	mr r6, r31
/* 805000C8  4B B8 37 98 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 805000CC  38 7F 08 9C */	addi r3, r31, 0x89c
/* 805000D0  38 9D 00 8C */	addi r4, r29, 0x8c
/* 805000D4  4B B8 49 60 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805000D8  38 1F 08 60 */	addi r0, r31, 0x860
/* 805000DC  90 1F 08 E0 */	stw r0, 0x8e0(r31)
/* 805000E0  38 7F 09 D4 */	addi r3, r31, 0x9d4
/* 805000E4  38 9D 00 CC */	addi r4, r29, 0xcc
/* 805000E8  4B B8 49 4C */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805000EC  3B 3F 08 60 */	addi r25, r31, 0x860
/* 805000F0  93 3F 0A 18 */	stw r25, 0xa18(r31)
/* 805000F4  3B 80 00 00 */	li r28, 0
/* 805000F8  3B 00 00 00 */	li r24, 0
lbl_805000FC:
/* 805000FC  7F 7F C2 14 */	add r27, r31, r24
/* 80500100  38 7B 0B 10 */	addi r3, r27, 0xb10
/* 80500104  38 9D 01 0C */	addi r4, r29, 0x10c
/* 80500108  4B B8 49 2C */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8050010C  93 3B 0B 54 */	stw r25, 0xb54(r27)
/* 80500110  3B 9C 00 01 */	addi r28, r28, 1
/* 80500114  2C 1C 00 04 */	cmpwi r28, 4
/* 80500118  3B 18 01 38 */	addi r24, r24, 0x138
/* 8050011C  41 80 FF E0 */	blt lbl_805000FC
/* 80500120  38 00 00 00 */	li r0, 0
/* 80500124  90 01 00 08 */	stw r0, 8(r1)
/* 80500128  38 7F 10 54 */	addi r3, r31, 0x1054
/* 8050012C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80500130  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80500134  7F E6 FB 78 */	mr r6, r31
/* 80500138  38 E0 00 01 */	li r7, 1
/* 8050013C  39 1F 10 14 */	addi r8, r31, 0x1014
/* 80500140  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80500144  39 40 00 00 */	li r10, 0
/* 80500148  4B B7 61 00 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8050014C  38 7F 10 14 */	addi r3, r31, 0x1014
/* 80500150  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 80500154  FC 40 08 90 */	fmr f2, f1
/* 80500158  4B B7 5E 00 */	b SetWall__12dBgS_AcchCirFff
/* 8050015C  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 80500160  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80500164  38 BF 05 38 */	addi r5, r31, 0x538
/* 80500168  38 C0 00 03 */	li r6, 3
/* 8050016C  38 E0 00 01 */	li r7, 1
/* 80500170  4B DC 0F 24 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 80500174  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 80500178  3C 80 80 50 */	lis r4, stringBase0@ha
/* 8050017C  38 84 0C 34 */	addi r4, r4, stringBase0@l
/* 80500180  4B DC 1A 10 */	b setEnemyName__15Z2CreatureEnemyFPCc
/* 80500184  38 1F 05 BC */	addi r0, r31, 0x5bc
/* 80500188  90 1F 0F F8 */	stw r0, 0xff8(r31)
/* 8050018C  38 00 00 01 */	li r0, 1
/* 80500190  98 1F 10 0E */	stb r0, 0x100e(r31)
/* 80500194  38 00 00 2D */	li r0, 0x2d
/* 80500198  90 1F 10 08 */	stw r0, 0x1008(r31)
/* 8050019C  C0 3E 01 20 */	lfs f1, 0x120(r30)
/* 805001A0  4B D6 77 B4 */	b cM_rndF__Ff
/* 805001A4  FC 00 08 1E */	fctiwz f0, f1
/* 805001A8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805001AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805001B0  B0 1F 06 68 */	sth r0, 0x668(r31)
/* 805001B4  3C 60 80 50 */	lis r3, l_HIO@ha
/* 805001B8  38 63 0E 70 */	addi r3, r3, l_HIO@l
/* 805001BC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805001C0  D0 1F 06 94 */	stfs f0, 0x694(r31)
/* 805001C4  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 805001C8  28 00 00 02 */	cmplwi r0, 2
/* 805001CC  40 82 00 18 */	bne lbl_805001E4
/* 805001D0  38 00 80 00 */	li r0, -32768
/* 805001D4  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 805001D8  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 805001DC  38 00 00 01 */	li r0, 1
/* 805001E0  98 1F 08 51 */	stb r0, 0x851(r31)
lbl_805001E4:
/* 805001E4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805001E8  7C 07 07 74 */	extsb r7, r0
/* 805001EC  38 00 00 00 */	li r0, 0
/* 805001F0  90 01 00 08 */	stw r0, 8(r1)
/* 805001F4  38 60 01 CA */	li r3, 0x1ca
/* 805001F8  28 1F 00 00 */	cmplwi r31, 0
/* 805001FC  41 82 00 0C */	beq lbl_80500208
/* 80500200  80 9F 00 04 */	lwz r4, 4(r31)
/* 80500204  48 00 00 08 */	b lbl_8050020C
lbl_80500208:
/* 80500208  38 80 FF FF */	li r4, -1
lbl_8050020C:
/* 8050020C  38 A0 00 00 */	li r5, 0
/* 80500210  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80500214  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80500218  39 20 00 00 */	li r9, 0
/* 8050021C  39 40 FF FF */	li r10, -1
/* 80500220  4B B1 9C D0 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80500224  90 7F 12 2C */	stw r3, 0x122c(r31)
/* 80500228  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8050022C  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80500230  98 1F 05 65 */	stb r0, 0x565(r31)
/* 80500234  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80500238  54 00 46 3E */	srwi r0, r0, 0x18
/* 8050023C  98 1F 05 64 */	stb r0, 0x564(r31)
/* 80500240  7F E3 FB 78 */	mr r3, r31
/* 80500244  4B FF F5 01 */	bl daE_HB_Execute__FP10e_hb_class
lbl_80500248:
/* 80500248  7F 43 D3 78 */	mr r3, r26
lbl_8050024C:
/* 8050024C  39 61 00 40 */	addi r11, r1, 0x40
/* 80500250  4B E6 1F C4 */	b _restgpr_24
/* 80500254  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80500258  7C 08 03 A6 */	mtlr r0
/* 8050025C  38 21 00 40 */	addi r1, r1, 0x40
/* 80500260  4E 80 00 20 */	blr 
