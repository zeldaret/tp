lbl_8046BEB8:
/* 8046BEB8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8046BEBC  7C 08 02 A6 */	mflr r0
/* 8046BEC0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8046BEC4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8046BEC8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8046BECC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8046BED0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8046BED4  7C 7E 1B 78 */	mr r30, r3
/* 8046BED8  3C 60 80 47 */	lis r3, lit_3798@ha
/* 8046BEDC  3B E3 C9 80 */	addi r31, r3, lit_3798@l
/* 8046BEE0  38 61 00 0C */	addi r3, r1, 0xc
/* 8046BEE4  7F C4 F3 78 */	mr r4, r30
/* 8046BEE8  4B FF F8 31 */	bl get_check_pos__FP13kytag00_class
/* 8046BEEC  C0 81 00 0C */	lfs f4, 0xc(r1)
/* 8046BEF0  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 8046BEF4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8046BEF8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8046BEFC  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 8046BF00  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8046BF04  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8046BF08  80 1E 05 7C */	lwz r0, 0x57c(r30)
/* 8046BF0C  C8 3F 00 30 */	lfd f1, 0x30(r31)
/* 8046BF10  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8046BF14  90 01 00 34 */	stw r0, 0x34(r1)
/* 8046BF18  3C 00 43 30 */	lis r0, 0x4330
/* 8046BF1C  90 01 00 30 */	stw r0, 0x30(r1)
/* 8046BF20  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8046BF24  EC 00 08 28 */	fsubs f0, f0, f1
/* 8046BF28  EF E2 00 32 */	fmuls f31, f2, f0
/* 8046BF2C  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 8046BF30  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8046BF34  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8046BF38  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 8046BF3C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8046BF40  38 81 00 24 */	addi r4, r1, 0x24
/* 8046BF44  4B ED B4 58 */	b PSVECSquareDistance
/* 8046BF48  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8046BF4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046BF50  40 81 00 58 */	ble lbl_8046BFA8
/* 8046BF54  FC 00 08 34 */	frsqrte f0, f1
/* 8046BF58  C8 9F 00 08 */	lfd f4, 8(r31)
/* 8046BF5C  FC 44 00 32 */	fmul f2, f4, f0
/* 8046BF60  C8 7F 00 10 */	lfd f3, 0x10(r31)
/* 8046BF64  FC 00 00 32 */	fmul f0, f0, f0
/* 8046BF68  FC 01 00 32 */	fmul f0, f1, f0
/* 8046BF6C  FC 03 00 28 */	fsub f0, f3, f0
/* 8046BF70  FC 02 00 32 */	fmul f0, f2, f0
/* 8046BF74  FC 44 00 32 */	fmul f2, f4, f0
/* 8046BF78  FC 00 00 32 */	fmul f0, f0, f0
/* 8046BF7C  FC 01 00 32 */	fmul f0, f1, f0
/* 8046BF80  FC 03 00 28 */	fsub f0, f3, f0
/* 8046BF84  FC 02 00 32 */	fmul f0, f2, f0
/* 8046BF88  FC 44 00 32 */	fmul f2, f4, f0
/* 8046BF8C  FC 00 00 32 */	fmul f0, f0, f0
/* 8046BF90  FC 01 00 32 */	fmul f0, f1, f0
/* 8046BF94  FC 03 00 28 */	fsub f0, f3, f0
/* 8046BF98  FC 02 00 32 */	fmul f0, f2, f0
/* 8046BF9C  FC 21 00 32 */	fmul f1, f1, f0
/* 8046BFA0  FC 20 08 18 */	frsp f1, f1
/* 8046BFA4  48 00 00 88 */	b lbl_8046C02C
lbl_8046BFA8:
/* 8046BFA8  C8 1F 00 18 */	lfd f0, 0x18(r31)
/* 8046BFAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046BFB0  40 80 00 10 */	bge lbl_8046BFC0
/* 8046BFB4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8046BFB8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8046BFBC  48 00 00 70 */	b lbl_8046C02C
lbl_8046BFC0:
/* 8046BFC0  D0 21 00 08 */	stfs f1, 8(r1)
/* 8046BFC4  80 81 00 08 */	lwz r4, 8(r1)
/* 8046BFC8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8046BFCC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8046BFD0  7C 03 00 00 */	cmpw r3, r0
/* 8046BFD4  41 82 00 14 */	beq lbl_8046BFE8
/* 8046BFD8  40 80 00 40 */	bge lbl_8046C018
/* 8046BFDC  2C 03 00 00 */	cmpwi r3, 0
/* 8046BFE0  41 82 00 20 */	beq lbl_8046C000
/* 8046BFE4  48 00 00 34 */	b lbl_8046C018
lbl_8046BFE8:
/* 8046BFE8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8046BFEC  41 82 00 0C */	beq lbl_8046BFF8
/* 8046BFF0  38 00 00 01 */	li r0, 1
/* 8046BFF4  48 00 00 28 */	b lbl_8046C01C
lbl_8046BFF8:
/* 8046BFF8  38 00 00 02 */	li r0, 2
/* 8046BFFC  48 00 00 20 */	b lbl_8046C01C
lbl_8046C000:
/* 8046C000  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8046C004  41 82 00 0C */	beq lbl_8046C010
/* 8046C008  38 00 00 05 */	li r0, 5
/* 8046C00C  48 00 00 10 */	b lbl_8046C01C
lbl_8046C010:
/* 8046C010  38 00 00 03 */	li r0, 3
/* 8046C014  48 00 00 08 */	b lbl_8046C01C
lbl_8046C018:
/* 8046C018  38 00 00 04 */	li r0, 4
lbl_8046C01C:
/* 8046C01C  2C 00 00 01 */	cmpwi r0, 1
/* 8046C020  40 82 00 0C */	bne lbl_8046C02C
/* 8046C024  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8046C028  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8046C02C:
/* 8046C02C  C0 1E 05 84 */	lfs f0, 0x584(r30)
/* 8046C030  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046C034  40 80 05 F8 */	bge lbl_8046C62C
/* 8046C038  C0 81 00 1C */	lfs f4, 0x1c(r1)
/* 8046C03C  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 8046C040  EC 03 F8 28 */	fsubs f0, f3, f31
/* 8046C044  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8046C048  4C 41 13 82 */	cror 2, 1, 2
/* 8046C04C  40 82 05 E0 */	bne lbl_8046C62C
/* 8046C050  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 8046C054  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 8046C058  EC 02 00 32 */	fmuls f0, f2, f0
/* 8046C05C  EC 03 00 2A */	fadds f0, f3, f0
/* 8046C060  EC 1F 00 2A */	fadds f0, f31, f0
/* 8046C064  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8046C068  40 80 05 C4 */	bge lbl_8046C62C
/* 8046C06C  C0 1E 05 88 */	lfs f0, 0x588(r30)
/* 8046C070  C0 7F 00 00 */	lfs f3, 0(r31)
/* 8046C074  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 8046C078  40 81 05 B4 */	ble lbl_8046C62C
/* 8046C07C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8046C080  FC C0 00 90 */	fmr f6, f0
/* 8046C084  38 00 00 01 */	li r0, 1
/* 8046C088  98 1E 05 6C */	stb r0, 0x56c(r30)
/* 8046C08C  C0 9E 05 84 */	lfs f4, 0x584(r30)
/* 8046C090  C0 5E 05 80 */	lfs f2, 0x580(r30)
/* 8046C094  EC 44 10 28 */	fsubs f2, f4, f2
/* 8046C098  FC 03 10 00 */	fcmpu cr0, f3, f2
/* 8046C09C  41 82 00 18 */	beq lbl_8046C0B4
/* 8046C0A0  EC 04 08 28 */	fsubs f0, f4, f1
/* 8046C0A4  EC 00 10 24 */	fdivs f0, f0, f2
/* 8046C0A8  FC 00 30 40 */	fcmpo cr0, f0, f6
/* 8046C0AC  40 81 00 08 */	ble lbl_8046C0B4
/* 8046C0B0  FC 00 30 90 */	fmr f0, f6
lbl_8046C0B4:
/* 8046C0B4  C0 81 00 1C */	lfs f4, 0x1c(r1)
/* 8046C0B8  C0 BE 04 D4 */	lfs f5, 0x4d4(r30)
/* 8046C0BC  FC 04 28 40 */	fcmpo cr0, f4, f5
/* 8046C0C0  4C 40 13 82 */	cror 2, 0, 2
/* 8046C0C4  40 82 00 30 */	bne lbl_8046C0F4
/* 8046C0C8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8046C0CC  FC 02 F8 00 */	fcmpu cr0, f2, f31
/* 8046C0D0  41 82 00 5C */	beq lbl_8046C12C
/* 8046C0D4  EC 25 20 28 */	fsubs f1, f5, f4
/* 8046C0D8  EC 61 F8 24 */	fdivs f3, f1, f31
/* 8046C0DC  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 8046C0E0  40 80 00 08 */	bge lbl_8046C0E8
/* 8046C0E4  FC 60 10 90 */	fmr f3, f2
lbl_8046C0E8:
/* 8046C0E8  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8046C0EC  EC C1 18 28 */	fsubs f6, f1, f3
/* 8046C0F0  48 00 00 3C */	b lbl_8046C12C
lbl_8046C0F4:
/* 8046C0F4  C0 7F 00 00 */	lfs f3, 0(r31)
/* 8046C0F8  FC 03 F8 00 */	fcmpu cr0, f3, f31
/* 8046C0FC  41 82 00 30 */	beq lbl_8046C12C
/* 8046C100  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 8046C104  C0 3E 04 F0 */	lfs f1, 0x4f0(r30)
/* 8046C108  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046C10C  EC 25 08 2A */	fadds f1, f5, f1
/* 8046C110  EC 24 08 28 */	fsubs f1, f4, f1
/* 8046C114  EC 41 F8 24 */	fdivs f2, f1, f31
/* 8046C118  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 8046C11C  40 80 00 08 */	bge lbl_8046C124
/* 8046C120  FC 40 18 90 */	fmr f2, f3
lbl_8046C124:
/* 8046C124  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8046C128  EC C1 10 28 */	fsubs f6, f1, f2
lbl_8046C12C:
/* 8046C12C  C0 3E 05 88 */	lfs f1, 0x588(r30)
/* 8046C130  EC 26 00 72 */	fmuls f1, f6, f1
/* 8046C134  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046C138  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 8046C13C  28 00 00 12 */	cmplwi r0, 0x12
/* 8046C140  41 81 05 00 */	bgt lbl_8046C640
/* 8046C144  3C 60 80 47 */	lis r3, lit_4108@ha
/* 8046C148  38 63 CA 2C */	addi r3, r3, lit_4108@l
/* 8046C14C  54 00 10 3A */	slwi r0, r0, 2
/* 8046C150  7C 03 00 2E */	lwzx r0, r3, r0
/* 8046C154  7C 09 03 A6 */	mtctr r0
/* 8046C158  4E 80 04 20 */	bctr 
lbl_8046C15C:
/* 8046C15C  FC 20 00 90 */	fmr f1, f0
/* 8046C160  4B FF FC 01 */	bl raincnt_set__Ff
/* 8046C164  48 00 04 DC */	b lbl_8046C640
lbl_8046C168:
/* 8046C168  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8046C16C  7C 04 07 74 */	extsb r4, r0
/* 8046C170  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 8046C174  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)
/* 8046C178  7C 00 07 74 */	extsb r0, r0
/* 8046C17C  7C 04 00 00 */	cmpw r4, r0
/* 8046C180  40 82 00 B8 */	bne lbl_8046C238
/* 8046C184  38 00 00 00 */	li r0, 0
/* 8046C188  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046C18C  38 83 CA 54 */	addi r4, r3, g_env_light@l
/* 8046C190  98 04 0E 92 */	stb r0, 0xe92(r4)
/* 8046C194  80 64 0E 8C */	lwz r3, 0xe8c(r4)
/* 8046C198  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 8046C19C  EC 41 00 32 */	fmuls f2, f1, f0
/* 8046C1A0  FC 20 10 1E */	fctiwz f1, f2
/* 8046C1A4  D8 21 00 30 */	stfd f1, 0x30(r1)
/* 8046C1A8  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 8046C1AC  7C 03 28 00 */	cmpw r3, r5
/* 8046C1B0  40 80 00 2C */	bge lbl_8046C1DC
/* 8046C1B4  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8046C1B8  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8046C1BC  FC 20 08 1E */	fctiwz f1, f1
/* 8046C1C0  D8 21 00 30 */	stfd f1, 0x30(r1)
/* 8046C1C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046C1C8  7C 03 02 14 */	add r0, r3, r0
/* 8046C1CC  90 04 0E 8C */	stw r0, 0xe8c(r4)
/* 8046C1D0  7C 00 28 00 */	cmpw r0, r5
/* 8046C1D4  40 81 00 08 */	ble lbl_8046C1DC
/* 8046C1D8  90 A4 0E 8C */	stw r5, 0xe8c(r4)
lbl_8046C1DC:
/* 8046C1DC  38 00 00 00 */	li r0, 0
/* 8046C1E0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046C1E4  38 83 CA 54 */	addi r4, r3, g_env_light@l
/* 8046C1E8  98 04 0E B5 */	stb r0, 0xeb5(r4)
/* 8046C1EC  80 64 0E B8 */	lwz r3, 0xeb8(r4)
/* 8046C1F0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8046C1F4  EC 41 00 32 */	fmuls f2, f1, f0
/* 8046C1F8  FC 20 10 1E */	fctiwz f1, f2
/* 8046C1FC  D8 21 00 30 */	stfd f1, 0x30(r1)
/* 8046C200  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 8046C204  7C 03 28 00 */	cmpw r3, r5
/* 8046C208  40 80 00 44 */	bge lbl_8046C24C
/* 8046C20C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8046C210  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8046C214  FC 20 08 1E */	fctiwz f1, f1
/* 8046C218  D8 21 00 30 */	stfd f1, 0x30(r1)
/* 8046C21C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046C220  7C 03 02 14 */	add r0, r3, r0
/* 8046C224  90 04 0E B8 */	stw r0, 0xeb8(r4)
/* 8046C228  7C 00 28 00 */	cmpw r0, r5
/* 8046C22C  40 81 00 20 */	ble lbl_8046C24C
/* 8046C230  90 A4 0E B8 */	stw r5, 0xeb8(r4)
/* 8046C234  48 00 00 18 */	b lbl_8046C24C
lbl_8046C238:
/* 8046C238  38 00 00 00 */	li r0, 0
/* 8046C23C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046C240  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8046C244  90 03 0E 8C */	stw r0, 0xe8c(r3)
/* 8046C248  90 03 0E B8 */	stw r0, 0xeb8(r3)
lbl_8046C24C:
/* 8046C24C  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha
/* 8046C250  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l
/* 8046C254  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8046C258  EC 01 00 32 */	fmuls f0, f1, f0
/* 8046C25C  FC 00 00 1E */	fctiwz f0, f0
/* 8046C260  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8046C264  80 81 00 34 */	lwz r4, 0x34(r1)
/* 8046C268  4B E5 BD 4C */	b setSnowPower__10Z2EnvSeMgrFSc
/* 8046C26C  48 00 03 D4 */	b lbl_8046C640
lbl_8046C270:
/* 8046C270  38 C0 00 00 */	li r6, 0
/* 8046C274  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046C278  38 A3 CA 54 */	addi r5, r3, g_env_light@l
/* 8046C27C  98 C5 0E A9 */	stb r6, 0xea9(r5)
/* 8046C280  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8046C284  7C 04 07 74 */	extsb r4, r0
/* 8046C288  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 8046C28C  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)
/* 8046C290  7C 00 07 74 */	extsb r0, r0
/* 8046C294  7C 04 00 00 */	cmpw r4, r0
/* 8046C298  40 82 00 20 */	bne lbl_8046C2B8
/* 8046C29C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8046C2A0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8046C2A4  FC 00 00 1E */	fctiwz f0, f0
/* 8046C2A8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8046C2AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046C2B0  90 05 0E AC */	stw r0, 0xeac(r5)
/* 8046C2B4  48 00 00 08 */	b lbl_8046C2BC
lbl_8046C2B8:
/* 8046C2B8  90 C5 0E AC */	stw r6, 0xeac(r5)
lbl_8046C2BC:
/* 8046C2BC  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 8046C2C0  28 00 00 0E */	cmplwi r0, 0xe
/* 8046C2C4  40 82 03 7C */	bne lbl_8046C640
/* 8046C2C8  38 00 00 01 */	li r0, 1
/* 8046C2CC  98 05 0E A9 */	stb r0, 0xea9(r5)
/* 8046C2D0  48 00 03 70 */	b lbl_8046C640
lbl_8046C2D4:
/* 8046C2D4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046C2D8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8046C2DC  80 03 0E D8 */	lwz r0, 0xed8(r3)
/* 8046C2E0  2C 00 00 00 */	cmpwi r0, 0
/* 8046C2E4  40 82 03 5C */	bne lbl_8046C640
/* 8046C2E8  38 00 00 02 */	li r0, 2
/* 8046C2EC  90 03 0E D8 */	stw r0, 0xed8(r3)
/* 8046C2F0  48 00 03 50 */	b lbl_8046C640
lbl_8046C2F4:
/* 8046C2F4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046C2F8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8046C2FC  80 03 0E D8 */	lwz r0, 0xed8(r3)
/* 8046C300  2C 00 00 00 */	cmpwi r0, 0
/* 8046C304  40 82 00 0C */	bne lbl_8046C310
/* 8046C308  38 00 00 02 */	li r0, 2
/* 8046C30C  90 03 0E D8 */	stw r0, 0xed8(r3)
lbl_8046C310:
/* 8046C310  FC 20 00 90 */	fmr f1, f0
/* 8046C314  4B FF FA 4D */	bl raincnt_set__Ff
/* 8046C318  48 00 03 28 */	b lbl_8046C640
lbl_8046C31C:
/* 8046C31C  38 00 00 01 */	li r0, 1
/* 8046C320  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046C324  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8046C328  98 03 0E B5 */	stb r0, 0xeb5(r3)
/* 8046C32C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8046C330  EC 21 00 32 */	fmuls f1, f1, f0
/* 8046C334  FC 20 08 1E */	fctiwz f1, f1
/* 8046C338  D8 21 00 30 */	stfd f1, 0x30(r1)
/* 8046C33C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046C340  90 03 0E B8 */	stw r0, 0xeb8(r3)
/* 8046C344  FC 20 00 90 */	fmr f1, f0
/* 8046C348  4B FF FA 19 */	bl raincnt_set__Ff
/* 8046C34C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046C350  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8046C354  80 03 0E D8 */	lwz r0, 0xed8(r3)
/* 8046C358  2C 00 00 00 */	cmpwi r0, 0
/* 8046C35C  40 82 02 E4 */	bne lbl_8046C640
/* 8046C360  38 00 00 02 */	li r0, 2
/* 8046C364  90 03 0E D8 */	stw r0, 0xed8(r3)
/* 8046C368  48 00 02 D8 */	b lbl_8046C640
lbl_8046C36C:
/* 8046C36C  38 00 00 00 */	li r0, 0
/* 8046C370  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046C374  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8046C378  98 03 0E B5 */	stb r0, 0xeb5(r3)
/* 8046C37C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8046C380  EC 01 00 32 */	fmuls f0, f1, f0
/* 8046C384  FC 00 00 1E */	fctiwz f0, f0
/* 8046C388  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8046C38C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046C390  90 03 0E B8 */	stw r0, 0xeb8(r3)
/* 8046C394  48 00 02 AC */	b lbl_8046C640
lbl_8046C398:
/* 8046C398  38 00 00 01 */	li r0, 1
/* 8046C39C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046C3A0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8046C3A4  98 03 0E B5 */	stb r0, 0xeb5(r3)
/* 8046C3A8  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8046C3AC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8046C3B0  FC 00 00 1E */	fctiwz f0, f0
/* 8046C3B4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8046C3B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046C3BC  90 03 0E B8 */	stw r0, 0xeb8(r3)
/* 8046C3C0  48 00 02 80 */	b lbl_8046C640
lbl_8046C3C4:
/* 8046C3C4  38 00 00 02 */	li r0, 2
/* 8046C3C8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046C3CC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8046C3D0  98 03 0E B5 */	stb r0, 0xeb5(r3)
/* 8046C3D4  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8046C3D8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8046C3DC  FC 00 00 1E */	fctiwz f0, f0
/* 8046C3E0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8046C3E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046C3E8  90 03 0E B8 */	stw r0, 0xeb8(r3)
/* 8046C3EC  48 00 02 54 */	b lbl_8046C640
lbl_8046C3F0:
/* 8046C3F0  38 00 00 03 */	li r0, 3
/* 8046C3F4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046C3F8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8046C3FC  98 03 0E B5 */	stb r0, 0xeb5(r3)
/* 8046C400  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8046C404  EC 01 00 32 */	fmuls f0, f1, f0
/* 8046C408  FC 00 00 1E */	fctiwz f0, f0
/* 8046C40C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8046C410  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046C414  90 03 0E B8 */	stw r0, 0xeb8(r3)
/* 8046C418  48 00 02 28 */	b lbl_8046C640
lbl_8046C41C:
/* 8046C41C  38 00 00 32 */	li r0, 0x32
/* 8046C420  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046C424  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8046C428  98 03 0E B5 */	stb r0, 0xeb5(r3)
/* 8046C42C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8046C430  EC 21 00 32 */	fmuls f1, f1, f0
/* 8046C434  C0 03 0F 40 */	lfs f0, 0xf40(r3)
/* 8046C438  EC 01 00 32 */	fmuls f0, f1, f0
/* 8046C43C  FC 00 00 1E */	fctiwz f0, f0
/* 8046C440  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8046C444  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046C448  90 03 0E B8 */	stw r0, 0xeb8(r3)
/* 8046C44C  48 00 01 F4 */	b lbl_8046C640
lbl_8046C450:
/* 8046C450  38 00 00 05 */	li r0, 5
/* 8046C454  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046C458  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8046C45C  98 03 0E B5 */	stb r0, 0xeb5(r3)
/* 8046C460  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8046C464  EC 01 00 32 */	fmuls f0, f1, f0
/* 8046C468  FC 00 00 1E */	fctiwz f0, f0
/* 8046C46C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8046C470  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046C474  90 03 0E B8 */	stw r0, 0xeb8(r3)
/* 8046C478  48 00 01 C8 */	b lbl_8046C640
lbl_8046C47C:
/* 8046C47C  38 00 00 06 */	li r0, 6
/* 8046C480  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046C484  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8046C488  98 03 0E B5 */	stb r0, 0xeb5(r3)
/* 8046C48C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8046C490  EC 01 00 32 */	fmuls f0, f1, f0
/* 8046C494  FC 00 00 1E */	fctiwz f0, f0
/* 8046C498  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8046C49C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046C4A0  90 03 0E B8 */	stw r0, 0xeb8(r3)
/* 8046C4A4  48 00 01 9C */	b lbl_8046C640
lbl_8046C4A8:
/* 8046C4A8  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8046C4AC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8046C4B0  FC 00 00 1E */	fctiwz f0, f0
/* 8046C4B4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8046C4B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046C4BC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046C4C0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8046C4C4  90 03 10 48 */	stw r0, 0x1048(r3)
/* 8046C4C8  48 00 01 78 */	b lbl_8046C640
lbl_8046C4CC:
/* 8046C4CC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8046C4D0  7C 04 07 74 */	extsb r4, r0
/* 8046C4D4  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 8046C4D8  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)
/* 8046C4DC  7C 00 07 74 */	extsb r0, r0
/* 8046C4E0  7C 04 00 00 */	cmpw r4, r0
/* 8046C4E4  40 82 00 B8 */	bne lbl_8046C59C
/* 8046C4E8  38 00 00 01 */	li r0, 1
/* 8046C4EC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046C4F0  38 83 CA 54 */	addi r4, r3, g_env_light@l
/* 8046C4F4  98 04 0E 92 */	stb r0, 0xe92(r4)
/* 8046C4F8  80 64 0E 8C */	lwz r3, 0xe8c(r4)
/* 8046C4FC  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 8046C500  EC 41 00 32 */	fmuls f2, f1, f0
/* 8046C504  FC 20 10 1E */	fctiwz f1, f2
/* 8046C508  D8 21 00 30 */	stfd f1, 0x30(r1)
/* 8046C50C  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 8046C510  7C 03 28 00 */	cmpw r3, r5
/* 8046C514  40 80 00 2C */	bge lbl_8046C540
/* 8046C518  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8046C51C  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8046C520  FC 20 08 1E */	fctiwz f1, f1
/* 8046C524  D8 21 00 30 */	stfd f1, 0x30(r1)
/* 8046C528  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046C52C  7C 03 02 14 */	add r0, r3, r0
/* 8046C530  90 04 0E 8C */	stw r0, 0xe8c(r4)
/* 8046C534  7C 00 28 00 */	cmpw r0, r5
/* 8046C538  40 81 00 08 */	ble lbl_8046C540
/* 8046C53C  90 A4 0E 8C */	stw r5, 0xe8c(r4)
lbl_8046C540:
/* 8046C540  38 00 00 00 */	li r0, 0
/* 8046C544  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046C548  38 83 CA 54 */	addi r4, r3, g_env_light@l
/* 8046C54C  98 04 0E B5 */	stb r0, 0xeb5(r4)
/* 8046C550  80 64 0E B8 */	lwz r3, 0xeb8(r4)
/* 8046C554  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8046C558  EC 41 00 32 */	fmuls f2, f1, f0
/* 8046C55C  FC 20 10 1E */	fctiwz f1, f2
/* 8046C560  D8 21 00 30 */	stfd f1, 0x30(r1)
/* 8046C564  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 8046C568  7C 03 28 00 */	cmpw r3, r5
/* 8046C56C  40 80 00 44 */	bge lbl_8046C5B0
/* 8046C570  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8046C574  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8046C578  FC 20 08 1E */	fctiwz f1, f1
/* 8046C57C  D8 21 00 30 */	stfd f1, 0x30(r1)
/* 8046C580  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046C584  7C 03 02 14 */	add r0, r3, r0
/* 8046C588  90 04 0E B8 */	stw r0, 0xeb8(r4)
/* 8046C58C  7C 00 28 00 */	cmpw r0, r5
/* 8046C590  40 81 00 20 */	ble lbl_8046C5B0
/* 8046C594  90 A4 0E B8 */	stw r5, 0xeb8(r4)
/* 8046C598  48 00 00 18 */	b lbl_8046C5B0
lbl_8046C59C:
/* 8046C59C  38 00 00 00 */	li r0, 0
/* 8046C5A0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046C5A4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8046C5A8  90 03 0E 8C */	stw r0, 0xe8c(r3)
/* 8046C5AC  90 03 0E B8 */	stw r0, 0xeb8(r3)
lbl_8046C5B0:
/* 8046C5B0  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha
/* 8046C5B4  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l
/* 8046C5B8  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8046C5BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8046C5C0  FC 00 00 1E */	fctiwz f0, f0
/* 8046C5C4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8046C5C8  80 81 00 34 */	lwz r4, 0x34(r1)
/* 8046C5CC  4B E5 B9 E8 */	b setSnowPower__10Z2EnvSeMgrFSc
/* 8046C5D0  48 00 00 70 */	b lbl_8046C640
lbl_8046C5D4:
/* 8046C5D4  38 00 00 08 */	li r0, 8
/* 8046C5D8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046C5DC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8046C5E0  98 03 0E B5 */	stb r0, 0xeb5(r3)
/* 8046C5E4  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8046C5E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8046C5EC  FC 00 00 1E */	fctiwz f0, f0
/* 8046C5F0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8046C5F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046C5F8  90 03 0E B8 */	stw r0, 0xeb8(r3)
/* 8046C5FC  48 00 00 44 */	b lbl_8046C640
lbl_8046C600:
/* 8046C600  38 00 00 09 */	li r0, 9
/* 8046C604  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046C608  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8046C60C  98 03 0E B5 */	stb r0, 0xeb5(r3)
/* 8046C610  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8046C614  EC 01 00 32 */	fmuls f0, f1, f0
/* 8046C618  FC 00 00 1E */	fctiwz f0, f0
/* 8046C61C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8046C620  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046C624  90 03 0E B8 */	stw r0, 0xeb8(r3)
/* 8046C628  48 00 00 18 */	b lbl_8046C640
lbl_8046C62C:
/* 8046C62C  88 1E 05 6C */	lbz r0, 0x56c(r30)
/* 8046C630  28 00 00 00 */	cmplwi r0, 0
/* 8046C634  41 82 00 0C */	beq lbl_8046C640
/* 8046C638  7F C3 F3 78 */	mr r3, r30
/* 8046C63C  4B FF F7 7D */	bl wether_tag_efect_reset__FP13kytag00_class
lbl_8046C640:
/* 8046C640  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8046C644  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8046C648  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8046C64C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8046C650  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8046C654  7C 08 03 A6 */	mtlr r0
/* 8046C658  38 21 00 50 */	addi r1, r1, 0x50
/* 8046C65C  4E 80 00 20 */	blr 
