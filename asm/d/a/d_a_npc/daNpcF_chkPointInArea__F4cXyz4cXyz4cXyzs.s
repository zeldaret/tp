lbl_80155968:
/* 80155968  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8015596C  7C 08 02 A6 */	mflr r0
/* 80155970  90 01 00 84 */	stw r0, 0x84(r1)
/* 80155974  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80155978  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8015597C  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80155980  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80155984  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 80155988  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 8015598C  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 80155990  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 80155994  39 61 00 40 */	addi r11, r1, 0x40
/* 80155998  48 20 C8 45 */	bl _savegpr_29
/* 8015599C  7C 7D 1B 78 */	mr r29, r3
/* 801559A0  7C 9E 23 78 */	mr r30, r4
/* 801559A4  7C BF 2B 78 */	mr r31, r5
/* 801559A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 801559AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 801559B0  7C 06 00 D0 */	neg r0, r6
/* 801559B4  7C 04 07 34 */	extsh r4, r0
/* 801559B8  4B EB 6A 25 */	bl mDoMtx_YrotS__FPA4_fs
/* 801559BC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 801559C0  FC 20 00 50 */	fneg f1, f0
/* 801559C4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 801559C8  FC 40 00 50 */	fneg f2, f0
/* 801559CC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 801559D0  FC 60 00 50 */	fneg f3, f0
/* 801559D4  4B EB 73 C9 */	bl transM__14mDoMtx_stack_cFfff
/* 801559D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 801559DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 801559E0  7F A4 EB 78 */	mr r4, r29
/* 801559E4  38 A1 00 20 */	addi r5, r1, 0x20
/* 801559E8  48 1F 13 85 */	bl PSMTXMultVec
/* 801559EC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 801559F0  FC 00 02 10 */	fabs f0, f0
/* 801559F4  FF E0 00 18 */	frsp f31, f0
/* 801559F8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 801559FC  FC 00 02 10 */	fabs f0, f0
/* 80155A00  FF C0 00 18 */	frsp f30, f0
/* 80155A04  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80155A08  FC 00 02 10 */	fabs f0, f0
/* 80155A0C  FF A0 00 18 */	frsp f29, f0
/* 80155A10  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80155A14  FC 00 02 10 */	fabs f0, f0
/* 80155A18  FF 80 00 18 */	frsp f28, f0
/* 80155A1C  38 61 00 08 */	addi r3, r1, 8
/* 80155A20  7F C4 F3 78 */	mr r4, r30
/* 80155A24  7F A5 EB 78 */	mr r5, r29
/* 80155A28  48 11 11 0D */	bl __mi__4cXyzCFRC3Vec
/* 80155A2C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80155A30  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80155A34  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80155A38  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80155A3C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80155A40  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80155A44  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80155A48  FC 00 10 50 */	fneg f0, f2
/* 80155A4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80155A50  4C 40 13 82 */	cror 2, 0, 2
/* 80155A54  41 82 00 10 */	beq lbl_80155A64
/* 80155A58  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80155A5C  4C 40 13 82 */	cror 2, 0, 2
/* 80155A60  40 82 00 0C */	bne lbl_80155A6C
lbl_80155A64:
/* 80155A64  38 60 00 00 */	li r3, 0
/* 80155A68  48 00 00 34 */	b lbl_80155A9C
lbl_80155A6C:
/* 80155A6C  EC 3D 07 72 */	fmuls f1, f29, f29
/* 80155A70  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 80155A74  EC 41 00 24 */	fdivs f2, f1, f0
/* 80155A78  EC 3C 07 32 */	fmuls f1, f28, f28
/* 80155A7C  EC 1E 07 B2 */	fmuls f0, f30, f30
/* 80155A80  EC 01 00 24 */	fdivs f0, f1, f0
/* 80155A84  EC 22 00 2A */	fadds f1, f2, f0
/* 80155A88  C0 02 99 DC */	lfs f0, lit_4140(r2)
/* 80155A8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80155A90  4C 40 13 82 */	cror 2, 0, 2
/* 80155A94  7C 00 00 26 */	mfcr r0
/* 80155A98  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
lbl_80155A9C:
/* 80155A9C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80155AA0  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80155AA4  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80155AA8  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80155AAC  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 80155AB0  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 80155AB4  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 80155AB8  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 80155ABC  39 61 00 40 */	addi r11, r1, 0x40
/* 80155AC0  48 20 C7 69 */	bl _restgpr_29
/* 80155AC4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80155AC8  7C 08 03 A6 */	mtlr r0
/* 80155ACC  38 21 00 80 */	addi r1, r1, 0x80
/* 80155AD0  4E 80 00 20 */	blr 
