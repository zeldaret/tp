lbl_8076BF6C:
/* 8076BF6C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8076BF70  7C 08 02 A6 */	mflr r0
/* 8076BF74  90 01 00 44 */	stw r0, 0x44(r1)
/* 8076BF78  39 61 00 40 */	addi r11, r1, 0x40
/* 8076BF7C  4B BF 62 5D */	bl _savegpr_28
/* 8076BF80  2C 04 00 00 */	cmpwi r4, 0
/* 8076BF84  40 82 04 E4 */	bne lbl_8076C468
/* 8076BF88  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 8076BF8C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8076BF90  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8076BF94  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 8076BF98  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 8076BF9C  28 1C 00 00 */	cmplwi r28, 0
/* 8076BFA0  41 82 04 C8 */	beq lbl_8076C468
/* 8076BFA4  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8076BFA8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8076BFAC  1F BF 00 30 */	mulli r29, r31, 0x30
/* 8076BFB0  7C 60 EA 14 */	add r3, r0, r29
/* 8076BFB4  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8076BFB8  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8076BFBC  80 84 00 00 */	lwz r4, 0(r4)
/* 8076BFC0  4B BD A4 F1 */	bl PSMTXCopy
/* 8076BFC4  2C 1F 00 00 */	cmpwi r31, 0
/* 8076BFC8  40 82 00 28 */	bne lbl_8076BFF0
/* 8076BFCC  88 1C 0A 98 */	lbz r0, 0xa98(r28)
/* 8076BFD0  2C 00 00 03 */	cmpwi r0, 3
/* 8076BFD4  40 82 04 04 */	bne lbl_8076C3D8
/* 8076BFD8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076BFDC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076BFE0  80 63 00 00 */	lwz r3, 0(r3)
/* 8076BFE4  A8 9C 0A 9A */	lha r4, 0xa9a(r28)
/* 8076BFE8  4B 8A 04 4D */	bl mDoMtx_YrotM__FPA4_fs
/* 8076BFEC  48 00 03 EC */	b lbl_8076C3D8
lbl_8076BFF0:
/* 8076BFF0  2C 1F 00 01 */	cmpwi r31, 1
/* 8076BFF4  40 82 00 64 */	bne lbl_8076C058
/* 8076BFF8  88 1C 0A 98 */	lbz r0, 0xa98(r28)
/* 8076BFFC  2C 00 00 03 */	cmpwi r0, 3
/* 8076C000  40 82 00 18 */	bne lbl_8076C018
/* 8076C004  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C008  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C00C  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C010  A8 9C 0A 9A */	lha r4, 0xa9a(r28)
/* 8076C014  4B 8A 03 89 */	bl mDoMtx_XrotM__FPA4_fs
lbl_8076C018:
/* 8076C018  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C01C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C020  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C024  A8 9C 0B B0 */	lha r4, 0xbb0(r28)
/* 8076C028  4B 8A 04 0D */	bl mDoMtx_YrotM__FPA4_fs
/* 8076C02C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C030  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C034  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C038  A8 BC 0B 90 */	lha r5, 0xb90(r28)
/* 8076C03C  A8 9C 0B 0E */	lha r4, 0xb0e(r28)
/* 8076C040  A8 1C 0B AE */	lha r0, 0xbae(r28)
/* 8076C044  7C 04 00 50 */	subf r0, r4, r0
/* 8076C048  7C 05 02 14 */	add r0, r5, r0
/* 8076C04C  7C 04 07 34 */	extsh r4, r0
/* 8076C050  4B 8A 04 7D */	bl mDoMtx_ZrotM__FPA4_fs
/* 8076C054  48 00 03 84 */	b lbl_8076C3D8
lbl_8076C058:
/* 8076C058  2C 1F 00 02 */	cmpwi r31, 2
/* 8076C05C  40 82 00 1C */	bne lbl_8076C078
/* 8076C060  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C064  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C068  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C06C  A8 9C 0B 9A */	lha r4, 0xb9a(r28)
/* 8076C070  4B 8A 03 C5 */	bl mDoMtx_YrotM__FPA4_fs
/* 8076C074  48 00 03 64 */	b lbl_8076C3D8
lbl_8076C078:
/* 8076C078  2C 1F 00 04 */	cmpwi r31, 4
/* 8076C07C  40 82 00 1C */	bne lbl_8076C098
/* 8076C080  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C084  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C088  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C08C  A8 9C 0B 9C */	lha r4, 0xb9c(r28)
/* 8076C090  4B 8A 04 3D */	bl mDoMtx_ZrotM__FPA4_fs
/* 8076C094  48 00 03 44 */	b lbl_8076C3D8
lbl_8076C098:
/* 8076C098  2C 1F 00 06 */	cmpwi r31, 6
/* 8076C09C  40 82 00 1C */	bne lbl_8076C0B8
/* 8076C0A0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C0A4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C0A8  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C0AC  A8 9C 0B 9E */	lha r4, 0xb9e(r28)
/* 8076C0B0  4B 8A 03 85 */	bl mDoMtx_YrotM__FPA4_fs
/* 8076C0B4  48 00 03 24 */	b lbl_8076C3D8
lbl_8076C0B8:
/* 8076C0B8  2C 1F 00 08 */	cmpwi r31, 8
/* 8076C0BC  40 82 00 1C */	bne lbl_8076C0D8
/* 8076C0C0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C0C4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C0C8  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C0CC  A8 9C 0B A0 */	lha r4, 0xba0(r28)
/* 8076C0D0  4B 8A 03 FD */	bl mDoMtx_ZrotM__FPA4_fs
/* 8076C0D4  48 00 03 04 */	b lbl_8076C3D8
lbl_8076C0D8:
/* 8076C0D8  2C 1F 00 0B */	cmpwi r31, 0xb
/* 8076C0DC  40 82 01 20 */	bne lbl_8076C1FC
/* 8076C0E0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C0E4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C0E8  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C0EC  A8 9C 0B 0A */	lha r4, 0xb0a(r28)
/* 8076C0F0  4B 8A 03 45 */	bl mDoMtx_YrotM__FPA4_fs
/* 8076C0F4  88 1C 0A 98 */	lbz r0, 0xa98(r28)
/* 8076C0F8  2C 00 00 03 */	cmpwi r0, 3
/* 8076C0FC  40 82 00 18 */	bne lbl_8076C114
/* 8076C100  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C104  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C108  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C10C  A8 9C 0A 9A */	lha r4, 0xa9a(r28)
/* 8076C110  4B 8A 02 8D */	bl mDoMtx_XrotM__FPA4_fs
lbl_8076C114:
/* 8076C114  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C118  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C11C  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C120  A8 9C 0B 08 */	lha r4, 0xb08(r28)
/* 8076C124  A8 1C 0B 8E */	lha r0, 0xb8e(r28)
/* 8076C128  7C 04 02 14 */	add r0, r4, r0
/* 8076C12C  7C 04 07 34 */	extsh r4, r0
/* 8076C130  4B 8A 03 9D */	bl mDoMtx_ZrotM__FPA4_fs
/* 8076C134  88 1C 0A 98 */	lbz r0, 0xa98(r28)
/* 8076C138  2C 00 00 04 */	cmpwi r0, 4
/* 8076C13C  40 82 00 9C */	bne lbl_8076C1D8
/* 8076C140  3C 60 80 78 */	lis r3, lit_4074@ha /* 0x80779E5C@ha */
/* 8076C144  C0 43 9E 5C */	lfs f2, lit_4074@l(r3)  /* 0x80779E5C@l */
/* 8076C148  A8 1C 0A 9C */	lha r0, 0xa9c(r28)
/* 8076C14C  3C 60 80 78 */	lis r3, lit_4078@ha /* 0x80779E64@ha */
/* 8076C150  C8 23 9E 64 */	lfd f1, lit_4078@l(r3)  /* 0x80779E64@l */
/* 8076C154  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8076C158  90 01 00 0C */	stw r0, 0xc(r1)
/* 8076C15C  3C 00 43 30 */	lis r0, 0x4330
/* 8076C160  90 01 00 08 */	stw r0, 8(r1)
/* 8076C164  C8 01 00 08 */	lfd f0, 8(r1)
/* 8076C168  EC 00 08 28 */	fsubs f0, f0, f1
/* 8076C16C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8076C170  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C174  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C178  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C17C  FC 00 00 1E */	fctiwz f0, f0
/* 8076C180  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8076C184  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8076C188  4B 8A 02 AD */	bl mDoMtx_YrotM__FPA4_fs
/* 8076C18C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C190  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C194  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C198  3C 80 80 78 */	lis r4, lit_4246@ha /* 0x80779E6C@ha */
/* 8076C19C  C0 44 9E 6C */	lfs f2, lit_4246@l(r4)  /* 0x80779E6C@l */
/* 8076C1A0  A8 1C 0A 9C */	lha r0, 0xa9c(r28)
/* 8076C1A4  3C 80 80 78 */	lis r4, lit_4078@ha /* 0x80779E64@ha */
/* 8076C1A8  C8 24 9E 64 */	lfd f1, lit_4078@l(r4)  /* 0x80779E64@l */
/* 8076C1AC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8076C1B0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8076C1B4  3C 00 43 30 */	lis r0, 0x4330
/* 8076C1B8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8076C1BC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8076C1C0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8076C1C4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8076C1C8  FC 00 00 1E */	fctiwz f0, f0
/* 8076C1CC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8076C1D0  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8076C1D4  4B 8A 01 C9 */	bl mDoMtx_XrotM__FPA4_fs
lbl_8076C1D8:
/* 8076C1D8  88 1C 0A 98 */	lbz r0, 0xa98(r28)
/* 8076C1DC  2C 00 00 03 */	cmpwi r0, 3
/* 8076C1E0  40 82 01 F8 */	bne lbl_8076C3D8
/* 8076C1E4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C1E8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C1EC  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C1F0  A8 9C 0A 9C */	lha r4, 0xa9c(r28)
/* 8076C1F4  4B 8A 02 D9 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8076C1F8  48 00 01 E0 */	b lbl_8076C3D8
lbl_8076C1FC:
/* 8076C1FC  2C 1F 00 0D */	cmpwi r31, 0xd
/* 8076C200  40 82 00 78 */	bne lbl_8076C278
/* 8076C204  88 1C 0A 98 */	lbz r0, 0xa98(r28)
/* 8076C208  7C 00 07 74 */	extsb r0, r0
/* 8076C20C  2C 00 00 03 */	cmpwi r0, 3
/* 8076C210  41 82 01 C8 */	beq lbl_8076C3D8
/* 8076C214  2C 00 00 04 */	cmpwi r0, 4
/* 8076C218  41 82 01 C0 */	beq lbl_8076C3D8
/* 8076C21C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C220  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C224  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C228  A8 9C 0A 9A */	lha r4, 0xa9a(r28)
/* 8076C22C  A8 1C 0A 9E */	lha r0, 0xa9e(r28)
/* 8076C230  7C 04 00 50 */	subf r0, r4, r0
/* 8076C234  7C 00 0E 70 */	srawi r0, r0, 1
/* 8076C238  7C 00 01 94 */	addze r0, r0
/* 8076C23C  7C 04 07 34 */	extsh r4, r0
/* 8076C240  4B 8A 01 F5 */	bl mDoMtx_YrotM__FPA4_fs
/* 8076C244  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C248  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C24C  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C250  A8 BC 0B 8C */	lha r5, 0xb8c(r28)
/* 8076C254  A8 9C 0A 9C */	lha r4, 0xa9c(r28)
/* 8076C258  A8 1C 0B 02 */	lha r0, 0xb02(r28)
/* 8076C25C  7C 04 00 50 */	subf r0, r4, r0
/* 8076C260  7C 05 02 14 */	add r0, r5, r0
/* 8076C264  7C 00 0E 70 */	srawi r0, r0, 1
/* 8076C268  7C 00 01 94 */	addze r0, r0
/* 8076C26C  7C 04 07 34 */	extsh r4, r0
/* 8076C270  4B 8A 02 5D */	bl mDoMtx_ZrotM__FPA4_fs
/* 8076C274  48 00 01 64 */	b lbl_8076C3D8
lbl_8076C278:
/* 8076C278  2C 1F 00 0C */	cmpwi r31, 0xc
/* 8076C27C  40 82 00 B0 */	bne lbl_8076C32C
/* 8076C280  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C284  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C288  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C28C  A8 9C 0B 04 */	lha r4, 0xb04(r28)
/* 8076C290  4B 8A 01 A5 */	bl mDoMtx_YrotM__FPA4_fs
/* 8076C294  88 1C 0A 98 */	lbz r0, 0xa98(r28)
/* 8076C298  7C 00 07 74 */	extsb r0, r0
/* 8076C29C  2C 00 00 03 */	cmpwi r0, 3
/* 8076C2A0  41 82 00 68 */	beq lbl_8076C308
/* 8076C2A4  2C 00 00 04 */	cmpwi r0, 4
/* 8076C2A8  41 82 00 60 */	beq lbl_8076C308
/* 8076C2AC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C2B0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C2B4  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C2B8  A8 9C 0A 9A */	lha r4, 0xa9a(r28)
/* 8076C2BC  A8 1C 0A 9E */	lha r0, 0xa9e(r28)
/* 8076C2C0  7C 04 00 50 */	subf r0, r4, r0
/* 8076C2C4  7C 00 0E 70 */	srawi r0, r0, 1
/* 8076C2C8  7C 00 01 94 */	addze r0, r0
/* 8076C2CC  7C 04 07 34 */	extsh r4, r0
/* 8076C2D0  4B 8A 01 65 */	bl mDoMtx_YrotM__FPA4_fs
/* 8076C2D4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C2D8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C2DC  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C2E0  A8 BC 0B 8C */	lha r5, 0xb8c(r28)
/* 8076C2E4  A8 9C 0A 9C */	lha r4, 0xa9c(r28)
/* 8076C2E8  A8 1C 0B 02 */	lha r0, 0xb02(r28)
/* 8076C2EC  7C 04 00 50 */	subf r0, r4, r0
/* 8076C2F0  7C 05 02 14 */	add r0, r5, r0
/* 8076C2F4  7C 00 0E 70 */	srawi r0, r0, 1
/* 8076C2F8  7C 00 01 94 */	addze r0, r0
/* 8076C2FC  7C 04 07 34 */	extsh r4, r0
/* 8076C300  4B 8A 01 CD */	bl mDoMtx_ZrotM__FPA4_fs
/* 8076C304  48 00 00 D4 */	b lbl_8076C3D8
lbl_8076C308:
/* 8076C308  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C30C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C310  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C314  A8 9C 0B 02 */	lha r4, 0xb02(r28)
/* 8076C318  A8 1C 0B 8C */	lha r0, 0xb8c(r28)
/* 8076C31C  7C 04 02 14 */	add r0, r4, r0
/* 8076C320  7C 04 07 34 */	extsh r4, r0
/* 8076C324  4B 8A 01 A9 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8076C328  48 00 00 B0 */	b lbl_8076C3D8
lbl_8076C32C:
/* 8076C32C  2C 1F 00 11 */	cmpwi r31, 0x11
/* 8076C330  40 82 00 28 */	bne lbl_8076C358
/* 8076C334  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C338  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C33C  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C340  A8 9C 0B 16 */	lha r4, 0xb16(r28)
/* 8076C344  A8 1C 0B 92 */	lha r0, 0xb92(r28)
/* 8076C348  7C 04 02 14 */	add r0, r4, r0
/* 8076C34C  7C 04 07 34 */	extsh r4, r0
/* 8076C350  4B 8A 00 E5 */	bl mDoMtx_YrotM__FPA4_fs
/* 8076C354  48 00 00 84 */	b lbl_8076C3D8
lbl_8076C358:
/* 8076C358  2C 1F 00 12 */	cmpwi r31, 0x12
/* 8076C35C  40 82 00 28 */	bne lbl_8076C384
/* 8076C360  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C364  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C368  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C36C  A8 9C 0B 1C */	lha r4, 0xb1c(r28)
/* 8076C370  A8 1C 0B 94 */	lha r0, 0xb94(r28)
/* 8076C374  7C 04 02 14 */	add r0, r4, r0
/* 8076C378  7C 04 07 34 */	extsh r4, r0
/* 8076C37C  4B 8A 00 B9 */	bl mDoMtx_YrotM__FPA4_fs
/* 8076C380  48 00 00 58 */	b lbl_8076C3D8
lbl_8076C384:
/* 8076C384  2C 1F 00 16 */	cmpwi r31, 0x16
/* 8076C388  40 82 00 28 */	bne lbl_8076C3B0
/* 8076C38C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C390  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C394  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C398  A8 9C 0B 22 */	lha r4, 0xb22(r28)
/* 8076C39C  A8 1C 0B 96 */	lha r0, 0xb96(r28)
/* 8076C3A0  7C 04 02 14 */	add r0, r4, r0
/* 8076C3A4  7C 04 07 34 */	extsh r4, r0
/* 8076C3A8  4B 8A 00 8D */	bl mDoMtx_YrotM__FPA4_fs
/* 8076C3AC  48 00 00 2C */	b lbl_8076C3D8
lbl_8076C3B0:
/* 8076C3B0  2C 1F 00 17 */	cmpwi r31, 0x17
/* 8076C3B4  40 82 00 24 */	bne lbl_8076C3D8
/* 8076C3B8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C3BC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C3C0  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C3C4  A8 9C 0B 28 */	lha r4, 0xb28(r28)
/* 8076C3C8  A8 1C 0B 98 */	lha r0, 0xb98(r28)
/* 8076C3CC  7C 04 02 14 */	add r0, r4, r0
/* 8076C3D0  7C 04 07 34 */	extsh r4, r0
/* 8076C3D4  4B 8A 00 61 */	bl mDoMtx_YrotM__FPA4_fs
lbl_8076C3D8:
/* 8076C3D8  A8 9C 0B AA */	lha r4, 0xbaa(r28)
/* 8076C3DC  7C 80 07 35 */	extsh. r0, r4
/* 8076C3E0  41 82 00 54 */	beq lbl_8076C434
/* 8076C3E4  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 8076C3E8  41 82 00 18 */	beq lbl_8076C400
/* 8076C3EC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C3F0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C3F4  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C3F8  4B 8A 00 3D */	bl mDoMtx_YrotM__FPA4_fs
/* 8076C3FC  48 00 00 38 */	b lbl_8076C434
lbl_8076C400:
/* 8076C400  57 E0 07 BD */	rlwinm. r0, r31, 0, 0x1e, 0x1e
/* 8076C404  41 82 00 18 */	beq lbl_8076C41C
/* 8076C408  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C40C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C410  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C414  4B 89 FF 89 */	bl mDoMtx_XrotM__FPA4_fs
/* 8076C418  48 00 00 1C */	b lbl_8076C434
lbl_8076C41C:
/* 8076C41C  57 E0 07 7B */	rlwinm. r0, r31, 0, 0x1d, 0x1d
/* 8076C420  41 82 00 14 */	beq lbl_8076C434
/* 8076C424  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C428  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C42C  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C430  4B 8A 00 9D */	bl mDoMtx_ZrotM__FPA4_fs
lbl_8076C434:
/* 8076C434  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C438  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C43C  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C440  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8076C444  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8076C448  7C 80 EA 14 */	add r4, r0, r29
/* 8076C44C  4B BD A0 65 */	bl PSMTXCopy
/* 8076C450  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C454  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C458  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C45C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8076C460  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 8076C464  4B BD A0 4D */	bl PSMTXCopy
lbl_8076C468:
/* 8076C468  38 60 00 01 */	li r3, 1
/* 8076C46C  39 61 00 40 */	addi r11, r1, 0x40
/* 8076C470  4B BF 5D B5 */	bl _restgpr_28
/* 8076C474  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8076C478  7C 08 03 A6 */	mtlr r0
/* 8076C47C  38 21 00 40 */	addi r1, r1, 0x40
/* 8076C480  4E 80 00 20 */	blr 
