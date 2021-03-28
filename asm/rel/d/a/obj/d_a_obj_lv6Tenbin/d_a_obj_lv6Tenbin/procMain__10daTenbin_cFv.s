lbl_80C772BC:
/* 80C772BC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C772C0  7C 08 02 A6 */	mflr r0
/* 80C772C4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C772C8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80C772CC  7C 7F 1B 78 */	mr r31, r3
/* 80C772D0  3C 60 80 C7 */	lis r3, data_80C77B20@ha
/* 80C772D4  38 C3 7B 20 */	addi r6, r3, data_80C77B20@l
/* 80C772D8  88 06 00 00 */	lbz r0, 0(r6)
/* 80C772DC  7C 00 07 75 */	extsb. r0, r0
/* 80C772E0  40 82 00 34 */	bne lbl_80C77314
/* 80C772E4  3C 60 80 C7 */	lis r3, mode_proc@ha
/* 80C772E8  38 A3 7A 2C */	addi r5, r3, mode_proc@l
/* 80C772EC  3C 60 80 C7 */	lis r3, lit_3913@ha
/* 80C772F0  38 83 7A 20 */	addi r4, r3, lit_3913@l
/* 80C772F4  80 64 00 00 */	lwz r3, 0(r4)
/* 80C772F8  80 04 00 04 */	lwz r0, 4(r4)
/* 80C772FC  90 65 00 00 */	stw r3, 0(r5)
/* 80C77300  90 05 00 04 */	stw r0, 4(r5)
/* 80C77304  80 04 00 08 */	lwz r0, 8(r4)
/* 80C77308  90 05 00 08 */	stw r0, 8(r5)
/* 80C7730C  38 00 00 01 */	li r0, 1
/* 80C77310  98 06 00 00 */	stb r0, 0(r6)
lbl_80C77314:
/* 80C77314  7F E3 FB 78 */	mr r3, r31
/* 80C77318  88 1F 05 B0 */	lbz r0, 0x5b0(r31)
/* 80C7731C  1C A0 00 0C */	mulli r5, r0, 0xc
/* 80C77320  3C 80 80 C7 */	lis r4, mode_proc@ha
/* 80C77324  38 04 7A 2C */	addi r0, r4, mode_proc@l
/* 80C77328  7D 80 2A 14 */	add r12, r0, r5
/* 80C7732C  4B 6E AD 58 */	b __ptmf_scall
/* 80C77330  60 00 00 00 */	nop 
/* 80C77334  3C 60 80 C7 */	lis r3, lit_3735@ha
/* 80C77338  C0 23 79 E4 */	lfs f1, lit_3735@l(r3)
/* 80C7733C  C0 1F 05 E4 */	lfs f0, 0x5e4(r31)
/* 80C77340  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C77344  FC 00 00 1E */	fctiwz f0, f0
/* 80C77348  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C7734C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C77350  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C77354  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80C77358  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80C7735C  7C 00 07 34 */	extsh r0, r0
/* 80C77360  7C 03 01 D6 */	mullw r0, r3, r0
/* 80C77364  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C77368  7C 64 02 14 */	add r3, r4, r0
/* 80C7736C  C0 43 00 04 */	lfs f2, 4(r3)
/* 80C77370  C0 1F 05 DC */	lfs f0, 0x5dc(r31)
/* 80C77374  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80C77378  FC 00 00 1E */	fctiwz f0, f0
/* 80C7737C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C77380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C77384  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
/* 80C77388  C0 1F 05 E0 */	lfs f0, 0x5e0(r31)
/* 80C7738C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C77390  FC 00 00 1E */	fctiwz f0, f0
/* 80C77394  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C77398  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80C7739C  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80C773A0  7C 00 07 34 */	extsh r0, r0
/* 80C773A4  7C 03 01 D6 */	mullw r0, r3, r0
/* 80C773A8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C773AC  7C 24 04 2E */	lfsx f1, r4, r0
/* 80C773B0  C0 1F 05 DC */	lfs f0, 0x5dc(r31)
/* 80C773B4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C773B8  FC 00 00 1E */	fctiwz f0, f0
/* 80C773BC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80C773C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C773C4  B0 1F 05 D4 */	sth r0, 0x5d4(r31)
/* 80C773C8  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 80C773CC  3C 80 80 C7 */	lis r4, lit_3670@ha
/* 80C773D0  C0 24 79 B8 */	lfs f1, lit_3670@l(r4)
/* 80C773D4  C0 5F 05 E8 */	lfs f2, 0x5e8(r31)
/* 80C773D8  C0 7F 05 EC */	lfs f3, 0x5ec(r31)
/* 80C773DC  C0 9F 05 F0 */	lfs f4, 0x5f0(r31)
/* 80C773E0  4B 5F 85 9C */	b cLib_addCalc__FPfffff
/* 80C773E4  3C 60 80 C7 */	lis r3, lit_3735@ha
/* 80C773E8  C0 23 79 E4 */	lfs f1, lit_3735@l(r3)
/* 80C773EC  C0 1F 06 04 */	lfs f0, 0x604(r31)
/* 80C773F0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C773F4  FC 00 00 1E */	fctiwz f0, f0
/* 80C773F8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80C773FC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80C77400  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80C77404  7C 00 07 34 */	extsh r0, r0
/* 80C77408  7C 03 01 D6 */	mullw r0, r3, r0
/* 80C7740C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C77410  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C77414  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C77418  7C 23 04 2E */	lfsx f1, r3, r0
/* 80C7741C  C0 1F 06 08 */	lfs f0, 0x608(r31)
/* 80C77420  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C77424  D0 1F 05 F8 */	stfs f0, 0x5f8(r31)
/* 80C77428  38 7F 06 08 */	addi r3, r31, 0x608
/* 80C7742C  3C 80 80 C7 */	lis r4, lit_3670@ha
/* 80C77430  C0 24 79 B8 */	lfs f1, lit_3670@l(r4)
/* 80C77434  C0 5F 06 0C */	lfs f2, 0x60c(r31)
/* 80C77438  C0 7F 06 10 */	lfs f3, 0x610(r31)
/* 80C7743C  C0 9F 06 14 */	lfs f4, 0x614(r31)
/* 80C77440  4B 5F 85 3C */	b cLib_addCalc__FPfffff
/* 80C77444  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80C77448  38 03 00 01 */	addi r0, r3, 1
/* 80C7744C  90 1F 05 D0 */	stw r0, 0x5d0(r31)
/* 80C77450  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80C77454  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C77458  7C 08 03 A6 */	mtlr r0
/* 80C7745C  38 21 00 40 */	addi r1, r1, 0x40
/* 80C77460  4E 80 00 20 */	blr 
