lbl_8067E0BC:
/* 8067E0BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8067E0C0  7C 08 02 A6 */	mflr r0
/* 8067E0C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8067E0C8  39 61 00 30 */	addi r11, r1, 0x30
/* 8067E0CC  4B CE 41 0C */	b _savegpr_28
/* 8067E0D0  7C 7F 1B 78 */	mr r31, r3
/* 8067E0D4  3C 60 80 68 */	lis r3, lit_3983@ha
/* 8067E0D8  3B C3 E8 80 */	addi r30, r3, lit_3983@l
/* 8067E0DC  88 1F 0A 14 */	lbz r0, 0xa14(r31)
/* 8067E0E0  28 00 00 00 */	cmplwi r0, 0
/* 8067E0E4  41 82 00 0C */	beq lbl_8067E0F0
/* 8067E0E8  38 60 00 01 */	li r3, 1
/* 8067E0EC  48 00 02 00 */	b lbl_8067E2EC
lbl_8067E0F0:
/* 8067E0F0  A8 7F 05 C0 */	lha r3, 0x5c0(r31)
/* 8067E0F4  38 03 00 01 */	addi r0, r3, 1
/* 8067E0F8  B0 1F 05 C0 */	sth r0, 0x5c0(r31)
/* 8067E0FC  38 60 00 00 */	li r3, 0
/* 8067E100  38 00 00 04 */	li r0, 4
/* 8067E104  7C 09 03 A6 */	mtctr r0
lbl_8067E108:
/* 8067E108  38 A3 05 C6 */	addi r5, r3, 0x5c6
/* 8067E10C  7C 9F 2A AE */	lhax r4, r31, r5
/* 8067E110  2C 04 00 00 */	cmpwi r4, 0
/* 8067E114  41 82 00 0C */	beq lbl_8067E120
/* 8067E118  38 04 FF FF */	addi r0, r4, -1
/* 8067E11C  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_8067E120:
/* 8067E120  38 63 00 02 */	addi r3, r3, 2
/* 8067E124  42 00 FF E4 */	bdnz lbl_8067E108
/* 8067E128  7F E3 FB 78 */	mr r3, r31
/* 8067E12C  4B FF FD 29 */	bl action__FP13e_arrow_class
/* 8067E130  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 8067E134  28 00 00 00 */	cmplwi r0, 0
/* 8067E138  40 82 00 0C */	bne lbl_8067E144
/* 8067E13C  38 60 00 01 */	li r3, 1
/* 8067E140  48 00 01 AC */	b lbl_8067E2EC
lbl_8067E144:
/* 8067E144  88 1F 05 B8 */	lbz r0, 0x5b8(r31)
/* 8067E148  28 00 00 01 */	cmplwi r0, 1
/* 8067E14C  41 80 00 0C */	blt lbl_8067E158
/* 8067E150  7F E3 FB 78 */	mr r3, r31
/* 8067E154  4B FF E7 21 */	bl fire_eff_set__FP13e_arrow_class
lbl_8067E158:
/* 8067E158  A8 7F 05 CE */	lha r3, 0x5ce(r31)
/* 8067E15C  2C 03 00 00 */	cmpwi r3, 0
/* 8067E160  41 82 00 7C */	beq lbl_8067E1DC
/* 8067E164  38 03 FF FF */	addi r0, r3, -1
/* 8067E168  B0 1F 05 CE */	sth r0, 0x5ce(r31)
/* 8067E16C  C0 5E 00 B8 */	lfs f2, 0xb8(r30)
/* 8067E170  A8 1F 05 CE */	lha r0, 0x5ce(r31)
/* 8067E174  C8 3E 00 C8 */	lfd f1, 0xc8(r30)
/* 8067E178  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8067E17C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8067E180  3C 00 43 30 */	lis r0, 0x4330
/* 8067E184  90 01 00 08 */	stw r0, 8(r1)
/* 8067E188  C8 01 00 08 */	lfd f0, 8(r1)
/* 8067E18C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8067E190  EC 22 00 32 */	fmuls f1, f2, f0
/* 8067E194  A8 9F 05 C0 */	lha r4, 0x5c0(r31)
/* 8067E198  1C 04 70 00 */	mulli r0, r4, 0x7000
/* 8067E19C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8067E1A0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8067E1A4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8067E1A8  7C 03 04 2E */	lfsx f0, r3, r0
/* 8067E1AC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8067E1B0  FC 00 00 1E */	fctiwz f0, f0
/* 8067E1B4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8067E1B8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8067E1BC  1C 04 7A 00 */	mulli r0, r4, 0x7a00
/* 8067E1C0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8067E1C4  7C 03 04 2E */	lfsx f0, r3, r0
/* 8067E1C8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8067E1CC  FC 00 00 1E */	fctiwz f0, f0
/* 8067E1D0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8067E1D4  83 81 00 1C */	lwz r28, 0x1c(r1)
/* 8067E1D8  48 00 00 0C */	b lbl_8067E1E4
lbl_8067E1DC:
/* 8067E1DC  3B 80 00 00 */	li r28, 0
/* 8067E1E0  3B A0 00 00 */	li r29, 0
lbl_8067E1E4:
/* 8067E1E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8067E1E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8067E1EC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8067E1F0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8067E1F4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8067E1F8  4B CC 86 F0 */	b PSMTXTrans
/* 8067E1FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8067E200  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8067E204  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8067E208  4B 98 E2 2C */	b mDoMtx_YrotM__FPA4_fs
/* 8067E20C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8067E210  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8067E214  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 8067E218  4B 98 E1 84 */	b mDoMtx_XrotM__FPA4_fs
/* 8067E21C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8067E220  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8067E224  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 8067E228  4B 98 E2 A4 */	b mDoMtx_ZrotM__FPA4_fs
/* 8067E22C  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8067E230  FC 40 08 90 */	fmr f2, f1
/* 8067E234  C0 7E 00 D8 */	lfs f3, 0xd8(r30)
/* 8067E238  4B 98 EB 64 */	b transM__14mDoMtx_stack_cFfff
/* 8067E23C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8067E240  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8067E244  7F A4 EB 78 */	mr r4, r29
/* 8067E248  4B 98 E1 EC */	b mDoMtx_YrotM__FPA4_fs
/* 8067E24C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8067E250  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8067E254  7F 84 E3 78 */	mr r4, r28
/* 8067E258  4B 98 E1 44 */	b mDoMtx_XrotM__FPA4_fs
/* 8067E25C  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8067E260  FC 40 08 90 */	fmr f2, f1
/* 8067E264  C0 7E 00 DC */	lfs f3, 0xdc(r30)
/* 8067E268  4B 98 EB 34 */	b transM__14mDoMtx_stack_cFfff
/* 8067E26C  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8067E270  FC 40 08 90 */	fmr f2, f1
/* 8067E274  C0 7E 00 E0 */	lfs f3, 0xe0(r30)
/* 8067E278  4B 98 EB C0 */	b scaleM__14mDoMtx_stack_cFfff
/* 8067E27C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8067E280  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8067E284  38 80 A4 34 */	li r4, -23500
/* 8067E288  4B 98 E1 AC */	b mDoMtx_YrotM__FPA4_fs
/* 8067E28C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8067E290  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8067E294  38 80 F8 30 */	li r4, -2000
/* 8067E298  4B 98 E1 04 */	b mDoMtx_XrotM__FPA4_fs
/* 8067E29C  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 8067E2A0  C0 5E 00 E8 */	lfs f2, 0xe8(r30)
/* 8067E2A4  C0 7E 00 D8 */	lfs f3, 0xd8(r30)
/* 8067E2A8  4B 98 EA F4 */	b transM__14mDoMtx_stack_cFfff
/* 8067E2AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8067E2B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8067E2B4  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 8067E2B8  38 84 00 24 */	addi r4, r4, 0x24
/* 8067E2BC  4B CC 81 F4 */	b PSMTXCopy
/* 8067E2C0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8067E2C4  7C 03 07 74 */	extsb r3, r0
/* 8067E2C8  4B 9A ED A4 */	b dComIfGp_getReverb__Fi
/* 8067E2CC  7C 65 1B 78 */	mr r5, r3
/* 8067E2D0  38 7F 0A 18 */	addi r3, r31, 0xa18
/* 8067E2D4  38 80 00 00 */	li r4, 0
/* 8067E2D8  81 9F 0A 28 */	lwz r12, 0xa28(r31)
/* 8067E2DC  81 8C 00 08 */	lwz r12, 8(r12)
/* 8067E2E0  7D 89 03 A6 */	mtctr r12
/* 8067E2E4  4E 80 04 21 */	bctrl 
/* 8067E2E8  38 60 00 01 */	li r3, 1
lbl_8067E2EC:
/* 8067E2EC  39 61 00 30 */	addi r11, r1, 0x30
/* 8067E2F0  4B CE 3F 34 */	b _restgpr_28
/* 8067E2F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8067E2F8  7C 08 03 A6 */	mtlr r0
/* 8067E2FC  38 21 00 30 */	addi r1, r1, 0x30
/* 8067E300  4E 80 00 20 */	blr 
