lbl_80C07D38:
/* 80C07D38  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80C07D3C  7C 08 02 A6 */	mflr r0
/* 80C07D40  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80C07D44  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80C07D48  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80C07D4C  39 61 00 90 */	addi r11, r1, 0x90
/* 80C07D50  4B 75 A4 89 */	bl _savegpr_28
/* 80C07D54  7C 7C 1B 78 */	mr r28, r3
/* 80C07D58  3C 80 80 C1 */	lis r4, m__17daObj_GrA_Param_c@ha /* 0x80C0FA7C@ha */
/* 80C07D5C  3B C4 FA 7C */	addi r30, r4, m__17daObj_GrA_Param_c@l /* 0x80C0FA7C@l */
/* 80C07D60  3C 80 80 C1 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80C0FE68@ha */
/* 80C07D64  3B E4 FE 68 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80C0FE68@l */
/* 80C07D68  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C07D6C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C07D70  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 80C07D74  A0 03 0A 7C */	lhz r0, 0xa7c(r3)
/* 80C07D78  2C 00 00 01 */	cmpwi r0, 1
/* 80C07D7C  41 82 00 50 */	beq lbl_80C07DCC
/* 80C07D80  40 80 06 4C */	bge lbl_80C083CC
/* 80C07D84  2C 00 00 00 */	cmpwi r0, 0
/* 80C07D88  40 80 00 0C */	bge lbl_80C07D94
/* 80C07D8C  48 00 06 40 */	b lbl_80C083CC
/* 80C07D90  48 00 06 3C */	b lbl_80C083CC
lbl_80C07D94:
/* 80C07D94  38 80 00 00 */	li r4, 0
/* 80C07D98  38 BE 00 00 */	addi r5, r30, 0
/* 80C07D9C  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C07DA0  4B FF 99 ED */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C07DA4  7F 83 E3 78 */	mr r3, r28
/* 80C07DA8  38 80 00 0D */	li r4, 0xd
/* 80C07DAC  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 80C07DB0  4B FF 99 FD */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C07DB4  7F 83 E3 78 */	mr r3, r28
/* 80C07DB8  38 80 00 01 */	li r4, 1
/* 80C07DBC  4B FF AD 19 */	bl setLookMode__11daObj_GrA_cFi
/* 80C07DC0  38 00 00 00 */	li r0, 0
/* 80C07DC4  98 1C 20 14 */	stb r0, 0x2014(r28)
/* 80C07DC8  48 00 06 04 */	b lbl_80C083CC
lbl_80C07DCC:
/* 80C07DCC  88 1C 20 31 */	lbz r0, 0x2031(r28)
/* 80C07DD0  28 00 00 00 */	cmplwi r0, 0
/* 80C07DD4  40 82 00 2C */	bne lbl_80C07E00
/* 80C07DD8  28 1D 00 00 */	cmplwi r29, 0
/* 80C07DDC  41 82 00 24 */	beq lbl_80C07E00
/* 80C07DE0  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80C07DE4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80C07DE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C07DEC  40 81 00 0C */	ble lbl_80C07DF8
/* 80C07DF0  4B 41 1E 8D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80C07DF4  48 00 00 0C */	b lbl_80C07E00
lbl_80C07DF8:
/* 80C07DF8  38 00 00 01 */	li r0, 1
/* 80C07DFC  98 1C 20 31 */	stb r0, 0x2031(r28)
lbl_80C07E00:
/* 80C07E00  7F 83 E3 78 */	mr r3, r28
/* 80C07E04  4B FF 90 01 */	bl getTagNo__11daObj_GrA_cFv
/* 80C07E08  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80C07E0C  41 82 04 10 */	beq lbl_80C0821C
/* 80C07E10  88 1C 20 32 */	lbz r0, 0x2032(r28)
/* 80C07E14  28 00 00 00 */	cmplwi r0, 0
/* 80C07E18  40 82 00 7C */	bne lbl_80C07E94
/* 80C07E1C  3C 60 80 C0 */	lis r3, s_sub__FPvPv@ha /* 0x80C036B4@ha */
/* 80C07E20  38 63 36 B4 */	addi r3, r3, s_sub__FPvPv@l /* 0x80C036B4@l */
/* 80C07E24  7F 84 E3 78 */	mr r4, r28
/* 80C07E28  4B 41 95 11 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80C07E2C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80C07E30  41 82 05 9C */	beq lbl_80C083CC
/* 80C07E34  38 61 00 68 */	addi r3, r1, 0x68
/* 80C07E38  7F A4 EB 78 */	mr r4, r29
/* 80C07E3C  48 00 50 D5 */	bl getGraPos__10daTagGra_cFv
/* 80C07E40  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80C07E44  D0 1C 20 34 */	stfs f0, 0x2034(r28)
/* 80C07E48  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80C07E4C  D0 1C 20 38 */	stfs f0, 0x2038(r28)
/* 80C07E50  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80C07E54  D0 1C 20 3C */	stfs f0, 0x203c(r28)
/* 80C07E58  C0 3E 02 34 */	lfs f1, 0x234(r30)
/* 80C07E5C  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 80C07E60  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C07E64  D0 1C 20 40 */	stfs f0, 0x2040(r28)
/* 80C07E68  C0 1D 04 F0 */	lfs f0, 0x4f0(r29)
/* 80C07E6C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C07E70  D0 1C 20 44 */	stfs f0, 0x2044(r28)
/* 80C07E74  7F A3 EB 78 */	mr r3, r29
/* 80C07E78  4B 41 1E 05 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80C07E7C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C07E80  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80C07E84  B0 1C 20 48 */	sth r0, 0x2048(r28)
/* 80C07E88  38 00 00 01 */	li r0, 1
/* 80C07E8C  98 1C 20 32 */	stb r0, 0x2032(r28)
/* 80C07E90  48 00 05 3C */	b lbl_80C083CC
lbl_80C07E94:
/* 80C07E94  A8 1C 20 48 */	lha r0, 0x2048(r28)
/* 80C07E98  2C 00 00 01 */	cmpwi r0, 1
/* 80C07E9C  40 82 01 B8 */	bne lbl_80C08054
/* 80C07EA0  38 61 00 5C */	addi r3, r1, 0x5c
/* 80C07EA4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80C07EA8  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80C07EAC  4B 65 EC 89 */	bl __mi__4cXyzCFRC3Vec
/* 80C07EB0  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80C07EB4  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80C07EB8  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80C07EBC  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80C07EC0  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80C07EC4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80C07EC8  C0 1E 02 60 */	lfs f0, 0x260(r30)
/* 80C07ECC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C07ED0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80C07ED4  38 61 00 74 */	addi r3, r1, 0x74
/* 80C07ED8  4B 73 F2 61 */	bl PSVECSquareMag
/* 80C07EDC  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C07EE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C07EE4  40 81 00 58 */	ble lbl_80C07F3C
/* 80C07EE8  FC 00 08 34 */	frsqrte f0, f1
/* 80C07EEC  C8 9E 01 50 */	lfd f4, 0x150(r30)
/* 80C07EF0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C07EF4  C8 7E 01 58 */	lfd f3, 0x158(r30)
/* 80C07EF8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C07EFC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C07F00  FC 03 00 28 */	fsub f0, f3, f0
/* 80C07F04  FC 02 00 32 */	fmul f0, f2, f0
/* 80C07F08  FC 44 00 32 */	fmul f2, f4, f0
/* 80C07F0C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C07F10  FC 01 00 32 */	fmul f0, f1, f0
/* 80C07F14  FC 03 00 28 */	fsub f0, f3, f0
/* 80C07F18  FC 02 00 32 */	fmul f0, f2, f0
/* 80C07F1C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C07F20  FC 00 00 32 */	fmul f0, f0, f0
/* 80C07F24  FC 01 00 32 */	fmul f0, f1, f0
/* 80C07F28  FC 03 00 28 */	fsub f0, f3, f0
/* 80C07F2C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C07F30  FF E1 00 32 */	fmul f31, f1, f0
/* 80C07F34  FF E0 F8 18 */	frsp f31, f31
/* 80C07F38  48 00 00 90 */	b lbl_80C07FC8
lbl_80C07F3C:
/* 80C07F3C  C8 1E 01 60 */	lfd f0, 0x160(r30)
/* 80C07F40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C07F44  40 80 00 10 */	bge lbl_80C07F54
/* 80C07F48  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C07F4C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C07F50  48 00 00 78 */	b lbl_80C07FC8
lbl_80C07F54:
/* 80C07F54  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C07F58  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80C07F5C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C07F60  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C07F64  7C 03 00 00 */	cmpw r3, r0
/* 80C07F68  41 82 00 14 */	beq lbl_80C07F7C
/* 80C07F6C  40 80 00 40 */	bge lbl_80C07FAC
/* 80C07F70  2C 03 00 00 */	cmpwi r3, 0
/* 80C07F74  41 82 00 20 */	beq lbl_80C07F94
/* 80C07F78  48 00 00 34 */	b lbl_80C07FAC
lbl_80C07F7C:
/* 80C07F7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C07F80  41 82 00 0C */	beq lbl_80C07F8C
/* 80C07F84  38 00 00 01 */	li r0, 1
/* 80C07F88  48 00 00 28 */	b lbl_80C07FB0
lbl_80C07F8C:
/* 80C07F8C  38 00 00 02 */	li r0, 2
/* 80C07F90  48 00 00 20 */	b lbl_80C07FB0
lbl_80C07F94:
/* 80C07F94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C07F98  41 82 00 0C */	beq lbl_80C07FA4
/* 80C07F9C  38 00 00 05 */	li r0, 5
/* 80C07FA0  48 00 00 10 */	b lbl_80C07FB0
lbl_80C07FA4:
/* 80C07FA4  38 00 00 03 */	li r0, 3
/* 80C07FA8  48 00 00 08 */	b lbl_80C07FB0
lbl_80C07FAC:
/* 80C07FAC  38 00 00 04 */	li r0, 4
lbl_80C07FB0:
/* 80C07FB0  2C 00 00 01 */	cmpwi r0, 1
/* 80C07FB4  40 82 00 10 */	bne lbl_80C07FC4
/* 80C07FB8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C07FBC  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C07FC0  48 00 00 08 */	b lbl_80C07FC8
lbl_80C07FC4:
/* 80C07FC4  FF E0 08 90 */	fmr f31, f1
lbl_80C07FC8:
/* 80C07FC8  7F 83 E3 78 */	mr r3, r28
/* 80C07FCC  4B FF FC 75 */	bl getSrchLinkR__11daObj_GrA_cFv
/* 80C07FD0  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80C07FD4  40 80 03 F8 */	bge lbl_80C083CC
/* 80C07FD8  7F A3 EB 78 */	mr r3, r29
/* 80C07FDC  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80C07FE0  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80C07FE4  7D 89 03 A6 */	mtctr r12
/* 80C07FE8  4E 80 04 21 */	bctrl 
/* 80C07FEC  28 03 00 00 */	cmplwi r3, 0
/* 80C07FF0  40 82 03 DC */	bne lbl_80C083CC
/* 80C07FF4  7F A3 EB 78 */	mr r3, r29
/* 80C07FF8  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80C07FFC  81 8C 00 CC */	lwz r12, 0xcc(r12)
/* 80C08000  7D 89 03 A6 */	mtctr r12
/* 80C08004  4E 80 04 21 */	bctrl 
/* 80C08008  2C 03 00 00 */	cmpwi r3, 0
/* 80C0800C  40 82 03 C0 */	bne lbl_80C083CC
/* 80C08010  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C08014  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C08018  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80C0801C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C08020  40 82 03 AC */	bne lbl_80C083CC
/* 80C08024  80 7F 03 E8 */	lwz r3, 0x3e8(r31)
/* 80C08028  80 1F 03 EC */	lwz r0, 0x3ec(r31)
/* 80C0802C  90 61 00 50 */	stw r3, 0x50(r1)
/* 80C08030  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C08034  80 1F 03 F0 */	lwz r0, 0x3f0(r31)
/* 80C08038  90 01 00 58 */	stw r0, 0x58(r1)
/* 80C0803C  7F 83 E3 78 */	mr r3, r28
/* 80C08040  38 81 00 50 */	addi r4, r1, 0x50
/* 80C08044  4B FF 98 B1 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C08048  3C 60 80 45 */	lis r3, g_dComIfGoat_gameInfo@ha /* 0x80450618@ha */
/* 80C0804C  93 83 06 18 */	stw r28, g_dComIfGoat_gameInfo@l(r3)  /* 0x80450618@l */
/* 80C08050  48 00 03 7C */	b lbl_80C083CC
lbl_80C08054:
/* 80C08054  38 61 00 44 */	addi r3, r1, 0x44
/* 80C08058  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80C0805C  38 BC 20 34 */	addi r5, r28, 0x2034
/* 80C08060  4B 65 EA D5 */	bl __mi__4cXyzCFRC3Vec
/* 80C08064  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 80C08068  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 80C0806C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80C08070  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80C08074  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 80C08078  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 80C0807C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80C08080  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C08084  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C08088  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80C0808C  38 61 00 14 */	addi r3, r1, 0x14
/* 80C08090  4B 73 F0 A9 */	bl PSVECSquareMag
/* 80C08094  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C08098  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0809C  40 81 00 58 */	ble lbl_80C080F4
/* 80C080A0  FC 00 08 34 */	frsqrte f0, f1
/* 80C080A4  C8 9E 01 50 */	lfd f4, 0x150(r30)
/* 80C080A8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C080AC  C8 7E 01 58 */	lfd f3, 0x158(r30)
/* 80C080B0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C080B4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C080B8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C080BC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C080C0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C080C4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C080C8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C080CC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C080D0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C080D4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C080D8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C080DC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C080E0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C080E4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C080E8  FC 21 00 32 */	fmul f1, f1, f0
/* 80C080EC  FC 20 08 18 */	frsp f1, f1
/* 80C080F0  48 00 00 88 */	b lbl_80C08178
lbl_80C080F4:
/* 80C080F4  C8 1E 01 60 */	lfd f0, 0x160(r30)
/* 80C080F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C080FC  40 80 00 10 */	bge lbl_80C0810C
/* 80C08100  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C08104  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C08108  48 00 00 70 */	b lbl_80C08178
lbl_80C0810C:
/* 80C0810C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C08110  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C08114  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C08118  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0811C  7C 03 00 00 */	cmpw r3, r0
/* 80C08120  41 82 00 14 */	beq lbl_80C08134
/* 80C08124  40 80 00 40 */	bge lbl_80C08164
/* 80C08128  2C 03 00 00 */	cmpwi r3, 0
/* 80C0812C  41 82 00 20 */	beq lbl_80C0814C
/* 80C08130  48 00 00 34 */	b lbl_80C08164
lbl_80C08134:
/* 80C08134  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C08138  41 82 00 0C */	beq lbl_80C08144
/* 80C0813C  38 00 00 01 */	li r0, 1
/* 80C08140  48 00 00 28 */	b lbl_80C08168
lbl_80C08144:
/* 80C08144  38 00 00 02 */	li r0, 2
/* 80C08148  48 00 00 20 */	b lbl_80C08168
lbl_80C0814C:
/* 80C0814C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C08150  41 82 00 0C */	beq lbl_80C0815C
/* 80C08154  38 00 00 05 */	li r0, 5
/* 80C08158  48 00 00 10 */	b lbl_80C08168
lbl_80C0815C:
/* 80C0815C  38 00 00 03 */	li r0, 3
/* 80C08160  48 00 00 08 */	b lbl_80C08168
lbl_80C08164:
/* 80C08164  38 00 00 04 */	li r0, 4
lbl_80C08168:
/* 80C08168  2C 00 00 01 */	cmpwi r0, 1
/* 80C0816C  40 82 00 0C */	bne lbl_80C08178
/* 80C08170  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C08174  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C08178:
/* 80C08178  C0 1C 20 40 */	lfs f0, 0x2040(r28)
/* 80C0817C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C08180  40 80 02 4C */	bge lbl_80C083CC
/* 80C08184  7F A3 EB 78 */	mr r3, r29
/* 80C08188  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80C0818C  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80C08190  7D 89 03 A6 */	mtctr r12
/* 80C08194  4E 80 04 21 */	bctrl 
/* 80C08198  28 03 00 00 */	cmplwi r3, 0
/* 80C0819C  40 82 02 30 */	bne lbl_80C083CC
/* 80C081A0  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 80C081A4  C0 1E 02 B8 */	lfs f0, 0x2b8(r30)
/* 80C081A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C081AC  40 81 02 20 */	ble lbl_80C083CC
/* 80C081B0  C0 1C 20 44 */	lfs f0, 0x2044(r28)
/* 80C081B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C081B8  40 80 02 14 */	bge lbl_80C083CC
/* 80C081BC  7F A3 EB 78 */	mr r3, r29
/* 80C081C0  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80C081C4  81 8C 00 CC */	lwz r12, 0xcc(r12)
/* 80C081C8  7D 89 03 A6 */	mtctr r12
/* 80C081CC  4E 80 04 21 */	bctrl 
/* 80C081D0  2C 03 00 00 */	cmpwi r3, 0
/* 80C081D4  40 82 01 F8 */	bne lbl_80C083CC
/* 80C081D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C081DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C081E0  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80C081E4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C081E8  40 82 01 E4 */	bne lbl_80C083CC
/* 80C081EC  80 7F 03 F4 */	lwz r3, 0x3f4(r31)
/* 80C081F0  80 1F 03 F8 */	lwz r0, 0x3f8(r31)
/* 80C081F4  90 61 00 38 */	stw r3, 0x38(r1)
/* 80C081F8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80C081FC  80 1F 03 FC */	lwz r0, 0x3fc(r31)
/* 80C08200  90 01 00 40 */	stw r0, 0x40(r1)
/* 80C08204  7F 83 E3 78 */	mr r3, r28
/* 80C08208  38 81 00 38 */	addi r4, r1, 0x38
/* 80C0820C  4B FF 96 E9 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C08210  3C 60 80 45 */	lis r3, g_dComIfGoat_gameInfo@ha /* 0x80450618@ha */
/* 80C08214  93 83 06 18 */	stw r28, g_dComIfGoat_gameInfo@l(r3)  /* 0x80450618@l */
/* 80C08218  48 00 01 B4 */	b lbl_80C083CC
lbl_80C0821C:
/* 80C0821C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80C08220  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80C08224  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80C08228  4B 65 E9 0D */	bl __mi__4cXyzCFRC3Vec
/* 80C0822C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C08230  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80C08234  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80C08238  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80C0823C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80C08240  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80C08244  C0 1E 02 60 */	lfs f0, 0x260(r30)
/* 80C08248  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C0824C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80C08250  38 61 00 74 */	addi r3, r1, 0x74
/* 80C08254  4B 73 EE E5 */	bl PSVECSquareMag
/* 80C08258  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0825C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C08260  40 81 00 58 */	ble lbl_80C082B8
/* 80C08264  FC 00 08 34 */	frsqrte f0, f1
/* 80C08268  C8 9E 01 50 */	lfd f4, 0x150(r30)
/* 80C0826C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C08270  C8 7E 01 58 */	lfd f3, 0x158(r30)
/* 80C08274  FC 00 00 32 */	fmul f0, f0, f0
/* 80C08278  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0827C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C08280  FC 02 00 32 */	fmul f0, f2, f0
/* 80C08284  FC 44 00 32 */	fmul f2, f4, f0
/* 80C08288  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0828C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C08290  FC 03 00 28 */	fsub f0, f3, f0
/* 80C08294  FC 02 00 32 */	fmul f0, f2, f0
/* 80C08298  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0829C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C082A0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C082A4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C082A8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C082AC  FF E1 00 32 */	fmul f31, f1, f0
/* 80C082B0  FF E0 F8 18 */	frsp f31, f31
/* 80C082B4  48 00 00 90 */	b lbl_80C08344
lbl_80C082B8:
/* 80C082B8  C8 1E 01 60 */	lfd f0, 0x160(r30)
/* 80C082BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C082C0  40 80 00 10 */	bge lbl_80C082D0
/* 80C082C4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C082C8  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C082CC  48 00 00 78 */	b lbl_80C08344
lbl_80C082D0:
/* 80C082D0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C082D4  80 81 00 08 */	lwz r4, 8(r1)
/* 80C082D8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C082DC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C082E0  7C 03 00 00 */	cmpw r3, r0
/* 80C082E4  41 82 00 14 */	beq lbl_80C082F8
/* 80C082E8  40 80 00 40 */	bge lbl_80C08328
/* 80C082EC  2C 03 00 00 */	cmpwi r3, 0
/* 80C082F0  41 82 00 20 */	beq lbl_80C08310
/* 80C082F4  48 00 00 34 */	b lbl_80C08328
lbl_80C082F8:
/* 80C082F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C082FC  41 82 00 0C */	beq lbl_80C08308
/* 80C08300  38 00 00 01 */	li r0, 1
/* 80C08304  48 00 00 28 */	b lbl_80C0832C
lbl_80C08308:
/* 80C08308  38 00 00 02 */	li r0, 2
/* 80C0830C  48 00 00 20 */	b lbl_80C0832C
lbl_80C08310:
/* 80C08310  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C08314  41 82 00 0C */	beq lbl_80C08320
/* 80C08318  38 00 00 05 */	li r0, 5
/* 80C0831C  48 00 00 10 */	b lbl_80C0832C
lbl_80C08320:
/* 80C08320  38 00 00 03 */	li r0, 3
/* 80C08324  48 00 00 08 */	b lbl_80C0832C
lbl_80C08328:
/* 80C08328  38 00 00 04 */	li r0, 4
lbl_80C0832C:
/* 80C0832C  2C 00 00 01 */	cmpwi r0, 1
/* 80C08330  40 82 00 10 */	bne lbl_80C08340
/* 80C08334  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C08338  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0833C  48 00 00 08 */	b lbl_80C08344
lbl_80C08340:
/* 80C08340  FF E0 08 90 */	fmr f31, f1
lbl_80C08344:
/* 80C08344  7F 83 E3 78 */	mr r3, r28
/* 80C08348  4B FF F8 F9 */	bl getSrchLinkR__11daObj_GrA_cFv
/* 80C0834C  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80C08350  40 80 00 7C */	bge lbl_80C083CC
/* 80C08354  7F A3 EB 78 */	mr r3, r29
/* 80C08358  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80C0835C  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80C08360  7D 89 03 A6 */	mtctr r12
/* 80C08364  4E 80 04 21 */	bctrl 
/* 80C08368  28 03 00 00 */	cmplwi r3, 0
/* 80C0836C  40 82 00 60 */	bne lbl_80C083CC
/* 80C08370  7F A3 EB 78 */	mr r3, r29
/* 80C08374  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80C08378  81 8C 00 CC */	lwz r12, 0xcc(r12)
/* 80C0837C  7D 89 03 A6 */	mtctr r12
/* 80C08380  4E 80 04 21 */	bctrl 
/* 80C08384  2C 03 00 00 */	cmpwi r3, 0
/* 80C08388  40 82 00 44 */	bne lbl_80C083CC
/* 80C0838C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C08390  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C08394  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80C08398  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C0839C  40 82 00 30 */	bne lbl_80C083CC
/* 80C083A0  80 7F 04 00 */	lwz r3, 0x400(r31)
/* 80C083A4  80 1F 04 04 */	lwz r0, 0x404(r31)
/* 80C083A8  90 61 00 20 */	stw r3, 0x20(r1)
/* 80C083AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C083B0  80 1F 04 08 */	lwz r0, 0x408(r31)
/* 80C083B4  90 01 00 28 */	stw r0, 0x28(r1)
/* 80C083B8  7F 83 E3 78 */	mr r3, r28
/* 80C083BC  38 81 00 20 */	addi r4, r1, 0x20
/* 80C083C0  4B FF 95 35 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C083C4  3C 60 80 45 */	lis r3, g_dComIfGoat_gameInfo@ha /* 0x80450618@ha */
/* 80C083C8  93 83 06 18 */	stw r28, g_dComIfGoat_gameInfo@l(r3)  /* 0x80450618@l */
lbl_80C083CC:
/* 80C083CC  38 60 00 01 */	li r3, 1
/* 80C083D0  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80C083D4  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80C083D8  39 61 00 90 */	addi r11, r1, 0x90
/* 80C083DC  4B 75 9E 49 */	bl _restgpr_28
/* 80C083E0  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80C083E4  7C 08 03 A6 */	mtlr r0
/* 80C083E8  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80C083EC  4E 80 00 20 */	blr 
