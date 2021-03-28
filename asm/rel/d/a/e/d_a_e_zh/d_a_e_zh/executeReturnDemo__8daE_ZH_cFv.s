lbl_8082CD34:
/* 8082CD34  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8082CD38  7C 08 02 A6 */	mflr r0
/* 8082CD3C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8082CD40  39 61 00 70 */	addi r11, r1, 0x70
/* 8082CD44  4B B3 54 98 */	b _savegpr_29
/* 8082CD48  7C 7D 1B 78 */	mr r29, r3
/* 8082CD4C  3C 60 80 83 */	lis r3, lit_3778@ha
/* 8082CD50  3B E3 F2 08 */	addi r31, r3, lit_3778@l
/* 8082CD54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8082CD58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8082CD5C  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 8082CD60  7C 00 07 74 */	extsb r0, r0
/* 8082CD64  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8082CD68  7C 63 02 14 */	add r3, r3, r0
/* 8082CD6C  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 8082CD70  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 8082CD74  2C 00 00 01 */	cmpwi r0, 1
/* 8082CD78  41 82 00 C0 */	beq lbl_8082CE38
/* 8082CD7C  40 80 00 10 */	bge lbl_8082CD8C
/* 8082CD80  2C 00 00 00 */	cmpwi r0, 0
/* 8082CD84  40 80 00 14 */	bge lbl_8082CD98
/* 8082CD88  48 00 03 88 */	b lbl_8082D110
lbl_8082CD8C:
/* 8082CD8C  2C 00 00 03 */	cmpwi r0, 3
/* 8082CD90  40 80 03 80 */	bge lbl_8082D110
/* 8082CD94  48 00 03 0C */	b lbl_8082D0A0
lbl_8082CD98:
/* 8082CD98  A8 7D 04 B6 */	lha r3, 0x4b6(r29)
/* 8082CD9C  3C 63 00 01 */	addis r3, r3, 1
/* 8082CDA0  38 03 80 00 */	addi r0, r3, -32768
/* 8082CDA4  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8082CDA8  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8082CDAC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8082CDB0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8082CDB4  80 63 00 00 */	lwz r3, 0(r3)
/* 8082CDB8  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8082CDBC  3C 84 00 01 */	addis r4, r4, 1
/* 8082CDC0  38 04 80 00 */	addi r0, r4, -32768
/* 8082CDC4  7C 04 07 34 */	extsh r4, r0
/* 8082CDC8  4B 7D F6 14 */	b mDoMtx_YrotS__FPA4_fs
/* 8082CDCC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082CDD0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8082CDD4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8082CDD8  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 8082CDDC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8082CDE0  38 61 00 48 */	addi r3, r1, 0x48
/* 8082CDE4  38 81 00 3C */	addi r4, r1, 0x3c
/* 8082CDE8  4B A4 41 04 */	b MtxPosition__FP4cXyzP4cXyz
/* 8082CDEC  38 61 00 30 */	addi r3, r1, 0x30
/* 8082CDF0  38 9D 06 8C */	addi r4, r29, 0x68c
/* 8082CDF4  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8082CDF8  4B A3 9C EC */	b __pl__4cXyzCFRC3Vec
/* 8082CDFC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8082CE00  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8082CE04  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8082CE08  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8082CE0C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8082CE10  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 8082CE14  38 00 00 00 */	li r0, 0
/* 8082CE18  90 1D 07 9C */	stw r0, 0x79c(r29)
/* 8082CE1C  7F A3 EB 78 */	mr r3, r29
/* 8082CE20  4B FF C7 51 */	bl startDemoCheck__8daE_ZH_cFv
/* 8082CE24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8082CE28  41 82 02 E8 */	beq lbl_8082D110
/* 8082CE2C  80 7D 07 84 */	lwz r3, 0x784(r29)
/* 8082CE30  38 03 00 01 */	addi r0, r3, 1
/* 8082CE34  90 1D 07 84 */	stw r0, 0x784(r29)
lbl_8082CE38:
/* 8082CE38  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8082CE3C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8082CE40  80 63 00 00 */	lwz r3, 0(r3)
/* 8082CE44  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8082CE48  3C 84 00 01 */	addis r4, r4, 1
/* 8082CE4C  38 04 80 00 */	addi r0, r4, -32768
/* 8082CE50  7C 04 07 34 */	extsh r4, r0
/* 8082CE54  4B 7D F5 88 */	b mDoMtx_YrotS__FPA4_fs
/* 8082CE58  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8082CE5C  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8082CE60  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8082CE64  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8082CE68  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8082CE6C  38 61 00 48 */	addi r3, r1, 0x48
/* 8082CE70  38 81 00 3C */	addi r4, r1, 0x3c
/* 8082CE74  4B A4 40 78 */	b MtxPosition__FP4cXyzP4cXyz
/* 8082CE78  38 61 00 3C */	addi r3, r1, 0x3c
/* 8082CE7C  38 9D 06 8C */	addi r4, r29, 0x68c
/* 8082CE80  7C 65 1B 78 */	mr r5, r3
/* 8082CE84  4B B1 A2 0C */	b PSVECAdd
/* 8082CE88  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8082CE8C  D0 1D 0D F8 */	stfs f0, 0xdf8(r29)
/* 8082CE90  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8082CE94  D0 1D 0D FC */	stfs f0, 0xdfc(r29)
/* 8082CE98  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8082CE9C  D0 1D 0E 00 */	stfs f0, 0xe00(r29)
/* 8082CEA0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8082CEA4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8082CEA8  80 63 00 00 */	lwz r3, 0(r3)
/* 8082CEAC  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8082CEB0  3C 84 00 01 */	addis r4, r4, 1
/* 8082CEB4  38 04 80 00 */	addi r0, r4, -32768
/* 8082CEB8  7C 04 07 34 */	extsh r4, r0
/* 8082CEBC  4B 7D F5 20 */	b mDoMtx_YrotS__FPA4_fs
/* 8082CEC0  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 8082CEC4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8082CEC8  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 8082CECC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8082CED0  C0 1F 01 BC */	lfs f0, 0x1bc(r31)
/* 8082CED4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8082CED8  38 61 00 48 */	addi r3, r1, 0x48
/* 8082CEDC  38 81 00 3C */	addi r4, r1, 0x3c
/* 8082CEE0  4B A4 40 0C */	b MtxPosition__FP4cXyzP4cXyz
/* 8082CEE4  38 61 00 3C */	addi r3, r1, 0x3c
/* 8082CEE8  38 9D 06 8C */	addi r4, r29, 0x68c
/* 8082CEEC  7C 65 1B 78 */	mr r5, r3
/* 8082CEF0  4B B1 A1 A0 */	b PSVECAdd
/* 8082CEF4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8082CEF8  D0 1D 0D EC */	stfs f0, 0xdec(r29)
/* 8082CEFC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8082CF00  D0 1D 0D F0 */	stfs f0, 0xdf0(r29)
/* 8082CF04  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8082CF08  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 8082CF0C  C0 1D 0D F8 */	lfs f0, 0xdf8(r29)
/* 8082CF10  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8082CF14  C0 1D 0D FC */	lfs f0, 0xdfc(r29)
/* 8082CF18  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8082CF1C  C0 1D 0E 00 */	lfs f0, 0xe00(r29)
/* 8082CF20  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8082CF24  C0 1D 0D EC */	lfs f0, 0xdec(r29)
/* 8082CF28  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8082CF2C  C0 1D 0D F0 */	lfs f0, 0xdf0(r29)
/* 8082CF30  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8082CF34  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 8082CF38  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8082CF3C  38 7E 02 48 */	addi r3, r30, 0x248
/* 8082CF40  38 81 00 24 */	addi r4, r1, 0x24
/* 8082CF44  38 A1 00 18 */	addi r5, r1, 0x18
/* 8082CF48  C0 3F 01 50 */	lfs f1, 0x150(r31)
/* 8082CF4C  38 C0 00 00 */	li r6, 0
/* 8082CF50  4B 95 3B 90 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 8082CF54  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8082CF58  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 8082CF5C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8082CF60  C0 5F 00 D8 */	lfs f2, 0xd8(r31)
/* 8082CF64  C0 7F 00 00 */	lfs f3, 0(r31)
/* 8082CF68  4B A4 2B 50 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8082CF6C  38 61 00 0C */	addi r3, r1, 0xc
/* 8082CF70  38 9D 06 8C */	addi r4, r29, 0x68c
/* 8082CF74  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8082CF78  4B A3 9B BC */	b __mi__4cXyzCFRC3Vec
/* 8082CF7C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8082CF80  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8082CF84  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8082CF88  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8082CF8C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8082CF90  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8082CF94  38 61 00 3C */	addi r3, r1, 0x3c
/* 8082CF98  4B B1 A1 A0 */	b PSVECSquareMag
/* 8082CF9C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082CFA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082CFA4  40 81 00 58 */	ble lbl_8082CFFC
/* 8082CFA8  FC 00 08 34 */	frsqrte f0, f1
/* 8082CFAC  C8 9F 01 88 */	lfd f4, 0x188(r31)
/* 8082CFB0  FC 44 00 32 */	fmul f2, f4, f0
/* 8082CFB4  C8 7F 01 90 */	lfd f3, 0x190(r31)
/* 8082CFB8  FC 00 00 32 */	fmul f0, f0, f0
/* 8082CFBC  FC 01 00 32 */	fmul f0, f1, f0
/* 8082CFC0  FC 03 00 28 */	fsub f0, f3, f0
/* 8082CFC4  FC 02 00 32 */	fmul f0, f2, f0
/* 8082CFC8  FC 44 00 32 */	fmul f2, f4, f0
/* 8082CFCC  FC 00 00 32 */	fmul f0, f0, f0
/* 8082CFD0  FC 01 00 32 */	fmul f0, f1, f0
/* 8082CFD4  FC 03 00 28 */	fsub f0, f3, f0
/* 8082CFD8  FC 02 00 32 */	fmul f0, f2, f0
/* 8082CFDC  FC 44 00 32 */	fmul f2, f4, f0
/* 8082CFE0  FC 00 00 32 */	fmul f0, f0, f0
/* 8082CFE4  FC 01 00 32 */	fmul f0, f1, f0
/* 8082CFE8  FC 03 00 28 */	fsub f0, f3, f0
/* 8082CFEC  FC 02 00 32 */	fmul f0, f2, f0
/* 8082CFF0  FC 21 00 32 */	fmul f1, f1, f0
/* 8082CFF4  FC 20 08 18 */	frsp f1, f1
/* 8082CFF8  48 00 00 88 */	b lbl_8082D080
lbl_8082CFFC:
/* 8082CFFC  C8 1F 01 98 */	lfd f0, 0x198(r31)
/* 8082D000  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082D004  40 80 00 10 */	bge lbl_8082D014
/* 8082D008  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8082D00C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8082D010  48 00 00 70 */	b lbl_8082D080
lbl_8082D014:
/* 8082D014  D0 21 00 08 */	stfs f1, 8(r1)
/* 8082D018  80 81 00 08 */	lwz r4, 8(r1)
/* 8082D01C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8082D020  3C 00 7F 80 */	lis r0, 0x7f80
/* 8082D024  7C 03 00 00 */	cmpw r3, r0
/* 8082D028  41 82 00 14 */	beq lbl_8082D03C
/* 8082D02C  40 80 00 40 */	bge lbl_8082D06C
/* 8082D030  2C 03 00 00 */	cmpwi r3, 0
/* 8082D034  41 82 00 20 */	beq lbl_8082D054
/* 8082D038  48 00 00 34 */	b lbl_8082D06C
lbl_8082D03C:
/* 8082D03C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8082D040  41 82 00 0C */	beq lbl_8082D04C
/* 8082D044  38 00 00 01 */	li r0, 1
/* 8082D048  48 00 00 28 */	b lbl_8082D070
lbl_8082D04C:
/* 8082D04C  38 00 00 02 */	li r0, 2
/* 8082D050  48 00 00 20 */	b lbl_8082D070
lbl_8082D054:
/* 8082D054  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8082D058  41 82 00 0C */	beq lbl_8082D064
/* 8082D05C  38 00 00 05 */	li r0, 5
/* 8082D060  48 00 00 10 */	b lbl_8082D070
lbl_8082D064:
/* 8082D064  38 00 00 03 */	li r0, 3
/* 8082D068  48 00 00 08 */	b lbl_8082D070
lbl_8082D06C:
/* 8082D06C  38 00 00 04 */	li r0, 4
lbl_8082D070:
/* 8082D070  2C 00 00 01 */	cmpwi r0, 1
/* 8082D074  40 82 00 0C */	bne lbl_8082D080
/* 8082D078  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8082D07C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8082D080:
/* 8082D080  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8082D084  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082D088  41 81 00 88 */	bgt lbl_8082D110
/* 8082D08C  38 00 00 46 */	li r0, 0x46
/* 8082D090  90 1D 07 94 */	stw r0, 0x794(r29)
/* 8082D094  80 7D 07 84 */	lwz r3, 0x784(r29)
/* 8082D098  38 03 00 01 */	addi r0, r3, 1
/* 8082D09C  90 1D 07 84 */	stw r0, 0x784(r29)
lbl_8082D0A0:
/* 8082D0A0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8082D0A4  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 8082D0A8  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8082D0AC  C0 5F 00 D8 */	lfs f2, 0xd8(r31)
/* 8082D0B0  C0 7F 00 00 */	lfs f3, 0(r31)
/* 8082D0B4  4B A4 2A 04 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8082D0B8  80 1D 07 94 */	lwz r0, 0x794(r29)
/* 8082D0BC  2C 00 00 00 */	cmpwi r0, 0
/* 8082D0C0  40 82 00 50 */	bne lbl_8082D110
/* 8082D0C4  38 00 00 03 */	li r0, 3
/* 8082D0C8  90 1D 07 9C */	stw r0, 0x79c(r29)
/* 8082D0CC  C0 3D 07 7C */	lfs f1, 0x77c(r29)
/* 8082D0D0  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 8082D0D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082D0D8  41 81 00 38 */	bgt lbl_8082D110
/* 8082D0DC  38 7E 02 48 */	addi r3, r30, 0x248
/* 8082D0E0  4B 93 43 CC */	b Start__9dCamera_cFv
/* 8082D0E4  38 7E 02 48 */	addi r3, r30, 0x248
/* 8082D0E8  38 80 00 00 */	li r4, 0
/* 8082D0EC  4B 93 5F 20 */	b SetTrimSize__9dCamera_cFl
/* 8082D0F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8082D0F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8082D0F8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8082D0FC  4B 81 53 6C */	b reset__14dEvt_control_cFv
/* 8082D100  7F A3 EB 78 */	mr r3, r29
/* 8082D104  38 80 00 07 */	li r4, 7
/* 8082D108  38 A0 00 0C */	li r5, 0xc
/* 8082D10C  4B FF C3 49 */	bl setActionMode__8daE_ZH_cFii
lbl_8082D110:
/* 8082D110  7F A3 EB 78 */	mr r3, r29
/* 8082D114  4B FF C7 A9 */	bl mGateOpen__8daE_ZH_cFv
/* 8082D118  80 7D 06 64 */	lwz r3, 0x664(r29)
/* 8082D11C  28 03 00 00 */	cmplwi r3, 0
/* 8082D120  41 82 00 1C */	beq lbl_8082D13C
/* 8082D124  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 8082D128  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 8082D12C  C0 1D 06 6C */	lfs f0, 0x66c(r29)
/* 8082D130  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 8082D134  C0 1D 06 70 */	lfs f0, 0x670(r29)
/* 8082D138  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
lbl_8082D13C:
/* 8082D13C  39 61 00 70 */	addi r11, r1, 0x70
/* 8082D140  4B B3 50 E8 */	b _restgpr_29
/* 8082D144  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8082D148  7C 08 03 A6 */	mtlr r0
/* 8082D14C  38 21 00 70 */	addi r1, r1, 0x70
/* 8082D150  4E 80 00 20 */	blr 
