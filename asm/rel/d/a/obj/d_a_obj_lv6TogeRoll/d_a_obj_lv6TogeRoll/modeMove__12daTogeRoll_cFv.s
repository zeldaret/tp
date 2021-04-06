lbl_80C78DAC:
/* 80C78DAC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80C78DB0  7C 08 02 A6 */	mflr r0
/* 80C78DB4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80C78DB8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80C78DBC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80C78DC0  39 61 00 60 */	addi r11, r1, 0x60
/* 80C78DC4  4B 6E 94 19 */	bl _savegpr_29
/* 80C78DC8  7C 7E 1B 78 */	mr r30, r3
/* 80C78DCC  3C 60 80 C8 */	lis r3, lit_3651@ha /* 0x80C799E4@ha */
/* 80C78DD0  3B E3 99 E4 */	addi r31, r3, lit_3651@l /* 0x80C799E4@l */
/* 80C78DD4  C0 1E 05 C8 */	lfs f0, 0x5c8(r30)
/* 80C78DD8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C78DDC  C0 1E 05 CC */	lfs f0, 0x5cc(r30)
/* 80C78DE0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C78DE4  C0 1E 05 D0 */	lfs f0, 0x5d0(r30)
/* 80C78DE8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C78DEC  C0 1E 05 B0 */	lfs f0, 0x5b0(r30)
/* 80C78DF0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C78DF4  C0 1E 05 B4 */	lfs f0, 0x5b4(r30)
/* 80C78DF8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C78DFC  C0 1E 05 B8 */	lfs f0, 0x5b8(r30)
/* 80C78E00  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C78E04  38 61 00 20 */	addi r3, r1, 0x20
/* 80C78E08  38 81 00 38 */	addi r4, r1, 0x38
/* 80C78E0C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80C78E10  4B 5E DD 25 */	bl __mi__4cXyzCFRC3Vec
/* 80C78E14  38 61 00 20 */	addi r3, r1, 0x20
/* 80C78E18  4B 6C E3 21 */	bl PSVECSquareMag
/* 80C78E1C  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80C78E20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C78E24  40 81 00 58 */	ble lbl_80C78E7C
/* 80C78E28  FC 00 08 34 */	frsqrte f0, f1
/* 80C78E2C  C8 9F 00 C8 */	lfd f4, 0xc8(r31)
/* 80C78E30  FC 44 00 32 */	fmul f2, f4, f0
/* 80C78E34  C8 7F 00 D0 */	lfd f3, 0xd0(r31)
/* 80C78E38  FC 00 00 32 */	fmul f0, f0, f0
/* 80C78E3C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C78E40  FC 03 00 28 */	fsub f0, f3, f0
/* 80C78E44  FC 02 00 32 */	fmul f0, f2, f0
/* 80C78E48  FC 44 00 32 */	fmul f2, f4, f0
/* 80C78E4C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C78E50  FC 01 00 32 */	fmul f0, f1, f0
/* 80C78E54  FC 03 00 28 */	fsub f0, f3, f0
/* 80C78E58  FC 02 00 32 */	fmul f0, f2, f0
/* 80C78E5C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C78E60  FC 00 00 32 */	fmul f0, f0, f0
/* 80C78E64  FC 01 00 32 */	fmul f0, f1, f0
/* 80C78E68  FC 03 00 28 */	fsub f0, f3, f0
/* 80C78E6C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C78E70  FC 21 00 32 */	fmul f1, f1, f0
/* 80C78E74  FC 20 08 18 */	frsp f1, f1
/* 80C78E78  48 00 00 88 */	b lbl_80C78F00
lbl_80C78E7C:
/* 80C78E7C  C8 1F 00 D8 */	lfd f0, 0xd8(r31)
/* 80C78E80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C78E84  40 80 00 10 */	bge lbl_80C78E94
/* 80C78E88  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C78E8C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C78E90  48 00 00 70 */	b lbl_80C78F00
lbl_80C78E94:
/* 80C78E94  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C78E98  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C78E9C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C78EA0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C78EA4  7C 03 00 00 */	cmpw r3, r0
/* 80C78EA8  41 82 00 14 */	beq lbl_80C78EBC
/* 80C78EAC  40 80 00 40 */	bge lbl_80C78EEC
/* 80C78EB0  2C 03 00 00 */	cmpwi r3, 0
/* 80C78EB4  41 82 00 20 */	beq lbl_80C78ED4
/* 80C78EB8  48 00 00 34 */	b lbl_80C78EEC
lbl_80C78EBC:
/* 80C78EBC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C78EC0  41 82 00 0C */	beq lbl_80C78ECC
/* 80C78EC4  38 00 00 01 */	li r0, 1
/* 80C78EC8  48 00 00 28 */	b lbl_80C78EF0
lbl_80C78ECC:
/* 80C78ECC  38 00 00 02 */	li r0, 2
/* 80C78ED0  48 00 00 20 */	b lbl_80C78EF0
lbl_80C78ED4:
/* 80C78ED4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C78ED8  41 82 00 0C */	beq lbl_80C78EE4
/* 80C78EDC  38 00 00 05 */	li r0, 5
/* 80C78EE0  48 00 00 10 */	b lbl_80C78EF0
lbl_80C78EE4:
/* 80C78EE4  38 00 00 03 */	li r0, 3
/* 80C78EE8  48 00 00 08 */	b lbl_80C78EF0
lbl_80C78EEC:
/* 80C78EEC  38 00 00 04 */	li r0, 4
lbl_80C78EF0:
/* 80C78EF0  2C 00 00 01 */	cmpwi r0, 1
/* 80C78EF4  40 82 00 0C */	bne lbl_80C78F00
/* 80C78EF8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C78EFC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C78F00:
/* 80C78F00  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C78F04  EF E0 00 72 */	fmuls f31, f0, f1
/* 80C78F08  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80C78F0C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80C78F10  40 80 00 08 */	bge lbl_80C78F18
/* 80C78F14  FF E0 00 90 */	fmr f31, f0
lbl_80C78F18:
/* 80C78F18  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80C78F1C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80C78F20  40 81 00 08 */	ble lbl_80C78F28
/* 80C78F24  FF E0 00 90 */	fmr f31, f0
lbl_80C78F28:
/* 80C78F28  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C78F2C  38 9E 05 B0 */	addi r4, r30, 0x5b0
/* 80C78F30  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 80C78F34  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 80C78F38  C0 7F 00 F0 */	lfs f3, 0xf0(r31)
/* 80C78F3C  4B 5F 6B 7D */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80C78F40  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C78F44  7C 03 07 74 */	extsb r3, r0
/* 80C78F48  4B 3B 41 25 */	bl dComIfGp_getReverb__Fi
/* 80C78F4C  7C 7D 1B 78 */	mr r29, r3
/* 80C78F50  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C78F54  4B 6E 91 59 */	bl __cvt_fp2unsigned
/* 80C78F58  7C 66 1B 78 */	mr r6, r3
/* 80C78F5C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801E1@ha */
/* 80C78F60  38 03 01 E1 */	addi r0, r3, 0x01E1 /* 0x000801E1@l */
/* 80C78F64  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C78F68  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C78F6C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C78F70  80 63 00 00 */	lwz r3, 0(r3)
/* 80C78F74  38 81 00 10 */	addi r4, r1, 0x10
/* 80C78F78  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C78F7C  7F A7 EB 78 */	mr r7, r29
/* 80C78F80  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 80C78F84  FC 40 08 90 */	fmr f2, f1
/* 80C78F88  C0 7F 00 F4 */	lfs f3, 0xf4(r31)
/* 80C78F8C  FC 80 18 90 */	fmr f4, f3
/* 80C78F90  39 00 00 00 */	li r8, 0
/* 80C78F94  4B 63 35 79 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C78F98  38 61 00 14 */	addi r3, r1, 0x14
/* 80C78F9C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C78FA0  38 BE 05 B0 */	addi r5, r30, 0x5b0
/* 80C78FA4  4B 5E DB 91 */	bl __mi__4cXyzCFRC3Vec
/* 80C78FA8  38 61 00 14 */	addi r3, r1, 0x14
/* 80C78FAC  4B 6C E1 8D */	bl PSVECSquareMag
/* 80C78FB0  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80C78FB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C78FB8  40 81 00 58 */	ble lbl_80C79010
/* 80C78FBC  FC 00 08 34 */	frsqrte f0, f1
/* 80C78FC0  C8 9F 00 C8 */	lfd f4, 0xc8(r31)
/* 80C78FC4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C78FC8  C8 7F 00 D0 */	lfd f3, 0xd0(r31)
/* 80C78FCC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C78FD0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C78FD4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C78FD8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C78FDC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C78FE0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C78FE4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C78FE8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C78FEC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C78FF0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C78FF4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C78FF8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C78FFC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C79000  FC 02 00 32 */	fmul f0, f2, f0
/* 80C79004  FC 21 00 32 */	fmul f1, f1, f0
/* 80C79008  FC 20 08 18 */	frsp f1, f1
/* 80C7900C  48 00 00 88 */	b lbl_80C79094
lbl_80C79010:
/* 80C79010  C8 1F 00 D8 */	lfd f0, 0xd8(r31)
/* 80C79014  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C79018  40 80 00 10 */	bge lbl_80C79028
/* 80C7901C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C79020  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C79024  48 00 00 70 */	b lbl_80C79094
lbl_80C79028:
/* 80C79028  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C7902C  80 81 00 08 */	lwz r4, 8(r1)
/* 80C79030  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C79034  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C79038  7C 03 00 00 */	cmpw r3, r0
/* 80C7903C  41 82 00 14 */	beq lbl_80C79050
/* 80C79040  40 80 00 40 */	bge lbl_80C79080
/* 80C79044  2C 03 00 00 */	cmpwi r3, 0
/* 80C79048  41 82 00 20 */	beq lbl_80C79068
/* 80C7904C  48 00 00 34 */	b lbl_80C79080
lbl_80C79050:
/* 80C79050  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C79054  41 82 00 0C */	beq lbl_80C79060
/* 80C79058  38 00 00 01 */	li r0, 1
/* 80C7905C  48 00 00 28 */	b lbl_80C79084
lbl_80C79060:
/* 80C79060  38 00 00 02 */	li r0, 2
/* 80C79064  48 00 00 20 */	b lbl_80C79084
lbl_80C79068:
/* 80C79068  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C7906C  41 82 00 0C */	beq lbl_80C79078
/* 80C79070  38 00 00 05 */	li r0, 5
/* 80C79074  48 00 00 10 */	b lbl_80C79084
lbl_80C79078:
/* 80C79078  38 00 00 03 */	li r0, 3
/* 80C7907C  48 00 00 08 */	b lbl_80C79084
lbl_80C79080:
/* 80C79080  38 00 00 04 */	li r0, 4
lbl_80C79084:
/* 80C79084  2C 00 00 01 */	cmpwi r0, 1
/* 80C79088  40 82 00 0C */	bne lbl_80C79094
/* 80C7908C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C79090  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C79094:
/* 80C79094  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80C79098  40 81 00 0C */	ble lbl_80C790A4
/* 80C7909C  7F C3 F3 78 */	mr r3, r30
/* 80C790A0  48 00 00 25 */	bl init_modeBrk__12daTogeRoll_cFv
lbl_80C790A4:
/* 80C790A4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80C790A8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80C790AC  39 61 00 60 */	addi r11, r1, 0x60
/* 80C790B0  4B 6E 91 79 */	bl _restgpr_29
/* 80C790B4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80C790B8  7C 08 03 A6 */	mtlr r0
/* 80C790BC  38 21 00 70 */	addi r1, r1, 0x70
/* 80C790C0  4E 80 00 20 */	blr 
