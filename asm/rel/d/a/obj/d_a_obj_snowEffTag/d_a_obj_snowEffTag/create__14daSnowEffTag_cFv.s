lbl_80CDF184:
/* 80CDF184  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDF188  7C 08 02 A6 */	mflr r0
/* 80CDF18C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDF190  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDF194  93 C1 00 08 */	stw r30, 8(r1)
/* 80CDF198  7C 7E 1B 78 */	mr r30, r3
/* 80CDF19C  3C 80 80 CE */	lis r4, lit_3702@ha /* 0x80CDF720@ha */
/* 80CDF1A0  3B E4 F7 20 */	addi r31, r4, lit_3702@l /* 0x80CDF720@l */
/* 80CDF1A4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CDF1A8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CDF1AC  40 82 00 1C */	bne lbl_80CDF1C8
/* 80CDF1B0  28 1E 00 00 */	cmplwi r30, 0
/* 80CDF1B4  41 82 00 08 */	beq lbl_80CDF1BC
/* 80CDF1B8  4B 33 99 AD */	bl __ct__10fopAc_ac_cFv
lbl_80CDF1BC:
/* 80CDF1BC  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80CDF1C0  60 00 00 08 */	ori r0, r0, 8
/* 80CDF1C4  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80CDF1C8:
/* 80CDF1C8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CDF1CC  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80CDF1D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CDF1D4  D0 1E 05 6C */	stfs f0, 0x56c(r30)
/* 80CDF1D8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CDF1DC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80CDF1E0  2C 00 00 02 */	cmpwi r0, 2
/* 80CDF1E4  41 82 00 48 */	beq lbl_80CDF22C
/* 80CDF1E8  40 80 00 18 */	bge lbl_80CDF200
/* 80CDF1EC  2C 00 00 01 */	cmpwi r0, 1
/* 80CDF1F0  40 80 00 28 */	bge lbl_80CDF218
/* 80CDF1F4  2C 00 FF FF */	cmpwi r0, -1
/* 80CDF1F8  40 80 00 14 */	bge lbl_80CDF20C
/* 80CDF1FC  48 00 00 54 */	b lbl_80CDF250
lbl_80CDF200:
/* 80CDF200  2C 00 00 04 */	cmpwi r0, 4
/* 80CDF204  40 80 00 4C */	bge lbl_80CDF250
/* 80CDF208  48 00 00 38 */	b lbl_80CDF240
lbl_80CDF20C:
/* 80CDF20C  C0 1E 05 6C */	lfs f0, 0x56c(r30)
/* 80CDF210  D0 1E 05 70 */	stfs f0, 0x570(r30)
/* 80CDF214  48 00 00 3C */	b lbl_80CDF250
lbl_80CDF218:
/* 80CDF218  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80CDF21C  C0 1E 05 6C */	lfs f0, 0x56c(r30)
/* 80CDF220  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CDF224  D0 1E 05 70 */	stfs f0, 0x570(r30)
/* 80CDF228  48 00 00 28 */	b lbl_80CDF250
lbl_80CDF22C:
/* 80CDF22C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80CDF230  C0 1E 05 6C */	lfs f0, 0x56c(r30)
/* 80CDF234  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CDF238  D0 1E 05 70 */	stfs f0, 0x570(r30)
/* 80CDF23C  48 00 00 14 */	b lbl_80CDF250
lbl_80CDF240:
/* 80CDF240  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80CDF244  C0 1E 05 6C */	lfs f0, 0x56c(r30)
/* 80CDF248  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CDF24C  D0 1E 05 70 */	stfs f0, 0x570(r30)
lbl_80CDF250:
/* 80CDF250  C0 3E 05 6C */	lfs f1, 0x56c(r30)
/* 80CDF254  C0 1E 05 70 */	lfs f0, 0x570(r30)
/* 80CDF258  EC 21 00 28 */	fsubs f1, f1, f0
/* 80CDF25C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80CDF260  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80CDF264  EC 42 00 32 */	fmuls f2, f2, f0
/* 80CDF268  4B 58 84 0D */	bl cM_atan2s__Fff
/* 80CDF26C  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80CDF270  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CDF274  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CDF278  7C 23 04 2E */	lfsx f1, r3, r0
/* 80CDF27C  7C 63 02 14 */	add r3, r3, r0
/* 80CDF280  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CDF284  EC 01 00 24 */	fdivs f0, f1, f0
/* 80CDF288  D0 1E 05 74 */	stfs f0, 0x574(r30)
/* 80CDF28C  38 00 00 00 */	li r0, 0
/* 80CDF290  98 1E 05 69 */	stb r0, 0x569(r30)
/* 80CDF294  7F C3 F3 78 */	mr r3, r30
/* 80CDF298  4B FF FE 95 */	bl setBaseMtx__14daSnowEffTag_cFv
/* 80CDF29C  38 60 00 04 */	li r3, 4
/* 80CDF2A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDF2A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CDF2A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDF2AC  7C 08 03 A6 */	mtlr r0
/* 80CDF2B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDF2B4  4E 80 00 20 */	blr 
