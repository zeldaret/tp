lbl_80A23DC8:
/* 80A23DC8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80A23DCC  7C 08 02 A6 */	mflr r0
/* 80A23DD0  90 01 00 84 */	stw r0, 0x84(r1)
/* 80A23DD4  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80A23DD8  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80A23DDC  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80A23DE0  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80A23DE4  39 61 00 60 */	addi r11, r1, 0x60
/* 80A23DE8  4B 93 E3 EC */	b _savegpr_27
/* 80A23DEC  7C 7B 1B 78 */	mr r27, r3
/* 80A23DF0  3B A0 00 00 */	li r29, 0
/* 80A23DF4  3C 60 80 A2 */	lis r3, lit_4449@ha
/* 80A23DF8  C3 C3 59 5C */	lfs f30, lit_4449@l(r3)
/* 80A23DFC  80 7B 0C 98 */	lwz r3, 0xc98(r27)
/* 80A23E00  A3 C3 00 00 */	lhz r30, 0(r3)
/* 80A23E04  3B 80 00 00 */	li r28, 0
/* 80A23E08  3B E0 00 00 */	li r31, 0
/* 80A23E0C  FF E0 F0 90 */	fmr f31, f30
/* 80A23E10  48 00 00 AC */	b lbl_80A23EBC
lbl_80A23E14:
/* 80A23E14  80 7B 0C 98 */	lwz r3, 0xc98(r27)
/* 80A23E18  80 63 00 08 */	lwz r3, 8(r3)
/* 80A23E1C  38 1F 00 04 */	addi r0, r31, 4
/* 80A23E20  7C 83 02 14 */	add r4, r3, r0
/* 80A23E24  80 64 00 00 */	lwz r3, 0(r4)
/* 80A23E28  80 04 00 04 */	lwz r0, 4(r4)
/* 80A23E2C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80A23E30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A23E34  80 04 00 08 */	lwz r0, 8(r4)
/* 80A23E38  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A23E3C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A23E40  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A23E44  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80A23E48  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A23E4C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80A23E50  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A23E54  38 61 00 14 */	addi r3, r1, 0x14
/* 80A23E58  38 81 00 38 */	addi r4, r1, 0x38
/* 80A23E5C  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80A23E60  4B 84 2C D4 */	b __mi__4cXyzCFRC3Vec
/* 80A23E64  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80A23E68  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80A23E6C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A23E70  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A23E74  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A23E78  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A23E7C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A23E80  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80A23E84  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A23E88  38 61 00 08 */	addi r3, r1, 8
/* 80A23E8C  4B 92 32 AC */	b PSVECSquareMag
/* 80A23E90  2C 1C 00 00 */	cmpwi r28, 0
/* 80A23E94  40 82 00 10 */	bne lbl_80A23EA4
/* 80A23E98  FF C0 08 90 */	fmr f30, f1
/* 80A23E9C  3B A0 00 00 */	li r29, 0
/* 80A23EA0  48 00 00 14 */	b lbl_80A23EB4
lbl_80A23EA4:
/* 80A23EA4  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80A23EA8  40 80 00 0C */	bge lbl_80A23EB4
/* 80A23EAC  FF C0 08 90 */	fmr f30, f1
/* 80A23EB0  7F 9D E3 78 */	mr r29, r28
lbl_80A23EB4:
/* 80A23EB4  3B 9C 00 01 */	addi r28, r28, 1
/* 80A23EB8  3B FF 00 10 */	addi r31, r31, 0x10
lbl_80A23EBC:
/* 80A23EBC  7C 1C F0 00 */	cmpw r28, r30
/* 80A23EC0  41 80 FF 54 */	blt lbl_80A23E14
/* 80A23EC4  38 7D 00 01 */	addi r3, r29, 1
/* 80A23EC8  7C 1D F0 00 */	cmpw r29, r30
/* 80A23ECC  40 82 00 08 */	bne lbl_80A23ED4
/* 80A23ED0  7F A3 EB 78 */	mr r3, r29
lbl_80A23ED4:
/* 80A23ED4  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80A23ED8  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80A23EDC  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80A23EE0  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80A23EE4  39 61 00 60 */	addi r11, r1, 0x60
/* 80A23EE8  4B 93 E3 38 */	b _restgpr_27
/* 80A23EEC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80A23EF0  7C 08 03 A6 */	mtlr r0
/* 80A23EF4  38 21 00 80 */	addi r1, r1, 0x80
/* 80A23EF8  4E 80 00 20 */	blr 
