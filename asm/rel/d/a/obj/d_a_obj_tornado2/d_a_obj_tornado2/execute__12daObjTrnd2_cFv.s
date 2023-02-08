lbl_80D1CDC0:
/* 80D1CDC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D1CDC4  7C 08 02 A6 */	mflr r0
/* 80D1CDC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D1CDCC  39 61 00 20 */	addi r11, r1, 0x20
/* 80D1CDD0  4B 64 54 09 */	bl _savegpr_28
/* 80D1CDD4  7C 7D 1B 78 */	mr r29, r3
/* 80D1CDD8  3C 60 80 D2 */	lis r3, l_R02_eff_id@ha /* 0x80D1D3D4@ha */
/* 80D1CDDC  3B E3 D3 D4 */	addi r31, r3, l_R02_eff_id@l /* 0x80D1D3D4@l */
/* 80D1CDE0  88 1D 07 78 */	lbz r0, 0x778(r29)
/* 80D1CDE4  28 00 00 01 */	cmplwi r0, 1
/* 80D1CDE8  40 82 01 00 */	bne lbl_80D1CEE8
/* 80D1CDEC  3B C0 00 00 */	li r30, 0
/* 80D1CDF0  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80D1CDF4  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 80D1CDF8  54 00 87 3E */	rlwinm r0, r0, 0x10, 0x1c, 0x1f
/* 80D1CDFC  2C 00 00 04 */	cmpwi r0, 4
/* 80D1CE00  40 80 00 14 */	bge lbl_80D1CE14
/* 80D1CE04  2C 00 00 00 */	cmpwi r0, 0
/* 80D1CE08  41 82 00 48 */	beq lbl_80D1CE50
/* 80D1CE0C  40 80 00 6C */	bge lbl_80D1CE78
/* 80D1CE10  48 00 00 B4 */	b lbl_80D1CEC4
lbl_80D1CE14:
/* 80D1CE14  2C 00 00 0F */	cmpwi r0, 0xf
/* 80D1CE18  41 82 00 08 */	beq lbl_80D1CE20
/* 80D1CE1C  48 00 00 A8 */	b lbl_80D1CEC4
lbl_80D1CE20:
/* 80D1CE20  28 1C 00 FF */	cmplwi r28, 0xff
/* 80D1CE24  41 82 00 A0 */	beq lbl_80D1CEC4
/* 80D1CE28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1CE2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1CE30  7F 84 E3 78 */	mr r4, r28
/* 80D1CE34  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80D1CE38  7C 05 07 74 */	extsb r5, r0
/* 80D1CE3C  4B 31 85 25 */	bl isSwitch__10dSv_info_cCFii
/* 80D1CE40  2C 03 00 00 */	cmpwi r3, 0
/* 80D1CE44  40 82 00 80 */	bne lbl_80D1CEC4
/* 80D1CE48  3B C0 00 01 */	li r30, 1
/* 80D1CE4C  48 00 00 78 */	b lbl_80D1CEC4
lbl_80D1CE50:
/* 80D1CE50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1CE54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1CE58  7F 84 E3 78 */	mr r4, r28
/* 80D1CE5C  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80D1CE60  7C 05 07 74 */	extsb r5, r0
/* 80D1CE64  4B 31 84 FD */	bl isSwitch__10dSv_info_cCFii
/* 80D1CE68  2C 03 00 00 */	cmpwi r3, 0
/* 80D1CE6C  41 82 00 58 */	beq lbl_80D1CEC4
/* 80D1CE70  3B C0 00 01 */	li r30, 1
/* 80D1CE74  48 00 00 50 */	b lbl_80D1CEC4
lbl_80D1CE78:
/* 80D1CE78  38 7D 07 70 */	addi r3, r29, 0x770
/* 80D1CE7C  48 00 05 35 */	bl func_80D1D3B0
/* 80D1CE80  2C 03 00 00 */	cmpwi r3, 0
/* 80D1CE84  41 82 00 2C */	beq lbl_80D1CEB0
/* 80D1CE88  28 1C 00 FF */	cmplwi r28, 0xff
/* 80D1CE8C  41 82 00 38 */	beq lbl_80D1CEC4
/* 80D1CE90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1CE94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1CE98  7F 84 E3 78 */	mr r4, r28
/* 80D1CE9C  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80D1CEA0  7C 05 07 74 */	extsb r5, r0
/* 80D1CEA4  4B 31 84 BD */	bl isSwitch__10dSv_info_cCFii
/* 80D1CEA8  2C 03 00 00 */	cmpwi r3, 0
/* 80D1CEAC  40 82 00 18 */	bne lbl_80D1CEC4
lbl_80D1CEB0:
/* 80D1CEB0  3B C0 00 01 */	li r30, 1
/* 80D1CEB4  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80D1CEB8  54 00 67 3E */	rlwinm r0, r0, 0xc, 0x1c, 0x1f
/* 80D1CEBC  1C 00 00 1E */	mulli r0, r0, 0x1e
/* 80D1CEC0  90 1D 07 70 */	stw r0, 0x770(r29)
lbl_80D1CEC4:
/* 80D1CEC4  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80D1CEC8  41 82 01 30 */	beq lbl_80D1CFF8
/* 80D1CECC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80D1CED0  D0 1D 07 38 */	stfs f0, 0x738(r29)
/* 80D1CED4  38 00 00 00 */	li r0, 0
/* 80D1CED8  98 1D 07 78 */	stb r0, 0x778(r29)
/* 80D1CEDC  7F A3 EB 78 */	mr r3, r29
/* 80D1CEE0  48 00 03 CD */	bl stopParticle__12daObjTrnd2_cFv
/* 80D1CEE4  48 00 01 14 */	b lbl_80D1CFF8
lbl_80D1CEE8:
/* 80D1CEE8  28 00 00 00 */	cmplwi r0, 0
/* 80D1CEEC  40 82 01 0C */	bne lbl_80D1CFF8
/* 80D1CEF0  3B C0 00 00 */	li r30, 0
/* 80D1CEF4  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80D1CEF8  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 80D1CEFC  54 00 87 3E */	rlwinm r0, r0, 0x10, 0x1c, 0x1f
/* 80D1CF00  2C 00 00 04 */	cmpwi r0, 4
/* 80D1CF04  40 80 00 14 */	bge lbl_80D1CF18
/* 80D1CF08  2C 00 00 00 */	cmpwi r0, 0
/* 80D1CF0C  41 82 00 40 */	beq lbl_80D1CF4C
/* 80D1CF10  40 80 00 6C */	bge lbl_80D1CF7C
/* 80D1CF14  48 00 00 BC */	b lbl_80D1CFD0
lbl_80D1CF18:
/* 80D1CF18  2C 00 00 0F */	cmpwi r0, 0xf
/* 80D1CF1C  41 82 00 08 */	beq lbl_80D1CF24
/* 80D1CF20  48 00 00 B0 */	b lbl_80D1CFD0
lbl_80D1CF24:
/* 80D1CF24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1CF28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1CF2C  7F 84 E3 78 */	mr r4, r28
/* 80D1CF30  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80D1CF34  7C 05 07 74 */	extsb r5, r0
/* 80D1CF38  4B 31 84 29 */	bl isSwitch__10dSv_info_cCFii
/* 80D1CF3C  2C 03 00 00 */	cmpwi r3, 0
/* 80D1CF40  41 82 00 90 */	beq lbl_80D1CFD0
/* 80D1CF44  3B C0 00 01 */	li r30, 1
/* 80D1CF48  48 00 00 88 */	b lbl_80D1CFD0
lbl_80D1CF4C:
/* 80D1CF4C  28 1C 00 FF */	cmplwi r28, 0xff
/* 80D1CF50  41 82 00 80 */	beq lbl_80D1CFD0
/* 80D1CF54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1CF58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1CF5C  7F 84 E3 78 */	mr r4, r28
/* 80D1CF60  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80D1CF64  7C 05 07 74 */	extsb r5, r0
/* 80D1CF68  4B 31 83 F9 */	bl isSwitch__10dSv_info_cCFii
/* 80D1CF6C  2C 03 00 00 */	cmpwi r3, 0
/* 80D1CF70  40 82 00 60 */	bne lbl_80D1CFD0
/* 80D1CF74  3B C0 00 01 */	li r30, 1
/* 80D1CF78  48 00 00 58 */	b lbl_80D1CFD0
lbl_80D1CF7C:
/* 80D1CF7C  38 7D 07 70 */	addi r3, r29, 0x770
/* 80D1CF80  48 00 04 31 */	bl func_80D1D3B0
/* 80D1CF84  2C 03 00 00 */	cmpwi r3, 0
/* 80D1CF88  40 82 00 48 */	bne lbl_80D1CFD0
/* 80D1CF8C  28 1C 00 FF */	cmplwi r28, 0xff
/* 80D1CF90  41 82 00 24 */	beq lbl_80D1CFB4
/* 80D1CF94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1CF98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1CF9C  7F 84 E3 78 */	mr r4, r28
/* 80D1CFA0  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80D1CFA4  7C 05 07 74 */	extsb r5, r0
/* 80D1CFA8  4B 31 83 B9 */	bl isSwitch__10dSv_info_cCFii
/* 80D1CFAC  2C 03 00 00 */	cmpwi r3, 0
/* 80D1CFB0  40 82 00 0C */	bne lbl_80D1CFBC
lbl_80D1CFB4:
/* 80D1CFB4  28 1C 00 FF */	cmplwi r28, 0xff
/* 80D1CFB8  40 82 00 18 */	bne lbl_80D1CFD0
lbl_80D1CFBC:
/* 80D1CFBC  3B C0 00 01 */	li r30, 1
/* 80D1CFC0  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80D1CFC4  54 00 47 3E */	rlwinm r0, r0, 8, 0x1c, 0x1f
/* 80D1CFC8  1C 00 00 1E */	mulli r0, r0, 0x1e
/* 80D1CFCC  90 1D 07 70 */	stw r0, 0x770(r29)
lbl_80D1CFD0:
/* 80D1CFD0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80D1CFD4  41 82 00 24 */	beq lbl_80D1CFF8
/* 80D1CFD8  C0 3D 07 6C */	lfs f1, 0x76c(r29)
/* 80D1CFDC  C0 1D 04 F0 */	lfs f0, 0x4f0(r29)
/* 80D1CFE0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D1CFE4  D0 1D 07 38 */	stfs f0, 0x738(r29)
/* 80D1CFE8  38 00 00 01 */	li r0, 1
/* 80D1CFEC  98 1D 07 78 */	stb r0, 0x778(r29)
/* 80D1CFF0  7F A3 EB 78 */	mr r3, r29
/* 80D1CFF4  48 00 02 85 */	bl startParticle__12daObjTrnd2_cFv
lbl_80D1CFF8:
/* 80D1CFF8  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80D1CFFC  C0 1D 07 38 */	lfs f0, 0x738(r29)
/* 80D1D000  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D1D004  40 82 00 20 */	bne lbl_80D1D024
/* 80D1D008  38 7D 07 74 */	addi r3, r29, 0x774
/* 80D1D00C  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80D1D010  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 80D1D014  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 80D1D018  C0 9F 00 7C */	lfs f4, 0x7c(r31)
/* 80D1D01C  4B 55 29 61 */	bl cLib_addCalc__FPfffff
/* 80D1D020  48 00 00 1C */	b lbl_80D1D03C
lbl_80D1D024:
/* 80D1D024  38 7D 07 74 */	addi r3, r29, 0x774
/* 80D1D028  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80D1D02C  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 80D1D030  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 80D1D034  C0 9F 00 7C */	lfs f4, 0x7c(r31)
/* 80D1D038  4B 55 29 45 */	bl cLib_addCalc__FPfffff
lbl_80D1D03C:
/* 80D1D03C  38 60 00 00 */	li r3, 0
/* 80D1D040  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 80D1D044  4B 33 E5 D9 */	bl dKyw_evt_wind_set__Fss
/* 80D1D048  C0 3D 07 74 */	lfs f1, 0x774(r29)
/* 80D1D04C  4B 33 E5 C1 */	bl dKyw_custom_windpower__Ff
/* 80D1D050  7F A3 EB 78 */	mr r3, r29
/* 80D1D054  4B FF F7 2D */	bl setCpsInfo__12daObjTrnd2_cFv
/* 80D1D058  7F A3 EB 78 */	mr r3, r29
/* 80D1D05C  4B FF F8 E9 */	bl setBaseMtx__12daObjTrnd2_cFv
/* 80D1D060  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80D1D064  C0 1D 07 04 */	lfs f0, 0x704(r29)
/* 80D1D068  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D1D06C  41 82 00 24 */	beq lbl_80D1D090
/* 80D1D070  38 7D 06 C8 */	addi r3, r29, 0x6c8
/* 80D1D074  38 9D 06 E8 */	addi r4, r29, 0x6e8
/* 80D1D078  4B 55 1F C5 */	bl Set__8cM3dGCpsFRC9cM3dGCpsS
/* 80D1D07C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1D080  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1D084  38 63 23 3C */	addi r3, r3, 0x233c
/* 80D1D088  38 9D 05 A4 */	addi r4, r29, 0x5a4
/* 80D1D08C  4B 54 7B 1D */	bl Set__4cCcSFP8cCcD_Obj
lbl_80D1D090:
/* 80D1D090  38 60 00 01 */	li r3, 1
/* 80D1D094  39 61 00 20 */	addi r11, r1, 0x20
/* 80D1D098  4B 64 51 8D */	bl _restgpr_28
/* 80D1D09C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D1D0A0  7C 08 03 A6 */	mtlr r0
/* 80D1D0A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80D1D0A8  4E 80 00 20 */	blr 
