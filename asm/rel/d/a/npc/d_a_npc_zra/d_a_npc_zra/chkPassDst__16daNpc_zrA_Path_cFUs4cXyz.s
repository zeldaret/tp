lbl_80B78E08:
/* 80B78E08  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80B78E0C  7C 08 02 A6 */	mflr r0
/* 80B78E10  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80B78E14  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80B78E18  4B 7E 93 B1 */	bl _savegpr_24
/* 80B78E1C  7C 7C 1B 78 */	mr r28, r3
/* 80B78E20  7C 9D 23 78 */	mr r29, r4
/* 80B78E24  7C BE 2B 78 */	mr r30, r5
/* 80B78E28  3C 80 80 B9 */	lis r4, m__17daNpc_zrA_Param_c@ha /* 0x80B8C458@ha */
/* 80B78E2C  3B E4 C4 58 */	addi r31, r4, m__17daNpc_zrA_Param_c@l /* 0x80B8C458@l */
/* 80B78E30  80 83 00 04 */	lwz r4, 4(r3)
/* 80B78E34  83 44 00 08 */	lwz r26, 8(r4)
/* 80B78E38  A3 23 00 00 */	lhz r25, 0(r3)
/* 80B78E3C  8B 03 00 02 */	lbz r24, 2(r3)
/* 80B78E40  B3 A3 00 00 */	sth r29, 0(r3)
/* 80B78E44  38 00 00 00 */	li r0, 0
/* 80B78E48  98 03 00 02 */	stb r0, 2(r3)
/* 80B78E4C  4B 5D 7D CD */	bl getNextIdx__13daNpcF_Path_cFv
/* 80B78E50  54 7B 04 3E */	clrlwi r27, r3, 0x10
/* 80B78E54  B3 BC 00 00 */	sth r29, 0(r28)
/* 80B78E58  7F 83 E3 78 */	mr r3, r28
/* 80B78E5C  4B 5D 7E 05 */	bl getBeforeIdx__13daNpcF_Path_cFv
/* 80B78E60  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 80B78E64  B3 3C 00 00 */	sth r25, 0(r28)
/* 80B78E68  9B 1C 00 02 */	stb r24, 2(r28)
/* 80B78E6C  54 60 23 36 */	rlwinm r0, r3, 4, 0xc, 0x1b
/* 80B78E70  7C 7A 02 14 */	add r3, r26, r0
/* 80B78E74  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 80B78E78  C0 23 00 08 */	lfs f1, 8(r3)
/* 80B78E7C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B78E80  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80B78E84  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 80B78E88  D0 41 00 9C */	stfs f2, 0x9c(r1)
/* 80B78E8C  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 80B78E90  57 A3 23 36 */	rlwinm r3, r29, 4, 0xc, 0x1b
/* 80B78E94  7C 7A 1A 14 */	add r3, r26, r3
/* 80B78E98  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 80B78E9C  C0 23 00 08 */	lfs f1, 8(r3)
/* 80B78EA0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B78EA4  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80B78EA8  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 80B78EAC  D0 41 00 90 */	stfs f2, 0x90(r1)
/* 80B78EB0  57 63 23 36 */	rlwinm r3, r27, 4, 0xc, 0x1b
/* 80B78EB4  7C 7A 1A 14 */	add r3, r26, r3
/* 80B78EB8  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 80B78EBC  C0 23 00 08 */	lfs f1, 8(r3)
/* 80B78EC0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B78EC4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B78EC8  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 80B78ECC  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 80B78ED0  7C 04 00 40 */	cmplw r4, r0
/* 80B78ED4  40 82 00 0C */	bne lbl_80B78EE0
/* 80B78ED8  7C 1B 00 40 */	cmplw r27, r0
/* 80B78EDC  41 82 06 74 */	beq lbl_80B79550
lbl_80B78EE0:
/* 80B78EE0  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 80B78EE4  7C 04 00 40 */	cmplw r4, r0
/* 80B78EE8  40 80 01 B8 */	bge lbl_80B790A0
/* 80B78EEC  7C 00 D8 40 */	cmplw r0, r27
/* 80B78EF0  40 80 01 B0 */	bge lbl_80B790A0
/* 80B78EF4  38 61 00 64 */	addi r3, r1, 0x64
/* 80B78EF8  38 81 00 7C */	addi r4, r1, 0x7c
/* 80B78EFC  38 A1 00 94 */	addi r5, r1, 0x94
/* 80B78F00  4B 6E DC 35 */	bl __mi__4cXyzCFRC3Vec
/* 80B78F04  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80B78F08  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B78F0C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B78F10  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B78F14  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80B78F18  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B78F1C  38 61 00 40 */	addi r3, r1, 0x40
/* 80B78F20  4B 7C E2 19 */	bl PSVECSquareMag
/* 80B78F24  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B78F28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B78F2C  40 81 00 58 */	ble lbl_80B78F84
/* 80B78F30  FC 00 08 34 */	frsqrte f0, f1
/* 80B78F34  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 80B78F38  FC 44 00 32 */	fmul f2, f4, f0
/* 80B78F3C  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 80B78F40  FC 00 00 32 */	fmul f0, f0, f0
/* 80B78F44  FC 01 00 32 */	fmul f0, f1, f0
/* 80B78F48  FC 03 00 28 */	fsub f0, f3, f0
/* 80B78F4C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B78F50  FC 44 00 32 */	fmul f2, f4, f0
/* 80B78F54  FC 00 00 32 */	fmul f0, f0, f0
/* 80B78F58  FC 01 00 32 */	fmul f0, f1, f0
/* 80B78F5C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B78F60  FC 02 00 32 */	fmul f0, f2, f0
/* 80B78F64  FC 44 00 32 */	fmul f2, f4, f0
/* 80B78F68  FC 00 00 32 */	fmul f0, f0, f0
/* 80B78F6C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B78F70  FC 03 00 28 */	fsub f0, f3, f0
/* 80B78F74  FC 02 00 32 */	fmul f0, f2, f0
/* 80B78F78  FC 21 00 32 */	fmul f1, f1, f0
/* 80B78F7C  FC 20 08 18 */	frsp f1, f1
/* 80B78F80  48 00 00 88 */	b lbl_80B79008
lbl_80B78F84:
/* 80B78F84  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 80B78F88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B78F8C  40 80 00 10 */	bge lbl_80B78F9C
/* 80B78F90  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B78F94  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B78F98  48 00 00 70 */	b lbl_80B79008
lbl_80B78F9C:
/* 80B78F9C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B78FA0  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80B78FA4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B78FA8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B78FAC  7C 03 00 00 */	cmpw r3, r0
/* 80B78FB0  41 82 00 14 */	beq lbl_80B78FC4
/* 80B78FB4  40 80 00 40 */	bge lbl_80B78FF4
/* 80B78FB8  2C 03 00 00 */	cmpwi r3, 0
/* 80B78FBC  41 82 00 20 */	beq lbl_80B78FDC
/* 80B78FC0  48 00 00 34 */	b lbl_80B78FF4
lbl_80B78FC4:
/* 80B78FC4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B78FC8  41 82 00 0C */	beq lbl_80B78FD4
/* 80B78FCC  38 00 00 01 */	li r0, 1
/* 80B78FD0  48 00 00 28 */	b lbl_80B78FF8
lbl_80B78FD4:
/* 80B78FD4  38 00 00 02 */	li r0, 2
/* 80B78FD8  48 00 00 20 */	b lbl_80B78FF8
lbl_80B78FDC:
/* 80B78FDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B78FE0  41 82 00 0C */	beq lbl_80B78FEC
/* 80B78FE4  38 00 00 05 */	li r0, 5
/* 80B78FE8  48 00 00 10 */	b lbl_80B78FF8
lbl_80B78FEC:
/* 80B78FEC  38 00 00 03 */	li r0, 3
/* 80B78FF0  48 00 00 08 */	b lbl_80B78FF8
lbl_80B78FF4:
/* 80B78FF4  38 00 00 04 */	li r0, 4
lbl_80B78FF8:
/* 80B78FF8  2C 00 00 01 */	cmpwi r0, 1
/* 80B78FFC  40 82 00 0C */	bne lbl_80B79008
/* 80B79000  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B79004  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B79008:
/* 80B79008  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80B7900C  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 80B79010  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80B79014  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B79018  C0 41 00 84 */	lfs f2, 0x84(r1)
/* 80B7901C  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80B79020  EC 42 00 28 */	fsubs f2, f2, f0
/* 80B79024  4B 6E E6 51 */	bl cM_atan2s__Fff
/* 80B79028  C0 41 00 94 */	lfs f2, 0x94(r1)
/* 80B7902C  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 80B79030  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80B79034  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B79038  C0 21 00 9C */	lfs f1, 0x9c(r1)
/* 80B7903C  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80B79040  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80B79044  C0 A1 00 24 */	lfs f5, 0x24(r1)
/* 80B79048  EC 60 01 72 */	fmuls f3, f0, f5
/* 80B7904C  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80B79050  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B79054  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B79058  7C 83 04 2E */	lfsx f4, r3, r0
/* 80B7905C  EC 03 01 32 */	fmuls f0, f3, f4
/* 80B79060  EC 02 00 2A */	fadds f0, f2, f0
/* 80B79064  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80B79068  7C 63 02 14 */	add r3, r3, r0
/* 80B7906C  C0 C3 00 04 */	lfs f6, 4(r3)
/* 80B79070  EC 03 01 B2 */	fmuls f0, f3, f6
/* 80B79074  EC 01 00 2A */	fadds f0, f1, f0
/* 80B79078  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80B7907C  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80B79080  EC 60 01 72 */	fmuls f3, f0, f5
/* 80B79084  EC 03 01 32 */	fmuls f0, f3, f4
/* 80B79088  EC 02 00 2A */	fadds f0, f2, f0
/* 80B7908C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B79090  EC 03 01 B2 */	fmuls f0, f3, f6
/* 80B79094  EC 01 00 2A */	fadds f0, f1, f0
/* 80B79098  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80B7909C  48 00 03 6C */	b lbl_80B79408
lbl_80B790A0:
/* 80B790A0  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 80B790A4  7C 04 00 40 */	cmplw r4, r0
/* 80B790A8  40 80 01 B0 */	bge lbl_80B79258
/* 80B790AC  38 61 00 58 */	addi r3, r1, 0x58
/* 80B790B0  38 81 00 88 */	addi r4, r1, 0x88
/* 80B790B4  38 A1 00 94 */	addi r5, r1, 0x94
/* 80B790B8  4B 6E DA 7D */	bl __mi__4cXyzCFRC3Vec
/* 80B790BC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80B790C0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B790C4  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B790C8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B790CC  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80B790D0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B790D4  38 61 00 34 */	addi r3, r1, 0x34
/* 80B790D8  4B 7C E0 61 */	bl PSVECSquareMag
/* 80B790DC  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B790E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B790E4  40 81 00 58 */	ble lbl_80B7913C
/* 80B790E8  FC 00 08 34 */	frsqrte f0, f1
/* 80B790EC  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 80B790F0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B790F4  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 80B790F8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B790FC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B79100  FC 03 00 28 */	fsub f0, f3, f0
/* 80B79104  FC 02 00 32 */	fmul f0, f2, f0
/* 80B79108  FC 44 00 32 */	fmul f2, f4, f0
/* 80B7910C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B79110  FC 01 00 32 */	fmul f0, f1, f0
/* 80B79114  FC 03 00 28 */	fsub f0, f3, f0
/* 80B79118  FC 02 00 32 */	fmul f0, f2, f0
/* 80B7911C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B79120  FC 00 00 32 */	fmul f0, f0, f0
/* 80B79124  FC 01 00 32 */	fmul f0, f1, f0
/* 80B79128  FC 03 00 28 */	fsub f0, f3, f0
/* 80B7912C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B79130  FC 21 00 32 */	fmul f1, f1, f0
/* 80B79134  FC 20 08 18 */	frsp f1, f1
/* 80B79138  48 00 00 88 */	b lbl_80B791C0
lbl_80B7913C:
/* 80B7913C  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 80B79140  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B79144  40 80 00 10 */	bge lbl_80B79154
/* 80B79148  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B7914C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B79150  48 00 00 70 */	b lbl_80B791C0
lbl_80B79154:
/* 80B79154  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B79158  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B7915C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B79160  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B79164  7C 03 00 00 */	cmpw r3, r0
/* 80B79168  41 82 00 14 */	beq lbl_80B7917C
/* 80B7916C  40 80 00 40 */	bge lbl_80B791AC
/* 80B79170  2C 03 00 00 */	cmpwi r3, 0
/* 80B79174  41 82 00 20 */	beq lbl_80B79194
/* 80B79178  48 00 00 34 */	b lbl_80B791AC
lbl_80B7917C:
/* 80B7917C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B79180  41 82 00 0C */	beq lbl_80B7918C
/* 80B79184  38 00 00 01 */	li r0, 1
/* 80B79188  48 00 00 28 */	b lbl_80B791B0
lbl_80B7918C:
/* 80B7918C  38 00 00 02 */	li r0, 2
/* 80B79190  48 00 00 20 */	b lbl_80B791B0
lbl_80B79194:
/* 80B79194  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B79198  41 82 00 0C */	beq lbl_80B791A4
/* 80B7919C  38 00 00 05 */	li r0, 5
/* 80B791A0  48 00 00 10 */	b lbl_80B791B0
lbl_80B791A4:
/* 80B791A4  38 00 00 03 */	li r0, 3
/* 80B791A8  48 00 00 08 */	b lbl_80B791B0
lbl_80B791AC:
/* 80B791AC  38 00 00 04 */	li r0, 4
lbl_80B791B0:
/* 80B791B0  2C 00 00 01 */	cmpwi r0, 1
/* 80B791B4  40 82 00 0C */	bne lbl_80B791C0
/* 80B791B8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B791BC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B791C0:
/* 80B791C0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80B791C4  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 80B791C8  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80B791CC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B791D0  C0 41 00 90 */	lfs f2, 0x90(r1)
/* 80B791D4  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80B791D8  EC 42 00 28 */	fsubs f2, f2, f0
/* 80B791DC  4B 6E E4 99 */	bl cM_atan2s__Fff
/* 80B791E0  C0 41 00 88 */	lfs f2, 0x88(r1)
/* 80B791E4  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 80B791E8  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80B791EC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B791F0  C0 21 00 90 */	lfs f1, 0x90(r1)
/* 80B791F4  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80B791F8  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80B791FC  C0 A1 00 24 */	lfs f5, 0x24(r1)
/* 80B79200  EC 60 01 72 */	fmuls f3, f0, f5
/* 80B79204  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80B79208  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B7920C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B79210  7C 83 04 2E */	lfsx f4, r3, r0
/* 80B79214  EC 03 01 32 */	fmuls f0, f3, f4
/* 80B79218  EC 02 00 2A */	fadds f0, f2, f0
/* 80B7921C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80B79220  7C 63 02 14 */	add r3, r3, r0
/* 80B79224  C0 C3 00 04 */	lfs f6, 4(r3)
/* 80B79228  EC 03 01 B2 */	fmuls f0, f3, f6
/* 80B7922C  EC 01 00 2A */	fadds f0, f1, f0
/* 80B79230  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80B79234  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80B79238  EC 60 01 72 */	fmuls f3, f0, f5
/* 80B7923C  EC 03 01 32 */	fmuls f0, f3, f4
/* 80B79240  EC 02 00 2A */	fadds f0, f2, f0
/* 80B79244  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B79248  EC 03 01 B2 */	fmuls f0, f3, f6
/* 80B7924C  EC 01 00 2A */	fadds f0, f1, f0
/* 80B79250  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80B79254  48 00 01 B4 */	b lbl_80B79408
lbl_80B79258:
/* 80B79258  7C 00 D8 40 */	cmplw r0, r27
/* 80B7925C  40 80 01 AC */	bge lbl_80B79408
/* 80B79260  38 61 00 4C */	addi r3, r1, 0x4c
/* 80B79264  38 81 00 7C */	addi r4, r1, 0x7c
/* 80B79268  38 A1 00 88 */	addi r5, r1, 0x88
/* 80B7926C  4B 6E D8 C9 */	bl __mi__4cXyzCFRC3Vec
/* 80B79270  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80B79274  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B79278  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B7927C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B79280  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80B79284  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B79288  38 61 00 28 */	addi r3, r1, 0x28
/* 80B7928C  4B 7C DE AD */	bl PSVECSquareMag
/* 80B79290  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B79294  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B79298  40 81 00 58 */	ble lbl_80B792F0
/* 80B7929C  FC 00 08 34 */	frsqrte f0, f1
/* 80B792A0  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 80B792A4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B792A8  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 80B792AC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B792B0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B792B4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B792B8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B792BC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B792C0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B792C4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B792C8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B792CC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B792D0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B792D4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B792D8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B792DC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B792E0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B792E4  FC 21 00 32 */	fmul f1, f1, f0
/* 80B792E8  FC 20 08 18 */	frsp f1, f1
/* 80B792EC  48 00 00 88 */	b lbl_80B79374
lbl_80B792F0:
/* 80B792F0  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 80B792F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B792F8  40 80 00 10 */	bge lbl_80B79308
/* 80B792FC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B79300  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B79304  48 00 00 70 */	b lbl_80B79374
lbl_80B79308:
/* 80B79308  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B7930C  80 81 00 08 */	lwz r4, 8(r1)
/* 80B79310  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B79314  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B79318  7C 03 00 00 */	cmpw r3, r0
/* 80B7931C  41 82 00 14 */	beq lbl_80B79330
/* 80B79320  40 80 00 40 */	bge lbl_80B79360
/* 80B79324  2C 03 00 00 */	cmpwi r3, 0
/* 80B79328  41 82 00 20 */	beq lbl_80B79348
/* 80B7932C  48 00 00 34 */	b lbl_80B79360
lbl_80B79330:
/* 80B79330  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B79334  41 82 00 0C */	beq lbl_80B79340
/* 80B79338  38 00 00 01 */	li r0, 1
/* 80B7933C  48 00 00 28 */	b lbl_80B79364
lbl_80B79340:
/* 80B79340  38 00 00 02 */	li r0, 2
/* 80B79344  48 00 00 20 */	b lbl_80B79364
lbl_80B79348:
/* 80B79348  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B7934C  41 82 00 0C */	beq lbl_80B79358
/* 80B79350  38 00 00 05 */	li r0, 5
/* 80B79354  48 00 00 10 */	b lbl_80B79364
lbl_80B79358:
/* 80B79358  38 00 00 03 */	li r0, 3
/* 80B7935C  48 00 00 08 */	b lbl_80B79364
lbl_80B79360:
/* 80B79360  38 00 00 04 */	li r0, 4
lbl_80B79364:
/* 80B79364  2C 00 00 01 */	cmpwi r0, 1
/* 80B79368  40 82 00 0C */	bne lbl_80B79374
/* 80B7936C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B79370  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B79374:
/* 80B79374  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80B79378  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 80B7937C  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80B79380  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B79384  C0 41 00 84 */	lfs f2, 0x84(r1)
/* 80B79388  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80B7938C  EC 42 00 28 */	fsubs f2, f2, f0
/* 80B79390  4B 6E E2 E5 */	bl cM_atan2s__Fff
/* 80B79394  C0 41 00 88 */	lfs f2, 0x88(r1)
/* 80B79398  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 80B7939C  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80B793A0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B793A4  C0 21 00 90 */	lfs f1, 0x90(r1)
/* 80B793A8  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80B793AC  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80B793B0  C0 A1 00 24 */	lfs f5, 0x24(r1)
/* 80B793B4  EC 60 01 72 */	fmuls f3, f0, f5
/* 80B793B8  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80B793BC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B793C0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B793C4  7C 83 04 2E */	lfsx f4, r3, r0
/* 80B793C8  EC 03 01 32 */	fmuls f0, f3, f4
/* 80B793CC  EC 02 00 2A */	fadds f0, f2, f0
/* 80B793D0  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80B793D4  7C 63 02 14 */	add r3, r3, r0
/* 80B793D8  C0 C3 00 04 */	lfs f6, 4(r3)
/* 80B793DC  EC 03 01 B2 */	fmuls f0, f3, f6
/* 80B793E0  EC 01 00 2A */	fadds f0, f1, f0
/* 80B793E4  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80B793E8  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80B793EC  EC 60 01 72 */	fmuls f3, f0, f5
/* 80B793F0  EC 03 01 32 */	fmuls f0, f3, f4
/* 80B793F4  EC 02 00 2A */	fadds f0, f2, f0
/* 80B793F8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B793FC  EC 03 01 B2 */	fmuls f0, f3, f6
/* 80B79400  EC 01 00 2A */	fadds f0, f1, f0
/* 80B79404  D0 01 00 84 */	stfs f0, 0x84(r1)
lbl_80B79408:
/* 80B79408  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80B7940C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80B79410  C0 61 00 94 */	lfs f3, 0x94(r1)
/* 80B79414  C0 81 00 9C */	lfs f4, 0x9c(r1)
/* 80B79418  C0 A1 00 7C */	lfs f5, 0x7c(r1)
/* 80B7941C  C0 C1 00 84 */	lfs f6, 0x84(r1)
/* 80B79420  38 61 00 20 */	addi r3, r1, 0x20
/* 80B79424  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B79428  38 A1 00 24 */	addi r5, r1, 0x24
/* 80B7942C  4B 5D B9 7D */	bl daNpcF_pntVsLineSegmentLengthSquare2D__FffffffPfPfPf
/* 80B79430  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80B79434  FC 00 02 10 */	fabs f0, f0
/* 80B79438  FC 20 00 18 */	frsp f1, f0
/* 80B7943C  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80B79440  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80B79444  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B79448  40 80 00 0C */	bge lbl_80B79454
/* 80B7944C  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 80B79450  48 00 01 04 */	b lbl_80B79554
lbl_80B79454:
/* 80B79454  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 80B79458  C0 41 00 90 */	lfs f2, 0x90(r1)
/* 80B7945C  C0 61 00 94 */	lfs f3, 0x94(r1)
/* 80B79460  C0 81 00 9C */	lfs f4, 0x9c(r1)
/* 80B79464  C0 A1 00 7C */	lfs f5, 0x7c(r1)
/* 80B79468  C0 C1 00 84 */	lfs f6, 0x84(r1)
/* 80B7946C  38 61 00 18 */	addi r3, r1, 0x18
/* 80B79470  38 81 00 14 */	addi r4, r1, 0x14
/* 80B79474  38 A1 00 24 */	addi r5, r1, 0x24
/* 80B79478  4B 5D B9 31 */	bl daNpcF_pntVsLineSegmentLengthSquare2D__FffffffPfPfPf
/* 80B7947C  88 1C 00 02 */	lbz r0, 2(r28)
/* 80B79480  28 00 00 00 */	cmplwi r0, 0
/* 80B79484  41 82 00 28 */	beq lbl_80B794AC
/* 80B79488  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 80B7948C  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80B79490  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B79494  C0 41 00 9C */	lfs f2, 0x9c(r1)
/* 80B79498  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80B7949C  EC 42 00 28 */	fsubs f2, f2, f0
/* 80B794A0  4B 6E E1 D5 */	bl cM_atan2s__Fff
/* 80B794A4  7C 7C 1B 78 */	mr r28, r3
/* 80B794A8  48 00 00 24 */	b lbl_80B794CC
lbl_80B794AC:
/* 80B794AC  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 80B794B0  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80B794B4  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B794B8  C0 41 00 84 */	lfs f2, 0x84(r1)
/* 80B794BC  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80B794C0  EC 42 00 28 */	fsubs f2, f2, f0
/* 80B794C4  4B 6E E1 B1 */	bl cM_atan2s__Fff
/* 80B794C8  7C 7C 1B 78 */	mr r28, r3
lbl_80B794CC:
/* 80B794CC  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80B794D0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80B794D4  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B794D8  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80B794DC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B794E0  EC 42 00 28 */	fsubs f2, f2, f0
/* 80B794E4  4B 6E E1 91 */	bl cM_atan2s__Fff
/* 80B794E8  7C 03 E0 50 */	subf r0, r3, r28
/* 80B794EC  7C 03 07 34 */	extsh r3, r0
/* 80B794F0  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80B794F4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80B794F8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B794FC  EC 40 00 32 */	fmuls f2, f0, f0
/* 80B79500  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80B79504  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B79508  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B7950C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80B79510  EC 22 00 2A */	fadds f1, f2, f0
/* 80B79514  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B79518  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B7951C  40 81 00 0C */	ble lbl_80B79528
/* 80B79520  FC 00 08 34 */	frsqrte f0, f1
/* 80B79524  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80B79528:
/* 80B79528  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80B7952C  4B 7E BB A5 */	bl abs
/* 80B79530  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80B79534  28 00 40 00 */	cmplwi r0, 0x4000
/* 80B79538  40 81 00 0C */	ble lbl_80B79544
/* 80B7953C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80B79540  48 00 00 14 */	b lbl_80B79554
lbl_80B79544:
/* 80B79544  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80B79548  FC 20 00 50 */	fneg f1, f0
/* 80B7954C  48 00 00 08 */	b lbl_80B79554
lbl_80B79550:
/* 80B79550  C0 3F 00 DC */	lfs f1, 0xdc(r31)
lbl_80B79554:
/* 80B79554  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80B79558  4B 7E 8C BD */	bl _restgpr_24
/* 80B7955C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80B79560  7C 08 03 A6 */	mtlr r0
/* 80B79564  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80B79568  4E 80 00 20 */	blr 
