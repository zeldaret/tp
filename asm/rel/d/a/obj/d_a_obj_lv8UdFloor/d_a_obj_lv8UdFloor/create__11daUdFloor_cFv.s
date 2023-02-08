lbl_80C8BEE4:
/* 80C8BEE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C8BEE8  7C 08 02 A6 */	mflr r0
/* 80C8BEEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C8BEF0  39 61 00 30 */	addi r11, r1, 0x30
/* 80C8BEF4  4B 6D 62 E9 */	bl _savegpr_29
/* 80C8BEF8  7C 7D 1B 78 */	mr r29, r3
/* 80C8BEFC  3C 80 80 C9 */	lis r4, lit_3628@ha /* 0x80C8CBF0@ha */
/* 80C8BF00  3B E4 CB F0 */	addi r31, r4, lit_3628@l /* 0x80C8CBF0@l */
/* 80C8BF04  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C8BF08  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C8BF0C  40 82 00 28 */	bne lbl_80C8BF34
/* 80C8BF10  28 1D 00 00 */	cmplwi r29, 0
/* 80C8BF14  41 82 00 14 */	beq lbl_80C8BF28
/* 80C8BF18  4B 3E C7 0D */	bl __ct__16dBgS_MoveBgActorFv
/* 80C8BF1C  3C 60 80 C9 */	lis r3, __vt__11daUdFloor_c@ha /* 0x80C8CD34@ha */
/* 80C8BF20  38 03 CD 34 */	addi r0, r3, __vt__11daUdFloor_c@l /* 0x80C8CD34@l */
/* 80C8BF24  90 1D 05 9C */	stw r0, 0x59c(r29)
lbl_80C8BF28:
/* 80C8BF28  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80C8BF2C  60 00 00 08 */	ori r0, r0, 8
/* 80C8BF30  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80C8BF34:
/* 80C8BF34  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80C8BF38  98 1D 05 BB */	stb r0, 0x5bb(r29)
/* 80C8BF3C  38 7D 05 A0 */	addi r3, r29, 0x5a0
/* 80C8BF40  88 1D 05 BB */	lbz r0, 0x5bb(r29)
/* 80C8BF44  54 00 10 3A */	slwi r0, r0, 2
/* 80C8BF48  3C 80 80 C9 */	lis r4, l_resNameIdx@ha /* 0x80C8CC64@ha */
/* 80C8BF4C  38 84 CC 64 */	addi r4, r4, l_resNameIdx@l /* 0x80C8CC64@l */
/* 80C8BF50  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C8BF54  4B 3A 0F 69 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C8BF58  7C 7E 1B 78 */	mr r30, r3
/* 80C8BF5C  2C 1E 00 04 */	cmpwi r30, 4
/* 80C8BF60  40 82 01 60 */	bne lbl_80C8C0C0
/* 80C8BF64  88 1D 05 BB */	lbz r0, 0x5bb(r29)
/* 80C8BF68  54 00 10 3A */	slwi r0, r0, 2
/* 80C8BF6C  7F A3 EB 78 */	mr r3, r29
/* 80C8BF70  3C 80 80 C9 */	lis r4, l_resNameIdx@ha /* 0x80C8CC64@ha */
/* 80C8BF74  38 84 CC 64 */	addi r4, r4, l_resNameIdx@l /* 0x80C8CC64@l */
/* 80C8BF78  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C8BF7C  38 BF 00 0C */	addi r5, r31, 0xc
/* 80C8BF80  7C A5 00 2E */	lwzx r5, r5, r0
/* 80C8BF84  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C8BF88  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C8BF8C  38 FF 00 14 */	addi r7, r31, 0x14
/* 80C8BF90  7C E7 00 2E */	lwzx r7, r7, r0
/* 80C8BF94  39 00 00 00 */	li r8, 0
/* 80C8BF98  4B 3E C8 25 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C8BF9C  2C 03 00 05 */	cmpwi r3, 5
/* 80C8BFA0  40 82 00 0C */	bne lbl_80C8BFAC
/* 80C8BFA4  38 60 00 05 */	li r3, 5
/* 80C8BFA8  48 00 01 1C */	b lbl_80C8C0C4
lbl_80C8BFAC:
/* 80C8BFAC  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80C8BFB0  38 03 00 24 */	addi r0, r3, 0x24
/* 80C8BFB4  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80C8BFB8  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80C8BFBC  80 83 00 04 */	lwz r4, 4(r3)
/* 80C8BFC0  7F A3 EB 78 */	mr r3, r29
/* 80C8BFC4  4B 38 E5 B5 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C8BFC8  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80C8BFCC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C8BFD0  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80C8BFD4  7C 00 07 74 */	extsb r0, r0
/* 80C8BFD8  C8 3F 00 20 */	lfd f1, 0x20(r31)
/* 80C8BFDC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C8BFE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C8BFE4  3C 60 43 30 */	lis r3, 0x4330
/* 80C8BFE8  90 61 00 08 */	stw r3, 8(r1)
/* 80C8BFEC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C8BFF0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C8BFF4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C8BFF8  D0 1D 05 B0 */	stfs f0, 0x5b0(r29)
/* 80C8BFFC  C0 5D 05 B0 */	lfs f2, 0x5b0(r29)
/* 80C8C000  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C8C004  54 00 46 3E */	srwi r0, r0, 0x18
/* 80C8C008  C8 3F 00 28 */	lfd f1, 0x28(r31)
/* 80C8C00C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8C010  90 61 00 10 */	stw r3, 0x10(r1)
/* 80C8C014  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80C8C018  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C8C01C  EC 02 00 24 */	fdivs f0, f2, f0
/* 80C8C020  D0 1D 05 B4 */	stfs f0, 0x5b4(r29)
/* 80C8C024  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80C8C028  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80C8C02C  98 1D 05 B9 */	stb r0, 0x5b9(r29)
/* 80C8C030  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C8C034  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C8C038  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C8C03C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8C040  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80C8C044  7C 05 07 74 */	extsb r5, r0
/* 80C8C048  4B 3A 93 19 */	bl isSwitch__10dSv_info_cCFii
/* 80C8C04C  98 7D 05 BC */	stb r3, 0x5bc(r29)
/* 80C8C050  88 1D 05 BC */	lbz r0, 0x5bc(r29)
/* 80C8C054  28 00 00 00 */	cmplwi r0, 0
/* 80C8C058  41 82 00 30 */	beq lbl_80C8C088
/* 80C8C05C  C0 1D 05 B0 */	lfs f0, 0x5b0(r29)
/* 80C8C060  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
/* 80C8C064  3C 60 80 C9 */	lis r3, l_HIO@ha /* 0x80C8CD8C@ha */
/* 80C8C068  38 63 CD 8C */	addi r3, r3, l_HIO@l /* 0x80C8CD8C@l */
/* 80C8C06C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80C8C070  98 1D 05 BD */	stb r0, 0x5bd(r29)
/* 80C8C074  88 03 00 12 */	lbz r0, 0x12(r3)
/* 80C8C078  98 1D 05 BE */	stb r0, 0x5be(r29)
/* 80C8C07C  88 03 00 13 */	lbz r0, 0x13(r3)
/* 80C8C080  98 1D 05 BF */	stb r0, 0x5bf(r29)
/* 80C8C084  48 00 00 2C */	b lbl_80C8C0B0
lbl_80C8C088:
/* 80C8C088  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C8C08C  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
/* 80C8C090  3C 60 80 C9 */	lis r3, l_HIO@ha /* 0x80C8CD8C@ha */
/* 80C8C094  38 63 CD 8C */	addi r3, r3, l_HIO@l /* 0x80C8CD8C@l */
/* 80C8C098  88 03 00 0D */	lbz r0, 0xd(r3)
/* 80C8C09C  98 1D 05 BD */	stb r0, 0x5bd(r29)
/* 80C8C0A0  88 03 00 0E */	lbz r0, 0xe(r3)
/* 80C8C0A4  98 1D 05 BE */	stb r0, 0x5be(r29)
/* 80C8C0A8  88 03 00 0F */	lbz r0, 0xf(r3)
/* 80C8C0AC  98 1D 05 BF */	stb r0, 0x5bf(r29)
lbl_80C8C0B0:
/* 80C8C0B0  7F A3 EB 78 */	mr r3, r29
/* 80C8C0B4  48 00 01 B1 */	bl init_modeWait__11daUdFloor_cFv
/* 80C8C0B8  7F A3 EB 78 */	mr r3, r29
/* 80C8C0BC  4B FF FD 0D */	bl setBaseMtx__11daUdFloor_cFv
lbl_80C8C0C0:
/* 80C8C0C0  7F C3 F3 78 */	mr r3, r30
lbl_80C8C0C4:
/* 80C8C0C4  39 61 00 30 */	addi r11, r1, 0x30
/* 80C8C0C8  4B 6D 61 61 */	bl _restgpr_29
/* 80C8C0CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C8C0D0  7C 08 03 A6 */	mtlr r0
/* 80C8C0D4  38 21 00 30 */	addi r1, r1, 0x30
/* 80C8C0D8  4E 80 00 20 */	blr 
