lbl_800A2CE0:
/* 800A2CE0  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 800A2CE4  7C 08 02 A6 */	mflr r0
/* 800A2CE8  90 01 01 54 */	stw r0, 0x154(r1)
/* 800A2CEC  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 800A2CF0  F3 E1 01 48 */	psq_st f31, 328(r1), 0, 0 /* qr0 */
/* 800A2CF4  DB C1 01 30 */	stfd f30, 0x130(r1)
/* 800A2CF8  F3 C1 01 38 */	psq_st f30, 312(r1), 0, 0 /* qr0 */
/* 800A2CFC  DB A1 01 20 */	stfd f29, 0x120(r1)
/* 800A2D00  F3 A1 01 28 */	psq_st f29, 296(r1), 0, 0 /* qr0 */
/* 800A2D04  39 61 01 20 */	addi r11, r1, 0x120
/* 800A2D08  48 2B F4 C9 */	bl _savegpr_26
/* 800A2D0C  7C 7B 1B 78 */	mr r27, r3
/* 800A2D10  FF C0 08 90 */	fmr f30, f1
/* 800A2D14  7C 9C 23 78 */	mr r28, r4
/* 800A2D18  7C BD 2B 78 */	mr r29, r5
/* 800A2D1C  7C DE 33 78 */	mr r30, r6
/* 800A2D20  7C FF 3B 78 */	mr r31, r7
/* 800A2D24  FC 00 F2 10 */	fabs f0, f30
/* 800A2D28  FC 20 00 18 */	frsp f1, f0
/* 800A2D2C  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 800A2D30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A2D34  40 80 00 0C */	bge lbl_800A2D40
/* 800A2D38  38 60 00 00 */	li r3, 0
/* 800A2D3C  48 00 06 C4 */	b lbl_800A3400
lbl_800A2D40:
/* 800A2D40  2C 1F 00 00 */	cmpwi r31, 0
/* 800A2D44  41 82 00 F0 */	beq lbl_800A2E34
/* 800A2D48  38 7B 2B E8 */	addi r3, r27, 0x2be8
/* 800A2D4C  38 9C 00 14 */	addi r4, r28, 0x14
/* 800A2D50  3C A0 80 3E */	lis r5, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A2D54  38 A5 D4 70 */	addi r5, r5, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A2D58  48 2A 37 8D */	bl PSMTXConcat
/* 800A2D5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A2D60  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A2D64  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 800A2D68  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 800A2D6C  C0 1A 00 1C */	lfs f0, 0x1c(r26)
/* 800A2D70  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 800A2D74  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 800A2D78  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 800A2D7C  38 7B 2B E8 */	addi r3, r27, 0x2be8
/* 800A2D80  38 9C 00 44 */	addi r4, r28, 0x44
/* 800A2D84  7F 45 D3 78 */	mr r5, r26
/* 800A2D88  48 2A 37 5D */	bl PSMTXConcat
/* 800A2D8C  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 800A2D90  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 800A2D94  C0 1A 00 1C */	lfs f0, 0x1c(r26)
/* 800A2D98  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 800A2D9C  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 800A2DA0  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 800A2DA4  38 7B 2B E8 */	addi r3, r27, 0x2be8
/* 800A2DA8  38 9C 00 74 */	addi r4, r28, 0x74
/* 800A2DAC  3C A0 80 3E */	lis r5, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A2DB0  38 A5 D4 70 */	addi r5, r5, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A2DB4  48 2A 37 31 */	bl PSMTXConcat
/* 800A2DB8  C0 3A 00 0C */	lfs f1, 0xc(r26)
/* 800A2DBC  D0 21 00 E4 */	stfs f1, 0xe4(r1)
/* 800A2DC0  C0 1A 00 1C */	lfs f0, 0x1c(r26)
/* 800A2DC4  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 800A2DC8  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 800A2DCC  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 800A2DD0  A0 1B 2F E8 */	lhz r0, 0x2fe8(r27)
/* 800A2DD4  28 00 00 3B */	cmplwi r0, 0x3b
/* 800A2DD8  40 82 00 48 */	bne lbl_800A2E20
/* 800A2DDC  88 1B 2F C0 */	lbz r0, 0x2fc0(r27)
/* 800A2DE0  28 00 00 00 */	cmplwi r0, 0
/* 800A2DE4  40 82 00 28 */	bne lbl_800A2E0C
/* 800A2DE8  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 800A2DEC  FC 00 00 50 */	fneg f0, f0
/* 800A2DF0  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 800A2DF4  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 800A2DF8  FC 00 00 50 */	fneg f0, f0
/* 800A2DFC  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 800A2E00  FC 00 08 50 */	fneg f0, f1
/* 800A2E04  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 800A2E08  48 00 00 18 */	b lbl_800A2E20
lbl_800A2E0C:
/* 800A2E0C  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 800A2E10  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 800A2E14  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 800A2E18  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 800A2E1C  D0 21 00 EC */	stfs f1, 0xec(r1)
lbl_800A2E20:
/* 800A2E20  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A2E24  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 800A2E28  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 800A2E2C  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 800A2E30  48 00 00 9C */	b lbl_800A2ECC
lbl_800A2E34:
/* 800A2E34  38 7B 2B B8 */	addi r3, r27, 0x2bb8
/* 800A2E38  38 9C 00 14 */	addi r4, r28, 0x14
/* 800A2E3C  3C A0 80 3E */	lis r5, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A2E40  38 A5 D4 70 */	addi r5, r5, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A2E44  48 2A 36 A1 */	bl PSMTXConcat
/* 800A2E48  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A2E4C  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A2E50  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 800A2E54  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 800A2E58  C0 1A 00 1C */	lfs f0, 0x1c(r26)
/* 800A2E5C  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 800A2E60  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 800A2E64  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 800A2E68  38 7B 2B B8 */	addi r3, r27, 0x2bb8
/* 800A2E6C  38 9C 00 44 */	addi r4, r28, 0x44
/* 800A2E70  7F 45 D3 78 */	mr r5, r26
/* 800A2E74  48 2A 36 71 */	bl PSMTXConcat
/* 800A2E78  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 800A2E7C  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 800A2E80  C0 1A 00 1C */	lfs f0, 0x1c(r26)
/* 800A2E84  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 800A2E88  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 800A2E8C  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 800A2E90  38 7B 2B B8 */	addi r3, r27, 0x2bb8
/* 800A2E94  38 9C 00 74 */	addi r4, r28, 0x74
/* 800A2E98  3C A0 80 3E */	lis r5, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A2E9C  38 A5 D4 70 */	addi r5, r5, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A2EA0  48 2A 36 45 */	bl PSMTXConcat
/* 800A2EA4  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 800A2EA8  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 800A2EAC  C0 1A 00 1C */	lfs f0, 0x1c(r26)
/* 800A2EB0  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 800A2EB4  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 800A2EB8  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 800A2EBC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A2EC0  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 800A2EC4  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 800A2EC8  D0 01 00 EC */	stfs f0, 0xec(r1)
lbl_800A2ECC:
/* 800A2ECC  38 61 00 6C */	addi r3, r1, 0x6c
/* 800A2ED0  38 81 00 F0 */	addi r4, r1, 0xf0
/* 800A2ED4  38 A1 00 FC */	addi r5, r1, 0xfc
/* 800A2ED8  48 1C 3C 5D */	bl __mi__4cXyzCFRC3Vec
/* 800A2EDC  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 800A2EE0  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 800A2EE4  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 800A2EE8  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 800A2EEC  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 800A2EF0  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 800A2EF4  38 61 00 60 */	addi r3, r1, 0x60
/* 800A2EF8  38 81 00 E4 */	addi r4, r1, 0xe4
/* 800A2EFC  38 A1 00 F0 */	addi r5, r1, 0xf0
/* 800A2F00  48 1C 3C 35 */	bl __mi__4cXyzCFRC3Vec
/* 800A2F04  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 800A2F08  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 800A2F0C  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 800A2F10  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 800A2F14  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 800A2F18  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 800A2F1C  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 800A2F20  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 800A2F24  C0 21 00 E8 */	lfs f1, 0xe8(r1)
/* 800A2F28  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 800A2F2C  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 800A2F30  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 800A2F34  EC 21 F0 2A */	fadds f1, f1, f30
/* 800A2F38  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 800A2F3C  2C 1F 00 00 */	cmpwi r31, 0
/* 800A2F40  41 82 00 1C */	beq lbl_800A2F5C
/* 800A2F44  C0 01 01 00 */	lfs f0, 0x100(r1)
/* 800A2F48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A2F4C  4C 41 13 82 */	cror 2, 1, 2
/* 800A2F50  40 82 00 0C */	bne lbl_800A2F5C
/* 800A2F54  38 60 00 00 */	li r3, 0
/* 800A2F58  48 00 04 A8 */	b lbl_800A3400
lbl_800A2F5C:
/* 800A2F5C  2C 1F 00 00 */	cmpwi r31, 0
/* 800A2F60  40 82 00 24 */	bne lbl_800A2F84
/* 800A2F64  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 800A2F68  C0 21 01 00 */	lfs f1, 0x100(r1)
/* 800A2F6C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800A2F70  4C 40 13 82 */	cror 2, 0, 2
/* 800A2F74  40 82 00 10 */	bne lbl_800A2F84
/* 800A2F78  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800A2F7C  EC 00 08 2A */	fadds f0, f0, f1
/* 800A2F80  D0 01 00 B8 */	stfs f0, 0xb8(r1)
lbl_800A2F84:
/* 800A2F84  38 61 00 54 */	addi r3, r1, 0x54
/* 800A2F88  38 81 00 B4 */	addi r4, r1, 0xb4
/* 800A2F8C  38 A1 00 FC */	addi r5, r1, 0xfc
/* 800A2F90  48 1C 3B A5 */	bl __mi__4cXyzCFRC3Vec
/* 800A2F94  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 800A2F98  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 800A2F9C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 800A2FA0  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 800A2FA4  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 800A2FA8  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 800A2FAC  38 61 00 A8 */	addi r3, r1, 0xa8
/* 800A2FB0  48 2A 41 89 */	bl PSVECSquareMag
/* 800A2FB4  FF E0 08 90 */	fmr f31, f1
/* 800A2FB8  FC 00 FA 10 */	fabs f0, f31
/* 800A2FBC  FC 20 00 18 */	frsp f1, f0
/* 800A2FC0  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 800A2FC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A2FC8  40 80 00 0C */	bge lbl_800A2FD4
/* 800A2FCC  38 60 00 00 */	li r3, 0
/* 800A2FD0  48 00 04 30 */	b lbl_800A3400
lbl_800A2FD4:
/* 800A2FD4  38 61 00 CC */	addi r3, r1, 0xcc
/* 800A2FD8  48 2A 41 61 */	bl PSVECSquareMag
/* 800A2FDC  FF C0 08 90 */	fmr f30, f1
/* 800A2FE0  38 61 00 C0 */	addi r3, r1, 0xc0
/* 800A2FE4  48 2A 41 55 */	bl PSVECSquareMag
/* 800A2FE8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A2FEC  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 800A2FF0  40 81 00 10 */	ble lbl_800A3000
/* 800A2FF4  FC 00 F0 34 */	frsqrte f0, f30
/* 800A2FF8  EC 40 07 B2 */	fmuls f2, f0, f30
/* 800A2FFC  48 00 00 08 */	b lbl_800A3004
lbl_800A3000:
/* 800A3000  FC 40 F0 90 */	fmr f2, f30
lbl_800A3004:
/* 800A3004  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A3008  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A300C  40 81 00 10 */	ble lbl_800A301C
/* 800A3010  FC 00 08 34 */	frsqrte f0, f1
/* 800A3014  EC 60 00 72 */	fmuls f3, f0, f1
/* 800A3018  48 00 00 08 */	b lbl_800A3020
lbl_800A301C:
/* 800A301C  FC 60 08 90 */	fmr f3, f1
lbl_800A3020:
/* 800A3020  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A3024  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800A3028  40 81 00 10 */	ble lbl_800A3038
/* 800A302C  FC 00 F8 34 */	frsqrte f0, f31
/* 800A3030  EC 80 07 F2 */	fmuls f4, f0, f31
/* 800A3034  48 00 00 08 */	b lbl_800A303C
lbl_800A3038:
/* 800A3038  FC 80 F8 90 */	fmr f4, f31
lbl_800A303C:
/* 800A303C  EC 02 18 2A */	fadds f0, f2, f3
/* 800A3040  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 800A3044  4C 40 13 82 */	cror 2, 0, 2
/* 800A3048  40 82 00 0C */	bne lbl_800A3054
/* 800A304C  38 60 00 00 */	li r3, 0
/* 800A3050  48 00 03 B0 */	b lbl_800A3400
lbl_800A3054:
/* 800A3054  EC 1F F0 2A */	fadds f0, f31, f30
/* 800A3058  EC 20 08 28 */	fsubs f1, f0, f1
/* 800A305C  C0 02 93 14 */	lfs f0, lit_7307(r2)
/* 800A3060  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800A3064  EF A1 00 24 */	fdivs f29, f1, f0
/* 800A3068  38 61 00 48 */	addi r3, r1, 0x48
/* 800A306C  38 81 00 A8 */	addi r4, r1, 0xa8
/* 800A3070  FC 20 E8 90 */	fmr f1, f29
/* 800A3074  48 1C 3B 11 */	bl __ml__4cXyzCFf
/* 800A3078  38 61 00 3C */	addi r3, r1, 0x3c
/* 800A307C  38 81 00 FC */	addi r4, r1, 0xfc
/* 800A3080  38 A1 00 48 */	addi r5, r1, 0x48
/* 800A3084  48 1C 3A 61 */	bl __pl__4cXyzCFRC3Vec
/* 800A3088  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 800A308C  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 800A3090  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 800A3094  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 800A3098  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 800A309C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 800A30A0  EC 1F 07 72 */	fmuls f0, f31, f29
/* 800A30A4  EC 1D 00 32 */	fmuls f0, f29, f0
/* 800A30A8  EC 3E 00 28 */	fsubs f1, f30, f0
/* 800A30AC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A30B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A30B4  40 80 00 08 */	bge lbl_800A30BC
/* 800A30B8  FC 20 00 90 */	fmr f1, f0
lbl_800A30BC:
/* 800A30BC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A30C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A30C4  40 81 00 10 */	ble lbl_800A30D4
/* 800A30C8  FC 00 08 34 */	frsqrte f0, f1
/* 800A30CC  EF E0 00 72 */	fmuls f31, f0, f1
/* 800A30D0  48 00 00 08 */	b lbl_800A30D8
lbl_800A30D4:
/* 800A30D4  FF E0 08 90 */	fmr f31, f1
lbl_800A30D8:
/* 800A30D8  2C 1F 00 00 */	cmpwi r31, 0
/* 800A30DC  41 82 00 50 */	beq lbl_800A312C
/* 800A30E0  80 1B 05 74 */	lwz r0, 0x574(r27)
/* 800A30E4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A30E8  41 82 00 24 */	beq lbl_800A310C
/* 800A30EC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A30F0  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 800A30F4  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 800A30F8  FC 00 00 50 */	fneg f0, f0
/* 800A30FC  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 800A3100  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 800A3104  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 800A3108  48 00 00 6C */	b lbl_800A3174
lbl_800A310C:
/* 800A310C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A3110  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 800A3114  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 800A3118  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 800A311C  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 800A3120  FC 00 00 50 */	fneg f0, f0
/* 800A3124  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 800A3128  48 00 00 4C */	b lbl_800A3174
lbl_800A312C:
/* 800A312C  38 1B 2A 4C */	addi r0, r27, 0x2a4c
/* 800A3130  7C 1C 00 40 */	cmplw r28, r0
/* 800A3134  40 82 00 24 */	bne lbl_800A3158
/* 800A3138  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 800A313C  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 800A3140  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 800A3144  FC 00 00 50 */	fneg f0, f0
/* 800A3148  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 800A314C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A3150  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 800A3154  48 00 00 20 */	b lbl_800A3174
lbl_800A3158:
/* 800A3158  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 800A315C  FC 00 00 50 */	fneg f0, f0
/* 800A3160  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 800A3164  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 800A3168  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 800A316C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A3170  D0 01 00 E0 */	stfs f0, 0xe0(r1)
lbl_800A3174:
/* 800A3174  38 61 00 D8 */	addi r3, r1, 0xd8
/* 800A3178  48 2A 3F C1 */	bl PSVECSquareMag
/* 800A317C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A3180  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A3184  40 81 00 58 */	ble lbl_800A31DC
/* 800A3188  FC 00 08 34 */	frsqrte f0, f1
/* 800A318C  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800A3190  FC 44 00 32 */	fmul f2, f4, f0
/* 800A3194  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800A3198  FC 00 00 32 */	fmul f0, f0, f0
/* 800A319C  FC 01 00 32 */	fmul f0, f1, f0
/* 800A31A0  FC 03 00 28 */	fsub f0, f3, f0
/* 800A31A4  FC 02 00 32 */	fmul f0, f2, f0
/* 800A31A8  FC 44 00 32 */	fmul f2, f4, f0
/* 800A31AC  FC 00 00 32 */	fmul f0, f0, f0
/* 800A31B0  FC 01 00 32 */	fmul f0, f1, f0
/* 800A31B4  FC 03 00 28 */	fsub f0, f3, f0
/* 800A31B8  FC 02 00 32 */	fmul f0, f2, f0
/* 800A31BC  FC 44 00 32 */	fmul f2, f4, f0
/* 800A31C0  FC 00 00 32 */	fmul f0, f0, f0
/* 800A31C4  FC 01 00 32 */	fmul f0, f1, f0
/* 800A31C8  FC 03 00 28 */	fsub f0, f3, f0
/* 800A31CC  FC 02 00 32 */	fmul f0, f2, f0
/* 800A31D0  FC 21 00 32 */	fmul f1, f1, f0
/* 800A31D4  FC 20 08 18 */	frsp f1, f1
/* 800A31D8  48 00 00 88 */	b lbl_800A3260
lbl_800A31DC:
/* 800A31DC  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800A31E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A31E4  40 80 00 10 */	bge lbl_800A31F4
/* 800A31E8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800A31EC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800A31F0  48 00 00 70 */	b lbl_800A3260
lbl_800A31F4:
/* 800A31F4  D0 21 00 08 */	stfs f1, 8(r1)
/* 800A31F8  80 81 00 08 */	lwz r4, 8(r1)
/* 800A31FC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800A3200  3C 00 7F 80 */	lis r0, 0x7f80
/* 800A3204  7C 03 00 00 */	cmpw r3, r0
/* 800A3208  41 82 00 14 */	beq lbl_800A321C
/* 800A320C  40 80 00 40 */	bge lbl_800A324C
/* 800A3210  2C 03 00 00 */	cmpwi r3, 0
/* 800A3214  41 82 00 20 */	beq lbl_800A3234
/* 800A3218  48 00 00 34 */	b lbl_800A324C
lbl_800A321C:
/* 800A321C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800A3220  41 82 00 0C */	beq lbl_800A322C
/* 800A3224  38 00 00 01 */	li r0, 1
/* 800A3228  48 00 00 28 */	b lbl_800A3250
lbl_800A322C:
/* 800A322C  38 00 00 02 */	li r0, 2
/* 800A3230  48 00 00 20 */	b lbl_800A3250
lbl_800A3234:
/* 800A3234  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800A3238  41 82 00 0C */	beq lbl_800A3244
/* 800A323C  38 00 00 05 */	li r0, 5
/* 800A3240  48 00 00 10 */	b lbl_800A3250
lbl_800A3244:
/* 800A3244  38 00 00 03 */	li r0, 3
/* 800A3248  48 00 00 08 */	b lbl_800A3250
lbl_800A324C:
/* 800A324C  38 00 00 04 */	li r0, 4
lbl_800A3250:
/* 800A3250  2C 00 00 01 */	cmpwi r0, 1
/* 800A3254  40 82 00 0C */	bne lbl_800A3260
/* 800A3258  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800A325C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_800A3260:
/* 800A3260  FC 00 0A 10 */	fabs f0, f1
/* 800A3264  FC 40 00 18 */	frsp f2, f0
/* 800A3268  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 800A326C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800A3270  40 80 00 0C */	bge lbl_800A327C
/* 800A3274  38 60 00 00 */	li r3, 0
/* 800A3278  48 00 01 88 */	b lbl_800A3400
lbl_800A327C:
/* 800A327C  38 61 00 30 */	addi r3, r1, 0x30
/* 800A3280  38 81 00 D8 */	addi r4, r1, 0xd8
/* 800A3284  EC 3F 08 24 */	fdivs f1, f31, f1
/* 800A3288  48 1C 38 FD */	bl __ml__4cXyzCFf
/* 800A328C  38 61 00 24 */	addi r3, r1, 0x24
/* 800A3290  38 81 00 9C */	addi r4, r1, 0x9c
/* 800A3294  38 A1 00 30 */	addi r5, r1, 0x30
/* 800A3298  48 1C 38 4D */	bl __pl__4cXyzCFRC3Vec
/* 800A329C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800A32A0  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 800A32A4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800A32A8  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 800A32AC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800A32B0  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 800A32B4  38 61 00 18 */	addi r3, r1, 0x18
/* 800A32B8  38 81 00 90 */	addi r4, r1, 0x90
/* 800A32BC  38 A1 00 FC */	addi r5, r1, 0xfc
/* 800A32C0  48 1C 38 75 */	bl __mi__4cXyzCFRC3Vec
/* 800A32C4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800A32C8  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 800A32CC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800A32D0  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 800A32D4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 800A32D8  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 800A32DC  38 61 00 0C */	addi r3, r1, 0xc
/* 800A32E0  38 81 00 B4 */	addi r4, r1, 0xb4
/* 800A32E4  38 A1 00 90 */	addi r5, r1, 0x90
/* 800A32E8  48 1C 38 4D */	bl __mi__4cXyzCFRC3Vec
/* 800A32EC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800A32F0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 800A32F4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800A32F8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 800A32FC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800A3300  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 800A3304  2C 1F 00 00 */	cmpwi r31, 0
/* 800A3308  41 82 00 AC */	beq lbl_800A33B4
/* 800A330C  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 800A3310  C0 41 00 8C */	lfs f2, 0x8c(r1)
/* 800A3314  48 1C 43 61 */	bl cM_atan2s__Fff
/* 800A3318  7C 7C 1B 78 */	mr r28, r3
/* 800A331C  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 800A3320  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 800A3324  48 1C 43 51 */	bl cM_atan2s__Fff
/* 800A3328  7C 7F 1B 78 */	mr r31, r3
/* 800A332C  7F 9A 07 34 */	extsh r26, r28
/* 800A3330  7C 1A F8 50 */	subf r0, r26, r31
/* 800A3334  7C 03 07 34 */	extsh r3, r0
/* 800A3338  80 1B 05 74 */	lwz r0, 0x574(r27)
/* 800A333C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A3340  41 82 00 28 */	beq lbl_800A3368
/* 800A3344  7C 60 07 35 */	extsh. r0, r3
/* 800A3348  40 80 00 0C */	bge lbl_800A3354
/* 800A334C  7F 9F E3 78 */	mr r31, r28
/* 800A3350  48 00 00 38 */	b lbl_800A3388
lbl_800A3354:
/* 800A3354  2C 03 70 00 */	cmpwi r3, 0x7000
/* 800A3358  40 81 00 30 */	ble lbl_800A3388
/* 800A335C  38 1A 70 00 */	addi r0, r26, 0x7000
/* 800A3360  7C 1F 07 34 */	extsh r31, r0
/* 800A3364  48 00 00 24 */	b lbl_800A3388
lbl_800A3368:
/* 800A3368  7C 60 07 35 */	extsh. r0, r3
/* 800A336C  40 81 00 0C */	ble lbl_800A3378
/* 800A3370  7F 9F E3 78 */	mr r31, r28
/* 800A3374  48 00 00 14 */	b lbl_800A3388
lbl_800A3378:
/* 800A3378  2C 03 90 00 */	cmpwi r3, -28672
/* 800A337C  40 80 00 0C */	bge lbl_800A3388
/* 800A3380  38 1A 90 00 */	addi r0, r26, -28672
/* 800A3384  7C 1F 07 34 */	extsh r31, r0
lbl_800A3388:
/* 800A3388  C0 21 00 D0 */	lfs f1, 0xd0(r1)
/* 800A338C  C0 41 00 D4 */	lfs f2, 0xd4(r1)
/* 800A3390  48 1C 42 E5 */	bl cM_atan2s__Fff
/* 800A3394  7C 1A 18 50 */	subf r0, r26, r3
/* 800A3398  B0 1D 00 00 */	sth r0, 0(r29)
/* 800A339C  C0 21 00 C4 */	lfs f1, 0xc4(r1)
/* 800A33A0  C0 41 00 C8 */	lfs f2, 0xc8(r1)
/* 800A33A4  48 1C 42 D1 */	bl cM_atan2s__Fff
/* 800A33A8  7C 1F 18 50 */	subf r0, r31, r3
/* 800A33AC  B0 1E 00 00 */	sth r0, 0(r30)
/* 800A33B0  48 00 00 4C */	b lbl_800A33FC
lbl_800A33B4:
/* 800A33B4  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 800A33B8  C0 41 00 88 */	lfs f2, 0x88(r1)
/* 800A33BC  48 1C 42 B9 */	bl cM_atan2s__Fff
/* 800A33C0  7C 7C 1B 78 */	mr r28, r3
/* 800A33C4  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 800A33C8  C0 41 00 7C */	lfs f2, 0x7c(r1)
/* 800A33CC  48 1C 42 A9 */	bl cM_atan2s__Fff
/* 800A33D0  7C 7B 1B 78 */	mr r27, r3
/* 800A33D4  C0 21 00 CC */	lfs f1, 0xcc(r1)
/* 800A33D8  C0 41 00 D0 */	lfs f2, 0xd0(r1)
/* 800A33DC  48 1C 42 99 */	bl cM_atan2s__Fff
/* 800A33E0  7C 1C 18 50 */	subf r0, r28, r3
/* 800A33E4  B0 1D 00 00 */	sth r0, 0(r29)
/* 800A33E8  C0 21 00 C0 */	lfs f1, 0xc0(r1)
/* 800A33EC  C0 41 00 C4 */	lfs f2, 0xc4(r1)
/* 800A33F0  48 1C 42 85 */	bl cM_atan2s__Fff
/* 800A33F4  7C 1B 18 50 */	subf r0, r27, r3
/* 800A33F8  B0 1E 00 00 */	sth r0, 0(r30)
lbl_800A33FC:
/* 800A33FC  38 60 00 01 */	li r3, 1
lbl_800A3400:
/* 800A3400  E3 E1 01 48 */	psq_l f31, 328(r1), 0, 0 /* qr0 */
/* 800A3404  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 800A3408  E3 C1 01 38 */	psq_l f30, 312(r1), 0, 0 /* qr0 */
/* 800A340C  CB C1 01 30 */	lfd f30, 0x130(r1)
/* 800A3410  E3 A1 01 28 */	psq_l f29, 296(r1), 0, 0 /* qr0 */
/* 800A3414  CB A1 01 20 */	lfd f29, 0x120(r1)
/* 800A3418  39 61 01 20 */	addi r11, r1, 0x120
/* 800A341C  48 2B EE 01 */	bl _restgpr_26
/* 800A3420  80 01 01 54 */	lwz r0, 0x154(r1)
/* 800A3424  7C 08 03 A6 */	mtlr r0
/* 800A3428  38 21 01 50 */	addi r1, r1, 0x150
/* 800A342C  4E 80 00 20 */	blr 
