lbl_80C7E1B8:
/* 80C7E1B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C7E1BC  7C 08 02 A6 */	mflr r0
/* 80C7E1C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C7E1C4  39 61 00 20 */	addi r11, r1, 0x20
/* 80C7E1C8  4B 6E 40 10 */	b _savegpr_28
/* 80C7E1CC  2C 04 00 00 */	cmpwi r4, 0
/* 80C7E1D0  40 82 01 20 */	bne lbl_80C7E2F0
/* 80C7E1D4  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 80C7E1D8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C7E1DC  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80C7E1E0  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 80C7E1E4  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 80C7E1E8  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80C7E1EC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80C7E1F0  1F BF 00 30 */	mulli r29, r31, 0x30
/* 80C7E1F4  7C 60 EA 14 */	add r3, r0, r29
/* 80C7E1F8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80C7E1FC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80C7E200  4B 6C 82 B0 */	b PSMTXCopy
/* 80C7E204  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C7E208  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C7E20C  80 1C 0A 20 */	lwz r0, 0xa20(r28)
/* 80C7E210  1C 00 2C EC */	mulli r0, r0, 0x2cec
/* 80C7E214  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C7E218  7C 63 02 14 */	add r3, r3, r0
/* 80C7E21C  C0 23 00 04 */	lfs f1, 4(r3)
/* 80C7E220  C0 1C 0A 28 */	lfs f0, 0xa28(r28)
/* 80C7E224  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C7E228  FC 00 00 1E */	fctiwz f0, f0
/* 80C7E22C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C7E230  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C7E234  A8 1C 09 B8 */	lha r0, 0x9b8(r28)
/* 80C7E238  7C 1F 00 00 */	cmpw r31, r0
/* 80C7E23C  40 82 00 20 */	bne lbl_80C7E25C
/* 80C7E240  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C7E244  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C7E248  A8 1C 09 C2 */	lha r0, 0x9c2(r28)
/* 80C7E24C  7C 00 22 14 */	add r0, r0, r4
/* 80C7E250  7C 04 07 34 */	extsh r4, r0
/* 80C7E254  4B 38 E1 48 */	b mDoMtx_XrotM__FPA4_fs
/* 80C7E258  48 00 00 80 */	b lbl_80C7E2D8
lbl_80C7E25C:
/* 80C7E25C  A8 1C 09 BA */	lha r0, 0x9ba(r28)
/* 80C7E260  7C 1F 00 00 */	cmpw r31, r0
/* 80C7E264  40 82 00 18 */	bne lbl_80C7E27C
/* 80C7E268  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C7E26C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C7E270  A8 9C 09 C6 */	lha r4, 0x9c6(r28)
/* 80C7E274  4B 38 E1 28 */	b mDoMtx_XrotM__FPA4_fs
/* 80C7E278  48 00 00 60 */	b lbl_80C7E2D8
lbl_80C7E27C:
/* 80C7E27C  A8 1C 09 BC */	lha r0, 0x9bc(r28)
/* 80C7E280  7C 1F 00 00 */	cmpw r31, r0
/* 80C7E284  40 82 00 18 */	bne lbl_80C7E29C
/* 80C7E288  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C7E28C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C7E290  A8 9C 09 CA */	lha r4, 0x9ca(r28)
/* 80C7E294  4B 38 E1 08 */	b mDoMtx_XrotM__FPA4_fs
/* 80C7E298  48 00 00 40 */	b lbl_80C7E2D8
lbl_80C7E29C:
/* 80C7E29C  A8 1C 09 BE */	lha r0, 0x9be(r28)
/* 80C7E2A0  7C 1F 00 00 */	cmpw r31, r0
/* 80C7E2A4  40 82 00 18 */	bne lbl_80C7E2BC
/* 80C7E2A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C7E2AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C7E2B0  A8 9C 09 CE */	lha r4, 0x9ce(r28)
/* 80C7E2B4  4B 38 E0 E8 */	b mDoMtx_XrotM__FPA4_fs
/* 80C7E2B8  48 00 00 20 */	b lbl_80C7E2D8
lbl_80C7E2BC:
/* 80C7E2BC  A8 1C 09 C0 */	lha r0, 0x9c0(r28)
/* 80C7E2C0  7C 1F 00 00 */	cmpw r31, r0
/* 80C7E2C4  40 82 00 14 */	bne lbl_80C7E2D8
/* 80C7E2C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C7E2CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C7E2D0  A8 9C 09 D2 */	lha r4, 0x9d2(r28)
/* 80C7E2D4  4B 38 E0 C8 */	b mDoMtx_XrotM__FPA4_fs
lbl_80C7E2D8:
/* 80C7E2D8  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80C7E2DC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80C7E2E0  7C 80 EA 14 */	add r4, r0, r29
/* 80C7E2E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C7E2E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C7E2EC  4B 6C 81 C4 */	b PSMTXCopy
lbl_80C7E2F0:
/* 80C7E2F0  38 60 00 01 */	li r3, 1
/* 80C7E2F4  39 61 00 20 */	addi r11, r1, 0x20
/* 80C7E2F8  4B 6E 3F 2C */	b _restgpr_28
/* 80C7E2FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C7E300  7C 08 03 A6 */	mtlr r0
/* 80C7E304  38 21 00 20 */	addi r1, r1, 0x20
/* 80C7E308  4E 80 00 20 */	blr 
