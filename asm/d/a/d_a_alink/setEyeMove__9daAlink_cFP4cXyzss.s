lbl_800A1AEC:
/* 800A1AEC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800A1AF0  7C 08 02 A6 */	mflr r0
/* 800A1AF4  90 01 00 54 */	stw r0, 0x54(r1)
/* 800A1AF8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 800A1AFC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 800A1B00  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 800A1B04  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 800A1B08  39 61 00 30 */	addi r11, r1, 0x30
/* 800A1B0C  48 2C 06 C9 */	bl _savegpr_27
/* 800A1B10  7C 7F 1B 78 */	mr r31, r3
/* 800A1B14  7C 9B 23 78 */	mr r27, r4
/* 800A1B18  7C BC 2B 78 */	mr r28, r5
/* 800A1B1C  7C DD 33 78 */	mr r29, r6
/* 800A1B20  8B C3 2F A7 */	lbz r30, 0x2fa7(r3)
/* 800A1B24  C3 E3 34 18 */	lfs f31, 0x3418(r3)
/* 800A1B28  C3 C3 34 1C */	lfs f30, 0x341c(r3)
/* 800A1B2C  C0 22 92 E0 */	lfs f1, lit_6845(r2)
/* 800A1B30  48 1C 5E 25 */	bl cM_rndF__Ff
/* 800A1B34  C0 02 94 80 */	lfs f0, lit_16036(r2)
/* 800A1B38  EC 00 08 2A */	fadds f0, f0, f1
/* 800A1B3C  FC 00 00 1E */	fctiwz f0, f0
/* 800A1B40  D8 01 00 08 */	stfd f0, 8(r1)
/* 800A1B44  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800A1B48  98 1F 2F A7 */	stb r0, 0x2fa7(r31)
/* 800A1B4C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800A1B50  D0 3F 34 18 */	stfs f1, 0x3418(r31)
/* 800A1B54  D0 3F 34 1C */	stfs f1, 0x341c(r31)
/* 800A1B58  D0 3F 33 F8 */	stfs f1, 0x33f8(r31)
/* 800A1B5C  28 1B 00 00 */	cmplwi r27, 0
/* 800A1B60  41 82 00 4C */	beq lbl_800A1BAC
/* 800A1B64  C0 42 98 14 */	lfs f2, lit_55845(r2)
/* 800A1B68  7F 80 07 34 */	extsh r0, r28
/* 800A1B6C  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800A1B70  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800A1B74  90 01 00 0C */	stw r0, 0xc(r1)
/* 800A1B78  3C 60 43 30 */	lis r3, 0x4330
/* 800A1B7C  90 61 00 08 */	stw r3, 8(r1)
/* 800A1B80  C8 01 00 08 */	lfd f0, 8(r1)
/* 800A1B84  EC 00 08 28 */	fsubs f0, f0, f1
/* 800A1B88  EC 82 00 32 */	fmuls f4, f2, f0
/* 800A1B8C  7F A0 07 34 */	extsh r0, r29
/* 800A1B90  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800A1B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A1B98  90 61 00 10 */	stw r3, 0x10(r1)
/* 800A1B9C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800A1BA0  EC 00 08 28 */	fsubs f0, f0, f1
/* 800A1BA4  EC 02 00 32 */	fmuls f0, f2, f0
/* 800A1BA8  48 00 02 9C */	b lbl_800A1E44
lbl_800A1BAC:
/* 800A1BAC  C0 5F 33 F0 */	lfs f2, 0x33f0(r31)
/* 800A1BB0  FC 01 10 00 */	fcmpu cr0, f1, f2
/* 800A1BB4  40 82 00 10 */	bne lbl_800A1BC4
/* 800A1BB8  C0 1F 33 F4 */	lfs f0, 0x33f4(r31)
/* 800A1BBC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800A1BC0  41 82 00 14 */	beq lbl_800A1BD4
lbl_800A1BC4:
/* 800A1BC4  C0 9F 33 F4 */	lfs f4, 0x33f4(r31)
/* 800A1BC8  FC 00 10 90 */	fmr f0, f2
/* 800A1BCC  D0 5F 33 F8 */	stfs f2, 0x33f8(r31)
/* 800A1BD0  48 00 02 74 */	b lbl_800A1E44
lbl_800A1BD4:
/* 800A1BD4  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800A1BD8  28 00 00 04 */	cmplwi r0, 4
/* 800A1BDC  41 82 00 0C */	beq lbl_800A1BE8
/* 800A1BE0  28 00 00 F2 */	cmplwi r0, 0xf2
/* 800A1BE4  40 82 00 50 */	bne lbl_800A1C34
lbl_800A1BE8:
/* 800A1BE8  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800A1BEC  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 800A1BF0  40 82 00 44 */	bne lbl_800A1C34
/* 800A1BF4  A8 7F 2F EE */	lha r3, 0x2fee(r31)
/* 800A1BF8  7C 60 07 35 */	extsh. r0, r3
/* 800A1BFC  41 82 00 38 */	beq lbl_800A1C34
/* 800A1C00  C0 82 92 C0 */	lfs f4, lit_6108(r2)
/* 800A1C04  C0 42 98 18 */	lfs f2, lit_55846(r2)
/* 800A1C08  7C 03 00 D0 */	neg r0, r3
/* 800A1C0C  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800A1C10  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800A1C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A1C18  3C 00 43 30 */	lis r0, 0x4330
/* 800A1C1C  90 01 00 10 */	stw r0, 0x10(r1)
/* 800A1C20  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800A1C24  EC 00 08 28 */	fsubs f0, f0, f1
/* 800A1C28  EC 02 00 32 */	fmuls f0, f2, f0
/* 800A1C2C  D0 1F 33 F8 */	stfs f0, 0x33f8(r31)
/* 800A1C30  48 00 02 14 */	b lbl_800A1E44
lbl_800A1C34:
/* 800A1C34  7F E3 FB 78 */	mr r3, r31
/* 800A1C38  48 06 23 B1 */	bl checkSwimNeckUpDown__9daAlink_cCFv
/* 800A1C3C  2C 03 00 00 */	cmpwi r3, 0
/* 800A1C40  41 82 00 34 */	beq lbl_800A1C74
/* 800A1C44  A8 7F 31 24 */	lha r3, 0x3124(r31)
/* 800A1C48  7C 60 07 35 */	extsh. r0, r3
/* 800A1C4C  40 81 00 0C */	ble lbl_800A1C58
/* 800A1C50  C0 82 92 98 */	lfs f4, lit_5943(r2)
/* 800A1C54  48 00 00 18 */	b lbl_800A1C6C
lbl_800A1C58:
/* 800A1C58  7C 60 07 35 */	extsh. r0, r3
/* 800A1C5C  40 80 00 0C */	bge lbl_800A1C68
/* 800A1C60  C0 82 93 4C */	lfs f4, lit_8131(r2)
/* 800A1C64  48 00 00 08 */	b lbl_800A1C6C
lbl_800A1C68:
/* 800A1C68  C0 82 92 C0 */	lfs f4, lit_6108(r2)
lbl_800A1C6C:
/* 800A1C6C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A1C70  48 00 01 D4 */	b lbl_800A1E44
lbl_800A1C74:
/* 800A1C74  7F E3 FB 78 */	mr r3, r31
/* 800A1C78  48 07 3F A9 */	bl checkEventRun__9daAlink_cCFv
/* 800A1C7C  2C 03 00 00 */	cmpwi r3, 0
/* 800A1C80  40 82 01 80 */	bne lbl_800A1E00
/* 800A1C84  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800A1C88  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800A1C8C  41 82 01 74 */	beq lbl_800A1E00
/* 800A1C90  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800A1C94  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 800A1C98  41 82 01 68 */	beq lbl_800A1E00
/* 800A1C9C  7F E3 FB 78 */	mr r3, r31
/* 800A1CA0  48 01 75 B5 */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800A1CA4  2C 03 00 00 */	cmpwi r3, 0
/* 800A1CA8  40 82 00 14 */	bne lbl_800A1CBC
/* 800A1CAC  7F E3 FB 78 */	mr r3, r31
/* 800A1CB0  48 04 1F BD */	bl checkGrabAnime__9daAlink_cCFv
/* 800A1CB4  2C 03 00 00 */	cmpwi r3, 0
/* 800A1CB8  41 82 01 48 */	beq lbl_800A1E00
lbl_800A1CBC:
/* 800A1CBC  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800A1CC0  28 00 00 03 */	cmplwi r0, 3
/* 800A1CC4  41 82 00 24 */	beq lbl_800A1CE8
/* 800A1CC8  28 00 00 71 */	cmplwi r0, 0x71
/* 800A1CCC  41 82 00 1C */	beq lbl_800A1CE8
/* 800A1CD0  28 00 00 1C */	cmplwi r0, 0x1c
/* 800A1CD4  41 82 00 14 */	beq lbl_800A1CE8
/* 800A1CD8  28 00 00 3C */	cmplwi r0, 0x3c
/* 800A1CDC  41 82 00 0C */	beq lbl_800A1CE8
/* 800A1CE0  28 00 00 F1 */	cmplwi r0, 0xf1
/* 800A1CE4  40 82 01 1C */	bne lbl_800A1E00
lbl_800A1CE8:
/* 800A1CE8  28 1E 00 00 */	cmplwi r30, 0
/* 800A1CEC  41 82 00 18 */	beq lbl_800A1D04
/* 800A1CF0  38 1E FF FF */	addi r0, r30, -1
/* 800A1CF4  98 1F 2F A7 */	stb r0, 0x2fa7(r31)
/* 800A1CF8  D3 FF 34 18 */	stfs f31, 0x3418(r31)
/* 800A1CFC  D3 DF 34 1C */	stfs f30, 0x341c(r31)
/* 800A1D00  48 00 00 F4 */	b lbl_800A1DF4
lbl_800A1D04:
/* 800A1D04  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A1D08  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 800A1D0C  40 82 00 0C */	bne lbl_800A1D18
/* 800A1D10  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 800A1D14  41 82 00 88 */	beq lbl_800A1D9C
lbl_800A1D18:
/* 800A1D18  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800A1D1C  28 00 00 60 */	cmplwi r0, 0x60
/* 800A1D20  41 82 00 14 */	beq lbl_800A1D34
/* 800A1D24  48 1C 5B 49 */	bl cM_rnd__Fv
/* 800A1D28  C0 02 92 98 */	lfs f0, lit_5943(r2)
/* 800A1D2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A1D30  40 80 00 14 */	bge lbl_800A1D44
lbl_800A1D34:
/* 800A1D34  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A1D38  D0 1F 34 18 */	stfs f0, 0x3418(r31)
/* 800A1D3C  D0 1F 34 1C */	stfs f0, 0x341c(r31)
/* 800A1D40  48 00 00 B4 */	b lbl_800A1DF4
lbl_800A1D44:
/* 800A1D44  C0 3F 34 18 */	lfs f1, 0x3418(r31)
/* 800A1D48  C0 5F 34 1C */	lfs f2, 0x341c(r31)
/* 800A1D4C  48 1C 59 29 */	bl cM_atan2s__Fff
/* 800A1D50  7C 7E 1B 78 */	mr r30, r3
/* 800A1D54  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800A1D58  48 1C 5B FD */	bl cM_rndF__Ff
/* 800A1D5C  FC 00 08 1E */	fctiwz f0, f1
/* 800A1D60  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 800A1D64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A1D68  54 03 68 24 */	slwi r3, r0, 0xd
/* 800A1D6C  38 03 60 00 */	addi r0, r3, 0x6000
/* 800A1D70  7C 00 07 34 */	extsh r0, r0
/* 800A1D74  7C 1E 02 14 */	add r0, r30, r0
/* 800A1D78  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800A1D7C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800A1D80  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800A1D84  7C 03 04 2E */	lfsx f0, r3, r0
/* 800A1D88  D0 1F 34 18 */	stfs f0, 0x3418(r31)
/* 800A1D8C  7C 63 02 14 */	add r3, r3, r0
/* 800A1D90  C0 03 00 04 */	lfs f0, 4(r3)
/* 800A1D94  D0 1F 34 1C */	stfs f0, 0x341c(r31)
/* 800A1D98  48 00 00 5C */	b lbl_800A1DF4
lbl_800A1D9C:
/* 800A1D9C  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800A1DA0  28 00 00 60 */	cmplwi r0, 0x60
/* 800A1DA4  40 82 00 1C */	bne lbl_800A1DC0
/* 800A1DA8  80 1F 28 30 */	lwz r0, 0x2830(r31)
/* 800A1DAC  28 00 00 00 */	cmplwi r0, 0
/* 800A1DB0  41 82 00 10 */	beq lbl_800A1DC0
/* 800A1DB4  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 800A1DB8  D0 1F 34 18 */	stfs f0, 0x3418(r31)
/* 800A1DBC  48 00 00 38 */	b lbl_800A1DF4
lbl_800A1DC0:
/* 800A1DC0  C0 22 93 8C */	lfs f1, lit_8783(r2)
/* 800A1DC4  48 1C 5B 91 */	bl cM_rndF__Ff
/* 800A1DC8  FC 00 08 1E */	fctiwz f0, f1
/* 800A1DCC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 800A1DD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A1DD4  54 00 6C 24 */	rlwinm r0, r0, 0xd, 0x10, 0x12
/* 800A1DD8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800A1DDC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800A1DE0  7C 03 04 2E */	lfsx f0, r3, r0
/* 800A1DE4  D0 1F 34 18 */	stfs f0, 0x3418(r31)
/* 800A1DE8  7C 63 02 14 */	add r3, r3, r0
/* 800A1DEC  C0 03 00 04 */	lfs f0, 4(r3)
/* 800A1DF0  D0 1F 34 1C */	stfs f0, 0x341c(r31)
lbl_800A1DF4:
/* 800A1DF4  C0 1F 34 18 */	lfs f0, 0x3418(r31)
/* 800A1DF8  C0 9F 34 1C */	lfs f4, 0x341c(r31)
/* 800A1DFC  48 00 00 48 */	b lbl_800A1E44
lbl_800A1E00:
/* 800A1E00  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A1E04  80 7F 21 80 */	lwz r3, 0x2180(r31)
/* 800A1E08  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 800A1E0C  80 7F 21 84 */	lwz r3, 0x2184(r31)
/* 800A1E10  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 800A1E14  80 7F 21 80 */	lwz r3, 0x2180(r31)
/* 800A1E18  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 800A1E1C  80 7F 21 84 */	lwz r3, 0x2184(r31)
/* 800A1E20  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 800A1E24  88 0D 8A 48 */	lbz r0, struct_80450FC8+0x0(r13)
/* 800A1E28  28 00 00 00 */	cmplwi r0, 0
/* 800A1E2C  41 82 01 3C */	beq lbl_800A1F68
/* 800A1E30  38 00 00 00 */	li r0, 0
/* 800A1E34  98 0D 8A 48 */	stb r0, struct_80450FC8+0x0(r13)
/* 800A1E38  38 00 00 03 */	li r0, 3
/* 800A1E3C  98 0D 8A 49 */	stb r0, struct_80450FC8+0x1(r13)
/* 800A1E40  48 00 01 28 */	b lbl_800A1F68
lbl_800A1E44:
/* 800A1E44  88 0D 8A 49 */	lbz r0, struct_80450FC8+0x1(r13)
/* 800A1E48  28 00 00 00 */	cmplwi r0, 0
/* 800A1E4C  40 82 01 1C */	bne lbl_800A1F68
/* 800A1E50  C0 42 92 BC */	lfs f2, lit_6041(r2)
/* 800A1E54  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 800A1E58  40 80 00 08 */	bge lbl_800A1E60
/* 800A1E5C  48 00 00 18 */	b lbl_800A1E74
lbl_800A1E60:
/* 800A1E60  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 800A1E64  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 800A1E68  40 81 00 08 */	ble lbl_800A1E70
/* 800A1E6C  48 00 00 08 */	b lbl_800A1E74
lbl_800A1E70:
/* 800A1E70  FC 40 00 90 */	fmr f2, f0
lbl_800A1E74:
/* 800A1E74  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 800A1E78  FC 04 18 40 */	fcmpo cr0, f4, f3
/* 800A1E7C  40 80 00 08 */	bge lbl_800A1E84
/* 800A1E80  48 00 00 18 */	b lbl_800A1E98
lbl_800A1E84:
/* 800A1E84  C0 62 92 B8 */	lfs f3, lit_6040(r2)
/* 800A1E88  FC 04 18 40 */	fcmpo cr0, f4, f3
/* 800A1E8C  40 81 00 08 */	ble lbl_800A1E94
/* 800A1E90  48 00 00 08 */	b lbl_800A1E98
lbl_800A1E94:
/* 800A1E94  FC 60 20 90 */	fmr f3, f4
lbl_800A1E98:
/* 800A1E98  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A1E9C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800A1EA0  40 81 00 18 */	ble lbl_800A1EB8
/* 800A1EA4  C0 02 94 E0 */	lfs f0, lit_19379(r2)
/* 800A1EA8  EC 20 00 B2 */	fmuls f1, f0, f2
/* 800A1EAC  C0 02 93 EC */	lfs f0, lit_13119(r2)
/* 800A1EB0  EF C0 00 B2 */	fmuls f30, f0, f2
/* 800A1EB4  48 00 00 14 */	b lbl_800A1EC8
lbl_800A1EB8:
/* 800A1EB8  C0 02 93 EC */	lfs f0, lit_13119(r2)
/* 800A1EBC  EC 20 00 B2 */	fmuls f1, f0, f2
/* 800A1EC0  C0 02 94 E0 */	lfs f0, lit_19379(r2)
/* 800A1EC4  EF C0 00 B2 */	fmuls f30, f0, f2
lbl_800A1EC8:
/* 800A1EC8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A1ECC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 800A1ED0  40 81 00 10 */	ble lbl_800A1EE0
/* 800A1ED4  C0 02 93 F8 */	lfs f0, lit_13700(r2)
/* 800A1ED8  EF E0 00 F2 */	fmuls f31, f0, f3
/* 800A1EDC  48 00 00 0C */	b lbl_800A1EE8
lbl_800A1EE0:
/* 800A1EE0  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 800A1EE4  EF E0 00 F2 */	fmuls f31, f0, f3
lbl_800A1EE8:
/* 800A1EE8  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800A1EEC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A1EF0  41 82 00 10 */	beq lbl_800A1F00
/* 800A1EF4  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 800A1EF8  EC 21 00 32 */	fmuls f1, f1, f0
/* 800A1EFC  EF DE 00 32 */	fmuls f30, f30, f0
lbl_800A1F00:
/* 800A1F00  38 00 00 01 */	li r0, 1
/* 800A1F04  98 0D 8A 48 */	stb r0, struct_80450FC8+0x0(r13)
/* 800A1F08  80 7F 21 80 */	lwz r3, 0x2180(r31)
/* 800A1F0C  38 63 00 FC */	addi r3, r3, 0xfc
/* 800A1F10  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800A1F14  C0 62 93 A0 */	lfs f3, lit_9054(r2)
/* 800A1F18  C0 82 98 1C */	lfs f4, lit_55847(r2)
/* 800A1F1C  48 1C DA 61 */	bl cLib_addCalc__FPfffff
/* 800A1F20  80 7F 21 84 */	lwz r3, 0x2184(r31)
/* 800A1F24  38 63 00 FC */	addi r3, r3, 0xfc
/* 800A1F28  FC 20 F0 90 */	fmr f1, f30
/* 800A1F2C  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800A1F30  C0 62 93 A0 */	lfs f3, lit_9054(r2)
/* 800A1F34  C0 82 98 1C */	lfs f4, lit_55847(r2)
/* 800A1F38  48 1C DA 45 */	bl cLib_addCalc__FPfffff
/* 800A1F3C  80 7F 21 80 */	lwz r3, 0x2180(r31)
/* 800A1F40  38 63 01 00 */	addi r3, r3, 0x100
/* 800A1F44  FC 20 F8 90 */	fmr f1, f31
/* 800A1F48  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800A1F4C  C0 62 98 20 */	lfs f3, lit_55848(r2)
/* 800A1F50  C0 82 94 44 */	lfs f4, lit_14760(r2)
/* 800A1F54  48 1C DA 29 */	bl cLib_addCalc__FPfffff
/* 800A1F58  80 7F 21 80 */	lwz r3, 0x2180(r31)
/* 800A1F5C  C0 03 01 00 */	lfs f0, 0x100(r3)
/* 800A1F60  80 7F 21 84 */	lwz r3, 0x2184(r31)
/* 800A1F64  D0 03 01 00 */	stfs f0, 0x100(r3)
lbl_800A1F68:
/* 800A1F68  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 800A1F6C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 800A1F70  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 800A1F74  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 800A1F78  39 61 00 30 */	addi r11, r1, 0x30
/* 800A1F7C  48 2C 02 A5 */	bl _restgpr_27
/* 800A1F80  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800A1F84  7C 08 03 A6 */	mtlr r0
/* 800A1F88  38 21 00 50 */	addi r1, r1, 0x50
/* 800A1F8C  4E 80 00 20 */	blr 
