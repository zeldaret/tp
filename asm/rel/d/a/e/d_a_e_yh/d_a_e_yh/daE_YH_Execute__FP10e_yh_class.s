lbl_80802D98:
/* 80802D98  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80802D9C  7C 08 02 A6 */	mflr r0
/* 80802DA0  90 01 00 84 */	stw r0, 0x84(r1)
/* 80802DA4  39 61 00 80 */	addi r11, r1, 0x80
/* 80802DA8  4B B5 F4 30 */	b _savegpr_28
/* 80802DAC  7C 7D 1B 78 */	mr r29, r3
/* 80802DB0  3C 60 80 80 */	lis r3, lit_3902@ha
/* 80802DB4  3B C3 42 7C */	addi r30, r3, lit_3902@l
/* 80802DB8  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 80802DBC  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 80802DC0  40 82 00 84 */	bne lbl_80802E44
/* 80802DC4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80802DC8  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80802DCC  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80802DD0  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80802DD4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80802DD8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80802DDC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80802DE0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80802DE4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80802DE8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80802DEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80802DF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80802DF4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80802DF8  38 80 00 00 */	li r4, 0
/* 80802DFC  90 81 00 08 */	stw r4, 8(r1)
/* 80802E00  38 00 FF FF */	li r0, -1
/* 80802E04  90 01 00 0C */	stw r0, 0xc(r1)
/* 80802E08  90 81 00 10 */	stw r4, 0x10(r1)
/* 80802E0C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80802E10  90 81 00 18 */	stw r4, 0x18(r1)
/* 80802E14  38 80 00 00 */	li r4, 0
/* 80802E18  38 A0 01 09 */	li r5, 0x109
/* 80802E1C  38 C1 00 38 */	addi r6, r1, 0x38
/* 80802E20  38 E0 00 00 */	li r7, 0
/* 80802E24  39 00 00 00 */	li r8, 0
/* 80802E28  39 21 00 44 */	addi r9, r1, 0x44
/* 80802E2C  39 40 00 FF */	li r10, 0xff
/* 80802E30  4B 84 9C 60 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80802E34  7F A3 EB 78 */	mr r3, r29
/* 80802E38  4B 81 6E 44 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80802E3C  38 60 00 01 */	li r3, 1
/* 80802E40  48 00 03 20 */	b lbl_80803160
lbl_80802E44:
/* 80802E44  A8 7D 06 6C */	lha r3, 0x66c(r29)
/* 80802E48  38 03 00 01 */	addi r0, r3, 1
/* 80802E4C  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 80802E50  38 60 00 00 */	li r3, 0
/* 80802E54  38 00 00 03 */	li r0, 3
/* 80802E58  7C 09 03 A6 */	mtctr r0
lbl_80802E5C:
/* 80802E5C  38 A3 06 98 */	addi r5, r3, 0x698
/* 80802E60  7C 9D 2A AE */	lhax r4, r29, r5
/* 80802E64  2C 04 00 00 */	cmpwi r4, 0
/* 80802E68  41 82 00 0C */	beq lbl_80802E74
/* 80802E6C  38 04 FF FF */	addi r0, r4, -1
/* 80802E70  7C 1D 2B 2E */	sthx r0, r29, r5
lbl_80802E74:
/* 80802E74  38 63 00 02 */	addi r3, r3, 2
/* 80802E78  42 00 FF E4 */	bdnz lbl_80802E5C
/* 80802E7C  A8 7D 06 9E */	lha r3, 0x69e(r29)
/* 80802E80  2C 03 00 00 */	cmpwi r3, 0
/* 80802E84  41 82 00 0C */	beq lbl_80802E90
/* 80802E88  38 03 FF FF */	addi r0, r3, -1
/* 80802E8C  B0 1D 06 9E */	sth r0, 0x69e(r29)
lbl_80802E90:
/* 80802E90  7F A3 EB 78 */	mr r3, r29
/* 80802E94  4B FF F3 45 */	bl action__FP10e_yh_class
/* 80802E98  7F A3 EB 78 */	mr r3, r29
/* 80802E9C  4B FF FD 95 */	bl anm_se_set__FP10e_yh_class
/* 80802EA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80802EA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80802EA8  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80802EAC  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80802EB0  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 80802EB4  4B B4 3A 34 */	b PSMTXTrans
/* 80802EB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80802EBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80802EC0  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80802EC4  4B 80 95 70 */	b mDoMtx_YrotM__FPA4_fs
/* 80802EC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80802ECC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80802ED0  A8 9D 04 E4 */	lha r4, 0x4e4(r29)
/* 80802ED4  4B 80 94 C8 */	b mDoMtx_XrotM__FPA4_fs
/* 80802ED8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80802EDC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80802EE0  A8 9D 04 E8 */	lha r4, 0x4e8(r29)
/* 80802EE4  4B 80 95 E8 */	b mDoMtx_ZrotM__FPA4_fs
/* 80802EE8  A8 1D 06 6E */	lha r0, 0x66e(r29)
/* 80802EEC  2C 00 00 15 */	cmpwi r0, 0x15
/* 80802EF0  41 82 00 18 */	beq lbl_80802F08
/* 80802EF4  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 80802EF8  38 80 00 00 */	li r4, 0
/* 80802EFC  38 A0 00 08 */	li r5, 8
/* 80802F00  38 C0 04 00 */	li r6, 0x400
/* 80802F04  4B A6 D7 04 */	b cLib_addCalcAngleS2__FPssss
lbl_80802F08:
/* 80802F08  3C 60 80 80 */	lis r3, l_HIO@ha
/* 80802F0C  3B E3 47 28 */	addi r31, r3, l_HIO@l
/* 80802F10  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80802F14  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 80802F18  EC 41 00 32 */	fmuls f2, f1, f0
/* 80802F1C  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80802F20  C0 3D 04 EC */	lfs f1, 0x4ec(r29)
/* 80802F24  FC 03 08 00 */	fcmpu cr0, f3, f1
/* 80802F28  40 82 00 1C */	bne lbl_80802F44
/* 80802F2C  C0 1D 04 F0 */	lfs f0, 0x4f0(r29)
/* 80802F30  FC 03 00 00 */	fcmpu cr0, f3, f0
/* 80802F34  40 82 00 10 */	bne lbl_80802F44
/* 80802F38  C0 1D 04 F4 */	lfs f0, 0x4f4(r29)
/* 80802F3C  FC 03 00 00 */	fcmpu cr0, f3, f0
/* 80802F40  41 82 00 14 */	beq lbl_80802F54
lbl_80802F44:
/* 80802F44  C0 5D 04 F0 */	lfs f2, 0x4f0(r29)
/* 80802F48  C0 7D 04 F4 */	lfs f3, 0x4f4(r29)
/* 80802F4C  4B 80 9E EC */	b scaleM__14mDoMtx_stack_cFfff
/* 80802F50  48 00 00 10 */	b lbl_80802F60
lbl_80802F54:
/* 80802F54  FC 20 10 90 */	fmr f1, f2
/* 80802F58  FC 60 10 90 */	fmr f3, f2
/* 80802F5C  4B 80 9E DC */	b scaleM__14mDoMtx_stack_cFfff
lbl_80802F60:
/* 80802F60  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80802F64  83 83 00 04 */	lwz r28, 4(r3)
/* 80802F68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80802F6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80802F70  38 9C 00 24 */	addi r4, r28, 0x24
/* 80802F74  4B B4 35 3C */	b PSMTXCopy
/* 80802F78  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80802F7C  7C 03 07 74 */	extsb r3, r0
/* 80802F80  4B 82 A0 EC */	b dComIfGp_getReverb__Fi
/* 80802F84  7C 65 1B 78 */	mr r5, r3
/* 80802F88  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80802F8C  38 80 00 00 */	li r4, 0
/* 80802F90  4B 80 E1 20 */	b play__16mDoExt_McaMorfSOFUlSc
/* 80802F94  80 7D 06 60 */	lwz r3, 0x660(r29)
/* 80802F98  4B 80 A4 90 */	b play__14mDoExt_baseAnmFv
/* 80802F9C  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80802FA0  4B 80 E2 4C */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80802FA4  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 80802FA8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80802FAC  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 80802FB0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80802FB4  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 80802FB8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80802FBC  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 80802FC0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80802FC4  38 63 00 30 */	addi r3, r3, 0x30
/* 80802FC8  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80802FCC  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80802FD0  80 84 00 00 */	lwz r4, 0(r4)
/* 80802FD4  4B B4 34 DC */	b PSMTXCopy
/* 80802FD8  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80802FDC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80802FE0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80802FE4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80802FE8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80802FEC  88 1D 08 54 */	lbz r0, 0x854(r29)
/* 80802FF0  7C 00 07 75 */	extsb. r0, r0
/* 80802FF4  41 82 00 44 */	beq lbl_80803038
/* 80802FF8  C0 1D 06 E8 */	lfs f0, 0x6e8(r29)
/* 80802FFC  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80803000  C0 1D 06 EC */	lfs f0, 0x6ec(r29)
/* 80803004  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80803008  C0 1D 06 F0 */	lfs f0, 0x6f0(r29)
/* 8080300C  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 80803010  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80803014  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80803018  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 8080301C  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80803020  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80803024  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80803028  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 8080302C  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80803030  90 1D 08 D0 */	stw r0, 0x8d0(r29)
/* 80803034  48 00 00 44 */	b lbl_80803078
lbl_80803038:
/* 80803038  38 61 00 5C */	addi r3, r1, 0x5c
/* 8080303C  38 9D 05 38 */	addi r4, r29, 0x538
/* 80803040  4B A6 DE AC */	b MtxPosition__FP4cXyzP4cXyz
/* 80803044  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80803048  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 8080304C  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80803050  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80803054  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80803058  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 8080305C  C0 3D 05 54 */	lfs f1, 0x554(r29)
/* 80803060  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80803064  EC 01 00 2A */	fadds f0, f1, f0
/* 80803068  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 8080306C  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80803070  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80803074  90 1D 08 D0 */	stw r0, 0x8d0(r29)
lbl_80803078:
/* 80803078  38 61 00 5C */	addi r3, r1, 0x5c
/* 8080307C  38 81 00 50 */	addi r4, r1, 0x50
/* 80803080  4B A6 DE 6C */	b MtxPosition__FP4cXyzP4cXyz
/* 80803084  A8 1D 06 6E */	lha r0, 0x66e(r29)
/* 80803088  2C 00 00 00 */	cmpwi r0, 0
/* 8080308C  41 82 00 10 */	beq lbl_8080309C
/* 80803090  A8 1D 06 9E */	lha r0, 0x69e(r29)
/* 80803094  2C 00 00 00 */	cmpwi r0, 0
/* 80803098  41 82 00 14 */	beq lbl_808030AC
lbl_8080309C:
/* 8080309C  38 61 00 50 */	addi r3, r1, 0x50
/* 808030A0  38 81 00 2C */	addi r4, r1, 0x2c
/* 808030A4  7C 65 1B 78 */	mr r5, r3
/* 808030A8  4B B4 3F E8 */	b PSVECAdd
lbl_808030AC:
/* 808030AC  38 7D 09 CC */	addi r3, r29, 0x9cc
/* 808030B0  38 81 00 50 */	addi r4, r1, 0x50
/* 808030B4  4B A6 C5 94 */	b SetC__8cM3dGSphFRC4cXyz
/* 808030B8  38 7D 09 CC */	addi r3, r29, 0x9cc
/* 808030BC  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 808030C0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 808030C4  EC 21 00 32 */	fmuls f1, f1, f0
/* 808030C8  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 808030CC  EC 21 00 32 */	fmuls f1, f1, f0
/* 808030D0  4B A6 C6 38 */	b SetR__8cM3dGSphFf
/* 808030D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808030D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 808030DC  3B 83 23 3C */	addi r28, r3, 0x233c
/* 808030E0  7F 83 E3 78 */	mr r3, r28
/* 808030E4  38 9D 08 A8 */	addi r4, r29, 0x8a8
/* 808030E8  4B A6 1A C0 */	b Set__4cCcSFP8cCcD_Obj
/* 808030EC  88 1D 0B 18 */	lbz r0, 0xb18(r29)
/* 808030F0  7C 00 07 75 */	extsb. r0, r0
/* 808030F4  41 82 00 1C */	beq lbl_80803110
/* 808030F8  38 7D 09 E0 */	addi r3, r29, 0x9e0
/* 808030FC  38 81 00 50 */	addi r4, r1, 0x50
/* 80803100  4B 88 19 C4 */	b MoveCAt__8dCcD_SphFR4cXyz
/* 80803104  38 00 00 00 */	li r0, 0
/* 80803108  98 1D 0B 18 */	stb r0, 0xb18(r29)
/* 8080310C  48 00 00 20 */	b lbl_8080312C
lbl_80803110:
/* 80803110  38 61 00 20 */	addi r3, r1, 0x20
/* 80803114  38 81 00 50 */	addi r4, r1, 0x50
/* 80803118  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8080311C  4B A6 39 C8 */	b __pl__4cXyzCFRC3Vec
/* 80803120  38 7D 0B 04 */	addi r3, r29, 0xb04
/* 80803124  38 81 00 20 */	addi r4, r1, 0x20
/* 80803128  4B A6 C5 20 */	b SetC__8cM3dGSphFRC4cXyz
lbl_8080312C:
/* 8080312C  38 7D 0B 04 */	addi r3, r29, 0xb04
/* 80803130  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80803134  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80803138  EC 21 00 32 */	fmuls f1, f1, f0
/* 8080313C  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 80803140  EC 21 00 32 */	fmuls f1, f1, f0
/* 80803144  4B A6 C5 C4 */	b SetR__8cM3dGSphFf
/* 80803148  7F 83 E3 78 */	mr r3, r28
/* 8080314C  38 9D 09 E0 */	addi r4, r29, 0x9e0
/* 80803150  4B A6 1A 58 */	b Set__4cCcSFP8cCcD_Obj
/* 80803154  7F A3 EB 78 */	mr r3, r29
/* 80803158  4B FF F7 05 */	bl eff_set__FP10e_yh_class
/* 8080315C  38 60 00 01 */	li r3, 1
lbl_80803160:
/* 80803160  39 61 00 80 */	addi r11, r1, 0x80
/* 80803164  4B B5 F0 C0 */	b _restgpr_28
/* 80803168  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8080316C  7C 08 03 A6 */	mtlr r0
/* 80803170  38 21 00 80 */	addi r1, r1, 0x80
/* 80803174  4E 80 00 20 */	blr 
