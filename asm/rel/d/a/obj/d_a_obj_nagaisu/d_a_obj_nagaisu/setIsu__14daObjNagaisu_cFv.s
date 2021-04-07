lbl_80C9F944:
/* 80C9F944  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C9F948  3C 80 80 CA */	lis r4, REMOVE_ISU_IDX__14daObjNagaisu_c@ha /* 0x80CA035C@ha */
/* 80C9F94C  38 A4 03 5C */	addi r5, r4, REMOVE_ISU_IDX__14daObjNagaisu_c@l /* 0x80CA035C@l */
/* 80C9F950  38 C3 05 B4 */	addi r6, r3, 0x5b4
/* 80C9F954  C0 43 04 D0 */	lfs f2, 0x4d0(r3)
/* 80C9F958  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 80C9F95C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80C9F960  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80C9F964  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C9F968  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80C9F96C  D0 41 00 08 */	stfs f2, 8(r1)
/* 80C9F970  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C9F974  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C9F978  38 E0 00 00 */	li r7, 0
/* 80C9F97C  39 00 00 03 */	li r8, 3
/* 80C9F980  39 40 00 00 */	li r10, 0
/* 80C9F984  38 85 00 00 */	addi r4, r5, 0
lbl_80C9F988:
/* 80C9F988  7C 0A 38 00 */	cmpw r10, r7
/* 80C9F98C  40 82 00 3C */	bne lbl_80C9F9C8
/* 80C9F990  D0 41 00 08 */	stfs f2, 8(r1)
/* 80C9F994  2C 0A 00 2A */	cmpwi r10, 0x2a
/* 80C9F998  38 E7 00 06 */	addi r7, r7, 6
/* 80C9F99C  40 82 00 18 */	bne lbl_80C9F9B4
/* 80C9F9A0  C0 25 00 64 */	lfs f1, 0x64(r5)
/* 80C9F9A4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C9F9A8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C9F9AC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C9F9B0  48 00 00 58 */	b lbl_80C9FA08
lbl_80C9F9B4:
/* 80C9F9B4  C0 25 00 68 */	lfs f1, 0x68(r5)
/* 80C9F9B8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C9F9BC  EC 01 00 2A */	fadds f0, f1, f0
/* 80C9F9C0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C9F9C4  48 00 00 44 */	b lbl_80C9FA08
lbl_80C9F9C8:
/* 80C9F9C8  7C 0A 40 00 */	cmpw r10, r8
/* 80C9F9CC  40 82 00 24 */	bne lbl_80C9F9F0
/* 80C9F9D0  C0 25 00 6C */	lfs f1, 0x6c(r5)
/* 80C9F9D4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C9F9D8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C9F9DC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C9F9E0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C9F9E4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C9F9E8  39 08 00 06 */	addi r8, r8, 6
/* 80C9F9EC  48 00 00 1C */	b lbl_80C9FA08
lbl_80C9F9F0:
/* 80C9F9F0  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 80C9F9F4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C9F9F8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C9F9FC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C9FA00  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C9FA04  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_80C9FA08:
/* 80C9FA08  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C9FA0C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C9FA10  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C9FA14  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C9FA18  39 20 00 00 */	li r9, 0
/* 80C9FA1C  38 60 00 00 */	li r3, 0
/* 80C9FA20  38 00 00 07 */	li r0, 7
/* 80C9FA24  7C 09 03 A6 */	mtctr r0
lbl_80C9FA28:
/* 80C9FA28  7C 04 18 2E */	lwzx r0, r4, r3
/* 80C9FA2C  7C 0A 00 00 */	cmpw r10, r0
/* 80C9FA30  40 82 00 0C */	bne lbl_80C9FA3C
/* 80C9FA34  39 20 00 01 */	li r9, 1
/* 80C9FA38  48 00 00 0C */	b lbl_80C9FA44
lbl_80C9FA3C:
/* 80C9FA3C  38 63 00 04 */	addi r3, r3, 4
/* 80C9FA40  42 00 FF E8 */	bdnz lbl_80C9FA28
lbl_80C9FA44:
/* 80C9FA44  55 20 06 3F */	clrlwi. r0, r9, 0x18
/* 80C9FA48  41 82 00 10 */	beq lbl_80C9FA58
/* 80C9FA4C  38 00 00 01 */	li r0, 1
/* 80C9FA50  98 06 02 F0 */	stb r0, 0x2f0(r6)
/* 80C9FA54  48 00 00 24 */	b lbl_80C9FA78
lbl_80C9FA58:
/* 80C9FA58  38 00 00 00 */	li r0, 0
/* 80C9FA5C  98 06 02 F0 */	stb r0, 0x2f0(r6)
/* 80C9FA60  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C9FA64  D0 06 00 38 */	stfs f0, 0x38(r6)
/* 80C9FA68  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C9FA6C  D0 06 00 3C */	stfs f0, 0x3c(r6)
/* 80C9FA70  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C9FA74  D0 06 00 40 */	stfs f0, 0x40(r6)
lbl_80C9FA78:
/* 80C9FA78  39 4A 00 01 */	addi r10, r10, 1
/* 80C9FA7C  2C 0A 00 3C */	cmpwi r10, 0x3c
/* 80C9FA80  38 C6 02 F4 */	addi r6, r6, 0x2f4
/* 80C9FA84  41 80 FF 04 */	blt lbl_80C9F988
/* 80C9FA88  38 21 00 20 */	addi r1, r1, 0x20
/* 80C9FA8C  4E 80 00 20 */	blr 
