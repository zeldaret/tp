lbl_809CDD74:
/* 809CDD74  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 809CDD78  7C 08 02 A6 */	mflr r0
/* 809CDD7C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 809CDD80  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 809CDD84  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 809CDD88  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 809CDD8C  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 809CDD90  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 809CDD94  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 809CDD98  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 809CDD9C  F3 81 00 A8 */	psq_st f28, 168(r1), 0, 0 /* qr0 */
/* 809CDDA0  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 809CDDA4  F3 61 00 98 */	psq_st f27, 152(r1), 0, 0 /* qr0 */
/* 809CDDA8  DB 41 00 80 */	stfd f26, 0x80(r1)
/* 809CDDAC  F3 41 00 88 */	psq_st f26, 136(r1), 0, 0 /* qr0 */
/* 809CDDB0  DB 21 00 70 */	stfd f25, 0x70(r1)
/* 809CDDB4  F3 21 00 78 */	psq_st f25, 120(r1), 0, 0 /* qr0 */
/* 809CDDB8  DB 01 00 60 */	stfd f24, 0x60(r1)
/* 809CDDBC  F3 01 00 68 */	psq_st f24, 104(r1), 0, 0 /* qr0 */
/* 809CDDC0  39 61 00 60 */	addi r11, r1, 0x60
/* 809CDDC4  4B 99 44 11 */	bl _savegpr_27
/* 809CDDC8  7C 7B 1B 78 */	mr r27, r3
/* 809CDDCC  3C 60 80 9D */	lis r3, m__17daNpc_grC_Param_c@ha /* 0x809CF51C@ha */
/* 809CDDD0  3B E3 F5 1C */	addi r31, r3, m__17daNpc_grC_Param_c@l /* 0x809CF51C@l */
/* 809CDDD4  38 60 00 00 */	li r3, 0
/* 809CDDD8  80 9B 05 68 */	lwz r4, 0x568(r27)
/* 809CDDDC  83 C4 00 04 */	lwz r30, 4(r4)
/* 809CDDE0  3B A0 00 00 */	li r29, 0
/* 809CDDE4  38 9F 00 00 */	addi r4, r31, 0
/* 809CDDE8  C3 E4 00 24 */	lfs f31, 0x24(r4)
/* 809CDDEC  C3 C4 00 20 */	lfs f30, 0x20(r4)
/* 809CDDF0  C3 A4 00 2C */	lfs f29, 0x2c(r4)
/* 809CDDF4  C3 84 00 28 */	lfs f28, 0x28(r4)
/* 809CDDF8  C3 64 00 34 */	lfs f27, 0x34(r4)
/* 809CDDFC  C3 44 00 30 */	lfs f26, 0x30(r4)
/* 809CDE00  C3 24 00 3C */	lfs f25, 0x3c(r4)
/* 809CDE04  C3 04 00 38 */	lfs f24, 0x38(r4)
/* 809CDE08  A8 9B 08 F8 */	lha r4, 0x8f8(r27)
/* 809CDE0C  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 809CDE10  7C 04 00 50 */	subf r0, r4, r0
/* 809CDE14  7C 1C 07 34 */	extsh r28, r0
/* 809CDE18  C0 1B 08 54 */	lfs f0, 0x854(r27)
/* 809CDE1C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809CDE20  C0 1B 08 58 */	lfs f0, 0x858(r27)
/* 809CDE24  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809CDE28  C0 1B 08 5C */	lfs f0, 0x85c(r27)
/* 809CDE2C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809CDE30  C0 1B 08 60 */	lfs f0, 0x860(r27)
/* 809CDE34  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809CDE38  C0 1B 08 64 */	lfs f0, 0x864(r27)
/* 809CDE3C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809CDE40  C0 1B 08 68 */	lfs f0, 0x868(r27)
/* 809CDE44  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809CDE48  C0 1B 08 6C */	lfs f0, 0x86c(r27)
/* 809CDE4C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809CDE50  C0 1B 08 70 */	lfs f0, 0x870(r27)
/* 809CDE54  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809CDE58  C0 1B 08 74 */	lfs f0, 0x874(r27)
/* 809CDE5C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809CDE60  80 9F 02 BC */	lwz r4, 0x2bc(r31)
/* 809CDE64  80 1F 02 C0 */	lwz r0, 0x2c0(r31)
/* 809CDE68  90 81 00 18 */	stw r4, 0x18(r1)
/* 809CDE6C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809CDE70  80 1F 02 C4 */	lwz r0, 0x2c4(r31)
/* 809CDE74  90 01 00 20 */	stw r0, 0x20(r1)
/* 809CDE78  38 1B 09 1A */	addi r0, r27, 0x91a
/* 809CDE7C  90 01 00 18 */	stw r0, 0x18(r1)
/* 809CDE80  38 1B 09 20 */	addi r0, r27, 0x920
/* 809CDE84  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809CDE88  38 1B 09 26 */	addi r0, r27, 0x926
/* 809CDE8C  90 01 00 20 */	stw r0, 0x20(r1)
/* 809CDE90  A8 1B 0E 44 */	lha r0, 0xe44(r27)
/* 809CDE94  2C 00 00 01 */	cmpwi r0, 1
/* 809CDE98  41 82 00 1C */	beq lbl_809CDEB4
/* 809CDE9C  40 80 00 08 */	bge lbl_809CDEA4
/* 809CDEA0  48 00 00 44 */	b lbl_809CDEE4
lbl_809CDEA4:
/* 809CDEA4  2C 00 00 04 */	cmpwi r0, 4
/* 809CDEA8  41 82 00 34 */	beq lbl_809CDEDC
/* 809CDEAC  40 80 00 38 */	bge lbl_809CDEE4
/* 809CDEB0  48 00 00 0C */	b lbl_809CDEBC
lbl_809CDEB4:
/* 809CDEB4  3B A0 00 01 */	li r29, 1
/* 809CDEB8  48 00 00 2C */	b lbl_809CDEE4
lbl_809CDEBC:
/* 809CDEBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809CDEC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809CDEC4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809CDEC8  2C 00 00 03 */	cmpwi r0, 3
/* 809CDECC  40 82 00 18 */	bne lbl_809CDEE4
/* 809CDED0  C3 3F 02 C8 */	lfs f25, 0x2c8(r31)
/* 809CDED4  C3 1F 02 CC */	lfs f24, 0x2cc(r31)
/* 809CDED8  48 00 00 0C */	b lbl_809CDEE4
lbl_809CDEDC:
/* 809CDEDC  38 7B 0C B8 */	addi r3, r27, 0xcb8
/* 809CDEE0  4B 78 28 0D */	bl getActorP__18daNpcF_ActorMngr_cFv
lbl_809CDEE4:
/* 809CDEE4  28 03 00 00 */	cmplwi r3, 0
/* 809CDEE8  41 82 00 54 */	beq lbl_809CDF3C
/* 809CDEEC  C0 03 05 50 */	lfs f0, 0x550(r3)
/* 809CDEF0  D0 1B 08 78 */	stfs f0, 0x878(r27)
/* 809CDEF4  C0 03 05 54 */	lfs f0, 0x554(r3)
/* 809CDEF8  D0 1B 08 7C */	stfs f0, 0x87c(r27)
/* 809CDEFC  C0 03 05 58 */	lfs f0, 0x558(r3)
/* 809CDF00  D0 1B 08 80 */	stfs f0, 0x880(r27)
/* 809CDF04  A8 1B 0E 44 */	lha r0, 0xe44(r27)
/* 809CDF08  2C 00 00 02 */	cmpwi r0, 2
/* 809CDF0C  41 82 00 24 */	beq lbl_809CDF30
/* 809CDF10  2C 00 00 03 */	cmpwi r0, 3
/* 809CDF14  41 82 00 1C */	beq lbl_809CDF30
/* 809CDF18  2C 00 00 04 */	cmpwi r0, 4
/* 809CDF1C  41 82 00 14 */	beq lbl_809CDF30
/* 809CDF20  C0 3B 08 7C */	lfs f1, 0x87c(r27)
/* 809CDF24  C0 1F 02 D0 */	lfs f0, 0x2d0(r31)
/* 809CDF28  EC 01 00 28 */	fsubs f0, f1, f0
/* 809CDF2C  D0 1B 08 7C */	stfs f0, 0x87c(r27)
lbl_809CDF30:
/* 809CDF30  38 1B 08 78 */	addi r0, r27, 0x878
/* 809CDF34  90 1B 0C 0C */	stw r0, 0xc0c(r27)
/* 809CDF38  48 00 00 0C */	b lbl_809CDF44
lbl_809CDF3C:
/* 809CDF3C  38 00 00 00 */	li r0, 0
/* 809CDF40  90 1B 0C 0C */	stw r0, 0xc0c(r27)
lbl_809CDF44:
/* 809CDF44  D3 61 00 08 */	stfs f27, 8(r1)
/* 809CDF48  D3 41 00 0C */	stfs f26, 0xc(r1)
/* 809CDF4C  D3 21 00 10 */	stfs f25, 0x10(r1)
/* 809CDF50  D3 01 00 14 */	stfs f24, 0x14(r1)
/* 809CDF54  38 7B 0B DC */	addi r3, r27, 0xbdc
/* 809CDF58  FC 20 F8 90 */	fmr f1, f31
/* 809CDF5C  FC 40 F0 90 */	fmr f2, f30
/* 809CDF60  FC 60 E8 90 */	fmr f3, f29
/* 809CDF64  FC 80 E0 90 */	fmr f4, f28
/* 809CDF68  C0 BF 00 80 */	lfs f5, 0x80(r31)
/* 809CDF6C  FC C0 28 90 */	fmr f6, f5
/* 809CDF70  FC E0 28 90 */	fmr f7, f5
/* 809CDF74  FD 00 28 90 */	fmr f8, f5
/* 809CDF78  A8 9B 08 F2 */	lha r4, 0x8f2(r27)
/* 809CDF7C  38 A1 00 24 */	addi r5, r1, 0x24
/* 809CDF80  4B 78 31 39 */	bl setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 809CDF84  38 7B 0B DC */	addi r3, r27, 0xbdc
/* 809CDF88  7F 64 DB 78 */	mr r4, r27
/* 809CDF8C  38 BE 00 24 */	addi r5, r30, 0x24
/* 809CDF90  38 C1 00 18 */	addi r6, r1, 0x18
/* 809CDF94  7F A7 EB 78 */	mr r7, r29
/* 809CDF98  7F 88 E3 78 */	mr r8, r28
/* 809CDF9C  39 20 00 00 */	li r9, 0
/* 809CDFA0  4B 78 33 B1 */	bl calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 809CDFA4  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 809CDFA8  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 809CDFAC  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 809CDFB0  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 809CDFB4  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 809CDFB8  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 809CDFBC  E3 81 00 A8 */	psq_l f28, 168(r1), 0, 0 /* qr0 */
/* 809CDFC0  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 809CDFC4  E3 61 00 98 */	psq_l f27, 152(r1), 0, 0 /* qr0 */
/* 809CDFC8  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 809CDFCC  E3 41 00 88 */	psq_l f26, 136(r1), 0, 0 /* qr0 */
/* 809CDFD0  CB 41 00 80 */	lfd f26, 0x80(r1)
/* 809CDFD4  E3 21 00 78 */	psq_l f25, 120(r1), 0, 0 /* qr0 */
/* 809CDFD8  CB 21 00 70 */	lfd f25, 0x70(r1)
/* 809CDFDC  E3 01 00 68 */	psq_l f24, 104(r1), 0, 0 /* qr0 */
/* 809CDFE0  CB 01 00 60 */	lfd f24, 0x60(r1)
/* 809CDFE4  39 61 00 60 */	addi r11, r1, 0x60
/* 809CDFE8  4B 99 42 39 */	bl _restgpr_27
/* 809CDFEC  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 809CDFF0  7C 08 03 A6 */	mtlr r0
/* 809CDFF4  38 21 00 E0 */	addi r1, r1, 0xe0
/* 809CDFF8  4E 80 00 20 */	blr 
