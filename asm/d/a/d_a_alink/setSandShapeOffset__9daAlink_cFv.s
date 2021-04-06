lbl_800B1BAC:
/* 800B1BAC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800B1BB0  7C 08 02 A6 */	mflr r0
/* 800B1BB4  90 01 00 54 */	stw r0, 0x54(r1)
/* 800B1BB8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 800B1BBC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 800B1BC0  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 800B1BC4  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 800B1BC8  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 800B1BCC  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 800B1BD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800B1BD4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800B1BD8  7C 7E 1B 78 */	mr r30, r3
/* 800B1BDC  C3 C2 92 C0 */	lfs f30, lit_6108(r2)
/* 800B1BE0  FF A0 F0 90 */	fmr f29, f30
/* 800B1BE4  C3 E3 2B A8 */	lfs f31, 0x2ba8(r3)
/* 800B1BE8  48 06 40 39 */	bl checkEventRun__9daAlink_cCFv
/* 800B1BEC  7C 7F 1B 78 */	mr r31, r3
/* 800B1BF0  80 1E 19 9C */	lwz r0, 0x199c(r30)
/* 800B1BF4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800B1BF8  41 82 01 EC */	beq lbl_800B1DE4
/* 800B1BFC  88 1E 2F BB */	lbz r0, 0x2fbb(r30)
/* 800B1C00  28 00 00 03 */	cmplwi r0, 3
/* 800B1C04  41 82 00 14 */	beq lbl_800B1C18
/* 800B1C08  7F C3 F3 78 */	mr r3, r30
/* 800B1C0C  48 05 3E 8D */	bl checkSnowCode__9daAlink_cCFv
/* 800B1C10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B1C14  41 82 01 D0 */	beq lbl_800B1DE4
lbl_800B1C18:
/* 800B1C18  80 7E 31 A0 */	lwz r3, 0x31a0(r30)
/* 800B1C1C  70 60 04 40 */	andi. r0, r3, 0x440
/* 800B1C20  40 82 01 C4 */	bne lbl_800B1DE4
/* 800B1C24  2C 1F 00 00 */	cmpwi r31, 0
/* 800B1C28  40 82 01 C4 */	bne lbl_800B1DEC
/* 800B1C2C  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 800B1C30  40 82 01 BC */	bne lbl_800B1DEC
/* 800B1C34  7F C3 F3 78 */	mr r3, r30
/* 800B1C38  48 05 3E 61 */	bl checkSnowCode__9daAlink_cCFv
/* 800B1C3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B1C40  41 82 00 54 */	beq lbl_800B1C94
/* 800B1C44  7F C3 F3 78 */	mr r3, r30
/* 800B1C48  48 00 1C BD */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800B1C4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B1C50  41 82 00 10 */	beq lbl_800B1C60
/* 800B1C54  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800B1C58  28 00 00 20 */	cmplwi r0, 0x20
/* 800B1C5C  40 82 01 90 */	bne lbl_800B1DEC
lbl_800B1C60:
/* 800B1C60  C3 A2 92 B8 */	lfs f29, lit_6040(r2)
/* 800B1C64  88 1E 2F A8 */	lbz r0, 0x2fa8(r30)
/* 800B1C68  28 00 00 05 */	cmplwi r0, 5
/* 800B1C6C  40 82 00 0C */	bne lbl_800B1C78
/* 800B1C70  C3 C2 94 34 */	lfs f30, lit_14624(r2)
/* 800B1C74  48 00 01 78 */	b lbl_800B1DEC
lbl_800B1C78:
/* 800B1C78  C0 3E 2B A8 */	lfs f1, 0x2ba8(r30)
/* 800B1C7C  C0 02 94 34 */	lfs f0, lit_14624(r2)
/* 800B1C80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B1C84  40 81 00 08 */	ble lbl_800B1C8C
/* 800B1C88  C3 A2 93 30 */	lfs f29, lit_7625(r2)
lbl_800B1C8C:
/* 800B1C8C  C3 C2 95 14 */	lfs f30, lit_20823(r2)
/* 800B1C90  48 00 01 5C */	b lbl_800B1DEC
lbl_800B1C94:
/* 800B1C94  88 1E 2F BD */	lbz r0, 0x2fbd(r30)
/* 800B1C98  28 00 00 04 */	cmplwi r0, 4
/* 800B1C9C  40 82 00 30 */	bne lbl_800B1CCC
/* 800B1CA0  C3 C2 92 A0 */	lfs f30, lit_5945(r2)
/* 800B1CA4  C0 3E 2B A8 */	lfs f1, 0x2ba8(r30)
/* 800B1CA8  C0 02 94 34 */	lfs f0, lit_14624(r2)
/* 800B1CAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B1CB0  40 81 00 0C */	ble lbl_800B1CBC
/* 800B1CB4  C3 A2 93 30 */	lfs f29, lit_7625(r2)
/* 800B1CB8  48 00 01 34 */	b lbl_800B1DEC
lbl_800B1CBC:
/* 800B1CBC  3C 60 80 39 */	lis r3, m__19daAlinkHIO_basic_c0@ha /* 0x8038D664@ha */
/* 800B1CC0  38 63 D6 64 */	addi r3, r3, m__19daAlinkHIO_basic_c0@l /* 0x8038D664@l */
/* 800B1CC4  C3 A3 00 48 */	lfs f29, 0x48(r3)
/* 800B1CC8  48 00 01 24 */	b lbl_800B1DEC
lbl_800B1CCC:
/* 800B1CCC  28 00 00 02 */	cmplwi r0, 2
/* 800B1CD0  40 82 00 10 */	bne lbl_800B1CE0
/* 800B1CD4  C3 DE 34 5C */	lfs f30, 0x345c(r30)
/* 800B1CD8  C3 A2 93 44 */	lfs f29, lit_7977(r2)
/* 800B1CDC  48 00 01 10 */	b lbl_800B1DEC
lbl_800B1CE0:
/* 800B1CE0  28 00 00 03 */	cmplwi r0, 3
/* 800B1CE4  40 82 00 44 */	bne lbl_800B1D28
/* 800B1CE8  C3 DE 34 58 */	lfs f30, 0x3458(r30)
/* 800B1CEC  C0 3E 2B A8 */	lfs f1, 0x2ba8(r30)
/* 800B1CF0  C0 02 94 34 */	lfs f0, lit_14624(r2)
/* 800B1CF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B1CF8  40 81 00 0C */	ble lbl_800B1D04
/* 800B1CFC  C3 A2 93 30 */	lfs f29, lit_7625(r2)
/* 800B1D00  48 00 00 EC */	b lbl_800B1DEC
lbl_800B1D04:
/* 800B1D04  3C 60 80 39 */	lis r3, m__19daAlinkHIO_basic_c0@ha /* 0x8038D664@ha */
/* 800B1D08  38 63 D6 64 */	addi r3, r3, m__19daAlinkHIO_basic_c0@l /* 0x8038D664@l */
/* 800B1D0C  C3 A3 00 48 */	lfs f29, 0x48(r3)
/* 800B1D10  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800B1D14  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B1D18  41 82 00 D4 */	beq lbl_800B1DEC
/* 800B1D1C  C0 02 98 A8 */	lfs f0, lit_64730(r2)
/* 800B1D20  EF BD 00 32 */	fmuls f29, f29, f0
/* 800B1D24  48 00 00 C8 */	b lbl_800B1DEC
lbl_800B1D28:
/* 800B1D28  28 00 00 01 */	cmplwi r0, 1
/* 800B1D2C  40 82 00 68 */	bne lbl_800B1D94
/* 800B1D30  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 800B1D34  C0 02 93 14 */	lfs f0, lit_7307(r2)
/* 800B1D38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B1D3C  40 80 00 44 */	bge lbl_800B1D80
/* 800B1D40  C3 DE 34 58 */	lfs f30, 0x3458(r30)
/* 800B1D44  C0 3E 2B A8 */	lfs f1, 0x2ba8(r30)
/* 800B1D48  C0 02 94 34 */	lfs f0, lit_14624(r2)
/* 800B1D4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B1D50  40 81 00 0C */	ble lbl_800B1D5C
/* 800B1D54  C3 A2 93 30 */	lfs f29, lit_7625(r2)
/* 800B1D58  48 00 00 10 */	b lbl_800B1D68
lbl_800B1D5C:
/* 800B1D5C  3C 60 80 39 */	lis r3, m__19daAlinkHIO_basic_c0@ha /* 0x8038D664@ha */
/* 800B1D60  38 63 D6 64 */	addi r3, r3, m__19daAlinkHIO_basic_c0@l /* 0x8038D664@l */
/* 800B1D64  C3 A3 00 48 */	lfs f29, 0x48(r3)
lbl_800B1D68:
/* 800B1D68  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800B1D6C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B1D70  41 82 00 7C */	beq lbl_800B1DEC
/* 800B1D74  C0 02 98 A8 */	lfs f0, lit_64730(r2)
/* 800B1D78  EF BD 00 32 */	fmuls f29, f29, f0
/* 800B1D7C  48 00 00 70 */	b lbl_800B1DEC
lbl_800B1D80:
/* 800B1D80  C3 C2 94 34 */	lfs f30, lit_14624(r2)
/* 800B1D84  3C 60 80 39 */	lis r3, m__19daAlinkHIO_basic_c0@ha /* 0x8038D664@ha */
/* 800B1D88  38 63 D6 64 */	addi r3, r3, m__19daAlinkHIO_basic_c0@l /* 0x8038D664@l */
/* 800B1D8C  C3 A3 00 4C */	lfs f29, 0x4c(r3)
/* 800B1D90  48 00 00 5C */	b lbl_800B1DEC
lbl_800B1D94:
/* 800B1D94  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 800B1D98  C0 02 93 14 */	lfs f0, lit_7307(r2)
/* 800B1D9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B1DA0  40 80 00 14 */	bge lbl_800B1DB4
/* 800B1DA4  C0 3E 2B A8 */	lfs f1, 0x2ba8(r30)
/* 800B1DA8  C0 02 94 34 */	lfs f0, lit_14624(r2)
/* 800B1DAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B1DB0  41 80 00 3C */	blt lbl_800B1DEC
lbl_800B1DB4:
/* 800B1DB4  C3 C2 94 34 */	lfs f30, lit_14624(r2)
/* 800B1DB8  C0 1E 2B A8 */	lfs f0, 0x2ba8(r30)
/* 800B1DBC  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 800B1DC0  40 80 00 14 */	bge lbl_800B1DD4
/* 800B1DC4  3C 60 80 39 */	lis r3, m__19daAlinkHIO_basic_c0@ha /* 0x8038D664@ha */
/* 800B1DC8  38 63 D6 64 */	addi r3, r3, m__19daAlinkHIO_basic_c0@l /* 0x8038D664@l */
/* 800B1DCC  C3 A3 00 4C */	lfs f29, 0x4c(r3)
/* 800B1DD0  48 00 00 1C */	b lbl_800B1DEC
lbl_800B1DD4:
/* 800B1DD4  3C 60 80 39 */	lis r3, m__19daAlinkHIO_basic_c0@ha /* 0x8038D664@ha */
/* 800B1DD8  38 63 D6 64 */	addi r3, r3, m__19daAlinkHIO_basic_c0@l /* 0x8038D664@l */
/* 800B1DDC  C3 A3 00 48 */	lfs f29, 0x48(r3)
/* 800B1DE0  48 00 00 0C */	b lbl_800B1DEC
lbl_800B1DE4:
/* 800B1DE4  C3 C2 92 C0 */	lfs f30, lit_6108(r2)
/* 800B1DE8  C3 A2 93 30 */	lfs f29, lit_7625(r2)
lbl_800B1DEC:
/* 800B1DEC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800B1DF0  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 800B1DF4  40 81 00 14 */	ble lbl_800B1E08
/* 800B1DF8  38 7E 2B A8 */	addi r3, r30, 0x2ba8
/* 800B1DFC  FC 20 F0 90 */	fmr f1, f30
/* 800B1E00  FC 40 E8 90 */	fmr f2, f29
/* 800B1E04  48 1B E9 3D */	bl cLib_chaseF__FPfff
lbl_800B1E08:
/* 800B1E08  C0 1E 2B A8 */	lfs f0, 0x2ba8(r30)
/* 800B1E0C  C0 62 94 34 */	lfs f3, lit_14624(r2)
/* 800B1E10  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 800B1E14  40 80 00 E8 */	bge lbl_800B1EFC
/* 800B1E18  88 1E 2F BB */	lbz r0, 0x2fbb(r30)
/* 800B1E1C  98 1E 2F C9 */	stb r0, 0x2fc9(r30)
/* 800B1E20  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800B1E24  28 00 01 55 */	cmplwi r0, 0x155
/* 800B1E28  40 82 00 0C */	bne lbl_800B1E34
/* 800B1E2C  38 00 00 7F */	li r0, 0x7f
/* 800B1E30  48 00 00 58 */	b lbl_800B1E88
lbl_800B1E34:
/* 800B1E34  C0 42 98 AC */	lfs f2, lit_64731(r2)
/* 800B1E38  C0 1E 2B A8 */	lfs f0, 0x2ba8(r30)
/* 800B1E3C  EC 20 18 28 */	fsubs f1, f0, f3
/* 800B1E40  C0 1E 34 58 */	lfs f0, 0x3458(r30)
/* 800B1E44  EC 00 18 28 */	fsubs f0, f0, f3
/* 800B1E48  EC 01 00 24 */	fdivs f0, f1, f0
/* 800B1E4C  EC 22 00 32 */	fmuls f1, f2, f0
/* 800B1E50  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800B1E54  EC 01 00 28 */	fsubs f0, f1, f0
/* 800B1E58  FC 00 00 1E */	fctiwz f0, f0
/* 800B1E5C  D8 01 00 08 */	stfd f0, 8(r1)
/* 800B1E60  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800B1E64  2C 00 FF FF */	cmpwi r0, -1
/* 800B1E68  40 80 00 0C */	bge lbl_800B1E74
/* 800B1E6C  38 60 FF FF */	li r3, -1
/* 800B1E70  48 00 00 14 */	b lbl_800B1E84
lbl_800B1E74:
/* 800B1E74  2C 00 00 7F */	cmpwi r0, 0x7f
/* 800B1E78  38 60 00 7F */	li r3, 0x7f
/* 800B1E7C  41 81 00 08 */	bgt lbl_800B1E84
/* 800B1E80  7C 03 03 78 */	mr r3, r0
lbl_800B1E84:
/* 800B1E84  7C 60 1B 78 */	mr r0, r3
lbl_800B1E88:
/* 800B1E88  38 7E 2C A8 */	addi r3, r30, 0x2ca8
/* 800B1E8C  7C 04 07 74 */	extsb r4, r0
/* 800B1E90  48 21 1B D5 */	bl setSinkDepth__14Z2CreatureLinkFSc
/* 800B1E94  C0 1E 2B A8 */	lfs f0, 0x2ba8(r30)
/* 800B1E98  EC 1F 00 28 */	fsubs f0, f31, f0
/* 800B1E9C  FC 00 02 10 */	fabs f0, f0
/* 800B1EA0  FC 20 00 18 */	frsp f1, f0
/* 800B1EA4  C0 02 93 88 */	lfs f0, lit_8782(r2)
/* 800B1EA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B1EAC  40 81 00 A8 */	ble lbl_800B1F54
/* 800B1EB0  88 1E 2F BB */	lbz r0, 0x2fbb(r30)
/* 800B1EB4  28 00 00 0D */	cmplwi r0, 0xd
/* 800B1EB8  40 82 00 24 */	bne lbl_800B1EDC
/* 800B1EBC  7F C3 F3 78 */	mr r3, r30
/* 800B1EC0  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020073@ha */
/* 800B1EC4  38 84 00 73 */	addi r4, r4, 0x0073 /* 0x00020073@l */
/* 800B1EC8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800B1ECC  81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 800B1ED0  7D 89 03 A6 */	mtctr r12
/* 800B1ED4  4E 80 04 21 */	bctrl 
/* 800B1ED8  48 00 00 7C */	b lbl_800B1F54
lbl_800B1EDC:
/* 800B1EDC  7F C3 F3 78 */	mr r3, r30
/* 800B1EE0  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020070@ha */
/* 800B1EE4  38 84 00 70 */	addi r4, r4, 0x0070 /* 0x00020070@l */
/* 800B1EE8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800B1EEC  81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 800B1EF0  7D 89 03 A6 */	mtctr r12
/* 800B1EF4  4E 80 04 21 */	bctrl 
/* 800B1EF8  48 00 00 5C */	b lbl_800B1F54
lbl_800B1EFC:
/* 800B1EFC  88 1E 2F C9 */	lbz r0, 0x2fc9(r30)
/* 800B1F00  28 00 00 10 */	cmplwi r0, 0x10
/* 800B1F04  41 82 00 50 */	beq lbl_800B1F54
/* 800B1F08  28 00 00 0D */	cmplwi r0, 0xd
/* 800B1F0C  40 82 00 24 */	bne lbl_800B1F30
/* 800B1F10  7F C3 F3 78 */	mr r3, r30
/* 800B1F14  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020074@ha */
/* 800B1F18  38 84 00 74 */	addi r4, r4, 0x0074 /* 0x00020074@l */
/* 800B1F1C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800B1F20  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800B1F24  7D 89 03 A6 */	mtctr r12
/* 800B1F28  4E 80 04 21 */	bctrl 
/* 800B1F2C  48 00 00 20 */	b lbl_800B1F4C
lbl_800B1F30:
/* 800B1F30  7F C3 F3 78 */	mr r3, r30
/* 800B1F34  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020071@ha */
/* 800B1F38  38 84 00 71 */	addi r4, r4, 0x0071 /* 0x00020071@l */
/* 800B1F3C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800B1F40  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800B1F44  7D 89 03 A6 */	mtctr r12
/* 800B1F48  4E 80 04 21 */	bctrl 
lbl_800B1F4C:
/* 800B1F4C  38 00 00 10 */	li r0, 0x10
/* 800B1F50  98 1E 2F C9 */	stb r0, 0x2fc9(r30)
lbl_800B1F54:
/* 800B1F54  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800B1F58  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B1F5C  41 82 00 2C */	beq lbl_800B1F88
/* 800B1F60  2C 1F 00 00 */	cmpwi r31, 0
/* 800B1F64  40 82 00 24 */	bne lbl_800B1F88
/* 800B1F68  C0 3E 2B A8 */	lfs f1, 0x2ba8(r30)
/* 800B1F6C  C0 02 94 0C */	lfs f0, lit_14614(r2)
/* 800B1F70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B1F74  40 80 00 14 */	bge lbl_800B1F88
/* 800B1F78  80 6D 8A 98 */	lwz r3, m_midnaActor__9daPy_py_c(r13)
/* 800B1F7C  80 03 08 98 */	lwz r0, 0x898(r3)
/* 800B1F80  60 00 00 08 */	ori r0, r0, 8
/* 800B1F84  90 03 08 98 */	stw r0, 0x898(r3)
lbl_800B1F88:
/* 800B1F88  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 800B1F8C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 800B1F90  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 800B1F94  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 800B1F98  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 800B1F9C  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 800B1FA0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800B1FA4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800B1FA8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800B1FAC  7C 08 03 A6 */	mtlr r0
/* 800B1FB0  38 21 00 50 */	addi r1, r1, 0x50
/* 800B1FB4  4E 80 00 20 */	blr 
