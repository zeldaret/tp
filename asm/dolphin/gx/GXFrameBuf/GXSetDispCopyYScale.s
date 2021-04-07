lbl_8035CFA4:
/* 8035CFA4  7C 08 02 A6 */	mflr r0
/* 8035CFA8  90 01 00 04 */	stw r0, 4(r1)
/* 8035CFAC  94 21 FF F8 */	stwu r1, -8(r1)
/* 8035CFB0  C0 02 CB A8 */	lfs f0, lit_179(r2)
/* 8035CFB4  EC 20 08 24 */	fdivs f1, f0, f1
/* 8035CFB8  48 00 50 F5 */	bl __cvt_fp2unsigned
/* 8035CFBC  54 67 05 FE */	clrlwi r7, r3, 0x17
/* 8035CFC0  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035CFC4  38 00 00 61 */	li r0, 0x61
/* 8035CFC8  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 8035CFCC  20 A7 01 00 */	subfic r5, r7, 0x100
/* 8035CFD0  98 04 80 00 */	stb r0, 0x8000(r4)  /* 0xCC008000@l */
/* 8035CFD4  30 05 FF FF */	addic r0, r5, -1
/* 8035CFD8  7C A0 29 10 */	subfe r5, r0, r5
/* 8035CFDC  38 C0 00 00 */	li r6, 0
/* 8035CFE0  38 00 00 4E */	li r0, 0x4e
/* 8035CFE4  50 E6 05 FE */	rlwimi r6, r7, 0, 0x17, 0x1f
/* 8035CFE8  50 06 C0 0E */	rlwimi r6, r0, 0x18, 0, 7
/* 8035CFEC  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 8035CFF0  38 00 00 00 */	li r0, 0
/* 8035CFF4  28 07 00 80 */	cmplwi r7, 0x80
/* 8035CFF8  B0 03 00 02 */	sth r0, 2(r3)
/* 8035CFFC  38 87 00 00 */	addi r4, r7, 0
/* 8035D000  80 03 01 EC */	lwz r0, 0x1ec(r3)
/* 8035D004  50 A0 55 6A */	rlwimi r0, r5, 0xa, 0x15, 0x15
/* 8035D008  90 03 01 EC */	stw r0, 0x1ec(r3)
/* 8035D00C  80 03 01 E4 */	lwz r0, 0x1e4(r3)
/* 8035D010  54 05 B5 BE */	rlwinm r5, r0, 0x16, 0x16, 0x1f
/* 8035D014  54 00 F3 AE */	rlwinm r0, r0, 0x1e, 0xe, 0x17
/* 8035D018  7C 60 3B 96 */	divwu r3, r0, r7
/* 8035D01C  38 A5 00 01 */	addi r5, r5, 1
/* 8035D020  38 63 00 01 */	addi r3, r3, 1
/* 8035D024  40 81 00 30 */	ble lbl_8035D054
/* 8035D028  28 07 01 00 */	cmplwi r7, 0x100
/* 8035D02C  40 80 00 28 */	bge lbl_8035D054
/* 8035D030  48 00 00 08 */	b lbl_8035D038
lbl_8035D034:
/* 8035D034  54 84 F8 7E */	srwi r4, r4, 1
lbl_8035D038:
/* 8035D038  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 8035D03C  41 82 FF F8 */	beq lbl_8035D034
/* 8035D040  7C 05 23 96 */	divwu r0, r5, r4
/* 8035D044  7C 00 21 D6 */	mullw r0, r0, r4
/* 8035D048  7C 00 28 51 */	subf. r0, r0, r5
/* 8035D04C  40 82 00 08 */	bne lbl_8035D054
/* 8035D050  38 63 00 01 */	addi r3, r3, 1
lbl_8035D054:
/* 8035D054  28 03 04 00 */	cmplwi r3, 0x400
/* 8035D058  40 81 00 08 */	ble lbl_8035D060
/* 8035D05C  38 60 04 00 */	li r3, 0x400
lbl_8035D060:
/* 8035D060  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8035D064  38 21 00 08 */	addi r1, r1, 8
/* 8035D068  7C 08 03 A6 */	mtlr r0
/* 8035D06C  4E 80 00 20 */	blr 
