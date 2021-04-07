lbl_805E5E78:
/* 805E5E78  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805E5E7C  7C 08 02 A6 */	mflr r0
/* 805E5E80  90 01 00 44 */	stw r0, 0x44(r1)
/* 805E5E84  39 61 00 40 */	addi r11, r1, 0x40
/* 805E5E88  4B D7 C3 51 */	bl _savegpr_28
/* 805E5E8C  7C 7D 1B 78 */	mr r29, r3
/* 805E5E90  3C 60 80 5F */	lis r3, lit_3911@ha /* 0x805ED060@ha */
/* 805E5E94  3B C3 D0 60 */	addi r30, r3, lit_3911@l /* 0x805ED060@l */
/* 805E5E98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E5E9C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E5EA0  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 805E5EA4  7F 83 E3 78 */	mr r3, r28
/* 805E5EA8  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 805E5EAC  81 8C 02 48 */	lwz r12, 0x248(r12)
/* 805E5EB0  7D 89 03 A6 */	mtctr r12
/* 805E5EB4  4E 80 04 21 */	bctrl 
/* 805E5EB8  28 03 00 00 */	cmplwi r3, 0
/* 805E5EBC  41 82 01 B8 */	beq lbl_805E6074
/* 805E5EC0  A8 BC 04 E6 */	lha r5, 0x4e6(r28)
/* 805E5EC4  3C 80 80 5F */	lis r4, data_805ED730@ha /* 0x805ED730@ha */
/* 805E5EC8  A8 04 D7 30 */	lha r0, data_805ED730@l(r4)  /* 0x805ED730@l */
/* 805E5ECC  7C 85 00 50 */	subf r4, r5, r0
/* 805E5ED0  3C 84 00 01 */	addis r4, r4, 1
/* 805E5ED4  38 04 80 00 */	addi r0, r4, -32768
/* 805E5ED8  7C 1C 07 34 */	extsh r28, r0
/* 805E5EDC  C0 43 00 08 */	lfs f2, 8(r3)
/* 805E5EE0  C0 03 00 00 */	lfs f0, 0(r3)
/* 805E5EE4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805E5EE8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805E5EEC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805E5EF0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 805E5EF4  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 805E5EF8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805E5EFC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805E5F00  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805E5F04  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 805E5F08  38 61 00 0C */	addi r3, r1, 0xc
/* 805E5F0C  38 81 00 18 */	addi r4, r1, 0x18
/* 805E5F10  4B D6 14 8D */	bl PSVECSquareDistance
/* 805E5F14  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E5F18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E5F1C  40 81 00 58 */	ble lbl_805E5F74
/* 805E5F20  FC 00 08 34 */	frsqrte f0, f1
/* 805E5F24  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 805E5F28  FC 44 00 32 */	fmul f2, f4, f0
/* 805E5F2C  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 805E5F30  FC 00 00 32 */	fmul f0, f0, f0
/* 805E5F34  FC 01 00 32 */	fmul f0, f1, f0
/* 805E5F38  FC 03 00 28 */	fsub f0, f3, f0
/* 805E5F3C  FC 02 00 32 */	fmul f0, f2, f0
/* 805E5F40  FC 44 00 32 */	fmul f2, f4, f0
/* 805E5F44  FC 00 00 32 */	fmul f0, f0, f0
/* 805E5F48  FC 01 00 32 */	fmul f0, f1, f0
/* 805E5F4C  FC 03 00 28 */	fsub f0, f3, f0
/* 805E5F50  FC 02 00 32 */	fmul f0, f2, f0
/* 805E5F54  FC 44 00 32 */	fmul f2, f4, f0
/* 805E5F58  FC 00 00 32 */	fmul f0, f0, f0
/* 805E5F5C  FC 01 00 32 */	fmul f0, f1, f0
/* 805E5F60  FC 03 00 28 */	fsub f0, f3, f0
/* 805E5F64  FC 02 00 32 */	fmul f0, f2, f0
/* 805E5F68  FC 21 00 32 */	fmul f1, f1, f0
/* 805E5F6C  FC 20 08 18 */	frsp f1, f1
/* 805E5F70  48 00 00 88 */	b lbl_805E5FF8
lbl_805E5F74:
/* 805E5F74  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 805E5F78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E5F7C  40 80 00 10 */	bge lbl_805E5F8C
/* 805E5F80  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805E5F84  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805E5F88  48 00 00 70 */	b lbl_805E5FF8
lbl_805E5F8C:
/* 805E5F8C  D0 21 00 08 */	stfs f1, 8(r1)
/* 805E5F90  80 81 00 08 */	lwz r4, 8(r1)
/* 805E5F94  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805E5F98  3C 00 7F 80 */	lis r0, 0x7f80
/* 805E5F9C  7C 03 00 00 */	cmpw r3, r0
/* 805E5FA0  41 82 00 14 */	beq lbl_805E5FB4
/* 805E5FA4  40 80 00 40 */	bge lbl_805E5FE4
/* 805E5FA8  2C 03 00 00 */	cmpwi r3, 0
/* 805E5FAC  41 82 00 20 */	beq lbl_805E5FCC
/* 805E5FB0  48 00 00 34 */	b lbl_805E5FE4
lbl_805E5FB4:
/* 805E5FB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805E5FB8  41 82 00 0C */	beq lbl_805E5FC4
/* 805E5FBC  38 00 00 01 */	li r0, 1
/* 805E5FC0  48 00 00 28 */	b lbl_805E5FE8
lbl_805E5FC4:
/* 805E5FC4  38 00 00 02 */	li r0, 2
/* 805E5FC8  48 00 00 20 */	b lbl_805E5FE8
lbl_805E5FCC:
/* 805E5FCC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805E5FD0  41 82 00 0C */	beq lbl_805E5FDC
/* 805E5FD4  38 00 00 05 */	li r0, 5
/* 805E5FD8  48 00 00 10 */	b lbl_805E5FE8
lbl_805E5FDC:
/* 805E5FDC  38 00 00 03 */	li r0, 3
/* 805E5FE0  48 00 00 08 */	b lbl_805E5FE8
lbl_805E5FE4:
/* 805E5FE4  38 00 00 04 */	li r0, 4
lbl_805E5FE8:
/* 805E5FE8  2C 00 00 01 */	cmpwi r0, 1
/* 805E5FEC  40 82 00 0C */	bne lbl_805E5FF8
/* 805E5FF0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805E5FF4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805E5FF8:
/* 805E5FF8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805E5FFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E6000  40 81 00 74 */	ble lbl_805E6074
/* 805E6004  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805E6008  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805E600C  81 8C 02 50 */	lwz r12, 0x250(r12)
/* 805E6010  7D 89 03 A6 */	mtctr r12
/* 805E6014  4E 80 04 21 */	bctrl 
/* 805E6018  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805E601C  41 82 00 58 */	beq lbl_805E6074
/* 805E6020  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805E6024  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805E6028  81 8C 02 4C */	lwz r12, 0x24c(r12)
/* 805E602C  7D 89 03 A6 */	mtctr r12
/* 805E6030  4E 80 04 21 */	bctrl 
/* 805E6034  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805E6038  40 82 00 3C */	bne lbl_805E6074
/* 805E603C  2C 1C 05 00 */	cmpwi r28, 0x500
/* 805E6040  40 80 00 34 */	bge lbl_805E6074
/* 805E6044  2C 1C FB 00 */	cmpwi r28, -1280
/* 805E6048  40 81 00 2C */	ble lbl_805E6074
/* 805E604C  7F A3 EB 78 */	mr r3, r29
/* 805E6050  4B FF 99 F9 */	bl SpeedClear__8daB_GG_cFv
/* 805E6054  38 00 00 05 */	li r0, 5
/* 805E6058  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805E605C  7F A3 EB 78 */	mr r3, r29
/* 805E6060  38 80 00 19 */	li r4, 0x19
/* 805E6064  38 A0 00 02 */	li r5, 2
/* 805E6068  C0 3E 02 0C */	lfs f1, 0x20c(r30)
/* 805E606C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805E6070  4B FF 8E F5 */	bl SetAnm__8daB_GG_cFiiff
lbl_805E6074:
/* 805E6074  39 61 00 40 */	addi r11, r1, 0x40
/* 805E6078  4B D7 C1 AD */	bl _restgpr_28
/* 805E607C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805E6080  7C 08 03 A6 */	mtlr r0
/* 805E6084  38 21 00 40 */	addi r1, r1, 0x40
/* 805E6088  4E 80 00 20 */	blr 
