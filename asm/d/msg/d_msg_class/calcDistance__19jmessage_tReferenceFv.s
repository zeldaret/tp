lbl_80228D28:
/* 80228D28  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80228D2C  7C 08 02 A6 */	mflr r0
/* 80228D30  90 01 00 34 */	stw r0, 0x34(r1)
/* 80228D34  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80228D38  7C 7F 1B 78 */	mr r31, r3
/* 80228D3C  C0 22 B0 60 */	lfs f1, lit_4027(r2)
/* 80228D40  C0 03 04 14 */	lfs f0, 0x414(r3)
/* 80228D44  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80228D48  40 82 00 28 */	bne lbl_80228D70
/* 80228D4C  C0 1F 04 18 */	lfs f0, 0x418(r31)
/* 80228D50  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80228D54  40 82 00 1C */	bne lbl_80228D70
/* 80228D58  C0 1F 04 1C */	lfs f0, 0x41c(r31)
/* 80228D5C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80228D60  40 82 00 10 */	bne lbl_80228D70
/* 80228D64  C0 02 B0 64 */	lfs f0, lit_4028(r2)
/* 80228D68  D0 1F 04 54 */	stfs f0, 0x454(r31)
/* 80228D6C  48 00 00 60 */	b lbl_80228DCC
lbl_80228D70:
/* 80228D70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80228D74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80228D78  80 A3 5D AC */	lwz r5, 0x5dac(r3)
/* 80228D7C  38 61 00 14 */	addi r3, r1, 0x14
/* 80228D80  38 9F 04 14 */	addi r4, r31, 0x414
/* 80228D84  38 A5 05 50 */	addi r5, r5, 0x550
/* 80228D88  48 03 DD AD */	bl __mi__4cXyzCFRC3Vec
/* 80228D8C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80228D90  D0 01 00 08 */	stfs f0, 8(r1)
/* 80228D94  C0 02 B0 60 */	lfs f0, lit_4027(r2)
/* 80228D98  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80228D9C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80228DA0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80228DA4  38 61 00 08 */	addi r3, r1, 8
/* 80228DA8  48 11 E3 91 */	bl PSVECSquareMag
/* 80228DAC  C0 02 B0 60 */	lfs f0, lit_4027(r2)
/* 80228DB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80228DB4  40 81 00 08 */	ble lbl_80228DBC
/* 80228DB8  48 00 00 0C */	b lbl_80228DC4
lbl_80228DBC:
/* 80228DBC  C8 02 B0 68 */	lfd f0, lit_4078(r2)
/* 80228DC0  FC 01 00 40 */	fcmpo cr0, f1, f0
lbl_80228DC4:
/* 80228DC4  C0 02 B0 64 */	lfs f0, lit_4028(r2)
/* 80228DC8  D0 1F 04 54 */	stfs f0, 0x454(r31)
lbl_80228DCC:
/* 80228DCC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80228DD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80228DD4  7C 08 03 A6 */	mtlr r0
/* 80228DD8  38 21 00 30 */	addi r1, r1, 0x30
/* 80228DDC  4E 80 00 20 */	blr 
