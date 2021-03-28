lbl_805C2CD0:
/* 805C2CD0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805C2CD4  7C 08 02 A6 */	mflr r0
/* 805C2CD8  90 01 00 84 */	stw r0, 0x84(r1)
/* 805C2CDC  39 61 00 80 */	addi r11, r1, 0x80
/* 805C2CE0  4B D9 F4 F4 */	b _savegpr_27
/* 805C2CE4  7C 7B 1B 78 */	mr r27, r3
/* 805C2CE8  3C 80 80 5C */	lis r4, lit_3800@ha
/* 805C2CEC  3B C4 6C 74 */	addi r30, r4, lit_3800@l
/* 805C2CF0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805C2CF4  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 805C2CF8  88 1F 5D B0 */	lbz r0, 0x5db0(r31)
/* 805C2CFC  7C 00 07 74 */	extsb r0, r0
/* 805C2D00  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805C2D04  7C 9F 02 14 */	add r4, r31, r0
/* 805C2D08  83 A4 5D 74 */	lwz r29, 0x5d74(r4)
/* 805C2D0C  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 805C2D10  80 03 07 0C */	lwz r0, 0x70c(r3)
/* 805C2D14  28 00 00 0D */	cmplwi r0, 0xd
/* 805C2D18  41 81 05 A8 */	bgt lbl_805C32C0
/* 805C2D1C  3C 80 80 5C */	lis r4, lit_7387@ha
/* 805C2D20  38 84 77 04 */	addi r4, r4, lit_7387@l
/* 805C2D24  54 00 10 3A */	slwi r0, r0, 2
/* 805C2D28  7C 04 00 2E */	lwzx r0, r4, r0
/* 805C2D2C  7C 09 03 A6 */	mtctr r0
/* 805C2D30  4E 80 04 20 */	bctr 
lbl_805C2D34:
/* 805C2D34  4B FF FE B5 */	bl startDemoCheck__8daB_DR_cFv
/* 805C2D38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805C2D3C  41 82 05 84 */	beq lbl_805C32C0
/* 805C2D40  7F 63 DB 78 */	mr r3, r27
/* 805C2D44  4B FF 9E D5 */	bl mAllClr__8daB_DR_cFv
/* 805C2D48  C0 1B 04 A8 */	lfs f0, 0x4a8(r27)
/* 805C2D4C  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 805C2D50  C0 1B 04 B0 */	lfs f0, 0x4b0(r27)
/* 805C2D54  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 805C2D58  7F 63 DB 78 */	mr r3, r27
/* 805C2D5C  38 80 00 11 */	li r4, 0x11
/* 805C2D60  38 A0 00 00 */	li r5, 0
/* 805C2D64  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805C2D68  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805C2D6C  4B FF 86 9D */	bl setBck__8daB_DR_cFiUcff
/* 805C2D70  80 7B 07 0C */	lwz r3, 0x70c(r27)
/* 805C2D74  38 03 00 01 */	addi r0, r3, 1
/* 805C2D78  90 1B 07 0C */	stw r0, 0x70c(r27)
/* 805C2D7C  48 00 05 44 */	b lbl_805C32C0
lbl_805C2D80:
/* 805C2D80  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805C2D84  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805C2D88  80 63 00 00 */	lwz r3, 0(r3)
/* 805C2D8C  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 805C2D90  3C 84 00 01 */	addis r4, r4, 1
/* 805C2D94  38 04 80 00 */	addi r0, r4, -32768
/* 805C2D98  7C 04 07 34 */	extsh r4, r0
/* 805C2D9C  4B A4 96 40 */	b mDoMtx_YrotS__FPA4_fs
/* 805C2DA0  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 805C2DA4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805C2DA8  C0 1E 04 30 */	lfs f0, 0x430(r30)
/* 805C2DAC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805C2DB0  C0 1E 04 34 */	lfs f0, 0x434(r30)
/* 805C2DB4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805C2DB8  38 61 00 54 */	addi r3, r1, 0x54
/* 805C2DBC  38 81 00 48 */	addi r4, r1, 0x48
/* 805C2DC0  4B CA E1 2C */	b MtxPosition__FP4cXyzP4cXyz
/* 805C2DC4  38 61 00 48 */	addi r3, r1, 0x48
/* 805C2DC8  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805C2DCC  7C 65 1B 78 */	mr r5, r3
/* 805C2DD0  4B D8 42 C0 */	b PSVECAdd
/* 805C2DD4  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 805C2DD8  C0 1E 03 CC */	lfs f0, 0x3cc(r30)
/* 805C2DDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C2DE0  40 80 00 08 */	bge lbl_805C2DE8
/* 805C2DE4  D0 01 00 4C */	stfs f0, 0x4c(r1)
lbl_805C2DE8:
/* 805C2DE8  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 805C2DEC  D0 1B 27 C4 */	stfs f0, 0x27c4(r27)
/* 805C2DF0  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 805C2DF4  D0 1B 27 C8 */	stfs f0, 0x27c8(r27)
/* 805C2DF8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 805C2DFC  D0 1B 27 CC */	stfs f0, 0x27cc(r27)
/* 805C2E00  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805C2E04  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805C2E08  80 63 00 00 */	lwz r3, 0(r3)
/* 805C2E0C  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 805C2E10  3C 84 00 01 */	addis r4, r4, 1
/* 805C2E14  38 04 80 00 */	addi r0, r4, -32768
/* 805C2E18  7C 04 07 34 */	extsh r4, r0
/* 805C2E1C  4B A4 95 C0 */	b mDoMtx_YrotS__FPA4_fs
/* 805C2E20  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805C2E24  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 805C2E28  C0 1E 04 38 */	lfs f0, 0x438(r30)
/* 805C2E2C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805C2E30  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 805C2E34  38 61 00 54 */	addi r3, r1, 0x54
/* 805C2E38  38 81 00 48 */	addi r4, r1, 0x48
/* 805C2E3C  4B CA E0 B0 */	b MtxPosition__FP4cXyzP4cXyz
/* 805C2E40  38 61 00 48 */	addi r3, r1, 0x48
/* 805C2E44  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805C2E48  7C 65 1B 78 */	mr r5, r3
/* 805C2E4C  4B D8 42 44 */	b PSVECAdd
/* 805C2E50  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 805C2E54  C0 1E 03 CC */	lfs f0, 0x3cc(r30)
/* 805C2E58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C2E5C  40 80 00 08 */	bge lbl_805C2E64
/* 805C2E60  D0 01 00 4C */	stfs f0, 0x4c(r1)
lbl_805C2E64:
/* 805C2E64  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 805C2E68  D0 1B 27 D0 */	stfs f0, 0x27d0(r27)
/* 805C2E6C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 805C2E70  D0 1B 27 D4 */	stfs f0, 0x27d4(r27)
/* 805C2E74  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 805C2E78  D0 1B 27 D8 */	stfs f0, 0x27d8(r27)
/* 805C2E7C  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 805C2E80  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805C2E84  FC 00 00 1E */	fctiwz f0, f0
/* 805C2E88  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 805C2E8C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805C2E90  2C 00 00 32 */	cmpwi r0, 0x32
/* 805C2E94  41 80 04 2C */	blt lbl_805C32C0
/* 805C2E98  80 7B 07 0C */	lwz r3, 0x70c(r27)
/* 805C2E9C  38 03 00 01 */	addi r0, r3, 1
/* 805C2EA0  90 1B 07 0C */	stw r0, 0x70c(r27)
lbl_805C2EA4:
/* 805C2EA4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805C2EA8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805C2EAC  80 63 00 00 */	lwz r3, 0(r3)
/* 805C2EB0  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 805C2EB4  3C 84 00 01 */	addis r4, r4, 1
/* 805C2EB8  38 04 80 00 */	addi r0, r4, -32768
/* 805C2EBC  7C 04 07 34 */	extsh r4, r0
/* 805C2EC0  4B A4 95 1C */	b mDoMtx_YrotS__FPA4_fs
/* 805C2EC4  C0 1E 03 84 */	lfs f0, 0x384(r30)
/* 805C2EC8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805C2ECC  C0 1E 04 3C */	lfs f0, 0x43c(r30)
/* 805C2ED0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805C2ED4  C0 1E 04 40 */	lfs f0, 0x440(r30)
/* 805C2ED8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805C2EDC  38 61 00 54 */	addi r3, r1, 0x54
/* 805C2EE0  38 81 00 48 */	addi r4, r1, 0x48
/* 805C2EE4  4B CA E0 08 */	b MtxPosition__FP4cXyzP4cXyz
/* 805C2EE8  38 61 00 48 */	addi r3, r1, 0x48
/* 805C2EEC  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805C2EF0  7C 65 1B 78 */	mr r5, r3
/* 805C2EF4  4B D8 41 9C */	b PSVECAdd
/* 805C2EF8  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 805C2EFC  D0 1B 27 C4 */	stfs f0, 0x27c4(r27)
/* 805C2F00  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 805C2F04  D0 1B 27 C8 */	stfs f0, 0x27c8(r27)
/* 805C2F08  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 805C2F0C  D0 1B 27 CC */	stfs f0, 0x27cc(r27)
/* 805C2F10  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805C2F14  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805C2F18  80 63 00 00 */	lwz r3, 0(r3)
/* 805C2F1C  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 805C2F20  3C 84 00 01 */	addis r4, r4, 1
/* 805C2F24  38 04 80 00 */	addi r0, r4, -32768
/* 805C2F28  7C 04 07 34 */	extsh r4, r0
/* 805C2F2C  4B A4 94 B0 */	b mDoMtx_YrotS__FPA4_fs
/* 805C2F30  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805C2F34  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 805C2F38  C0 1E 03 84 */	lfs f0, 0x384(r30)
/* 805C2F3C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805C2F40  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 805C2F44  38 61 00 54 */	addi r3, r1, 0x54
/* 805C2F48  38 81 00 48 */	addi r4, r1, 0x48
/* 805C2F4C  4B CA DF A0 */	b MtxPosition__FP4cXyzP4cXyz
/* 805C2F50  38 61 00 48 */	addi r3, r1, 0x48
/* 805C2F54  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805C2F58  7C 65 1B 78 */	mr r5, r3
/* 805C2F5C  4B D8 41 34 */	b PSVECAdd
/* 805C2F60  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 805C2F64  D0 1B 27 D0 */	stfs f0, 0x27d0(r27)
/* 805C2F68  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 805C2F6C  D0 1B 27 D4 */	stfs f0, 0x27d4(r27)
/* 805C2F70  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 805C2F74  D0 1B 27 D8 */	stfs f0, 0x27d8(r27)
/* 805C2F78  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 805C2F7C  38 80 00 01 */	li r4, 1
/* 805C2F80  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805C2F84  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805C2F88  40 82 00 18 */	bne lbl_805C2FA0
/* 805C2F8C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805C2F90  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805C2F94  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805C2F98  41 82 00 08 */	beq lbl_805C2FA0
/* 805C2F9C  38 80 00 00 */	li r4, 0
lbl_805C2FA0:
/* 805C2FA0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805C2FA4  41 82 03 1C */	beq lbl_805C32C0
/* 805C2FA8  38 7D 02 48 */	addi r3, r29, 0x248
/* 805C2FAC  4B B9 E5 00 */	b Start__9dCamera_cFv
/* 805C2FB0  38 7D 02 48 */	addi r3, r29, 0x248
/* 805C2FB4  38 80 00 00 */	li r4, 0
/* 805C2FB8  4B BA 00 54 */	b SetTrimSize__9dCamera_cFl
/* 805C2FBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805C2FC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805C2FC4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 805C2FC8  4B A7 F4 A0 */	b reset__14dEvt_control_cFv
/* 805C2FCC  88 9B 07 EC */	lbz r4, 0x7ec(r27)
/* 805C2FD0  28 04 00 FF */	cmplwi r4, 0xff
/* 805C2FD4  41 82 00 18 */	beq lbl_805C2FEC
/* 805C2FD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805C2FDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805C2FE0  88 1B 04 BA */	lbz r0, 0x4ba(r27)
/* 805C2FE4  7C 05 07 74 */	extsb r5, r0
/* 805C2FE8  4B A7 22 18 */	b onSwitch__10dSv_info_cFii
lbl_805C2FEC:
/* 805C2FEC  7F 63 DB 78 */	mr r3, r27
/* 805C2FF0  38 80 00 02 */	li r4, 2
/* 805C2FF4  38 A0 00 0A */	li r5, 0xa
/* 805C2FF8  4B FF 84 BD */	bl setActionMode__8daB_DR_cFii
/* 805C2FFC  80 1B 07 10 */	lwz r0, 0x710(r27)
/* 805C3000  2C 00 00 10 */	cmpwi r0, 0x10
/* 805C3004  41 82 02 BC */	beq lbl_805C32C0
/* 805C3008  7F 63 DB 78 */	mr r3, r27
/* 805C300C  38 80 00 10 */	li r4, 0x10
/* 805C3010  38 A0 00 00 */	li r5, 0
/* 805C3014  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 805C3018  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805C301C  4B FF 83 ED */	bl setBck__8daB_DR_cFiUcff
/* 805C3020  48 00 02 A0 */	b lbl_805C32C0
lbl_805C3024:
/* 805C3024  4B FF FB C5 */	bl startDemoCheck__8daB_DR_cFv
/* 805C3028  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805C302C  41 82 02 94 */	beq lbl_805C32C0
/* 805C3030  A8 1B 04 B6 */	lha r0, 0x4b6(r27)
/* 805C3034  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 805C3038  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 805C303C  C0 1B 04 A8 */	lfs f0, 0x4a8(r27)
/* 805C3040  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 805C3044  C0 1B 04 B0 */	lfs f0, 0x4b0(r27)
/* 805C3048  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 805C304C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805C3050  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 805C3054  A8 BB 04 B6 */	lha r5, 0x4b6(r27)
/* 805C3058  38 C0 00 00 */	li r6, 0
/* 805C305C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805C3060  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805C3064  7D 89 03 A6 */	mtctr r12
/* 805C3068  4E 80 04 21 */	bctrl 
/* 805C306C  7F 63 DB 78 */	mr r3, r27
/* 805C3070  38 80 00 37 */	li r4, 0x37
/* 805C3074  38 A0 00 00 */	li r5, 0
/* 805C3078  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805C307C  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805C3080  4B FF 83 89 */	bl setBck__8daB_DR_cFiUcff
/* 805C3084  80 7B 07 0C */	lwz r3, 0x70c(r27)
/* 805C3088  38 03 00 01 */	addi r0, r3, 1
/* 805C308C  90 1B 07 0C */	stw r0, 0x70c(r27)
/* 805C3090  48 00 02 30 */	b lbl_805C32C0
lbl_805C3094:
/* 805C3094  80 1B 07 10 */	lwz r0, 0x710(r27)
/* 805C3098  2C 00 00 13 */	cmpwi r0, 0x13
/* 805C309C  40 82 00 84 */	bne lbl_805C3120
/* 805C30A0  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 805C30A4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805C30A8  FC 00 00 1E */	fctiwz f0, f0
/* 805C30AC  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 805C30B0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805C30B4  2C 00 00 22 */	cmpwi r0, 0x22
/* 805C30B8  41 80 00 18 */	blt lbl_805C30D0
/* 805C30BC  38 7B 27 D4 */	addi r3, r27, 0x27d4
/* 805C30C0  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 805C30C4  C0 5E 03 78 */	lfs f2, 0x378(r30)
/* 805C30C8  C0 7E 03 BC */	lfs f3, 0x3bc(r30)
/* 805C30CC  4B CA C9 70 */	b cLib_addCalc2__FPffff
lbl_805C30D0:
/* 805C30D0  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 805C30D4  38 80 00 01 */	li r4, 1
/* 805C30D8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805C30DC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805C30E0  40 82 00 18 */	bne lbl_805C30F8
/* 805C30E4  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805C30E8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805C30EC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805C30F0  41 82 00 08 */	beq lbl_805C30F8
/* 805C30F4  38 80 00 00 */	li r4, 0
lbl_805C30F8:
/* 805C30F8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805C30FC  41 82 00 24 */	beq lbl_805C3120
/* 805C3100  7F 63 DB 78 */	mr r3, r27
/* 805C3104  38 80 00 1F */	li r4, 0x1f
/* 805C3108  38 A0 00 02 */	li r5, 2
/* 805C310C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805C3110  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805C3114  4B FF 82 F5 */	bl setBck__8daB_DR_cFiUcff
/* 805C3118  38 00 00 23 */	li r0, 0x23
/* 805C311C  90 1B 07 C0 */	stw r0, 0x7c0(r27)
lbl_805C3120:
/* 805C3120  80 1B 07 10 */	lwz r0, 0x710(r27)
/* 805C3124  2C 00 00 37 */	cmpwi r0, 0x37
/* 805C3128  40 82 00 54 */	bne lbl_805C317C
/* 805C312C  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 805C3130  38 80 00 01 */	li r4, 1
/* 805C3134  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805C3138  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805C313C  40 82 00 18 */	bne lbl_805C3154
/* 805C3140  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805C3144  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805C3148  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805C314C  41 82 00 08 */	beq lbl_805C3154
/* 805C3150  38 80 00 00 */	li r4, 0
lbl_805C3154:
/* 805C3154  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805C3158  41 82 00 24 */	beq lbl_805C317C
/* 805C315C  7F 63 DB 78 */	mr r3, r27
/* 805C3160  38 80 00 13 */	li r4, 0x13
/* 805C3164  38 A0 00 00 */	li r5, 0
/* 805C3168  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805C316C  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805C3170  4B FF 82 99 */	bl setBck__8daB_DR_cFiUcff
/* 805C3174  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 805C3178  D0 1B 05 30 */	stfs f0, 0x530(r27)
lbl_805C317C:
/* 805C317C  7F 63 DB 78 */	mr r3, r27
/* 805C3180  4B FF 9F DD */	bl mBgFallGroundCheck__8daB_DR_cFv
/* 805C3184  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805C3188  41 82 01 38 */	beq lbl_805C32C0
/* 805C318C  38 60 00 01 */	li r3, 1
/* 805C3190  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 805C3194  7C 04 07 74 */	extsb r4, r0
/* 805C3198  4B A6 A7 B4 */	b dComIfGs_onZoneSwitch__Fii
/* 805C319C  80 7B 07 0C */	lwz r3, 0x70c(r27)
/* 805C31A0  38 03 00 01 */	addi r0, r3, 1
/* 805C31A4  90 1B 07 0C */	stw r0, 0x70c(r27)
lbl_805C31A8:
/* 805C31A8  80 1B 07 10 */	lwz r0, 0x710(r27)
/* 805C31AC  2C 00 00 13 */	cmpwi r0, 0x13
/* 805C31B0  40 82 00 6C */	bne lbl_805C321C
/* 805C31B4  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 805C31B8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805C31BC  FC 00 00 1E */	fctiwz f0, f0
/* 805C31C0  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 805C31C4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805C31C8  2C 00 00 22 */	cmpwi r0, 0x22
/* 805C31CC  41 80 00 18 */	blt lbl_805C31E4
/* 805C31D0  38 7B 27 D4 */	addi r3, r27, 0x27d4
/* 805C31D4  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 805C31D8  C0 5E 03 78 */	lfs f2, 0x378(r30)
/* 805C31DC  C0 7E 03 BC */	lfs f3, 0x3bc(r30)
/* 805C31E0  4B CA C8 5C */	b cLib_addCalc2__FPffff
lbl_805C31E4:
/* 805C31E4  38 00 00 32 */	li r0, 0x32
/* 805C31E8  90 1B 07 C0 */	stw r0, 0x7c0(r27)
/* 805C31EC  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 805C31F0  38 80 00 01 */	li r4, 1
/* 805C31F4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805C31F8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805C31FC  40 82 00 18 */	bne lbl_805C3214
/* 805C3200  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805C3204  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805C3208  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805C320C  41 82 00 08 */	beq lbl_805C3214
/* 805C3210  38 80 00 00 */	li r4, 0
lbl_805C3214:
/* 805C3214  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805C3218  41 82 00 A8 */	beq lbl_805C32C0
lbl_805C321C:
/* 805C321C  80 1B 07 10 */	lwz r0, 0x710(r27)
/* 805C3220  2C 00 00 1F */	cmpwi r0, 0x1f
/* 805C3224  41 82 00 24 */	beq lbl_805C3248
/* 805C3228  7F 63 DB 78 */	mr r3, r27
/* 805C322C  38 80 00 1F */	li r4, 0x1f
/* 805C3230  38 A0 00 02 */	li r5, 2
/* 805C3234  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 805C3238  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805C323C  4B FF 81 CD */	bl setBck__8daB_DR_cFiUcff
/* 805C3240  38 00 00 23 */	li r0, 0x23
/* 805C3244  90 1B 07 C0 */	stw r0, 0x7c0(r27)
lbl_805C3248:
/* 805C3248  38 7B 07 C0 */	addi r3, r27, 0x7c0
/* 805C324C  48 00 39 91 */	bl func_805C6BDC
/* 805C3250  2C 03 00 00 */	cmpwi r3, 0
/* 805C3254  40 82 00 6C */	bne lbl_805C32C0
/* 805C3258  38 00 00 46 */	li r0, 0x46
/* 805C325C  90 1B 07 C0 */	stw r0, 0x7c0(r27)
/* 805C3260  80 7B 07 0C */	lwz r3, 0x70c(r27)
/* 805C3264  38 03 00 01 */	addi r0, r3, 1
/* 805C3268  90 1B 07 0C */	stw r0, 0x70c(r27)
lbl_805C326C:
/* 805C326C  38 7B 07 C0 */	addi r3, r27, 0x7c0
/* 805C3270  48 00 39 6D */	bl func_805C6BDC
/* 805C3274  2C 03 00 00 */	cmpwi r3, 0
/* 805C3278  40 82 00 48 */	bne lbl_805C32C0
/* 805C327C  38 7D 02 48 */	addi r3, r29, 0x248
/* 805C3280  4B B9 E2 2C */	b Start__9dCamera_cFv
/* 805C3284  38 7D 02 48 */	addi r3, r29, 0x248
/* 805C3288  38 80 00 00 */	li r4, 0
/* 805C328C  4B B9 FD 80 */	b SetTrimSize__9dCamera_cFl
/* 805C3290  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805C3294  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805C3298  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 805C329C  4B A7 F1 CC */	b reset__14dEvt_control_cFv
/* 805C32A0  38 00 00 01 */	li r0, 1
/* 805C32A4  98 1B 07 D7 */	stb r0, 0x7d7(r27)
/* 805C32A8  38 00 00 23 */	li r0, 0x23
/* 805C32AC  90 1B 07 C0 */	stw r0, 0x7c0(r27)
/* 805C32B0  7F 63 DB 78 */	mr r3, r27
/* 805C32B4  38 80 00 02 */	li r4, 2
/* 805C32B8  38 A0 00 14 */	li r5, 0x14
/* 805C32BC  4B FF 81 F9 */	bl setActionMode__8daB_DR_cFii
lbl_805C32C0:
/* 805C32C0  80 1B 07 0C */	lwz r0, 0x70c(r27)
/* 805C32C4  2C 00 00 0A */	cmpwi r0, 0xa
/* 805C32C8  41 80 01 18 */	blt lbl_805C33E0
/* 805C32CC  2C 00 00 0C */	cmpwi r0, 0xc
/* 805C32D0  41 81 01 10 */	bgt lbl_805C33E0
/* 805C32D4  80 1B 07 10 */	lwz r0, 0x710(r27)
/* 805C32D8  2C 00 00 13 */	cmpwi r0, 0x13
/* 805C32DC  41 82 00 48 */	beq lbl_805C3324
/* 805C32E0  2C 00 00 1F */	cmpwi r0, 0x1f
/* 805C32E4  41 82 00 40 */	beq lbl_805C3324
/* 805C32E8  C0 5B 04 A8 */	lfs f2, 0x4a8(r27)
/* 805C32EC  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 805C32F0  C0 3B 04 AC */	lfs f1, 0x4ac(r27)
/* 805C32F4  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 805C32F8  C0 1B 04 B0 */	lfs f0, 0x4b0(r27)
/* 805C32FC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805C3300  C0 1E 03 C4 */	lfs f0, 0x3c4(r30)
/* 805C3304  EC 01 00 2A */	fadds f0, f1, f0
/* 805C3308  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805C330C  D0 5B 27 D0 */	stfs f2, 0x27d0(r27)
/* 805C3310  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 805C3314  D0 1B 27 D4 */	stfs f0, 0x27d4(r27)
/* 805C3318  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 805C331C  D0 1B 27 D8 */	stfs f0, 0x27d8(r27)
/* 805C3320  48 00 00 38 */	b lbl_805C3358
lbl_805C3324:
/* 805C3324  C0 3E 03 7C */	lfs f1, 0x37c(r30)
/* 805C3328  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 805C332C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805C3330  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805C3334  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 805C3338  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805C333C  38 81 00 48 */	addi r4, r1, 0x48
/* 805C3340  38 A0 80 00 */	li r5, -32768
/* 805C3344  38 C0 00 00 */	li r6, 0
/* 805C3348  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805C334C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805C3350  7D 89 03 A6 */	mtctr r12
/* 805C3354  4E 80 04 21 */	bctrl 
lbl_805C3358:
/* 805C3358  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805C335C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805C3360  80 63 00 00 */	lwz r3, 0(r3)
/* 805C3364  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 805C3368  38 04 F0 00 */	addi r0, r4, -4096
/* 805C336C  7C 04 07 34 */	extsh r4, r0
/* 805C3370  4B A4 90 6C */	b mDoMtx_YrotS__FPA4_fs
/* 805C3374  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805C3378  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805C337C  C0 1E 03 CC */	lfs f0, 0x3cc(r30)
/* 805C3380  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805C3384  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 805C3388  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805C338C  38 61 00 54 */	addi r3, r1, 0x54
/* 805C3390  38 81 00 48 */	addi r4, r1, 0x48
/* 805C3394  4B CA DB 58 */	b MtxPosition__FP4cXyzP4cXyz
/* 805C3398  38 61 00 30 */	addi r3, r1, 0x30
/* 805C339C  38 81 00 48 */	addi r4, r1, 0x48
/* 805C33A0  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 805C33A4  4B CA 37 40 */	b __pl__4cXyzCFRC3Vec
/* 805C33A8  38 61 00 24 */	addi r3, r1, 0x24
/* 805C33AC  38 81 00 30 */	addi r4, r1, 0x30
/* 805C33B0  38 BB 07 6C */	addi r5, r27, 0x76c
/* 805C33B4  4B CA 37 30 */	b __pl__4cXyzCFRC3Vec
/* 805C33B8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805C33BC  D0 1B 27 C4 */	stfs f0, 0x27c4(r27)
/* 805C33C0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805C33C4  D0 1B 27 C8 */	stfs f0, 0x27c8(r27)
/* 805C33C8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 805C33CC  D0 1B 27 CC */	stfs f0, 0x27cc(r27)
/* 805C33D0  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805C33D4  80 03 05 88 */	lwz r0, 0x588(r3)
/* 805C33D8  64 00 02 00 */	oris r0, r0, 0x200
/* 805C33DC  90 03 05 88 */	stw r0, 0x588(r3)
lbl_805C33E0:
/* 805C33E0  80 1B 07 0C */	lwz r0, 0x70c(r27)
/* 805C33E4  2C 00 00 00 */	cmpwi r0, 0
/* 805C33E8  41 82 00 4C */	beq lbl_805C3434
/* 805C33EC  2C 00 00 0A */	cmpwi r0, 0xa
/* 805C33F0  41 82 00 44 */	beq lbl_805C3434
/* 805C33F4  C0 1B 27 D0 */	lfs f0, 0x27d0(r27)
/* 805C33F8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805C33FC  C0 1B 27 D4 */	lfs f0, 0x27d4(r27)
/* 805C3400  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805C3404  C0 1B 27 D8 */	lfs f0, 0x27d8(r27)
/* 805C3408  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805C340C  C0 1B 27 C4 */	lfs f0, 0x27c4(r27)
/* 805C3410  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805C3414  C0 1B 27 C8 */	lfs f0, 0x27c8(r27)
/* 805C3418  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805C341C  C0 1B 27 CC */	lfs f0, 0x27cc(r27)
/* 805C3420  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805C3424  38 7D 02 48 */	addi r3, r29, 0x248
/* 805C3428  38 81 00 18 */	addi r4, r1, 0x18
/* 805C342C  38 A1 00 0C */	addi r5, r1, 0xc
/* 805C3430  4B BB D6 78 */	b Set__9dCamera_cF4cXyz4cXyz
lbl_805C3434:
/* 805C3434  80 1B 07 10 */	lwz r0, 0x710(r27)
/* 805C3438  2C 00 00 13 */	cmpwi r0, 0x13
/* 805C343C  40 82 00 A4 */	bne lbl_805C34E0
/* 805C3440  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 805C3444  38 63 00 0C */	addi r3, r3, 0xc
/* 805C3448  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 805C344C  4B D6 4F E0 */	b checkPass__12J3DFrameCtrlFf
/* 805C3450  2C 03 00 00 */	cmpwi r3, 0
/* 805C3454  41 82 00 58 */	beq lbl_805C34AC
/* 805C3458  88 1B 07 D1 */	lbz r0, 0x7d1(r27)
/* 805C345C  28 00 00 00 */	cmplwi r0, 0
/* 805C3460  40 82 00 44 */	bne lbl_805C34A4
/* 805C3464  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704E0@ha */
/* 805C3468  38 03 04 E0 */	addi r0, r3, 0x04E0 /* 0x000704E0@l */
/* 805C346C  90 01 00 08 */	stw r0, 8(r1)
/* 805C3470  38 7B 05 C0 */	addi r3, r27, 0x5c0
/* 805C3474  38 81 00 08 */	addi r4, r1, 8
/* 805C3478  38 A0 00 00 */	li r5, 0
/* 805C347C  38 C0 FF FF */	li r6, -1
/* 805C3480  81 9B 05 C0 */	lwz r12, 0x5c0(r27)
/* 805C3484  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805C3488  7D 89 03 A6 */	mtctr r12
/* 805C348C  4E 80 04 21 */	bctrl 
/* 805C3490  38 00 00 01 */	li r0, 1
/* 805C3494  98 1B 07 D1 */	stb r0, 0x7d1(r27)
/* 805C3498  88 7B 07 D2 */	lbz r3, 0x7d2(r27)
/* 805C349C  38 03 00 01 */	addi r0, r3, 1
/* 805C34A0  98 1B 07 D2 */	stb r0, 0x7d2(r27)
lbl_805C34A4:
/* 805C34A4  38 00 00 00 */	li r0, 0
/* 805C34A8  90 1B 07 E0 */	stw r0, 0x7e0(r27)
lbl_805C34AC:
/* 805C34AC  7F 63 DB 78 */	mr r3, r27
/* 805C34B0  38 80 00 00 */	li r4, 0
/* 805C34B4  4B FF 80 8D */	bl mBoot_c_tranceSet__8daB_DR_cFb
/* 805C34B8  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 805C34BC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805C34C0  FC 00 00 1E */	fctiwz f0, f0
/* 805C34C4  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 805C34C8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805C34CC  2C 00 00 2D */	cmpwi r0, 0x2d
/* 805C34D0  41 80 00 10 */	blt lbl_805C34E0
/* 805C34D4  7F 63 DB 78 */	mr r3, r27
/* 805C34D8  38 80 00 00 */	li r4, 0
/* 805C34DC  4B FF 8B DD */	bl chkPartCreate__8daB_DR_cFb
lbl_805C34E0:
/* 805C34E0  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 805C34E4  4B A4 98 80 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 805C34E8  38 7B 04 E4 */	addi r3, r27, 0x4e4
/* 805C34EC  4B A4 9A 58 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805C34F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805C34F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805C34F8  7C 64 1B 78 */	mr r4, r3
/* 805C34FC  4B D8 30 B4 */	b PSMTXInverse
/* 805C3500  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805C3504  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805C3508  38 9B 05 38 */	addi r4, r27, 0x538
/* 805C350C  38 A1 00 3C */	addi r5, r1, 0x3c
/* 805C3510  4B D8 38 5C */	b PSMTXMultVec
/* 805C3514  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805C3518  28 1B 00 00 */	cmplwi r27, 0
/* 805C351C  41 82 00 0C */	beq lbl_805C3528
/* 805C3520  80 9B 00 04 */	lwz r4, 4(r27)
/* 805C3524  48 00 00 08 */	b lbl_805C352C
lbl_805C3528:
/* 805C3528  38 80 FF FF */	li r4, -1
lbl_805C352C:
/* 805C352C  38 A1 00 3C */	addi r5, r1, 0x3c
/* 805C3530  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805C3534  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 805C3538  7D 89 03 A6 */	mtctr r12
/* 805C353C  4E 80 04 21 */	bctrl 
/* 805C3540  39 61 00 80 */	addi r11, r1, 0x80
/* 805C3544  4B D9 EC DC */	b _restgpr_27
/* 805C3548  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805C354C  7C 08 03 A6 */	mtlr r0
/* 805C3550  38 21 00 80 */	addi r1, r1, 0x80
/* 805C3554  4E 80 00 20 */	blr 
