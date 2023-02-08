lbl_80849BA8:
/* 80849BA8  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 80849BAC  7C 08 02 A6 */	mflr r0
/* 80849BB0  90 01 01 34 */	stw r0, 0x134(r1)
/* 80849BB4  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 80849BB8  F3 E1 01 28 */	psq_st f31, 296(r1), 0, 0 /* qr0 */
/* 80849BBC  39 61 01 20 */	addi r11, r1, 0x120
/* 80849BC0  4B B1 86 15 */	bl _savegpr_27
/* 80849BC4  7C 7C 1B 78 */	mr r28, r3
/* 80849BC8  7C 9D 23 78 */	mr r29, r4
/* 80849BCC  7C BE 2B 78 */	mr r30, r5
/* 80849BD0  3C 60 80 85 */	lis r3, lit_3929@ha /* 0x80854B04@ha */
/* 80849BD4  3B E3 4B 04 */	addi r31, r3, lit_3929@l /* 0x80854B04@l */
/* 80849BD8  C3 FC 07 04 */	lfs f31, 0x704(r28)
/* 80849BDC  80 7C 07 68 */	lwz r3, 0x768(r28)
/* 80849BE0  28 03 00 00 */	cmplwi r3, 0
/* 80849BE4  41 82 02 B4 */	beq lbl_80849E98
/* 80849BE8  88 9C 07 70 */	lbz r4, 0x770(r28)
/* 80849BEC  7C 84 07 74 */	extsb r4, r4
/* 80849BF0  4B 80 7B C1 */	bl dPath_GetPnt__FPC5dPathi
/* 80849BF4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80849BF8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80849BFC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80849C00  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80849C04  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80849C08  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80849C0C  88 1C 07 72 */	lbz r0, 0x772(r28)
/* 80849C10  7C 00 07 74 */	extsb r0, r0
/* 80849C14  88 BC 07 70 */	lbz r5, 0x770(r28)
/* 80849C18  7C A5 07 74 */	extsb r5, r5
/* 80849C1C  7C 80 28 50 */	subf r4, r0, r5
/* 80849C20  80 7C 07 68 */	lwz r3, 0x768(r28)
/* 80849C24  A0 03 00 00 */	lhz r0, 0(r3)
/* 80849C28  7C 04 00 00 */	cmpw r4, r0
/* 80849C2C  40 80 00 0C */	bge lbl_80849C38
/* 80849C30  2C 04 00 00 */	cmpwi r4, 0
/* 80849C34  40 80 00 08 */	bge lbl_80849C3C
lbl_80849C38:
/* 80849C38  7C A4 2B 78 */	mr r4, r5
lbl_80849C3C:
/* 80849C3C  4B 80 7B 75 */	bl dPath_GetPnt__FPC5dPathi
/* 80849C40  C0 03 00 04 */	lfs f0, 4(r3)
/* 80849C44  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80849C48  C0 03 00 08 */	lfs f0, 8(r3)
/* 80849C4C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80849C50  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80849C54  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80849C58  38 61 00 3C */	addi r3, r1, 0x3c
/* 80849C5C  38 81 00 48 */	addi r4, r1, 0x48
/* 80849C60  4B A2 6F A5 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80849C64  7C 60 1B 78 */	mr r0, r3
/* 80849C68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80849C6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80849C70  7C 00 07 34 */	extsh r0, r0
/* 80849C74  7F 60 00 D0 */	neg r27, r0
/* 80849C78  7F 64 07 34 */	extsh r4, r27
/* 80849C7C  4B 7C 27 61 */	bl mDoMtx_YrotS__FPA4_fs
/* 80849C80  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80849C84  FC 20 00 50 */	fneg f1, f0
/* 80849C88  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80849C8C  FC 40 00 50 */	fneg f2, f0
/* 80849C90  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80849C94  FC 60 00 50 */	fneg f3, f0
/* 80849C98  4B 7C 31 05 */	bl transM__14mDoMtx_stack_cFfff
/* 80849C9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80849CA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80849CA4  38 81 00 3C */	addi r4, r1, 0x3c
/* 80849CA8  38 A1 00 30 */	addi r5, r1, 0x30
/* 80849CAC  4B AF D0 C1 */	bl PSMTXMultVec
/* 80849CB0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80849CB4  FF E0 00 50 */	fneg f31, f0
/* 80849CB8  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80849CBC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80849CC0  40 80 00 08 */	bge lbl_80849CC8
/* 80849CC4  FF E0 00 90 */	fmr f31, f0
lbl_80849CC8:
/* 80849CC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80849CCC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80849CD0  7F 64 07 34 */	extsh r4, r27
/* 80849CD4  4B 7C 27 09 */	bl mDoMtx_YrotS__FPA4_fs
/* 80849CD8  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80849CDC  FC 20 00 50 */	fneg f1, f0
/* 80849CE0  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80849CE4  FC 40 00 50 */	fneg f2, f0
/* 80849CE8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80849CEC  FC 60 00 50 */	fneg f3, f0
/* 80849CF0  4B 7C 30 AD */	bl transM__14mDoMtx_stack_cFfff
/* 80849CF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80849CF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80849CFC  38 81 00 48 */	addi r4, r1, 0x48
/* 80849D00  38 A1 00 30 */	addi r5, r1, 0x30
/* 80849D04  4B AF D0 69 */	bl PSMTXMultVec
/* 80849D08  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80849D0C  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80849D10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80849D14  40 80 00 08 */	bge lbl_80849D1C
/* 80849D18  FC 20 00 90 */	fmr f1, f0
lbl_80849D1C:
/* 80849D1C  EC 1F 08 2A */	fadds f0, f31, f1
/* 80849D20  EC 7F 00 24 */	fdivs f3, f31, f0
/* 80849D24  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80849D28  EC 40 00 F2 */	fmuls f2, f0, f3
/* 80849D2C  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80849D30  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80849D34  EC 00 18 28 */	fsubs f0, f0, f3
/* 80849D38  EC 01 00 32 */	fmuls f0, f1, f0
/* 80849D3C  EF E2 00 2A */	fadds f31, f2, f0
/* 80849D40  28 1E 00 00 */	cmplwi r30, 0
/* 80849D44  41 82 01 54 */	beq lbl_80849E98
/* 80849D48  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80849D4C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80849D50  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80849D54  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80849D58  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80849D5C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80849D60  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80849D64  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80849D68  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80849D6C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80849D70  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80849D74  38 61 00 0C */	addi r3, r1, 0xc
/* 80849D78  38 81 00 18 */	addi r4, r1, 0x18
/* 80849D7C  4B AF D6 21 */	bl PSVECSquareDistance
/* 80849D80  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80849D84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80849D88  40 81 00 58 */	ble lbl_80849DE0
/* 80849D8C  FC 00 08 34 */	frsqrte f0, f1
/* 80849D90  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80849D94  FC 44 00 32 */	fmul f2, f4, f0
/* 80849D98  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80849D9C  FC 00 00 32 */	fmul f0, f0, f0
/* 80849DA0  FC 01 00 32 */	fmul f0, f1, f0
/* 80849DA4  FC 03 00 28 */	fsub f0, f3, f0
/* 80849DA8  FC 02 00 32 */	fmul f0, f2, f0
/* 80849DAC  FC 44 00 32 */	fmul f2, f4, f0
/* 80849DB0  FC 00 00 32 */	fmul f0, f0, f0
/* 80849DB4  FC 01 00 32 */	fmul f0, f1, f0
/* 80849DB8  FC 03 00 28 */	fsub f0, f3, f0
/* 80849DBC  FC 02 00 32 */	fmul f0, f2, f0
/* 80849DC0  FC 44 00 32 */	fmul f2, f4, f0
/* 80849DC4  FC 00 00 32 */	fmul f0, f0, f0
/* 80849DC8  FC 01 00 32 */	fmul f0, f1, f0
/* 80849DCC  FC 03 00 28 */	fsub f0, f3, f0
/* 80849DD0  FC 02 00 32 */	fmul f0, f2, f0
/* 80849DD4  FC 21 00 32 */	fmul f1, f1, f0
/* 80849DD8  FC 20 08 18 */	frsp f1, f1
/* 80849DDC  48 00 00 88 */	b lbl_80849E64
lbl_80849DE0:
/* 80849DE0  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80849DE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80849DE8  40 80 00 10 */	bge lbl_80849DF8
/* 80849DEC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80849DF0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80849DF4  48 00 00 70 */	b lbl_80849E64
lbl_80849DF8:
/* 80849DF8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80849DFC  80 81 00 08 */	lwz r4, 8(r1)
/* 80849E00  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80849E04  3C 00 7F 80 */	lis r0, 0x7f80
/* 80849E08  7C 03 00 00 */	cmpw r3, r0
/* 80849E0C  41 82 00 14 */	beq lbl_80849E20
/* 80849E10  40 80 00 40 */	bge lbl_80849E50
/* 80849E14  2C 03 00 00 */	cmpwi r3, 0
/* 80849E18  41 82 00 20 */	beq lbl_80849E38
/* 80849E1C  48 00 00 34 */	b lbl_80849E50
lbl_80849E20:
/* 80849E20  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80849E24  41 82 00 0C */	beq lbl_80849E30
/* 80849E28  38 00 00 01 */	li r0, 1
/* 80849E2C  48 00 00 28 */	b lbl_80849E54
lbl_80849E30:
/* 80849E30  38 00 00 02 */	li r0, 2
/* 80849E34  48 00 00 20 */	b lbl_80849E54
lbl_80849E38:
/* 80849E38  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80849E3C  41 82 00 0C */	beq lbl_80849E48
/* 80849E40  38 00 00 05 */	li r0, 5
/* 80849E44  48 00 00 10 */	b lbl_80849E54
lbl_80849E48:
/* 80849E48  38 00 00 03 */	li r0, 3
/* 80849E4C  48 00 00 08 */	b lbl_80849E54
lbl_80849E50:
/* 80849E50  38 00 00 04 */	li r0, 4
lbl_80849E54:
/* 80849E54  2C 00 00 01 */	cmpwi r0, 1
/* 80849E58  40 82 00 0C */	bne lbl_80849E64
/* 80849E5C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80849E60  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80849E64:
/* 80849E64  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 80849E68  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80849E6C  EC 02 00 28 */	fsubs f0, f2, f0
/* 80849E70  FC 00 02 10 */	fabs f0, f0
/* 80849E74  FC 60 00 18 */	frsp f3, f0
/* 80849E78  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80849E7C  3C 60 80 85 */	lis r3, l_HIO@ha /* 0x80854F78@ha */
/* 80849E80  38 63 4F 78 */	addi r3, r3, l_HIO@l /* 0x80854F78@l */
/* 80849E84  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80849E88  EC 03 00 32 */	fmuls f0, f3, f0
/* 80849E8C  EC 00 08 24 */	fdivs f0, f0, f1
/* 80849E90  EC 02 00 2A */	fadds f0, f2, f0
/* 80849E94  D0 1E 00 00 */	stfs f0, 0(r30)
lbl_80849E98:
/* 80849E98  38 00 00 00 */	li r0, 0
/* 80849E9C  98 1C 06 E0 */	stb r0, 0x6e0(r28)
/* 80849EA0  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80849EA4  4B 82 D6 D9 */	bl __ct__11dBgS_GndChkFv
/* 80849EA8  C0 5D 00 08 */	lfs f2, 8(r29)
/* 80849EAC  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80849EB0  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80849EB4  EC 21 00 2A */	fadds f1, f1, f0
/* 80849EB8  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80849EBC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80849EC0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80849EC4  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80849EC8  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80849ECC  38 81 00 24 */	addi r4, r1, 0x24
/* 80849ED0  4B A1 DE 59 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80849ED4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80849ED8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80849EDC  3B 63 0F 38 */	addi r27, r3, 0xf38
/* 80849EE0  7F 63 DB 78 */	mr r3, r27
/* 80849EE4  38 81 00 A8 */	addi r4, r1, 0xa8
/* 80849EE8  4B 82 A5 B9 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80849EEC  D0 3C 07 00 */	stfs f1, 0x700(r28)
/* 80849EF0  38 00 00 00 */	li r0, 0
/* 80849EF4  90 1C 07 38 */	stw r0, 0x738(r28)
/* 80849EF8  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80849EFC  C0 1C 07 00 */	lfs f0, 0x700(r28)
/* 80849F00  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80849F04  41 82 00 64 */	beq lbl_80849F68
/* 80849F08  7F 63 DB 78 */	mr r3, r27
/* 80849F0C  38 81 00 BC */	addi r4, r1, 0xbc
/* 80849F10  4B 82 AD AD */	bl GetSpecialCode__4dBgSFRC13cBgS_PolyInfo
/* 80849F14  90 7C 07 38 */	stw r3, 0x738(r28)
/* 80849F18  C0 3C 07 00 */	lfs f1, 0x700(r28)
/* 80849F1C  3C 60 80 85 */	lis r3, l_HIO@ha /* 0x80854F78@ha */
/* 80849F20  38 63 4F 78 */	addi r3, r3, l_HIO@l /* 0x80854F78@l */
/* 80849F24  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80849F28  EC 01 00 2A */	fadds f0, f1, f0
/* 80849F2C  D0 1C 07 00 */	stfs f0, 0x700(r28)
/* 80849F30  C0 1C 07 00 */	lfs f0, 0x700(r28)
/* 80849F34  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80849F38  40 80 00 30 */	bge lbl_80849F68
/* 80849F3C  FF E0 00 90 */	fmr f31, f0
/* 80849F40  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80849F44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80849F48  40 80 00 0C */	bge lbl_80849F54
/* 80849F4C  D0 3C 07 04 */	stfs f1, 0x704(r28)
/* 80849F50  48 00 00 08 */	b lbl_80849F58
lbl_80849F54:
/* 80849F54  D0 1C 07 04 */	stfs f0, 0x704(r28)
lbl_80849F58:
/* 80849F58  28 1E 00 00 */	cmplwi r30, 0
/* 80849F5C  41 82 00 0C */	beq lbl_80849F68
/* 80849F60  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80849F64  D0 1E 00 00 */	stfs f0, 0(r30)
lbl_80849F68:
/* 80849F68  3B A0 00 00 */	li r29, 0
/* 80849F6C  38 61 00 54 */	addi r3, r1, 0x54
/* 80849F70  4B 82 D8 41 */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 80849F74  38 61 00 54 */	addi r3, r1, 0x54
/* 80849F78  38 81 00 24 */	addi r4, r1, 0x24
/* 80849F7C  4B A1 DD AD */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80849F80  7F 63 DB 78 */	mr r3, r27
/* 80849F84  38 81 00 54 */	addi r4, r1, 0x54
/* 80849F88  4B 82 A5 19 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80849F8C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80849F90  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80849F94  41 82 00 74 */	beq lbl_8084A008
/* 80849F98  D0 3C 07 0C */	stfs f1, 0x70c(r28)
/* 80849F9C  3C 60 80 85 */	lis r3, l_HIO@ha /* 0x80854F78@ha */
/* 80849FA0  38 63 4F 78 */	addi r3, r3, l_HIO@l /* 0x80854F78@l */
/* 80849FA4  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80849FA8  EC 41 00 2A */	fadds f2, f1, f0
/* 80849FAC  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80849FB0  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80849FB4  EC 00 10 2A */	fadds f0, f0, f2
/* 80849FB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80849FBC  40 80 00 08 */	bge lbl_80849FC4
/* 80849FC0  3B A0 00 01 */	li r29, 1
lbl_80849FC4:
/* 80849FC4  FC 1F 10 40 */	fcmpo cr0, f31, f2
/* 80849FC8  40 80 00 40 */	bge lbl_8084A008
/* 80849FCC  D0 5C 07 00 */	stfs f2, 0x700(r28)
/* 80849FD0  FF E0 10 90 */	fmr f31, f2
/* 80849FD4  38 00 00 01 */	li r0, 1
/* 80849FD8  98 1C 06 E0 */	stb r0, 0x6e0(r28)
/* 80849FDC  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80849FE0  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80849FE4  40 80 00 0C */	bge lbl_80849FF0
/* 80849FE8  D0 1C 07 04 */	stfs f0, 0x704(r28)
/* 80849FEC  48 00 00 0C */	b lbl_80849FF8
lbl_80849FF0:
/* 80849FF0  C0 1C 07 00 */	lfs f0, 0x700(r28)
/* 80849FF4  D0 1C 07 04 */	stfs f0, 0x704(r28)
lbl_80849FF8:
/* 80849FF8  28 1E 00 00 */	cmplwi r30, 0
/* 80849FFC  41 82 00 0C */	beq lbl_8084A008
/* 8084A000  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8084A004  D0 1E 00 00 */	stfs f0, 0(r30)
lbl_8084A008:
/* 8084A008  2C 1D 00 00 */	cmpwi r29, 0
/* 8084A00C  41 82 00 1C */	beq lbl_8084A028
/* 8084A010  88 1C 06 E6 */	lbz r0, 0x6e6(r28)
/* 8084A014  28 00 00 00 */	cmplwi r0, 0
/* 8084A018  40 82 00 1C */	bne lbl_8084A034
/* 8084A01C  38 00 00 01 */	li r0, 1
/* 8084A020  98 1C 06 E6 */	stb r0, 0x6e6(r28)
/* 8084A024  48 00 00 10 */	b lbl_8084A034
lbl_8084A028:
/* 8084A028  38 00 00 00 */	li r0, 0
/* 8084A02C  90 1C 07 1C */	stw r0, 0x71c(r28)
/* 8084A030  98 1C 06 E6 */	stb r0, 0x6e6(r28)
lbl_8084A034:
/* 8084A034  38 61 00 54 */	addi r3, r1, 0x54
/* 8084A038  38 80 FF FF */	li r4, -1
/* 8084A03C  4B 82 D8 0D */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 8084A040  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8084A044  38 80 FF FF */	li r4, -1
/* 8084A048  4B 82 D5 A9 */	bl __dt__11dBgS_GndChkFv
/* 8084A04C  FC 20 F8 90 */	fmr f1, f31
/* 8084A050  E3 E1 01 28 */	psq_l f31, 296(r1), 0, 0 /* qr0 */
/* 8084A054  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 8084A058  39 61 01 20 */	addi r11, r1, 0x120
/* 8084A05C  4B B1 81 C5 */	bl _restgpr_27
/* 8084A060  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8084A064  7C 08 03 A6 */	mtlr r0
/* 8084A068  38 21 01 30 */	addi r1, r1, 0x130
/* 8084A06C  4E 80 00 20 */	blr 
