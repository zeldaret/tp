lbl_80D638F8:
/* 80D638F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D638FC  7C 08 02 A6 */	mflr r0
/* 80D63900  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D63904  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D63908  7C 7F 1B 78 */	mr r31, r3
/* 80D6390C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D63910  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D63914  40 82 00 1C */	bne lbl_80D63930
/* 80D63918  28 1F 00 00 */	cmplwi r31, 0
/* 80D6391C  41 82 00 08 */	beq lbl_80D63924
/* 80D63920  4B 2B 52 45 */	bl __ct__10fopAc_ac_cFv
lbl_80D63924:
/* 80D63924  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D63928  60 00 00 08 */	ori r0, r0, 8
/* 80D6392C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D63930:
/* 80D63930  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D63934  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80D63938  98 1F 05 68 */	stb r0, 0x568(r31)
/* 80D6393C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D63940  98 1F 05 6A */	stb r0, 0x56a(r31)
/* 80D63944  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D63948  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80D6394C  98 1F 05 6B */	stb r0, 0x56b(r31)
/* 80D63950  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D63954  54 00 46 3F */	rlwinm. r0, r0, 8, 0x18, 0x1f
/* 80D63958  41 82 00 10 */	beq lbl_80D63968
/* 80D6395C  38 00 00 00 */	li r0, 0
/* 80D63960  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 80D63964  48 00 00 0C */	b lbl_80D63970
lbl_80D63968:
/* 80D63968  38 00 00 01 */	li r0, 1
/* 80D6396C  90 1F 05 6C */	stw r0, 0x56c(r31)
lbl_80D63970:
/* 80D63970  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80D63974  3C 60 80 D6 */	lis r3, lit_3721@ha /* 0x80D63BF0@ha */
/* 80D63978  C0 23 3B F0 */	lfs f1, lit_3721@l(r3)  /* 0x80D63BF0@l */
/* 80D6397C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D63980  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80D63984  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80D63988  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D6398C  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80D63990  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80D63994  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D63998  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80D6399C  3C 60 80 45 */	lis r3, m_top__13daTagStream_c@ha /* 0x80450DA4@ha */
/* 80D639A0  84 83 0D A4 */	lwzu r4, m_top__13daTagStream_c@l(r3)  /* 0x80450DA4@l */
/* 80D639A4  28 04 00 00 */	cmplwi r4, 0
/* 80D639A8  41 82 00 70 */	beq lbl_80D63A18
/* 80D639AC  7C 85 23 78 */	mr r5, r4
/* 80D639B0  7C 86 23 78 */	mr r6, r4
/* 80D639B4  48 00 00 1C */	b lbl_80D639D0
lbl_80D639B8:
/* 80D639B8  88 65 05 68 */	lbz r3, 0x568(r5)
/* 80D639BC  88 1F 05 68 */	lbz r0, 0x568(r31)
/* 80D639C0  7C 03 00 40 */	cmplw r3, r0
/* 80D639C4  41 81 00 14 */	bgt lbl_80D639D8
/* 80D639C8  7C A6 2B 78 */	mr r6, r5
/* 80D639CC  80 A5 05 74 */	lwz r5, 0x574(r5)
lbl_80D639D0:
/* 80D639D0  28 05 00 00 */	cmplwi r5, 0
/* 80D639D4  40 82 FF E4 */	bne lbl_80D639B8
lbl_80D639D8:
/* 80D639D8  7C 06 28 40 */	cmplw r6, r5
/* 80D639DC  40 82 00 20 */	bne lbl_80D639FC
/* 80D639E0  90 9F 05 74 */	stw r4, 0x574(r31)
/* 80D639E4  3C 60 80 45 */	lis r3, m_top__13daTagStream_c@ha /* 0x80450DA4@ha */
/* 80D639E8  38 83 0D A4 */	addi r4, r3, m_top__13daTagStream_c@l /* 0x80450DA4@l */
/* 80D639EC  80 64 00 00 */	lwz r3, 0(r4)
/* 80D639F0  93 E3 05 70 */	stw r31, 0x570(r3)
/* 80D639F4  93 E4 00 00 */	stw r31, 0(r4)
/* 80D639F8  48 00 00 24 */	b lbl_80D63A1C
lbl_80D639FC:
/* 80D639FC  93 E6 05 74 */	stw r31, 0x574(r6)
/* 80D63A00  90 DF 05 70 */	stw r6, 0x570(r31)
/* 80D63A04  28 05 00 00 */	cmplwi r5, 0
/* 80D63A08  41 82 00 14 */	beq lbl_80D63A1C
/* 80D63A0C  93 E5 05 70 */	stw r31, 0x570(r5)
/* 80D63A10  90 BF 05 74 */	stw r5, 0x574(r31)
/* 80D63A14  48 00 00 08 */	b lbl_80D63A1C
lbl_80D63A18:
/* 80D63A18  93 E3 00 00 */	stw r31, 0(r3)
lbl_80D63A1C:
/* 80D63A1C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80D63A20  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80D63A24  38 83 00 04 */	addi r4, r3, 4
/* 80D63A28  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80D63A2C  54 05 04 38 */	rlwinm r5, r0, 0, 0x10, 0x1c
/* 80D63A30  7C 64 2C 2E */	lfsx f3, r4, r5
/* 80D63A34  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80D63A38  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D63A3C  7C 24 04 2E */	lfsx f1, r4, r0
/* 80D63A40  7C 43 2C 2E */	lfsx f2, r3, r5
/* 80D63A44  7C 03 04 2E */	lfsx f0, r3, r0
/* 80D63A48  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80D63A4C  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80D63A50  FC 00 10 50 */	fneg f0, f2
/* 80D63A54  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80D63A58  EC 01 00 F2 */	fmuls f0, f1, f3
/* 80D63A5C  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80D63A60  38 60 00 04 */	li r3, 4
/* 80D63A64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D63A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D63A6C  7C 08 03 A6 */	mtlr r0
/* 80D63A70  38 21 00 10 */	addi r1, r1, 0x10
/* 80D63A74  4E 80 00 20 */	blr 
