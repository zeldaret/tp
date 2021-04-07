lbl_805B0EE0:
/* 805B0EE0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805B0EE4  7C 08 02 A6 */	mflr r0
/* 805B0EE8  90 01 00 74 */	stw r0, 0x74(r1)
/* 805B0EEC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805B0EF0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805B0EF4  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 805B0EF8  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 805B0EFC  39 61 00 50 */	addi r11, r1, 0x50
/* 805B0F00  4B DB 12 D5 */	bl _savegpr_27
/* 805B0F04  7C 7F 1B 78 */	mr r31, r3
/* 805B0F08  3C 60 80 5B */	lis r3, lit_3764@ha /* 0x805B3140@ha */
/* 805B0F0C  3B A3 31 40 */	addi r29, r3, lit_3764@l /* 0x805B3140@l */
/* 805B0F10  38 61 00 18 */	addi r3, r1, 0x18
/* 805B0F14  38 9F 06 BC */	addi r4, r31, 0x6bc
/* 805B0F18  38 BF 06 A4 */	addi r5, r31, 0x6a4
/* 805B0F1C  4B CB 5C 19 */	bl __mi__4cXyzCFRC3Vec
/* 805B0F20  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805B0F24  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805B0F28  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805B0F2C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805B0F30  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805B0F34  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805B0F38  3B 9F 06 BC */	addi r28, r31, 0x6bc
/* 805B0F3C  3B 60 00 00 */	li r27, 0
/* 805B0F40  CB DD 00 78 */	lfd f30, 0x78(r29)
/* 805B0F44  3F C0 43 30 */	lis r30, 0x4330
/* 805B0F48  C3 FD 00 C4 */	lfs f31, 0xc4(r29)
lbl_805B0F4C:
/* 805B0F4C  38 61 00 0C */	addi r3, r1, 0xc
/* 805B0F50  38 81 00 24 */	addi r4, r1, 0x24
/* 805B0F54  20 1B 00 12 */	subfic r0, r27, 0x12
/* 805B0F58  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805B0F5C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B0F60  93 C1 00 30 */	stw r30, 0x30(r1)
/* 805B0F64  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 805B0F68  EC 00 F0 28 */	fsubs f0, f0, f30
/* 805B0F6C  EC 20 F8 24 */	fdivs f1, f0, f31
/* 805B0F70  4B CB 5C 15 */	bl __ml__4cXyzCFf
/* 805B0F74  7F 83 E3 78 */	mr r3, r28
/* 805B0F78  38 81 00 0C */	addi r4, r1, 0xc
/* 805B0F7C  7F 85 E3 78 */	mr r5, r28
/* 805B0F80  4B D9 61 35 */	bl PSVECSubtract
/* 805B0F84  3B 7B 00 01 */	addi r27, r27, 1
/* 805B0F88  2C 1B 00 12 */	cmpwi r27, 0x12
/* 805B0F8C  3B 9C 00 0C */	addi r28, r28, 0xc
/* 805B0F90  41 80 FF BC */	blt lbl_805B0F4C
/* 805B0F94  38 61 00 24 */	addi r3, r1, 0x24
/* 805B0F98  4B D9 61 A1 */	bl PSVECSquareMag
/* 805B0F9C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805B0FA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B0FA4  40 81 00 58 */	ble lbl_805B0FFC
/* 805B0FA8  FC 00 08 34 */	frsqrte f0, f1
/* 805B0FAC  C8 9D 00 38 */	lfd f4, 0x38(r29)
/* 805B0FB0  FC 44 00 32 */	fmul f2, f4, f0
/* 805B0FB4  C8 7D 00 40 */	lfd f3, 0x40(r29)
/* 805B0FB8  FC 00 00 32 */	fmul f0, f0, f0
/* 805B0FBC  FC 01 00 32 */	fmul f0, f1, f0
/* 805B0FC0  FC 03 00 28 */	fsub f0, f3, f0
/* 805B0FC4  FC 02 00 32 */	fmul f0, f2, f0
/* 805B0FC8  FC 44 00 32 */	fmul f2, f4, f0
/* 805B0FCC  FC 00 00 32 */	fmul f0, f0, f0
/* 805B0FD0  FC 01 00 32 */	fmul f0, f1, f0
/* 805B0FD4  FC 03 00 28 */	fsub f0, f3, f0
/* 805B0FD8  FC 02 00 32 */	fmul f0, f2, f0
/* 805B0FDC  FC 44 00 32 */	fmul f2, f4, f0
/* 805B0FE0  FC 00 00 32 */	fmul f0, f0, f0
/* 805B0FE4  FC 01 00 32 */	fmul f0, f1, f0
/* 805B0FE8  FC 03 00 28 */	fsub f0, f3, f0
/* 805B0FEC  FC 02 00 32 */	fmul f0, f2, f0
/* 805B0FF0  FC 21 00 32 */	fmul f1, f1, f0
/* 805B0FF4  FC 20 08 18 */	frsp f1, f1
/* 805B0FF8  48 00 00 88 */	b lbl_805B1080
lbl_805B0FFC:
/* 805B0FFC  C8 1D 00 48 */	lfd f0, 0x48(r29)
/* 805B1000  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B1004  40 80 00 10 */	bge lbl_805B1014
/* 805B1008  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805B100C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805B1010  48 00 00 70 */	b lbl_805B1080
lbl_805B1014:
/* 805B1014  D0 21 00 08 */	stfs f1, 8(r1)
/* 805B1018  80 81 00 08 */	lwz r4, 8(r1)
/* 805B101C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805B1020  3C 00 7F 80 */	lis r0, 0x7f80
/* 805B1024  7C 03 00 00 */	cmpw r3, r0
/* 805B1028  41 82 00 14 */	beq lbl_805B103C
/* 805B102C  40 80 00 40 */	bge lbl_805B106C
/* 805B1030  2C 03 00 00 */	cmpwi r3, 0
/* 805B1034  41 82 00 20 */	beq lbl_805B1054
/* 805B1038  48 00 00 34 */	b lbl_805B106C
lbl_805B103C:
/* 805B103C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805B1040  41 82 00 0C */	beq lbl_805B104C
/* 805B1044  38 00 00 01 */	li r0, 1
/* 805B1048  48 00 00 28 */	b lbl_805B1070
lbl_805B104C:
/* 805B104C  38 00 00 02 */	li r0, 2
/* 805B1050  48 00 00 20 */	b lbl_805B1070
lbl_805B1054:
/* 805B1054  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805B1058  41 82 00 0C */	beq lbl_805B1064
/* 805B105C  38 00 00 05 */	li r0, 5
/* 805B1060  48 00 00 10 */	b lbl_805B1070
lbl_805B1064:
/* 805B1064  38 00 00 03 */	li r0, 3
/* 805B1068  48 00 00 08 */	b lbl_805B1070
lbl_805B106C:
/* 805B106C  38 00 00 04 */	li r0, 4
lbl_805B1070:
/* 805B1070  2C 00 00 01 */	cmpwi r0, 1
/* 805B1074  40 82 00 0C */	bne lbl_805B1080
/* 805B1078  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805B107C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805B1080:
/* 805B1080  D0 3F 0A 20 */	stfs f1, 0xa20(r31)
/* 805B1084  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 805B1088  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 805B108C  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 805B1090  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 805B1094  39 61 00 50 */	addi r11, r1, 0x50
/* 805B1098  4B DB 11 89 */	bl _restgpr_27
/* 805B109C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805B10A0  7C 08 03 A6 */	mtlr r0
/* 805B10A4  38 21 00 70 */	addi r1, r1, 0x70
/* 805B10A8  4E 80 00 20 */	blr 
