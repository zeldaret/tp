lbl_807E905C:
/* 807E905C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 807E9060  7C 08 02 A6 */	mflr r0
/* 807E9064  90 01 00 94 */	stw r0, 0x94(r1)
/* 807E9068  39 61 00 90 */	addi r11, r1, 0x90
/* 807E906C  4B B7 91 70 */	b _savegpr_29
/* 807E9070  7C 7D 1B 78 */	mr r29, r3
/* 807E9074  3C 60 80 7F */	lis r3, lit_3905@ha
/* 807E9078  3B E3 F7 70 */	addi r31, r3, lit_3905@l
/* 807E907C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807E9080  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 807E9084  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 807E9088  7C 00 07 74 */	extsb r0, r0
/* 807E908C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 807E9090  7C 64 02 14 */	add r3, r4, r0
/* 807E9094  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 807E9098  80 64 5D AC */	lwz r3, 0x5dac(r4)
/* 807E909C  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 807E90A0  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 807E90A4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 807E90A8  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807E90AC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 807E90B0  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807E90B4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807E90B8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807E90BC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 807E90C0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807E90C4  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 807E90C8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807E90CC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807E90D0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 807E90D4  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 807E90D8  38 61 00 14 */	addi r3, r1, 0x14
/* 807E90DC  38 81 00 20 */	addi r4, r1, 0x20
/* 807E90E0  4B B5 E2 BC */	b PSVECSquareDistance
/* 807E90E4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807E90E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E90EC  40 81 00 58 */	ble lbl_807E9144
/* 807E90F0  FC 00 08 34 */	frsqrte f0, f1
/* 807E90F4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807E90F8  FC 44 00 32 */	fmul f2, f4, f0
/* 807E90FC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807E9100  FC 00 00 32 */	fmul f0, f0, f0
/* 807E9104  FC 01 00 32 */	fmul f0, f1, f0
/* 807E9108  FC 03 00 28 */	fsub f0, f3, f0
/* 807E910C  FC 02 00 32 */	fmul f0, f2, f0
/* 807E9110  FC 44 00 32 */	fmul f2, f4, f0
/* 807E9114  FC 00 00 32 */	fmul f0, f0, f0
/* 807E9118  FC 01 00 32 */	fmul f0, f1, f0
/* 807E911C  FC 03 00 28 */	fsub f0, f3, f0
/* 807E9120  FC 02 00 32 */	fmul f0, f2, f0
/* 807E9124  FC 44 00 32 */	fmul f2, f4, f0
/* 807E9128  FC 00 00 32 */	fmul f0, f0, f0
/* 807E912C  FC 01 00 32 */	fmul f0, f1, f0
/* 807E9130  FC 03 00 28 */	fsub f0, f3, f0
/* 807E9134  FC 02 00 32 */	fmul f0, f2, f0
/* 807E9138  FC 21 00 32 */	fmul f1, f1, f0
/* 807E913C  FC 20 08 18 */	frsp f1, f1
/* 807E9140  48 00 00 88 */	b lbl_807E91C8
lbl_807E9144:
/* 807E9144  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807E9148  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E914C  40 80 00 10 */	bge lbl_807E915C
/* 807E9150  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807E9154  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807E9158  48 00 00 70 */	b lbl_807E91C8
lbl_807E915C:
/* 807E915C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807E9160  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807E9164  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807E9168  3C 00 7F 80 */	lis r0, 0x7f80
/* 807E916C  7C 03 00 00 */	cmpw r3, r0
/* 807E9170  41 82 00 14 */	beq lbl_807E9184
/* 807E9174  40 80 00 40 */	bge lbl_807E91B4
/* 807E9178  2C 03 00 00 */	cmpwi r3, 0
/* 807E917C  41 82 00 20 */	beq lbl_807E919C
/* 807E9180  48 00 00 34 */	b lbl_807E91B4
lbl_807E9184:
/* 807E9184  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807E9188  41 82 00 0C */	beq lbl_807E9194
/* 807E918C  38 00 00 01 */	li r0, 1
/* 807E9190  48 00 00 28 */	b lbl_807E91B8
lbl_807E9194:
/* 807E9194  38 00 00 02 */	li r0, 2
/* 807E9198  48 00 00 20 */	b lbl_807E91B8
lbl_807E919C:
/* 807E919C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807E91A0  41 82 00 0C */	beq lbl_807E91AC
/* 807E91A4  38 00 00 05 */	li r0, 5
/* 807E91A8  48 00 00 10 */	b lbl_807E91B8
lbl_807E91AC:
/* 807E91AC  38 00 00 03 */	li r0, 3
/* 807E91B0  48 00 00 08 */	b lbl_807E91B8
lbl_807E91B4:
/* 807E91B4  38 00 00 04 */	li r0, 4
lbl_807E91B8:
/* 807E91B8  2C 00 00 01 */	cmpwi r0, 1
/* 807E91BC  40 82 00 0C */	bne lbl_807E91C8
/* 807E91C0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807E91C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807E91C8:
/* 807E91C8  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 807E91CC  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 807E91D0  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 807E91D4  38 00 00 0A */	li r0, 0xa
/* 807E91D8  B0 1D 07 24 */	sth r0, 0x724(r29)
/* 807E91DC  80 1D 06 BC */	lwz r0, 0x6bc(r29)
/* 807E91E0  2C 00 00 03 */	cmpwi r0, 3
/* 807E91E4  41 82 04 34 */	beq lbl_807E9618
/* 807E91E8  40 80 00 1C */	bge lbl_807E9204
/* 807E91EC  2C 00 00 01 */	cmpwi r0, 1
/* 807E91F0  41 82 02 88 */	beq lbl_807E9478
/* 807E91F4  40 80 03 F0 */	bge lbl_807E95E4
/* 807E91F8  2C 00 00 00 */	cmpwi r0, 0
/* 807E91FC  40 80 00 14 */	bge lbl_807E9210
/* 807E9200  48 00 05 14 */	b lbl_807E9714
lbl_807E9204:
/* 807E9204  2C 00 00 0A */	cmpwi r0, 0xa
/* 807E9208  41 82 04 D8 */	beq lbl_807E96E0
/* 807E920C  48 00 05 08 */	b lbl_807E9714
lbl_807E9210:
/* 807E9210  88 1D 06 B4 */	lbz r0, 0x6b4(r29)
/* 807E9214  28 00 00 00 */	cmplwi r0, 0
/* 807E9218  40 82 00 24 */	bne lbl_807E923C
/* 807E921C  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 807E9220  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 807E9224  EC 02 00 28 */	fsubs f0, f2, f0
/* 807E9228  FC 00 02 10 */	fabs f0, f0
/* 807E922C  FC 40 00 18 */	frsp f2, f0
/* 807E9230  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 807E9234  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807E9238  41 81 04 DC */	bgt lbl_807E9714
lbl_807E923C:
/* 807E923C  C0 1D 06 A8 */	lfs f0, 0x6a8(r29)
/* 807E9240  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E9244  40 80 04 D0 */	bge lbl_807E9714
/* 807E9248  88 1D 06 B4 */	lbz r0, 0x6b4(r29)
/* 807E924C  28 00 00 00 */	cmplwi r0, 0
/* 807E9250  40 82 00 1C */	bne lbl_807E926C
/* 807E9254  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807E9258  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807E925C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807E9260  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 807E9264  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 807E9268  48 00 00 18 */	b lbl_807E9280
lbl_807E926C:
/* 807E926C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807E9270  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807E9274  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807E9278  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 807E927C  D0 01 00 58 */	stfs f0, 0x58(r1)
lbl_807E9280:
/* 807E9280  38 61 00 5C */	addi r3, r1, 0x5c
/* 807E9284  38 81 00 68 */	addi r4, r1, 0x68
/* 807E9288  A8 BE 02 32 */	lha r5, 0x232(r30)
/* 807E928C  38 C1 00 50 */	addi r6, r1, 0x50
/* 807E9290  4B A8 7B 30 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807E9294  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807E9298  38 81 00 5C */	addi r4, r1, 0x5c
/* 807E929C  4B B5 E1 00 */	b PSVECSquareDistance
/* 807E92A0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807E92A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E92A8  40 81 00 58 */	ble lbl_807E9300
/* 807E92AC  FC 00 08 34 */	frsqrte f0, f1
/* 807E92B0  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807E92B4  FC 44 00 32 */	fmul f2, f4, f0
/* 807E92B8  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807E92BC  FC 00 00 32 */	fmul f0, f0, f0
/* 807E92C0  FC 01 00 32 */	fmul f0, f1, f0
/* 807E92C4  FC 03 00 28 */	fsub f0, f3, f0
/* 807E92C8  FC 02 00 32 */	fmul f0, f2, f0
/* 807E92CC  FC 44 00 32 */	fmul f2, f4, f0
/* 807E92D0  FC 00 00 32 */	fmul f0, f0, f0
/* 807E92D4  FC 01 00 32 */	fmul f0, f1, f0
/* 807E92D8  FC 03 00 28 */	fsub f0, f3, f0
/* 807E92DC  FC 02 00 32 */	fmul f0, f2, f0
/* 807E92E0  FC 44 00 32 */	fmul f2, f4, f0
/* 807E92E4  FC 00 00 32 */	fmul f0, f0, f0
/* 807E92E8  FC 01 00 32 */	fmul f0, f1, f0
/* 807E92EC  FC 03 00 28 */	fsub f0, f3, f0
/* 807E92F0  FC 02 00 32 */	fmul f0, f2, f0
/* 807E92F4  FC 21 00 32 */	fmul f1, f1, f0
/* 807E92F8  FC 20 08 18 */	frsp f1, f1
/* 807E92FC  48 00 00 88 */	b lbl_807E9384
lbl_807E9300:
/* 807E9300  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807E9304  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E9308  40 80 00 10 */	bge lbl_807E9318
/* 807E930C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807E9310  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807E9314  48 00 00 70 */	b lbl_807E9384
lbl_807E9318:
/* 807E9318  D0 21 00 08 */	stfs f1, 8(r1)
/* 807E931C  80 81 00 08 */	lwz r4, 8(r1)
/* 807E9320  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807E9324  3C 00 7F 80 */	lis r0, 0x7f80
/* 807E9328  7C 03 00 00 */	cmpw r3, r0
/* 807E932C  41 82 00 14 */	beq lbl_807E9340
/* 807E9330  40 80 00 40 */	bge lbl_807E9370
/* 807E9334  2C 03 00 00 */	cmpwi r3, 0
/* 807E9338  41 82 00 20 */	beq lbl_807E9358
/* 807E933C  48 00 00 34 */	b lbl_807E9370
lbl_807E9340:
/* 807E9340  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807E9344  41 82 00 0C */	beq lbl_807E9350
/* 807E9348  38 00 00 01 */	li r0, 1
/* 807E934C  48 00 00 28 */	b lbl_807E9374
lbl_807E9350:
/* 807E9350  38 00 00 02 */	li r0, 2
/* 807E9354  48 00 00 20 */	b lbl_807E9374
lbl_807E9358:
/* 807E9358  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807E935C  41 82 00 0C */	beq lbl_807E9368
/* 807E9360  38 00 00 05 */	li r0, 5
/* 807E9364  48 00 00 10 */	b lbl_807E9374
lbl_807E9368:
/* 807E9368  38 00 00 03 */	li r0, 3
/* 807E936C  48 00 00 08 */	b lbl_807E9374
lbl_807E9370:
/* 807E9370  38 00 00 04 */	li r0, 4
lbl_807E9374:
/* 807E9374  2C 00 00 01 */	cmpwi r0, 1
/* 807E9378  40 82 00 0C */	bne lbl_807E9384
/* 807E937C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807E9380  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807E9384:
/* 807E9384  C0 1D 06 A8 */	lfs f0, 0x6a8(r29)
/* 807E9388  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E938C  40 80 03 88 */	bge lbl_807E9714
/* 807E9390  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 807E9394  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807E9398  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 807E939C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807E93A0  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 807E93A4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807E93A8  7F A3 EB 78 */	mr r3, r29
/* 807E93AC  38 81 00 44 */	addi r4, r1, 0x44
/* 807E93B0  4B FF EF 5D */	bl checkCreateBg__8daE_WW_cF4cXyz
/* 807E93B4  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 807E93B8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 807E93BC  41 82 00 A8 */	beq lbl_807E9464
/* 807E93C0  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 807E93C4  3B C0 00 00 */	li r30, 0
/* 807E93C8  38 00 00 00 */	li r0, 0
/* 807E93CC  3C 60 80 7F */	lis r3, data_807EFBF4@ha
/* 807E93D0  98 03 FB F4 */	stb r0, data_807EFBF4@l(r3)
/* 807E93D4  3C 60 80 7F */	lis r3, s_child_ww__FPvPv@ha
/* 807E93D8  38 63 8A 80 */	addi r3, r3, s_child_ww__FPvPv@l
/* 807E93DC  7F A4 EB 78 */	mr r4, r29
/* 807E93E0  4B 83 7F 58 */	b fpcEx_Search__FPFPvPv_PvPv
/* 807E93E4  3C 60 80 7F */	lis r3, data_807EFBF4@ha
/* 807E93E8  88 03 FB F4 */	lbz r0, data_807EFBF4@l(r3)
/* 807E93EC  88 7D 06 B6 */	lbz r3, 0x6b6(r29)
/* 807E93F0  7C 00 18 40 */	cmplw r0, r3
/* 807E93F4  40 80 00 28 */	bge lbl_807E941C
/* 807E93F8  7F C0 18 50 */	subf r30, r0, r3
/* 807E93FC  88 7D 06 B5 */	lbz r3, 0x6b5(r29)
/* 807E9400  28 03 00 FF */	cmplwi r3, 0xff
/* 807E9404  41 82 00 18 */	beq lbl_807E941C
/* 807E9408  80 1D 06 C8 */	lwz r0, 0x6c8(r29)
/* 807E940C  7C 00 18 50 */	subf r0, r0, r3
/* 807E9410  7C 1E 00 00 */	cmpw r30, r0
/* 807E9414  40 81 00 08 */	ble lbl_807E941C
/* 807E9418  7C 1E 03 78 */	mr r30, r0
lbl_807E941C:
/* 807E941C  2C 1E 00 00 */	cmpwi r30, 0
/* 807E9420  40 81 00 44 */	ble lbl_807E9464
/* 807E9424  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 807E9428  D0 1D 06 5C */	stfs f0, 0x65c(r29)
/* 807E942C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 807E9430  D0 1D 06 60 */	stfs f0, 0x660(r29)
/* 807E9434  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 807E9438  D0 1D 06 64 */	stfs f0, 0x664(r29)
/* 807E943C  38 00 00 01 */	li r0, 1
/* 807E9440  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 807E9444  9B DD 06 B7 */	stb r30, 0x6b7(r29)
/* 807E9448  38 00 00 00 */	li r0, 0
/* 807E944C  90 1D 06 C0 */	stw r0, 0x6c0(r29)
/* 807E9450  7F A3 EB 78 */	mr r3, r29
/* 807E9454  4B FF EA 21 */	bl setRandamNumber__8daE_WW_cFv
/* 807E9458  38 00 00 00 */	li r0, 0
/* 807E945C  90 1D 07 28 */	stw r0, 0x728(r29)
/* 807E9460  48 00 02 B4 */	b lbl_807E9714
lbl_807E9464:
/* 807E9464  38 00 00 0A */	li r0, 0xa
/* 807E9468  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 807E946C  38 00 00 1E */	li r0, 0x1e
/* 807E9470  90 1D 07 28 */	stw r0, 0x728(r29)
/* 807E9474  48 00 02 A0 */	b lbl_807E9714
lbl_807E9478:
/* 807E9478  80 1D 07 28 */	lwz r0, 0x728(r29)
/* 807E947C  2C 00 00 00 */	cmpwi r0, 0
/* 807E9480  40 82 02 94 */	bne lbl_807E9714
/* 807E9484  88 1D 06 B4 */	lbz r0, 0x6b4(r29)
/* 807E9488  28 00 00 00 */	cmplwi r0, 0
/* 807E948C  40 82 00 1C */	bne lbl_807E94A8
/* 807E9490  80 1D 06 C0 */	lwz r0, 0x6c0(r29)
/* 807E9494  54 00 10 3A */	slwi r0, r0, 2
/* 807E9498  7C 7D 02 14 */	add r3, r29, r0
/* 807E949C  80 63 06 FC */	lwz r3, 0x6fc(r3)
/* 807E94A0  38 03 00 05 */	addi r0, r3, 5
/* 807E94A4  48 00 00 14 */	b lbl_807E94B8
lbl_807E94A8:
/* 807E94A8  80 1D 06 C0 */	lwz r0, 0x6c0(r29)
/* 807E94AC  54 00 10 3A */	slwi r0, r0, 2
/* 807E94B0  7C 7D 02 14 */	add r3, r29, r0
/* 807E94B4  80 03 06 FC */	lwz r0, 0x6fc(r3)
lbl_807E94B8:
/* 807E94B8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 807E94BC  3C 60 80 7F */	lis r3, create_pos@ha
/* 807E94C0  38 63 FC AC */	addi r3, r3, create_pos@l
/* 807E94C4  7C 03 04 2E */	lfsx f0, r3, r0
/* 807E94C8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807E94CC  7C 63 02 14 */	add r3, r3, r0
/* 807E94D0  C0 03 00 04 */	lfs f0, 4(r3)
/* 807E94D4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807E94D8  C0 03 00 08 */	lfs f0, 8(r3)
/* 807E94DC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 807E94E0  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 807E94E4  4B A7 E4 A8 */	b cM_rndFX__Ff
/* 807E94E8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 807E94EC  EC 00 08 2A */	fadds f0, f0, f1
/* 807E94F0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807E94F4  38 61 00 5C */	addi r3, r1, 0x5c
/* 807E94F8  38 9D 06 5C */	addi r4, r29, 0x65c
/* 807E94FC  A8 BE 02 32 */	lha r5, 0x232(r30)
/* 807E9500  38 C1 00 50 */	addi r6, r1, 0x50
/* 807E9504  4B A8 78 BC */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807E9508  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 807E950C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807E9510  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 807E9514  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807E9518  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 807E951C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807E9520  7F A3 EB 78 */	mr r3, r29
/* 807E9524  38 81 00 38 */	addi r4, r1, 0x38
/* 807E9528  4B FF ED E5 */	bl checkCreateBg__8daE_WW_cF4cXyz
/* 807E952C  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 807E9530  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 807E9534  41 82 00 0C */	beq lbl_807E9540
/* 807E9538  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 807E953C  48 00 00 1C */	b lbl_807E9558
lbl_807E9540:
/* 807E9540  C0 1D 06 5C */	lfs f0, 0x65c(r29)
/* 807E9544  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807E9548  C0 1D 06 60 */	lfs f0, 0x660(r29)
/* 807E954C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807E9550  C0 1D 06 64 */	lfs f0, 0x664(r29)
/* 807E9554  D0 01 00 64 */	stfs f0, 0x64(r1)
lbl_807E9558:
/* 807E9558  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 807E955C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807E9560  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 807E9564  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807E9568  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 807E956C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807E9570  7F A3 EB 78 */	mr r3, r29
/* 807E9574  38 81 00 2C */	addi r4, r1, 0x2c
/* 807E9578  38 A0 00 01 */	li r5, 1
/* 807E957C  4B FF F9 71 */	bl createWolf__8daE_WW_cF4cXyzUc
/* 807E9580  80 7D 06 C8 */	lwz r3, 0x6c8(r29)
/* 807E9584  38 03 00 01 */	addi r0, r3, 1
/* 807E9588  90 1D 06 C8 */	stw r0, 0x6c8(r29)
/* 807E958C  80 7D 06 C0 */	lwz r3, 0x6c0(r29)
/* 807E9590  38 03 00 01 */	addi r0, r3, 1
/* 807E9594  90 1D 06 C0 */	stw r0, 0x6c0(r29)
/* 807E9598  80 7D 06 C0 */	lwz r3, 0x6c0(r29)
/* 807E959C  88 1D 06 B7 */	lbz r0, 0x6b7(r29)
/* 807E95A0  7C 03 00 00 */	cmpw r3, r0
/* 807E95A4  41 80 00 2C */	blt lbl_807E95D0
/* 807E95A8  38 00 00 03 */	li r0, 3
/* 807E95AC  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 807E95B0  38 00 00 00 */	li r0, 0
/* 807E95B4  90 1D 06 C0 */	stw r0, 0x6c0(r29)
/* 807E95B8  90 1D 06 C4 */	stw r0, 0x6c4(r29)
/* 807E95BC  7F A3 EB 78 */	mr r3, r29
/* 807E95C0  4B FF E8 B5 */	bl setRandamNumber__8daE_WW_cFv
/* 807E95C4  38 00 00 14 */	li r0, 0x14
/* 807E95C8  90 1D 07 28 */	stw r0, 0x728(r29)
/* 807E95CC  48 00 01 48 */	b lbl_807E9714
lbl_807E95D0:
/* 807E95D0  54 60 10 3A */	slwi r0, r3, 2
/* 807E95D4  7C 7D 02 14 */	add r3, r29, r0
/* 807E95D8  80 03 06 D4 */	lwz r0, 0x6d4(r3)
/* 807E95DC  90 1D 07 28 */	stw r0, 0x728(r29)
/* 807E95E0  48 00 01 34 */	b lbl_807E9714
lbl_807E95E4:
/* 807E95E4  80 1D 07 28 */	lwz r0, 0x728(r29)
/* 807E95E8  2C 00 00 00 */	cmpwi r0, 0
/* 807E95EC  40 82 01 28 */	bne lbl_807E9714
/* 807E95F0  38 00 00 03 */	li r0, 3
/* 807E95F4  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 807E95F8  38 00 00 00 */	li r0, 0
/* 807E95FC  90 1D 06 C0 */	stw r0, 0x6c0(r29)
/* 807E9600  90 1D 06 C4 */	stw r0, 0x6c4(r29)
/* 807E9604  7F A3 EB 78 */	mr r3, r29
/* 807E9608  4B FF E8 6D */	bl setRandamNumber__8daE_WW_cFv
/* 807E960C  38 00 00 00 */	li r0, 0
/* 807E9610  90 1D 07 28 */	stw r0, 0x728(r29)
/* 807E9614  48 00 01 00 */	b lbl_807E9714
lbl_807E9618:
/* 807E9618  80 1D 07 28 */	lwz r0, 0x728(r29)
/* 807E961C  2C 00 00 00 */	cmpwi r0, 0
/* 807E9620  40 82 00 F4 */	bne lbl_807E9714
/* 807E9624  80 1D 06 C4 */	lwz r0, 0x6c4(r29)
/* 807E9628  54 00 10 3A */	slwi r0, r0, 2
/* 807E962C  7C 7D 02 14 */	add r3, r29, r0
/* 807E9630  80 63 06 FC */	lwz r3, 0x6fc(r3)
/* 807E9634  88 1D 06 B7 */	lbz r0, 0x6b7(r29)
/* 807E9638  7C 03 00 00 */	cmpw r3, r0
/* 807E963C  40 80 00 50 */	bge lbl_807E968C
/* 807E9640  54 60 10 3A */	slwi r0, r3, 2
/* 807E9644  7C 7D 02 14 */	add r3, r29, r0
/* 807E9648  80 63 06 80 */	lwz r3, 0x680(r3)
/* 807E964C  38 81 00 10 */	addi r4, r1, 0x10
/* 807E9650  4B 83 03 6C */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 807E9654  80 61 00 10 */	lwz r3, 0x10(r1)
/* 807E9658  28 03 00 00 */	cmplwi r3, 0
/* 807E965C  41 82 00 0C */	beq lbl_807E9668
/* 807E9660  38 00 00 0A */	li r0, 0xa
/* 807E9664  90 03 06 BC */	stw r0, 0x6bc(r3)
lbl_807E9668:
/* 807E9668  80 7D 06 C0 */	lwz r3, 0x6c0(r29)
/* 807E966C  38 03 00 01 */	addi r0, r3, 1
/* 807E9670  90 1D 06 C0 */	stw r0, 0x6c0(r29)
/* 807E9674  80 7D 06 C0 */	lwz r3, 0x6c0(r29)
/* 807E9678  88 1D 06 B7 */	lbz r0, 0x6b7(r29)
/* 807E967C  7C 03 00 00 */	cmpw r3, r0
/* 807E9680  41 80 00 0C */	blt lbl_807E968C
/* 807E9684  38 00 00 0A */	li r0, 0xa
/* 807E9688  90 1D 06 C4 */	stw r0, 0x6c4(r29)
lbl_807E968C:
/* 807E968C  80 7D 06 C4 */	lwz r3, 0x6c4(r29)
/* 807E9690  38 03 00 01 */	addi r0, r3, 1
/* 807E9694  90 1D 06 C4 */	stw r0, 0x6c4(r29)
/* 807E9698  80 1D 06 C4 */	lwz r0, 0x6c4(r29)
/* 807E969C  2C 00 00 0A */	cmpwi r0, 0xa
/* 807E96A0  41 80 00 18 */	blt lbl_807E96B8
/* 807E96A4  38 00 00 0A */	li r0, 0xa
/* 807E96A8  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 807E96AC  38 00 00 32 */	li r0, 0x32
/* 807E96B0  90 1D 07 28 */	stw r0, 0x728(r29)
/* 807E96B4  48 00 00 60 */	b lbl_807E9714
lbl_807E96B8:
/* 807E96B8  54 00 10 3A */	slwi r0, r0, 2
/* 807E96BC  7C 9D 02 14 */	add r4, r29, r0
/* 807E96C0  80 64 06 FC */	lwz r3, 0x6fc(r4)
/* 807E96C4  88 1D 06 B7 */	lbz r0, 0x6b7(r29)
/* 807E96C8  7C 03 00 00 */	cmpw r3, r0
/* 807E96CC  40 80 00 48 */	bge lbl_807E9714
/* 807E96D0  80 04 06 D4 */	lwz r0, 0x6d4(r4)
/* 807E96D4  54 00 08 3C */	slwi r0, r0, 1
/* 807E96D8  90 1D 07 28 */	stw r0, 0x728(r29)
/* 807E96DC  48 00 00 38 */	b lbl_807E9714
lbl_807E96E0:
/* 807E96E0  80 1D 07 28 */	lwz r0, 0x728(r29)
/* 807E96E4  2C 00 00 00 */	cmpwi r0, 0
/* 807E96E8  40 82 00 0C */	bne lbl_807E96F4
/* 807E96EC  38 00 00 00 */	li r0, 0
/* 807E96F0  90 1D 06 BC */	stw r0, 0x6bc(r29)
lbl_807E96F4:
/* 807E96F4  88 7D 06 B5 */	lbz r3, 0x6b5(r29)
/* 807E96F8  28 03 00 FF */	cmplwi r3, 0xff
/* 807E96FC  41 82 00 18 */	beq lbl_807E9714
/* 807E9700  80 1D 06 C8 */	lwz r0, 0x6c8(r29)
/* 807E9704  7C 00 18 00 */	cmpw r0, r3
/* 807E9708  41 80 00 0C */	blt lbl_807E9714
/* 807E970C  7F A3 EB 78 */	mr r3, r29
/* 807E9710  4B 83 05 6C */	b fopAcM_delete__FP10fopAc_ac_c
lbl_807E9714:
/* 807E9714  39 61 00 90 */	addi r11, r1, 0x90
/* 807E9718  4B B7 8B 10 */	b _restgpr_29
/* 807E971C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 807E9720  7C 08 03 A6 */	mtlr r0
/* 807E9724  38 21 00 90 */	addi r1, r1, 0x90
/* 807E9728  4E 80 00 20 */	blr 
