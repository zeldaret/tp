lbl_8035ED2C:
/* 8035ED2C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8035ED30  2C 03 00 08 */	cmpwi r3, 8
/* 8035ED34  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8035ED38  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8035ED3C  93 A1 00 64 */	stw r29, 0x64(r1)
/* 8035ED40  41 82 00 44 */	beq lbl_8035ED84
/* 8035ED44  40 80 00 1C */	bge lbl_8035ED60
/* 8035ED48  2C 03 00 04 */	cmpwi r3, 4
/* 8035ED4C  41 82 00 38 */	beq lbl_8035ED84
/* 8035ED50  40 80 00 24 */	bge lbl_8035ED74
/* 8035ED54  2C 03 00 01 */	cmpwi r3, 1
/* 8035ED58  40 80 00 14 */	bge lbl_8035ED6C
/* 8035ED5C  48 00 00 28 */	b lbl_8035ED84
lbl_8035ED60:
/* 8035ED60  2C 03 00 0C */	cmpwi r3, 0xc
/* 8035ED64  40 80 00 20 */	bge lbl_8035ED84
/* 8035ED68  48 00 00 14 */	b lbl_8035ED7C
lbl_8035ED6C:
/* 8035ED6C  38 03 FF FF */	addi r0, r3, -1
/* 8035ED70  48 00 00 18 */	b lbl_8035ED88
lbl_8035ED74:
/* 8035ED74  38 03 FF FB */	addi r0, r3, -5
/* 8035ED78  48 00 00 10 */	b lbl_8035ED88
lbl_8035ED7C:
/* 8035ED7C  38 03 FF F7 */	addi r0, r3, -9
/* 8035ED80  48 00 00 08 */	b lbl_8035ED88
lbl_8035ED84:
/* 8035ED84  38 00 00 00 */	li r0, 0
lbl_8035ED88:
/* 8035ED88  C0 42 CC 10 */	lfs f2, lit_149(r2)
/* 8035ED8C  1F E0 00 03 */	mulli r31, r0, 3
/* 8035ED90  C0 24 00 00 */	lfs f1, 0(r4)
/* 8035ED94  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8035ED98  EC 22 00 72 */	fmuls f1, f2, f1
/* 8035ED9C  39 45 00 11 */	addi r10, r5, 0x11
/* 8035EDA0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8035EDA4  7D 4A 07 74 */	extsb r10, r10
/* 8035EDA8  39 80 00 61 */	li r12, 0x61
/* 8035EDAC  FC 20 08 1E */	fctiwz f1, f1
/* 8035EDB0  3D 60 CC 01 */	lis r11, 0xCC01 /* 0xCC008000@ha */
/* 8035EDB4  FC 00 00 1E */	fctiwz f0, f0
/* 8035EDB8  3B C0 00 00 */	li r30, 0
/* 8035EDBC  38 1F 00 06 */	addi r0, r31, 6
/* 8035EDC0  D8 21 00 58 */	stfd f1, 0x58(r1)
/* 8035EDC4  55 48 F7 BE */	rlwinm r8, r10, 0x1e, 0x1e, 0x1f
/* 8035EDC8  38 FF 00 07 */	addi r7, r31, 7
/* 8035EDCC  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035EDD0  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8035EDD4  81 21 00 5C */	lwz r9, 0x5c(r1)
/* 8035EDD8  3B A0 00 00 */	li r29, 0
/* 8035EDDC  80 C1 00 54 */	lwz r6, 0x54(r1)
/* 8035EDE0  38 BF 00 08 */	addi r5, r31, 8
/* 8035EDE4  51 3E 05 7E */	rlwimi r30, r9, 0, 0x15, 0x1f
/* 8035EDE8  39 3E 00 00 */	addi r9, r30, 0
/* 8035EDEC  99 8B 80 00 */	stb r12, 0x8000(r11)
/* 8035EDF0  50 C9 5A A8 */	rlwimi r9, r6, 0xb, 0xa, 0x14
/* 8035EDF4  51 49 B2 12 */	rlwimi r9, r10, 0x16, 8, 9
/* 8035EDF8  50 09 C0 0E */	rlwimi r9, r0, 0x18, 0, 7
/* 8035EDFC  91 2B 80 00 */	stw r9, -0x8000(r11)
/* 8035EE00  55 46 E7 BE */	rlwinm r6, r10, 0x1c, 0x1e, 0x1f
/* 8035EE04  3B C0 00 00 */	li r30, 0
/* 8035EE08  C0 24 00 04 */	lfs f1, 4(r4)
/* 8035EE0C  38 00 00 00 */	li r0, 0
/* 8035EE10  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8035EE14  EC 22 00 72 */	fmuls f1, f2, f1
/* 8035EE18  EC 02 00 32 */	fmuls f0, f2, f0
/* 8035EE1C  99 8B 80 00 */	stb r12, -0x8000(r11)
/* 8035EE20  FC 20 08 1E */	fctiwz f1, f1
/* 8035EE24  FC 00 00 1E */	fctiwz f0, f0
/* 8035EE28  D8 21 00 48 */	stfd f1, 0x48(r1)
/* 8035EE2C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8035EE30  81 41 00 4C */	lwz r10, 0x4c(r1)
/* 8035EE34  81 21 00 44 */	lwz r9, 0x44(r1)
/* 8035EE38  51 5D 05 7E */	rlwimi r29, r10, 0, 0x15, 0x1f
/* 8035EE3C  51 3D 5A A8 */	rlwimi r29, r9, 0xb, 0xa, 0x14
/* 8035EE40  51 1D B2 12 */	rlwimi r29, r8, 0x16, 8, 9
/* 8035EE44  50 FD C0 0E */	rlwimi r29, r7, 0x18, 0, 7
/* 8035EE48  93 AB 80 00 */	stw r29, -0x8000(r11)
/* 8035EE4C  C0 24 00 08 */	lfs f1, 8(r4)
/* 8035EE50  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 8035EE54  EC 22 00 72 */	fmuls f1, f2, f1
/* 8035EE58  EC 02 00 32 */	fmuls f0, f2, f0
/* 8035EE5C  99 8B 80 00 */	stb r12, -0x8000(r11)
/* 8035EE60  FC 20 08 1E */	fctiwz f1, f1
/* 8035EE64  FC 00 00 1E */	fctiwz f0, f0
/* 8035EE68  D8 21 00 38 */	stfd f1, 0x38(r1)
/* 8035EE6C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8035EE70  80 E1 00 3C */	lwz r7, 0x3c(r1)
/* 8035EE74  80 81 00 34 */	lwz r4, 0x34(r1)
/* 8035EE78  50 FE 05 7E */	rlwimi r30, r7, 0, 0x15, 0x1f
/* 8035EE7C  50 9E 5A A8 */	rlwimi r30, r4, 0xb, 0xa, 0x14
/* 8035EE80  50 DE B2 12 */	rlwimi r30, r6, 0x16, 8, 9
/* 8035EE84  50 BE C0 0E */	rlwimi r30, r5, 0x18, 0, 7
/* 8035EE88  93 CB 80 00 */	stw r30, -0x8000(r11)
/* 8035EE8C  B0 03 00 02 */	sth r0, 2(r3)
/* 8035EE90  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8035EE94  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8035EE98  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 8035EE9C  38 21 00 70 */	addi r1, r1, 0x70
/* 8035EEA0  4E 80 00 20 */	blr 
