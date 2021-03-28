lbl_80BDBCB8:
/* 80BDBCB8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80BDBCBC  7C 08 02 A6 */	mflr r0
/* 80BDBCC0  90 01 00 94 */	stw r0, 0x94(r1)
/* 80BDBCC4  39 61 00 90 */	addi r11, r1, 0x90
/* 80BDBCC8  4B 78 65 04 */	b _savegpr_25
/* 80BDBCCC  7C 7D 1B 78 */	mr r29, r3
/* 80BDBCD0  3C 80 80 BE */	lis r4, lit_3775@ha
/* 80BDBCD4  3B E4 C3 B0 */	addi r31, r4, lit_3775@l
/* 80BDBCD8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BDBCDC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BDBCE0  40 82 00 FC */	bne lbl_80BDBDDC
/* 80BDBCE4  7F A0 EB 79 */	or. r0, r29, r29
/* 80BDBCE8  41 82 00 E8 */	beq lbl_80BDBDD0
/* 80BDBCEC  7C 1E 03 78 */	mr r30, r0
/* 80BDBCF0  4B 58 23 20 */	b __ct__9dInsect_cFv
/* 80BDBCF4  3C 60 80 BE */	lis r3, __vt__10daObjDAN_c@ha
/* 80BDBCF8  38 03 C5 38 */	addi r0, r3, __vt__10daObjDAN_c@l
/* 80BDBCFC  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80BDBD00  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80BDBD04  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80BDBD08  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80BDBD0C  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80BDBD10  4B 4A 7A 50 */	b __ct__10dCcD_GSttsFv
/* 80BDBD14  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80BDBD18  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80BDBD1C  90 7E 05 A8 */	stw r3, 0x5a8(r30)
/* 80BDBD20  38 03 00 20 */	addi r0, r3, 0x20
/* 80BDBD24  90 1E 05 AC */	stw r0, 0x5ac(r30)
/* 80BDBD28  3B 5E 05 CC */	addi r26, r30, 0x5cc
/* 80BDBD2C  7F 43 D3 78 */	mr r3, r26
/* 80BDBD30  4B 4A 7C F8 */	b __ct__12dCcD_GObjInfFv
/* 80BDBD34  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BDBD38  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BDBD3C  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80BDBD40  3C 60 80 BE */	lis r3, __vt__8cM3dGAab@ha
/* 80BDBD44  38 03 C5 2C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BDBD48  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 80BDBD4C  3C 60 80 BE */	lis r3, __vt__8cM3dGSph@ha
/* 80BDBD50  38 03 C5 20 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80BDBD54  90 1A 01 34 */	stw r0, 0x134(r26)
/* 80BDBD58  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80BDBD5C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80BDBD60  90 7A 01 20 */	stw r3, 0x120(r26)
/* 80BDBD64  38 03 00 58 */	addi r0, r3, 0x58
/* 80BDBD68  90 1A 01 34 */	stw r0, 0x134(r26)
/* 80BDBD6C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80BDBD70  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80BDBD74  90 7A 00 3C */	stw r3, 0x3c(r26)
/* 80BDBD78  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BDBD7C  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80BDBD80  38 03 00 84 */	addi r0, r3, 0x84
/* 80BDBD84  90 1A 01 34 */	stw r0, 0x134(r26)
/* 80BDBD88  38 7E 07 10 */	addi r3, r30, 0x710
/* 80BDBD8C  4B 49 B7 F0 */	b __ct__11dBgS_GndChkFv
/* 80BDBD90  38 7E 07 B0 */	addi r3, r30, 0x7b0
/* 80BDBD94  4B 6E 46 34 */	b __ct__10Z2CreatureFv
/* 80BDBD98  38 7E 08 48 */	addi r3, r30, 0x848
/* 80BDBD9C  4B 49 A1 10 */	b __ct__12dBgS_AcchCirFv
/* 80BDBDA0  3B 5E 08 88 */	addi r26, r30, 0x888
/* 80BDBDA4  7F 43 D3 78 */	mr r3, r26
/* 80BDBDA8  4B 49 A2 F8 */	b __ct__9dBgS_AcchFv
/* 80BDBDAC  3C 60 80 BE */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80BDBDB0  38 63 C4 FC */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80BDBDB4  90 7A 00 10 */	stw r3, 0x10(r26)
/* 80BDBDB8  38 03 00 0C */	addi r0, r3, 0xc
/* 80BDBDBC  90 1A 00 14 */	stw r0, 0x14(r26)
/* 80BDBDC0  38 03 00 18 */	addi r0, r3, 0x18
/* 80BDBDC4  90 1A 00 24 */	stw r0, 0x24(r26)
/* 80BDBDC8  38 7A 00 14 */	addi r3, r26, 0x14
/* 80BDBDCC  4B 49 D0 9C */	b SetObj__16dBgS_PolyPassChkFv
lbl_80BDBDD0:
/* 80BDBDD0  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80BDBDD4  60 00 00 08 */	ori r0, r0, 8
/* 80BDBDD8  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80BDBDDC:
/* 80BDBDDC  38 7D 0A 60 */	addi r3, r29, 0xa60
/* 80BDBDE0  3C 80 80 BE */	lis r4, stringBase0@ha
/* 80BDBDE4  38 84 C4 6C */	addi r4, r4, stringBase0@l
/* 80BDBDE8  4B 45 10 D4 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BDBDEC  7C 7E 1B 78 */	mr r30, r3
/* 80BDBDF0  2C 1E 00 04 */	cmpwi r30, 4
/* 80BDBDF4  40 82 03 60 */	bne lbl_80BDC154
/* 80BDBDF8  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80BDBDFC  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80BDBE00  98 1D 07 A8 */	stb r0, 0x7a8(r29)
/* 80BDBE04  88 1D 07 A8 */	lbz r0, 0x7a8(r29)
/* 80BDBE08  28 00 00 02 */	cmplwi r0, 2
/* 80BDBE0C  40 82 00 28 */	bne lbl_80BDBE34
/* 80BDBE10  38 00 00 00 */	li r0, 0
/* 80BDBE14  98 1D 05 6C */	stb r0, 0x56c(r29)
/* 80BDBE18  A8 7D 04 E4 */	lha r3, 0x4e4(r29)
/* 80BDBE1C  38 03 E0 00 */	addi r0, r3, -8192
/* 80BDBE20  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80BDBE24  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80BDBE28  60 00 40 00 */	ori r0, r0, 0x4000
/* 80BDBE2C  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80BDBE30  48 00 00 0C */	b lbl_80BDBE3C
lbl_80BDBE34:
/* 80BDBE34  38 00 00 01 */	li r0, 1
/* 80BDBE38  98 1D 05 6D */	stb r0, 0x56d(r29)
lbl_80BDBE3C:
/* 80BDBE3C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80BDBE40  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
/* 80BDBE44  98 1D 05 81 */	stb r0, 0x581(r29)
/* 80BDBE48  38 00 00 5D */	li r0, 0x5d
/* 80BDBE4C  98 1D 05 48 */	stb r0, 0x548(r29)
/* 80BDBE50  88 1D 05 81 */	lbz r0, 0x581(r29)
/* 80BDBE54  38 7F 00 7C */	addi r3, r31, 0x7c
/* 80BDBE58  7C 03 00 AE */	lbzx r0, r3, r0
/* 80BDBE5C  98 1D 05 80 */	stb r0, 0x580(r29)
/* 80BDBE60  88 1D 05 81 */	lbz r0, 0x581(r29)
/* 80BDBE64  54 00 08 3C */	slwi r0, r0, 1
/* 80BDBE68  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 80BDBE6C  7C 03 02 2E */	lhzx r0, r3, r0
/* 80BDBE70  B0 1D 05 82 */	sth r0, 0x582(r29)
/* 80BDBE74  88 1D 05 81 */	lbz r0, 0x581(r29)
/* 80BDBE78  28 00 00 01 */	cmplwi r0, 1
/* 80BDBE7C  40 82 00 20 */	bne lbl_80BDBE9C
/* 80BDBE80  3C 60 80 BE */	lis r3, l_HIO@ha
/* 80BDBE84  38 63 C5 78 */	addi r3, r3, l_HIO@l
/* 80BDBE88  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BDBE8C  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80BDBE90  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80BDBE94  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 80BDBE98  48 00 00 24 */	b lbl_80BDBEBC
lbl_80BDBE9C:
/* 80BDBE9C  28 00 00 00 */	cmplwi r0, 0
/* 80BDBEA0  40 82 00 1C */	bne lbl_80BDBEBC
/* 80BDBEA4  3C 60 80 BE */	lis r3, l_HIO@ha
/* 80BDBEA8  38 63 C5 78 */	addi r3, r3, l_HIO@l
/* 80BDBEAC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80BDBEB0  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80BDBEB4  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80BDBEB8  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
lbl_80BDBEBC:
/* 80BDBEBC  7F A3 EB 78 */	mr r3, r29
/* 80BDBEC0  4B FF FC 4D */	bl CreateChk__10daObjDAN_cFv
/* 80BDBEC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BDBEC8  40 82 00 0C */	bne lbl_80BDBED4
/* 80BDBECC  38 60 00 05 */	li r3, 5
/* 80BDBED0  48 00 02 88 */	b lbl_80BDC158
lbl_80BDBED4:
/* 80BDBED4  7F A3 EB 78 */	mr r3, r29
/* 80BDBED8  3C 80 80 BE */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80BDBEDC  38 84 A6 78 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80BDBEE0  38 A0 12 00 */	li r5, 0x1200
/* 80BDBEE4  4B 43 E5 CC */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80BDBEE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BDBEEC  40 82 00 0C */	bne lbl_80BDBEF8
/* 80BDBEF0  38 60 00 05 */	li r3, 5
/* 80BDBEF4  48 00 02 64 */	b lbl_80BDC158
lbl_80BDBEF8:
/* 80BDBEF8  3C 60 80 BE */	lis r3, data_80BDC568@ha
/* 80BDBEFC  8C 03 C5 68 */	lbzu r0, data_80BDC568@l(r3)
/* 80BDBF00  28 00 00 00 */	cmplwi r0, 0
/* 80BDBF04  40 82 00 20 */	bne lbl_80BDBF24
/* 80BDBF08  38 00 00 01 */	li r0, 1
/* 80BDBF0C  98 03 00 00 */	stb r0, 0(r3)
/* 80BDBF10  98 1D 0A 68 */	stb r0, 0xa68(r29)
/* 80BDBF14  38 00 FF FF */	li r0, -1
/* 80BDBF18  3C 60 80 BE */	lis r3, l_HIO@ha
/* 80BDBF1C  38 63 C5 78 */	addi r3, r3, l_HIO@l
/* 80BDBF20  98 03 00 04 */	stb r0, 4(r3)
lbl_80BDBF24:
/* 80BDBF24  38 7D 08 48 */	addi r3, r29, 0x848
/* 80BDBF28  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80BDBF2C  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80BDBF30  4B 49 A0 28 */	b SetWall__12dBgS_AcchCirFff
/* 80BDBF34  38 00 00 00 */	li r0, 0
/* 80BDBF38  90 01 00 08 */	stw r0, 8(r1)
/* 80BDBF3C  38 7D 08 88 */	addi r3, r29, 0x888
/* 80BDBF40  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80BDBF44  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80BDBF48  7F A6 EB 78 */	mr r6, r29
/* 80BDBF4C  38 E0 00 01 */	li r7, 1
/* 80BDBF50  39 1D 08 48 */	addi r8, r29, 0x848
/* 80BDBF54  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80BDBF58  39 40 00 00 */	li r10, 0
/* 80BDBF5C  4B 49 A2 EC */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80BDBF60  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80BDBF64  D0 1D 07 70 */	stfs f0, 0x770(r29)
/* 80BDBF68  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80BDBF6C  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80BDBF70  38 00 00 01 */	li r0, 1
/* 80BDBF74  98 1D 07 68 */	stb r0, 0x768(r29)
/* 80BDBF78  88 1D 07 A8 */	lbz r0, 0x7a8(r29)
/* 80BDBF7C  28 00 00 00 */	cmplwi r0, 0
/* 80BDBF80  40 82 00 0C */	bne lbl_80BDBF8C
/* 80BDBF84  7F A3 EB 78 */	mr r3, r29
/* 80BDBF88  4B FF E6 2D */	bl InitCcSph__10daObjDAN_cFv
lbl_80BDBF8C:
/* 80BDBF8C  88 1D 07 A8 */	lbz r0, 0x7a8(r29)
/* 80BDBF90  28 00 00 02 */	cmplwi r0, 2
/* 80BDBF94  40 82 00 A4 */	bne lbl_80BDC038
/* 80BDBF98  3C 60 80 BE */	lis r3, stringBase0@ha
/* 80BDBF9C  38 63 C4 6C */	addi r3, r3, stringBase0@l
/* 80BDBFA0  38 63 00 06 */	addi r3, r3, 6
/* 80BDBFA4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80BDBFA8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80BDBFAC  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80BDBFB0  4B 78 C9 E4 */	b strcmp
/* 80BDBFB4  2C 03 00 00 */	cmpwi r3, 0
/* 80BDBFB8  40 82 00 80 */	bne lbl_80BDC038
/* 80BDBFBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BDBFC0  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l
/* 80BDBFC4  88 05 4E 0A */	lbz r0, 0x4e0a(r5)
/* 80BDBFC8  2C 00 00 03 */	cmpwi r0, 3
/* 80BDBFCC  40 82 00 6C */	bne lbl_80BDC038
/* 80BDBFD0  88 1D 07 A8 */	lbz r0, 0x7a8(r29)
/* 80BDBFD4  54 00 06 36 */	rlwinm r0, r0, 0, 0x18, 0x1b
/* 80BDBFD8  98 1D 07 A8 */	stb r0, 0x7a8(r29)
/* 80BDBFDC  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80BDBFE0  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80BDBFE4  38 00 00 02 */	li r0, 2
/* 80BDBFE8  98 1D 07 68 */	stb r0, 0x768(r29)
/* 80BDBFEC  38 00 00 01 */	li r0, 1
/* 80BDBFF0  98 1D 07 69 */	stb r0, 0x769(r29)
/* 80BDBFF4  3C 60 80 BE */	lis r3, stringBase0@ha
/* 80BDBFF8  38 63 C4 6C */	addi r3, r3, stringBase0@l
/* 80BDBFFC  38 80 00 06 */	li r4, 6
/* 80BDC000  3C A5 00 02 */	addis r5, r5, 2
/* 80BDC004  38 C0 00 80 */	li r6, 0x80
/* 80BDC008  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BDC00C  4B 46 02 E0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BDC010  7C 64 1B 78 */	mr r4, r3
/* 80BDC014  80 7D 08 44 */	lwz r3, 0x844(r29)
/* 80BDC018  38 A0 00 02 */	li r5, 2
/* 80BDC01C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80BDC020  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80BDC024  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80BDC028  C0 9F 00 64 */	lfs f4, 0x64(r31)
/* 80BDC02C  4B 43 4E 44 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80BDC030  38 00 00 64 */	li r0, 0x64
/* 80BDC034  B0 1D 07 6A */	sth r0, 0x76a(r29)
lbl_80BDC038:
/* 80BDC038  80 1D 08 B4 */	lwz r0, 0x8b4(r29)
/* 80BDC03C  60 00 80 00 */	ori r0, r0, 0x8000
/* 80BDC040  90 1D 08 B4 */	stw r0, 0x8b4(r29)
/* 80BDC044  3B 21 00 1C */	addi r25, r1, 0x1c
/* 80BDC048  7F 23 CB 78 */	mr r3, r25
/* 80BDC04C  4B 49 B5 30 */	b __ct__11dBgS_GndChkFv
/* 80BDC050  3C 60 80 BE */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 80BDC054  38 63 C4 CC */	addi r3, r3, __vt__14dBgS_ObjGndChk@l
/* 80BDC058  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80BDC05C  3B 83 00 0C */	addi r28, r3, 0xc
/* 80BDC060  93 81 00 3C */	stw r28, 0x3c(r1)
/* 80BDC064  3B 63 00 18 */	addi r27, r3, 0x18
/* 80BDC068  93 61 00 58 */	stw r27, 0x58(r1)
/* 80BDC06C  3B 43 00 24 */	addi r26, r3, 0x24
/* 80BDC070  93 41 00 68 */	stw r26, 0x68(r1)
/* 80BDC074  38 79 00 3C */	addi r3, r25, 0x3c
/* 80BDC078  4B 49 CD F0 */	b SetObj__16dBgS_PolyPassChkFv
/* 80BDC07C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80BDC080  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BDC084  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80BDC088  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BDC08C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80BDC090  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BDC094  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80BDC098  EC 01 00 2A */	fadds f0, f1, f0
/* 80BDC09C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BDC0A0  7F 23 CB 78 */	mr r3, r25
/* 80BDC0A4  38 81 00 10 */	addi r4, r1, 0x10
/* 80BDC0A8  4B 68 BC 80 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80BDC0AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BDC0B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BDC0B4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BDC0B8  7F 24 CB 78 */	mr r4, r25
/* 80BDC0BC  4B 49 83 E4 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80BDC0C0  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80BDC0C4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80BDC0C8  41 82 00 08 */	beq lbl_80BDC0D0
/* 80BDC0CC  D0 3D 04 D4 */	stfs f1, 0x4d4(r29)
lbl_80BDC0D0:
/* 80BDC0D0  38 00 00 00 */	li r0, 0
/* 80BDC0D4  90 1D 07 AC */	stw r0, 0x7ac(r29)
/* 80BDC0D8  80 7D 08 44 */	lwz r3, 0x844(r29)
/* 80BDC0DC  80 63 00 04 */	lwz r3, 4(r3)
/* 80BDC0E0  38 03 00 24 */	addi r0, r3, 0x24
/* 80BDC0E4  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80BDC0E8  7F A3 EB 78 */	mr r3, r29
/* 80BDC0EC  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80BDC0F0  FC 40 08 90 */	fmr f2, f1
/* 80BDC0F4  FC 60 08 90 */	fmr f3, f1
/* 80BDC0F8  4B 43 E4 30 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80BDC0FC  7F A3 EB 78 */	mr r3, r29
/* 80BDC100  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80BDC104  FC 40 08 90 */	fmr f2, f1
/* 80BDC108  FC 60 08 90 */	fmr f3, f1
/* 80BDC10C  4B 43 E4 2C */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80BDC110  38 7D 07 B0 */	addi r3, r29, 0x7b0
/* 80BDC114  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80BDC118  38 BD 05 38 */	addi r5, r29, 0x538
/* 80BDC11C  38 C0 00 03 */	li r6, 3
/* 80BDC120  38 E0 00 01 */	li r7, 1
/* 80BDC124  4B 6E 44 0C */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80BDC128  7F A3 EB 78 */	mr r3, r29
/* 80BDC12C  4B FF F9 C1 */	bl daObjDAN_Execute__FP10daObjDAN_c
/* 80BDC130  3C 60 80 BE */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 80BDC134  38 03 C4 CC */	addi r0, r3, __vt__14dBgS_ObjGndChk@l
/* 80BDC138  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80BDC13C  93 81 00 3C */	stw r28, 0x3c(r1)
/* 80BDC140  93 61 00 58 */	stw r27, 0x58(r1)
/* 80BDC144  93 41 00 68 */	stw r26, 0x68(r1)
/* 80BDC148  38 61 00 1C */	addi r3, r1, 0x1c
/* 80BDC14C  38 80 00 00 */	li r4, 0
/* 80BDC150  4B 49 B4 A0 */	b __dt__11dBgS_GndChkFv
lbl_80BDC154:
/* 80BDC154  7F C3 F3 78 */	mr r3, r30
lbl_80BDC158:
/* 80BDC158  39 61 00 90 */	addi r11, r1, 0x90
/* 80BDC15C  4B 78 60 BC */	b _restgpr_25
/* 80BDC160  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80BDC164  7C 08 03 A6 */	mtlr r0
/* 80BDC168  38 21 00 90 */	addi r1, r1, 0x90
/* 80BDC16C  4E 80 00 20 */	blr 
