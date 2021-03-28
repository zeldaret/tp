lbl_80D50D30:
/* 80D50D30  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80D50D34  7C 08 02 A6 */	mflr r0
/* 80D50D38  90 01 00 64 */	stw r0, 0x64(r1)
/* 80D50D3C  39 61 00 60 */	addi r11, r1, 0x60
/* 80D50D40  4B 61 14 9C */	b _savegpr_29
/* 80D50D44  7C 7E 1B 78 */	mr r30, r3
/* 80D50D48  3C 60 80 D5 */	lis r3, lit_3698@ha
/* 80D50D4C  3B E3 1A D4 */	addi r31, r3, lit_3698@l
/* 80D50D50  38 60 00 00 */	li r3, 0
/* 80D50D54  90 7E 05 5C */	stw r3, 0x55c(r30)
/* 80D50D58  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D50D5C  D0 1E 05 A8 */	stfs f0, 0x5a8(r30)
/* 80D50D60  B0 7E 05 AC */	sth r3, 0x5ac(r30)
/* 80D50D64  38 00 FF FF */	li r0, -1
/* 80D50D68  B0 1E 05 AE */	sth r0, 0x5ae(r30)
/* 80D50D6C  98 7E 05 B0 */	stb r3, 0x5b0(r30)
/* 80D50D70  98 7E 05 B1 */	stb r3, 0x5b1(r30)
/* 80D50D74  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D50D78  54 03 86 3E */	rlwinm r3, r0, 0x10, 0x18, 0x1f
/* 80D50D7C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D50D80  7C 04 07 74 */	extsb r4, r0
/* 80D50D84  4B 30 0A 68 */	b dPath_GetRoomPath__Fii
/* 80D50D88  90 7E 05 70 */	stw r3, 0x570(r30)
/* 80D50D8C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80D50D90  28 03 00 00 */	cmplwi r3, 0
/* 80D50D94  41 82 01 A4 */	beq lbl_80D50F38
/* 80D50D98  38 80 00 00 */	li r4, 0
/* 80D50D9C  4B 30 0A 14 */	b dPath_GetPnt__FPC5dPathi
/* 80D50DA0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80D50DA4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D50DA8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80D50DAC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D50DB0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80D50DB4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D50DB8  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80D50DBC  38 80 00 01 */	li r4, 1
/* 80D50DC0  4B 30 09 F0 */	b dPath_GetPnt__FPC5dPathi
/* 80D50DC4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80D50DC8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D50DCC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80D50DD0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D50DD4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80D50DD8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D50DDC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80D50DE0  D0 1E 05 88 */	stfs f0, 0x588(r30)
/* 80D50DE4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80D50DE8  D0 1E 05 8C */	stfs f0, 0x58c(r30)
/* 80D50DEC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80D50DF0  D0 1E 05 90 */	stfs f0, 0x590(r30)
/* 80D50DF4  38 61 00 20 */	addi r3, r1, 0x20
/* 80D50DF8  38 81 00 2C */	addi r4, r1, 0x2c
/* 80D50DFC  4B 51 FE 08 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80D50E00  7C 7D 1B 78 */	mr r29, r3
/* 80D50E04  38 61 00 20 */	addi r3, r1, 0x20
/* 80D50E08  38 81 00 2C */	addi r4, r1, 0x2c
/* 80D50E0C  4B 51 FE 68 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80D50E10  7C 03 00 D0 */	neg r0, r3
/* 80D50E14  B0 1E 05 94 */	sth r0, 0x594(r30)
/* 80D50E18  B3 BE 05 96 */	sth r29, 0x596(r30)
/* 80D50E1C  38 00 00 00 */	li r0, 0
/* 80D50E20  B0 1E 05 98 */	sth r0, 0x598(r30)
/* 80D50E24  38 7E 05 88 */	addi r3, r30, 0x588
/* 80D50E28  38 81 00 2C */	addi r4, r1, 0x2c
/* 80D50E2C  4B 5F 65 70 */	b PSVECSquareDistance
/* 80D50E30  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D50E34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D50E38  40 81 00 58 */	ble lbl_80D50E90
/* 80D50E3C  FC 00 08 34 */	frsqrte f0, f1
/* 80D50E40  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80D50E44  FC 44 00 32 */	fmul f2, f4, f0
/* 80D50E48  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80D50E4C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D50E50  FC 01 00 32 */	fmul f0, f1, f0
/* 80D50E54  FC 03 00 28 */	fsub f0, f3, f0
/* 80D50E58  FC 02 00 32 */	fmul f0, f2, f0
/* 80D50E5C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D50E60  FC 00 00 32 */	fmul f0, f0, f0
/* 80D50E64  FC 01 00 32 */	fmul f0, f1, f0
/* 80D50E68  FC 03 00 28 */	fsub f0, f3, f0
/* 80D50E6C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D50E70  FC 44 00 32 */	fmul f2, f4, f0
/* 80D50E74  FC 00 00 32 */	fmul f0, f0, f0
/* 80D50E78  FC 01 00 32 */	fmul f0, f1, f0
/* 80D50E7C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D50E80  FC 02 00 32 */	fmul f0, f2, f0
/* 80D50E84  FC 21 00 32 */	fmul f1, f1, f0
/* 80D50E88  FC 20 08 18 */	frsp f1, f1
/* 80D50E8C  48 00 00 88 */	b lbl_80D50F14
lbl_80D50E90:
/* 80D50E90  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80D50E94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D50E98  40 80 00 10 */	bge lbl_80D50EA8
/* 80D50E9C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D50EA0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80D50EA4  48 00 00 70 */	b lbl_80D50F14
lbl_80D50EA8:
/* 80D50EA8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D50EAC  80 81 00 08 */	lwz r4, 8(r1)
/* 80D50EB0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D50EB4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D50EB8  7C 03 00 00 */	cmpw r3, r0
/* 80D50EBC  41 82 00 14 */	beq lbl_80D50ED0
/* 80D50EC0  40 80 00 40 */	bge lbl_80D50F00
/* 80D50EC4  2C 03 00 00 */	cmpwi r3, 0
/* 80D50EC8  41 82 00 20 */	beq lbl_80D50EE8
/* 80D50ECC  48 00 00 34 */	b lbl_80D50F00
lbl_80D50ED0:
/* 80D50ED0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D50ED4  41 82 00 0C */	beq lbl_80D50EE0
/* 80D50ED8  38 00 00 01 */	li r0, 1
/* 80D50EDC  48 00 00 28 */	b lbl_80D50F04
lbl_80D50EE0:
/* 80D50EE0  38 00 00 02 */	li r0, 2
/* 80D50EE4  48 00 00 20 */	b lbl_80D50F04
lbl_80D50EE8:
/* 80D50EE8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D50EEC  41 82 00 0C */	beq lbl_80D50EF8
/* 80D50EF0  38 00 00 05 */	li r0, 5
/* 80D50EF4  48 00 00 10 */	b lbl_80D50F04
lbl_80D50EF8:
/* 80D50EF8  38 00 00 03 */	li r0, 3
/* 80D50EFC  48 00 00 08 */	b lbl_80D50F04
lbl_80D50F00:
/* 80D50F00  38 00 00 04 */	li r0, 4
lbl_80D50F04:
/* 80D50F04  2C 00 00 01 */	cmpwi r0, 1
/* 80D50F08  40 82 00 0C */	bne lbl_80D50F14
/* 80D50F0C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D50F10  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80D50F14:
/* 80D50F14  D0 3E 05 A4 */	stfs f1, 0x5a4(r30)
/* 80D50F18  38 00 00 01 */	li r0, 1
/* 80D50F1C  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 80D50F20  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80D50F24  D0 1E 05 7C */	stfs f0, 0x57c(r30)
/* 80D50F28  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80D50F2C  D0 1E 05 80 */	stfs f0, 0x580(r30)
/* 80D50F30  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80D50F34  D0 1E 05 84 */	stfs f0, 0x584(r30)
lbl_80D50F38:
/* 80D50F38  C0 1E 05 88 */	lfs f0, 0x588(r30)
/* 80D50F3C  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80D50F40  C0 1E 05 8C */	lfs f0, 0x58c(r30)
/* 80D50F44  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80D50F48  C0 1E 05 90 */	lfs f0, 0x590(r30)
/* 80D50F4C  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80D50F50  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80D50F54  28 03 00 00 */	cmplwi r3, 0
/* 80D50F58  41 82 00 7C */	beq lbl_80D50FD4
/* 80D50F5C  38 03 00 24 */	addi r0, r3, 0x24
/* 80D50F60  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80D50F64  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 80D50F68  28 00 00 00 */	cmplwi r0, 0
/* 80D50F6C  41 82 00 68 */	beq lbl_80D50FD4
/* 80D50F70  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80D50F74  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D50F78  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D50F7C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D50F80  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80D50F84  38 7E 05 88 */	addi r3, r30, 0x588
/* 80D50F88  4B 2B BD DC */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80D50F8C  38 7E 05 94 */	addi r3, r30, 0x594
/* 80D50F90  4B 2B BF B4 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D50F94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D50F98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D50F9C  38 81 00 14 */	addi r4, r1, 0x14
/* 80D50FA0  38 BE 05 88 */	addi r5, r30, 0x588
/* 80D50FA4  4B 5F 5D C8 */	b PSMTXMultVec
/* 80D50FA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D50FAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D50FB0  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80D50FB4  38 84 00 24 */	addi r4, r4, 0x24
/* 80D50FB8  4B 5F 54 F8 */	b PSMTXCopy
/* 80D50FBC  C0 1E 05 88 */	lfs f0, 0x588(r30)
/* 80D50FC0  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80D50FC4  C0 1E 05 8C */	lfs f0, 0x58c(r30)
/* 80D50FC8  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80D50FCC  C0 1E 05 90 */	lfs f0, 0x590(r30)
/* 80D50FD0  D0 1E 05 58 */	stfs f0, 0x558(r30)
lbl_80D50FD4:
/* 80D50FD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D50FD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D50FDC  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 80D50FE0  7F A3 EB 78 */	mr r3, r29
/* 80D50FE4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80D50FE8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80D50FEC  A0 84 02 18 */	lhz r4, 0x218(r4)
/* 80D50FF0  4B 2E 39 CC */	b isEventBit__11dSv_event_cCFUs
/* 80D50FF4  2C 03 00 00 */	cmpwi r3, 0
/* 80D50FF8  41 82 00 18 */	beq lbl_80D51010
/* 80D50FFC  3C 60 80 D5 */	lis r3, stringBase0@ha
/* 80D51000  38 63 1B 14 */	addi r3, r3, stringBase0@l
/* 80D51004  38 03 00 08 */	addi r0, r3, 8
/* 80D51008  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80D5100C  48 00 01 28 */	b lbl_80D51134
lbl_80D51010:
/* 80D51010  7F A3 EB 78 */	mr r3, r29
/* 80D51014  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80D51018  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80D5101C  A0 84 03 FC */	lhz r4, 0x3fc(r4)
/* 80D51020  4B 2E 39 9C */	b isEventBit__11dSv_event_cCFUs
/* 80D51024  2C 03 00 00 */	cmpwi r3, 0
/* 80D51028  41 82 00 48 */	beq lbl_80D51070
/* 80D5102C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D51030  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D51034  38 63 09 58 */	addi r3, r3, 0x958
/* 80D51038  38 80 00 06 */	li r4, 6
/* 80D5103C  4B 2E 38 F8 */	b isDungeonItem__12dSv_memBit_cCFi
/* 80D51040  2C 03 00 00 */	cmpwi r3, 0
/* 80D51044  41 82 00 18 */	beq lbl_80D5105C
/* 80D51048  3C 60 80 D5 */	lis r3, stringBase0@ha
/* 80D5104C  38 63 1B 14 */	addi r3, r3, stringBase0@l
/* 80D51050  38 03 00 19 */	addi r0, r3, 0x19
/* 80D51054  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80D51058  48 00 00 DC */	b lbl_80D51134
lbl_80D5105C:
/* 80D5105C  3C 60 80 D5 */	lis r3, stringBase0@ha
/* 80D51060  38 63 1B 14 */	addi r3, r3, stringBase0@l
/* 80D51064  38 03 00 08 */	addi r0, r3, 8
/* 80D51068  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80D5106C  48 00 00 C8 */	b lbl_80D51134
lbl_80D51070:
/* 80D51070  3C 60 80 D5 */	lis r3, stringBase0@ha
/* 80D51074  38 63 1B 14 */	addi r3, r3, stringBase0@l
/* 80D51078  38 03 00 29 */	addi r0, r3, 0x29
/* 80D5107C  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80D51080  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D51084  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D51088  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80D5108C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80D51090  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80D51094  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80D51098  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80D5109C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D510A0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80D510A4  38 61 00 0C */	addi r3, r1, 0xc
/* 80D510A8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D510AC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80D510B0  7C 04 07 34 */	extsh r4, r0
/* 80D510B4  38 A0 C0 00 */	li r5, -16384
/* 80D510B8  38 C0 00 00 */	li r6, 0
/* 80D510BC  4B 51 63 38 */	b __ct__5csXyzFsss
/* 80D510C0  38 60 02 75 */	li r3, 0x275
/* 80D510C4  38 80 00 07 */	li r4, 7
/* 80D510C8  38 A1 00 38 */	addi r5, r1, 0x38
/* 80D510CC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D510D0  7C 06 07 74 */	extsb r6, r0
/* 80D510D4  38 E1 00 0C */	addi r7, r1, 0xc
/* 80D510D8  39 00 00 00 */	li r8, 0
/* 80D510DC  39 20 FF FF */	li r9, -1
/* 80D510E0  4B 2C 8C B8 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80D510E4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80D510E8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D510EC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80D510F0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80D510F4  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80D510F8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80D510FC  38 60 00 00 */	li r3, 0
/* 80D51100  B0 61 00 0C */	sth r3, 0xc(r1)
/* 80D51104  38 00 C0 00 */	li r0, -16384
/* 80D51108  B0 01 00 0E */	sth r0, 0xe(r1)
/* 80D5110C  B0 61 00 10 */	sth r3, 0x10(r1)
/* 80D51110  38 60 02 74 */	li r3, 0x274
/* 80D51114  38 80 00 00 */	li r4, 0
/* 80D51118  38 A1 00 38 */	addi r5, r1, 0x38
/* 80D5111C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D51120  7C 06 07 74 */	extsb r6, r0
/* 80D51124  38 E1 00 0C */	addi r7, r1, 0xc
/* 80D51128  39 00 00 00 */	li r8, 0
/* 80D5112C  39 20 FF FF */	li r9, -1
/* 80D51130  4B 2C 8C 68 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
lbl_80D51134:
/* 80D51134  3C 60 80 D5 */	lis r3, l_arcName@ha
/* 80D51138  80 03 1B 50 */	lwz r0, l_arcName@l(r3)
/* 80D5113C  90 1E 01 00 */	stw r0, 0x100(r30)
/* 80D51140  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D51144  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D51148  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 80D5114C  7F A3 EB 78 */	mr r3, r29
/* 80D51150  80 9E 01 00 */	lwz r4, 0x100(r30)
/* 80D51154  4B 2F 56 AC */	b setObjectArchive__16dEvent_manager_cFPc
/* 80D51158  7F A3 EB 78 */	mr r3, r29
/* 80D5115C  7F C4 F3 78 */	mr r4, r30
/* 80D51160  80 BE 05 9C */	lwz r5, 0x59c(r30)
/* 80D51164  38 C0 00 FF */	li r6, 0xff
/* 80D51168  4B 2F 65 F0 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80D5116C  B0 7E 05 AE */	sth r3, 0x5ae(r30)
/* 80D51170  7F C3 F3 78 */	mr r3, r30
/* 80D51174  A8 9E 05 AE */	lha r4, 0x5ae(r30)
/* 80D51178  38 A0 00 FF */	li r5, 0xff
/* 80D5117C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D51180  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D51184  38 E0 00 02 */	li r7, 2
/* 80D51188  39 00 00 01 */	li r8, 1
/* 80D5118C  4B 2C A4 F0 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80D51190  39 61 00 60 */	addi r11, r1, 0x60
/* 80D51194  4B 61 10 94 */	b _restgpr_29
/* 80D51198  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80D5119C  7C 08 03 A6 */	mtlr r0
/* 80D511A0  38 21 00 60 */	addi r1, r1, 0x60
/* 80D511A4  4E 80 00 20 */	blr 
