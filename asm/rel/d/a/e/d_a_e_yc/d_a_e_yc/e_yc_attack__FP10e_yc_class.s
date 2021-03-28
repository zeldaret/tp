lbl_807F0C40:
/* 807F0C40  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 807F0C44  7C 08 02 A6 */	mflr r0
/* 807F0C48  90 01 00 74 */	stw r0, 0x74(r1)
/* 807F0C4C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 807F0C50  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 807F0C54  39 61 00 60 */	addi r11, r1, 0x60
/* 807F0C58  4B B7 15 7C */	b _savegpr_27
/* 807F0C5C  7C 7D 1B 78 */	mr r29, r3
/* 807F0C60  3C 60 80 7F */	lis r3, lit_3715@ha
/* 807F0C64  3B C3 28 64 */	addi r30, r3, lit_3715@l
/* 807F0C68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807F0C6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807F0C70  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 807F0C74  80 1D 06 AC */	lwz r0, 0x6ac(r29)
/* 807F0C78  90 01 00 0C */	stw r0, 0xc(r1)
/* 807F0C7C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 807F0C80  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 807F0C84  38 81 00 0C */	addi r4, r1, 0xc
/* 807F0C88  4B 82 8B 70 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 807F0C8C  7C 7F 1B 78 */	mr r31, r3
/* 807F0C90  C3 FE 00 04 */	lfs f31, 4(r30)
/* 807F0C94  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807F0C98  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807F0C9C  FC 00 00 1E */	fctiwz f0, f0
/* 807F0CA0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 807F0CA4  83 61 00 34 */	lwz r27, 0x34(r1)
/* 807F0CA8  A8 1D 06 70 */	lha r0, 0x670(r29)
/* 807F0CAC  2C 00 00 04 */	cmpwi r0, 4
/* 807F0CB0  40 80 00 2C */	bge lbl_807F0CDC
/* 807F0CB4  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 807F0CB8  D0 1D 06 74 */	stfs f0, 0x674(r29)
/* 807F0CBC  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 807F0CC0  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 807F0CC4  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 807F0CC8  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 807F0CCC  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 807F0CD0  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 807F0CD4  EC 01 00 2A */	fadds f0, f1, f0
/* 807F0CD8  D0 1D 06 78 */	stfs f0, 0x678(r29)
lbl_807F0CDC:
/* 807F0CDC  38 61 00 18 */	addi r3, r1, 0x18
/* 807F0CE0  38 9D 06 74 */	addi r4, r29, 0x674
/* 807F0CE4  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 807F0CE8  4B A7 5E 4C */	b __mi__4cXyzCFRC3Vec
/* 807F0CEC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807F0CF0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807F0CF4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807F0CF8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807F0CFC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 807F0D00  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807F0D04  A8 1D 06 70 */	lha r0, 0x670(r29)
/* 807F0D08  28 00 00 06 */	cmplwi r0, 6
/* 807F0D0C  41 81 03 98 */	bgt lbl_807F10A4
/* 807F0D10  3C 60 80 7F */	lis r3, lit_4087@ha
/* 807F0D14  38 63 29 70 */	addi r3, r3, lit_4087@l
/* 807F0D18  54 00 10 3A */	slwi r0, r0, 2
/* 807F0D1C  7C 03 00 2E */	lwzx r0, r3, r0
/* 807F0D20  7C 09 03 A6 */	mtctr r0
/* 807F0D24  4E 80 04 20 */	bctr 
lbl_807F0D28:
/* 807F0D28  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807F0D2C  D0 1D 06 88 */	stfs f0, 0x688(r29)
/* 807F0D30  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 807F0D34  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 807F0D38  38 00 00 01 */	li r0, 1
/* 807F0D3C  B0 1D 06 70 */	sth r0, 0x670(r29)
lbl_807F0D40:
/* 807F0D40  C3 FE 00 7C */	lfs f31, 0x7c(r30)
/* 807F0D44  38 61 00 24 */	addi r3, r1, 0x24
/* 807F0D48  4B B5 63 F0 */	b PSVECSquareMag
/* 807F0D4C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807F0D50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F0D54  40 81 00 58 */	ble lbl_807F0DAC
/* 807F0D58  FC 00 08 34 */	frsqrte f0, f1
/* 807F0D5C  C8 9E 00 80 */	lfd f4, 0x80(r30)
/* 807F0D60  FC 44 00 32 */	fmul f2, f4, f0
/* 807F0D64  C8 7E 00 88 */	lfd f3, 0x88(r30)
/* 807F0D68  FC 00 00 32 */	fmul f0, f0, f0
/* 807F0D6C  FC 01 00 32 */	fmul f0, f1, f0
/* 807F0D70  FC 03 00 28 */	fsub f0, f3, f0
/* 807F0D74  FC 02 00 32 */	fmul f0, f2, f0
/* 807F0D78  FC 44 00 32 */	fmul f2, f4, f0
/* 807F0D7C  FC 00 00 32 */	fmul f0, f0, f0
/* 807F0D80  FC 01 00 32 */	fmul f0, f1, f0
/* 807F0D84  FC 03 00 28 */	fsub f0, f3, f0
/* 807F0D88  FC 02 00 32 */	fmul f0, f2, f0
/* 807F0D8C  FC 44 00 32 */	fmul f2, f4, f0
/* 807F0D90  FC 00 00 32 */	fmul f0, f0, f0
/* 807F0D94  FC 01 00 32 */	fmul f0, f1, f0
/* 807F0D98  FC 03 00 28 */	fsub f0, f3, f0
/* 807F0D9C  FC 02 00 32 */	fmul f0, f2, f0
/* 807F0DA0  FC 21 00 32 */	fmul f1, f1, f0
/* 807F0DA4  FC 20 08 18 */	frsp f1, f1
/* 807F0DA8  48 00 00 88 */	b lbl_807F0E30
lbl_807F0DAC:
/* 807F0DAC  C8 1E 00 90 */	lfd f0, 0x90(r30)
/* 807F0DB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F0DB4  40 80 00 10 */	bge lbl_807F0DC4
/* 807F0DB8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807F0DBC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807F0DC0  48 00 00 70 */	b lbl_807F0E30
lbl_807F0DC4:
/* 807F0DC4  D0 21 00 08 */	stfs f1, 8(r1)
/* 807F0DC8  80 81 00 08 */	lwz r4, 8(r1)
/* 807F0DCC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807F0DD0  3C 00 7F 80 */	lis r0, 0x7f80
/* 807F0DD4  7C 03 00 00 */	cmpw r3, r0
/* 807F0DD8  41 82 00 14 */	beq lbl_807F0DEC
/* 807F0DDC  40 80 00 40 */	bge lbl_807F0E1C
/* 807F0DE0  2C 03 00 00 */	cmpwi r3, 0
/* 807F0DE4  41 82 00 20 */	beq lbl_807F0E04
/* 807F0DE8  48 00 00 34 */	b lbl_807F0E1C
lbl_807F0DEC:
/* 807F0DEC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807F0DF0  41 82 00 0C */	beq lbl_807F0DFC
/* 807F0DF4  38 00 00 01 */	li r0, 1
/* 807F0DF8  48 00 00 28 */	b lbl_807F0E20
lbl_807F0DFC:
/* 807F0DFC  38 00 00 02 */	li r0, 2
/* 807F0E00  48 00 00 20 */	b lbl_807F0E20
lbl_807F0E04:
/* 807F0E04  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807F0E08  41 82 00 0C */	beq lbl_807F0E14
/* 807F0E0C  38 00 00 05 */	li r0, 5
/* 807F0E10  48 00 00 10 */	b lbl_807F0E20
lbl_807F0E14:
/* 807F0E14  38 00 00 03 */	li r0, 3
/* 807F0E18  48 00 00 08 */	b lbl_807F0E20
lbl_807F0E1C:
/* 807F0E1C  38 00 00 04 */	li r0, 4
lbl_807F0E20:
/* 807F0E20  2C 00 00 01 */	cmpwi r0, 1
/* 807F0E24  40 82 00 0C */	bne lbl_807F0E30
/* 807F0E28  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807F0E2C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807F0E30:
/* 807F0E30  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 807F0E34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F0E38  40 80 02 6C */	bge lbl_807F10A4
/* 807F0E3C  38 00 00 02 */	li r0, 2
/* 807F0E40  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807F0E44  7F A3 EB 78 */	mr r3, r29
/* 807F0E48  38 80 00 0A */	li r4, 0xa
/* 807F0E4C  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 807F0E50  38 A0 00 02 */	li r5, 2
/* 807F0E54  C0 5E 00 00 */	lfs f2, 0(r30)
/* 807F0E58  4B FF F0 99 */	bl anm_init__FP10e_yc_classifUcf
/* 807F0E5C  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 807F0E60  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 807F0E64  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070494@ha */
/* 807F0E68  38 03 04 94 */	addi r0, r3, 0x0494 /* 0x00070494@l */
/* 807F0E6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F0E70  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 807F0E74  38 81 00 14 */	addi r4, r1, 0x14
/* 807F0E78  38 A0 FF FF */	li r5, -1
/* 807F0E7C  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 807F0E80  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807F0E84  7D 89 03 A6 */	mtctr r12
/* 807F0E88  4E 80 04 21 */	bctrl 
/* 807F0E8C  48 00 02 18 */	b lbl_807F10A4
lbl_807F0E90:
/* 807F0E90  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 807F0E94  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 807F0E98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F0E9C  40 80 02 08 */	bge lbl_807F10A4
/* 807F0EA0  38 00 00 03 */	li r0, 3
/* 807F0EA4  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807F0EA8  38 00 00 0F */	li r0, 0xf
/* 807F0EAC  B0 1D 06 A2 */	sth r0, 0x6a2(r29)
/* 807F0EB0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807F0EB4  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 807F0EB8  48 00 01 EC */	b lbl_807F10A4
lbl_807F0EBC:
/* 807F0EBC  A8 1D 06 A2 */	lha r0, 0x6a2(r29)
/* 807F0EC0  2C 00 00 00 */	cmpwi r0, 0
/* 807F0EC4  40 82 01 E0 */	bne lbl_807F10A4
/* 807F0EC8  7F A3 EB 78 */	mr r3, r29
/* 807F0ECC  38 80 00 06 */	li r4, 6
/* 807F0ED0  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 807F0ED4  38 A0 00 00 */	li r5, 0
/* 807F0ED8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 807F0EDC  4B FF F0 15 */	bl anm_init__FP10e_yc_classifUcf
/* 807F0EE0  38 00 00 04 */	li r0, 4
/* 807F0EE4  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807F0EE8  48 00 01 BC */	b lbl_807F10A4
lbl_807F0EEC:
/* 807F0EEC  2C 1B 00 0B */	cmpwi r27, 0xb
/* 807F0EF0  40 82 00 60 */	bne lbl_807F0F50
/* 807F0EF4  A8 1F 13 70 */	lha r0, 0x1370(r31)
/* 807F0EF8  7C 00 00 34 */	cntlzw r0, r0
/* 807F0EFC  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 807F0F00  C0 3D 06 84 */	lfs f1, 0x684(r29)
/* 807F0F04  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 807F0F08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F0F0C  7C 00 00 26 */	mfcr r0
/* 807F0F10  54 00 0F FE */	srwi r0, r0, 0x1f
/* 807F0F14  7C 60 00 39 */	and. r0, r3, r0
/* 807F0F18  41 82 00 38 */	beq lbl_807F0F50
/* 807F0F1C  38 00 00 01 */	li r0, 1
/* 807F0F20  B0 1F 13 70 */	sth r0, 0x1370(r31)
/* 807F0F24  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704B3@ha */
/* 807F0F28  38 03 04 B3 */	addi r0, r3, 0x04B3 /* 0x000704B3@l */
/* 807F0F2C  90 01 00 10 */	stw r0, 0x10(r1)
/* 807F0F30  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 807F0F34  38 81 00 10 */	addi r4, r1, 0x10
/* 807F0F38  38 A0 00 00 */	li r5, 0
/* 807F0F3C  38 C0 FF FF */	li r6, -1
/* 807F0F40  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 807F0F44  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807F0F48  7D 89 03 A6 */	mtctr r12
/* 807F0F4C  4E 80 04 21 */	bctrl 
lbl_807F0F50:
/* 807F0F50  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807F0F54  C0 3D 06 74 */	lfs f1, 0x674(r29)
/* 807F0F58  C0 5E 00 00 */	lfs f2, 0(r30)
/* 807F0F5C  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 807F0F60  4B A7 EA DC */	b cLib_addCalc2__FPffff
/* 807F0F64  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 807F0F68  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 807F0F6C  C0 1D 06 78 */	lfs f0, 0x678(r29)
/* 807F0F70  EC 21 00 2A */	fadds f1, f1, f0
/* 807F0F74  C0 5E 00 00 */	lfs f2, 0(r30)
/* 807F0F78  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 807F0F7C  4B A7 EA C0 */	b cLib_addCalc2__FPffff
/* 807F0F80  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 807F0F84  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 807F0F88  C0 5E 00 00 */	lfs f2, 0(r30)
/* 807F0F8C  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 807F0F90  4B A7 EA AC */	b cLib_addCalc2__FPffff
/* 807F0F94  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807F0F98  38 80 00 01 */	li r4, 1
/* 807F0F9C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807F0FA0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807F0FA4  40 82 00 18 */	bne lbl_807F0FBC
/* 807F0FA8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807F0FAC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807F0FB0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807F0FB4  41 82 00 08 */	beq lbl_807F0FBC
/* 807F0FB8  38 80 00 00 */	li r4, 0
lbl_807F0FBC:
/* 807F0FBC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807F0FC0  41 82 00 E4 */	beq lbl_807F10A4
/* 807F0FC4  A8 1F 13 70 */	lha r0, 0x1370(r31)
/* 807F0FC8  2C 00 00 00 */	cmpwi r0, 0
/* 807F0FCC  40 82 00 18 */	bne lbl_807F0FE4
/* 807F0FD0  38 00 00 0B */	li r0, 0xb
/* 807F0FD4  B0 1D 06 6E */	sth r0, 0x66e(r29)
/* 807F0FD8  38 00 00 00 */	li r0, 0
/* 807F0FDC  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807F0FE0  48 00 00 C4 */	b lbl_807F10A4
lbl_807F0FE4:
/* 807F0FE4  7F A3 EB 78 */	mr r3, r29
/* 807F0FE8  38 80 00 05 */	li r4, 5
/* 807F0FEC  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 807F0FF0  38 A0 00 02 */	li r5, 2
/* 807F0FF4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 807F0FF8  4B FF EE F9 */	bl anm_init__FP10e_yc_classifUcf
/* 807F0FFC  38 00 00 05 */	li r0, 5
/* 807F1000  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807F1004  38 00 00 50 */	li r0, 0x50
/* 807F1008  B0 1D 06 A2 */	sth r0, 0x6a2(r29)
/* 807F100C  48 00 00 98 */	b lbl_807F10A4
lbl_807F1010:
/* 807F1010  A8 1D 06 A2 */	lha r0, 0x6a2(r29)
/* 807F1014  2C 00 00 00 */	cmpwi r0, 0
/* 807F1018  40 82 00 28 */	bne lbl_807F1040
/* 807F101C  7F A3 EB 78 */	mr r3, r29
/* 807F1020  38 80 00 04 */	li r4, 4
/* 807F1024  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 807F1028  38 A0 00 00 */	li r5, 0
/* 807F102C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 807F1030  4B FF EE C1 */	bl anm_init__FP10e_yc_classifUcf
/* 807F1034  38 00 00 06 */	li r0, 6
/* 807F1038  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807F103C  48 00 00 68 */	b lbl_807F10A4
lbl_807F1040:
/* 807F1040  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 807F1044  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 807F1048  EC 01 00 2A */	fadds f0, f1, f0
/* 807F104C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 807F1050  48 00 00 54 */	b lbl_807F10A4
lbl_807F1054:
/* 807F1054  2C 1B 00 1E */	cmpwi r27, 0x1e
/* 807F1058  40 82 00 0C */	bne lbl_807F1064
/* 807F105C  38 00 00 03 */	li r0, 3
/* 807F1060  B0 1F 13 70 */	sth r0, 0x1370(r31)
lbl_807F1064:
/* 807F1064  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807F1068  38 80 00 01 */	li r4, 1
/* 807F106C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807F1070  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807F1074  40 82 00 18 */	bne lbl_807F108C
/* 807F1078  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807F107C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807F1080  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807F1084  41 82 00 08 */	beq lbl_807F108C
/* 807F1088  38 80 00 00 */	li r4, 0
lbl_807F108C:
/* 807F108C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807F1090  41 82 00 14 */	beq lbl_807F10A4
/* 807F1094  38 00 00 0B */	li r0, 0xb
/* 807F1098  B0 1D 06 6E */	sth r0, 0x66e(r29)
/* 807F109C  38 00 00 00 */	li r0, 0
/* 807F10A0  B0 1D 06 70 */	sth r0, 0x670(r29)
lbl_807F10A4:
/* 807F10A4  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 807F10A8  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 807F10AC  4B A7 65 C8 */	b cM_atan2s__Fff
/* 807F10B0  7C 7B 1B 78 */	mr r27, r3
/* 807F10B4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 807F10B8  EC 20 00 32 */	fmuls f1, f0, f0
/* 807F10BC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 807F10C0  EC 00 00 32 */	fmuls f0, f0, f0
/* 807F10C4  EC 41 00 2A */	fadds f2, f1, f0
/* 807F10C8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807F10CC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807F10D0  40 81 00 0C */	ble lbl_807F10DC
/* 807F10D4  FC 00 10 34 */	frsqrte f0, f2
/* 807F10D8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807F10DC:
/* 807F10DC  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 807F10E0  4B A7 65 94 */	b cM_atan2s__Fff
/* 807F10E4  7C 03 00 D0 */	neg r0, r3
/* 807F10E8  7C 1C 07 34 */	extsh r28, r0
/* 807F10EC  AB FD 04 DE */	lha r31, 0x4de(r29)
/* 807F10F0  38 7D 04 DE */	addi r3, r29, 0x4de
/* 807F10F4  7F 64 DB 78 */	mr r4, r27
/* 807F10F8  38 A0 00 0A */	li r5, 0xa
/* 807F10FC  C0 3D 06 90 */	lfs f1, 0x690(r29)
/* 807F1100  C0 1D 06 88 */	lfs f0, 0x688(r29)
/* 807F1104  EC 01 00 32 */	fmuls f0, f1, f0
/* 807F1108  FC 00 00 1E */	fctiwz f0, f0
/* 807F110C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 807F1110  80 C1 00 34 */	lwz r6, 0x34(r1)
/* 807F1114  4B A7 F4 F4 */	b cLib_addCalcAngleS2__FPssss
/* 807F1118  A8 1D 06 70 */	lha r0, 0x670(r29)
/* 807F111C  2C 00 00 02 */	cmpwi r0, 2
/* 807F1120  40 80 00 34 */	bge lbl_807F1154
/* 807F1124  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 807F1128  7C 00 F8 50 */	subf r0, r0, r31
/* 807F112C  54 00 28 34 */	slwi r0, r0, 5
/* 807F1130  7C 04 07 34 */	extsh r4, r0
/* 807F1134  2C 04 15 7C */	cmpwi r4, 0x157c
/* 807F1138  40 81 00 0C */	ble lbl_807F1144
/* 807F113C  38 80 15 7C */	li r4, 0x157c
/* 807F1140  48 00 00 18 */	b lbl_807F1158
lbl_807F1144:
/* 807F1144  2C 04 EA 84 */	cmpwi r4, -5500
/* 807F1148  40 80 00 10 */	bge lbl_807F1158
/* 807F114C  38 80 EA 84 */	li r4, -5500
/* 807F1150  48 00 00 08 */	b lbl_807F1158
lbl_807F1154:
/* 807F1154  38 80 00 00 */	li r4, 0
lbl_807F1158:
/* 807F1158  38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 807F115C  38 A0 00 0A */	li r5, 0xa
/* 807F1160  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 807F1164  C0 3D 06 90 */	lfs f1, 0x690(r29)
/* 807F1168  C0 1D 06 88 */	lfs f0, 0x688(r29)
/* 807F116C  EC 01 00 32 */	fmuls f0, f1, f0
/* 807F1170  EC 02 00 32 */	fmuls f0, f2, f0
/* 807F1174  FC 00 00 1E */	fctiwz f0, f0
/* 807F1178  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 807F117C  80 C1 00 34 */	lwz r6, 0x34(r1)
/* 807F1180  4B A7 F4 88 */	b cLib_addCalcAngleS2__FPssss
/* 807F1184  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 807F1188  7F 84 E3 78 */	mr r4, r28
/* 807F118C  38 A0 00 0A */	li r5, 0xa
/* 807F1190  C0 3D 06 90 */	lfs f1, 0x690(r29)
/* 807F1194  C0 1D 06 88 */	lfs f0, 0x688(r29)
/* 807F1198  EC 01 00 32 */	fmuls f0, f1, f0
/* 807F119C  FC 00 00 1E */	fctiwz f0, f0
/* 807F11A0  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 807F11A4  80 C1 00 3C */	lwz r6, 0x3c(r1)
/* 807F11A8  4B A7 F4 60 */	b cLib_addCalcAngleS2__FPssss
/* 807F11AC  38 7D 06 88 */	addi r3, r29, 0x688
/* 807F11B0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 807F11B4  FC 40 08 90 */	fmr f2, f1
/* 807F11B8  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 807F11BC  4B A7 E8 80 */	b cLib_addCalc2__FPffff
/* 807F11C0  38 7D 05 2C */	addi r3, r29, 0x52c
/* 807F11C4  FC 20 F8 90 */	fmr f1, f31
/* 807F11C8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 807F11CC  C0 7E 00 9C */	lfs f3, 0x9c(r30)
/* 807F11D0  4B A7 E8 6C */	b cLib_addCalc2__FPffff
/* 807F11D4  3C 60 80 7F */	lis r3, S_area_dis@ha
/* 807F11D8  C0 23 2B 08 */	lfs f1, S_area_dis@l(r3)
/* 807F11DC  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 807F11E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F11E4  40 81 00 14 */	ble lbl_807F11F8
/* 807F11E8  38 00 00 0A */	li r0, 0xa
/* 807F11EC  B0 1D 06 6E */	sth r0, 0x66e(r29)
/* 807F11F0  38 00 00 00 */	li r0, 0
/* 807F11F4  B0 1D 06 70 */	sth r0, 0x670(r29)
lbl_807F11F8:
/* 807F11F8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 807F11FC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 807F1200  39 61 00 60 */	addi r11, r1, 0x60
/* 807F1204  4B B7 10 1C */	b _restgpr_27
/* 807F1208  80 01 00 74 */	lwz r0, 0x74(r1)
/* 807F120C  7C 08 03 A6 */	mtlr r0
/* 807F1210  38 21 00 70 */	addi r1, r1, 0x70
/* 807F1214  4E 80 00 20 */	blr 
