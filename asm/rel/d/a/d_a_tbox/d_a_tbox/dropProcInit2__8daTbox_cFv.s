lbl_80492D08:
/* 80492D08  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80492D0C  7C 08 02 A6 */	mflr r0
/* 80492D10  90 01 00 74 */	stw r0, 0x74(r1)
/* 80492D14  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80492D18  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80492D1C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80492D20  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80492D24  7C 7F 1B 78 */	mr r31, r3
/* 80492D28  3C 80 80 49 */	lis r4, l_cull_size_box@ha /* 0x804961D4@ha */
/* 80492D2C  3B C4 61 D4 */	addi r30, r4, l_cull_size_box@l /* 0x804961D4@l */
/* 80492D30  38 81 00 3C */	addi r4, r1, 0x3c
/* 80492D34  38 BF 04 DE */	addi r5, r31, 0x4de
/* 80492D38  4B FF FB A5 */	bl calcJumpGoalAndAngle__8daTbox_cFP4cXyzPs
/* 80492D3C  2C 03 00 00 */	cmpwi r3, 0
/* 80492D40  40 82 00 18 */	bne lbl_80492D58
/* 80492D44  3C 60 80 49 */	lis r3, d_a_tbox__stringBase0@ha /* 0x80496334@ha */
/* 80492D48  38 63 63 34 */	addi r3, r3, d_a_tbox__stringBase0@l /* 0x80496334@l */
/* 80492D4C  38 63 00 3B */	addi r3, r3, 0x3b
/* 80492D50  4C C6 31 82 */	crclr 6
/* 80492D54  4B B7 3E B9 */	bl OSReport_Error
lbl_80492D58:
/* 80492D58  A0 1F 09 82 */	lhz r0, 0x982(r31)
/* 80492D5C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80492D60  38 80 FF FF */	li r4, -1
/* 80492D64  4B BB EA 89 */	bl dPath_GetRoomPath__Fii
/* 80492D68  A0 03 00 00 */	lhz r0, 0(r3)
/* 80492D6C  28 00 00 02 */	cmplwi r0, 2
/* 80492D70  40 82 01 A8 */	bne lbl_80492F18
/* 80492D74  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80492D78  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80492D7C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80492D80  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80492D84  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80492D88  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80492D8C  80 63 00 08 */	lwz r3, 8(r3)
/* 80492D90  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80492D94  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80492D98  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80492D9C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80492DA0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80492DA4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80492DA8  38 00 00 00 */	li r0, 0
/* 80492DAC  98 1F 09 7C */	stb r0, 0x97c(r31)
/* 80492DB0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80492DB4  EC 40 08 28 */	fsubs f2, f0, f1
/* 80492DB8  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 80492DBC  FC 00 02 10 */	fabs f0, f0
/* 80492DC0  FC 20 00 18 */	frsp f1, f0
/* 80492DC4  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 80492DC8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80492DCC  EF E0 08 24 */	fdivs f31, f0, f1
/* 80492DD0  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80492DD4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80492DD8  40 81 00 0C */	ble lbl_80492DE4
/* 80492DDC  FC 00 F8 34 */	frsqrte f0, f31
/* 80492DE0  EF E0 07 F2 */	fmuls f31, f0, f31
lbl_80492DE4:
/* 80492DE4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80492DE8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80492DEC  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 80492DF0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80492DF4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80492DF8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80492DFC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80492E00  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80492E04  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80492E08  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80492E0C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80492E10  38 61 00 0C */	addi r3, r1, 0xc
/* 80492E14  38 81 00 18 */	addi r4, r1, 0x18
/* 80492E18  4B EB 45 85 */	bl PSVECSquareDistance
/* 80492E1C  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80492E20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80492E24  40 81 00 58 */	ble lbl_80492E7C
/* 80492E28  FC 00 08 34 */	frsqrte f0, f1
/* 80492E2C  C8 9E 01 00 */	lfd f4, 0x100(r30)
/* 80492E30  FC 44 00 32 */	fmul f2, f4, f0
/* 80492E34  C8 7E 01 08 */	lfd f3, 0x108(r30)
/* 80492E38  FC 00 00 32 */	fmul f0, f0, f0
/* 80492E3C  FC 01 00 32 */	fmul f0, f1, f0
/* 80492E40  FC 03 00 28 */	fsub f0, f3, f0
/* 80492E44  FC 02 00 32 */	fmul f0, f2, f0
/* 80492E48  FC 44 00 32 */	fmul f2, f4, f0
/* 80492E4C  FC 00 00 32 */	fmul f0, f0, f0
/* 80492E50  FC 01 00 32 */	fmul f0, f1, f0
/* 80492E54  FC 03 00 28 */	fsub f0, f3, f0
/* 80492E58  FC 02 00 32 */	fmul f0, f2, f0
/* 80492E5C  FC 44 00 32 */	fmul f2, f4, f0
/* 80492E60  FC 00 00 32 */	fmul f0, f0, f0
/* 80492E64  FC 01 00 32 */	fmul f0, f1, f0
/* 80492E68  FC 03 00 28 */	fsub f0, f3, f0
/* 80492E6C  FC 02 00 32 */	fmul f0, f2, f0
/* 80492E70  FC 21 00 32 */	fmul f1, f1, f0
/* 80492E74  FC 20 08 18 */	frsp f1, f1
/* 80492E78  48 00 00 88 */	b lbl_80492F00
lbl_80492E7C:
/* 80492E7C  C8 1E 01 10 */	lfd f0, 0x110(r30)
/* 80492E80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80492E84  40 80 00 10 */	bge lbl_80492E94
/* 80492E88  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80492E8C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80492E90  48 00 00 70 */	b lbl_80492F00
lbl_80492E94:
/* 80492E94  D0 21 00 08 */	stfs f1, 8(r1)
/* 80492E98  80 81 00 08 */	lwz r4, 8(r1)
/* 80492E9C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80492EA0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80492EA4  7C 03 00 00 */	cmpw r3, r0
/* 80492EA8  41 82 00 14 */	beq lbl_80492EBC
/* 80492EAC  40 80 00 40 */	bge lbl_80492EEC
/* 80492EB0  2C 03 00 00 */	cmpwi r3, 0
/* 80492EB4  41 82 00 20 */	beq lbl_80492ED4
/* 80492EB8  48 00 00 34 */	b lbl_80492EEC
lbl_80492EBC:
/* 80492EBC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80492EC0  41 82 00 0C */	beq lbl_80492ECC
/* 80492EC4  38 00 00 01 */	li r0, 1
/* 80492EC8  48 00 00 28 */	b lbl_80492EF0
lbl_80492ECC:
/* 80492ECC  38 00 00 02 */	li r0, 2
/* 80492ED0  48 00 00 20 */	b lbl_80492EF0
lbl_80492ED4:
/* 80492ED4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80492ED8  41 82 00 0C */	beq lbl_80492EE4
/* 80492EDC  38 00 00 05 */	li r0, 5
/* 80492EE0  48 00 00 10 */	b lbl_80492EF0
lbl_80492EE4:
/* 80492EE4  38 00 00 03 */	li r0, 3
/* 80492EE8  48 00 00 08 */	b lbl_80492EF0
lbl_80492EEC:
/* 80492EEC  38 00 00 04 */	li r0, 4
lbl_80492EF0:
/* 80492EF0  2C 00 00 01 */	cmpwi r0, 1
/* 80492EF4  40 82 00 0C */	bne lbl_80492F00
/* 80492EF8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80492EFC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80492F00:
/* 80492F00  EC 01 F8 24 */	fdivs f0, f1, f31
/* 80492F04  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80492F08  7F E3 FB 78 */	mr r3, r31
/* 80492F0C  38 81 00 30 */	addi r4, r1, 0x30
/* 80492F10  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80492F14  4B FF FD 71 */	bl setRotAxis__8daTbox_cFPC4cXyzPC4cXyz
lbl_80492F18:
/* 80492F18  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 80492F1C  EC 1F 00 24 */	fdivs f0, f31, f0
/* 80492F20  FC 00 00 1E */	fctiwz f0, f0
/* 80492F24  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80492F28  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80492F2C  98 1F 09 C8 */	stb r0, 0x9c8(r31)
/* 80492F30  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80492F34  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80492F38  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80492F3C  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80492F40  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80492F44  7C 08 03 A6 */	mtlr r0
/* 80492F48  38 21 00 70 */	addi r1, r1, 0x70
/* 80492F4C  4E 80 00 20 */	blr 
