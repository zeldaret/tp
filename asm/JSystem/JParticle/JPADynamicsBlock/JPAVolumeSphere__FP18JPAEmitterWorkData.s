lbl_8027B5F0:
/* 8027B5F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027B5F4  80 C3 00 00 */	lwz r6, 0(r3)
/* 8027B5F8  80 86 00 E8 */	lwz r4, 0xe8(r6)
/* 8027B5FC  80 84 00 2C */	lwz r4, 0x2c(r4)
/* 8027B600  80 84 00 00 */	lwz r4, 0(r4)
/* 8027B604  80 04 00 08 */	lwz r0, 8(r4)
/* 8027B608  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8027B60C  41 82 00 F0 */	beq lbl_8027B6FC
/* 8027B610  80 03 01 F4 */	lwz r0, 0x1f4(r3)
/* 8027B614  54 05 78 20 */	slwi r5, r0, 0xf
/* 8027B618  80 83 01 F8 */	lwz r4, 0x1f8(r3)
/* 8027B61C  38 04 FF FF */	addi r0, r4, -1
/* 8027B620  7C 85 03 D6 */	divw r4, r5, r0
/* 8027B624  38 04 40 00 */	addi r0, r4, 0x4000
/* 8027B628  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8027B62C  7C 00 07 34 */	extsh r0, r0
/* 8027B630  C0 42 B9 28 */	lfs f2, lit_2501(r2)
/* 8027B634  80 C3 01 EC */	lwz r6, 0x1ec(r3)
/* 8027B638  54 C5 80 1E */	slwi r5, r6, 0x10
/* 8027B63C  80 83 01 F0 */	lwz r4, 0x1f0(r3)
/* 8027B640  38 84 FF FF */	addi r4, r4, -1
/* 8027B644  7C 85 23 D6 */	divw r4, r5, r4
/* 8027B648  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 8027B64C  C8 22 B9 30 */	lfd f1, lit_2503(r2)
/* 8027B650  90 81 00 14 */	stw r4, 0x14(r1)
/* 8027B654  3C 80 43 30 */	lis r4, 0x4330
/* 8027B658  90 81 00 10 */	stw r4, 0x10(r1)
/* 8027B65C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8027B660  EC 20 08 28 */	fsubs f1, f0, f1
/* 8027B664  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 8027B668  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027B66C  EC 02 00 2A */	fadds f0, f2, f0
/* 8027B670  FC 00 00 1E */	fctiwz f0, f0
/* 8027B674  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8027B678  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8027B67C  38 A6 00 01 */	addi r5, r6, 1
/* 8027B680  90 A3 01 EC */	stw r5, 0x1ec(r3)
/* 8027B684  80 C3 01 EC */	lwz r6, 0x1ec(r3)
/* 8027B688  80 A3 01 F0 */	lwz r5, 0x1f0(r3)
/* 8027B68C  7C 06 28 00 */	cmpw r6, r5
/* 8027B690  40 82 00 E8 */	bne lbl_8027B778
/* 8027B694  38 A0 00 00 */	li r5, 0
/* 8027B698  90 A3 01 EC */	stw r5, 0x1ec(r3)
/* 8027B69C  80 A3 01 F4 */	lwz r5, 0x1f4(r3)
/* 8027B6A0  38 A5 00 01 */	addi r5, r5, 1
/* 8027B6A4  90 A3 01 F4 */	stw r5, 0x1f4(r3)
/* 8027B6A8  80 A3 01 F4 */	lwz r5, 0x1f4(r3)
/* 8027B6AC  54 A6 08 3C */	slwi r6, r5, 1
/* 8027B6B0  80 A3 01 F8 */	lwz r5, 0x1f8(r3)
/* 8027B6B4  7C 06 28 00 */	cmpw r6, r5
/* 8027B6B8  40 80 00 24 */	bge lbl_8027B6DC
/* 8027B6BC  80 A3 01 F0 */	lwz r5, 0x1f0(r3)
/* 8027B6C0  2C 05 00 01 */	cmpwi r5, 1
/* 8027B6C4  41 82 00 0C */	beq lbl_8027B6D0
/* 8027B6C8  38 A5 00 04 */	addi r5, r5, 4
/* 8027B6CC  48 00 00 08 */	b lbl_8027B6D4
lbl_8027B6D0:
/* 8027B6D0  38 A5 00 03 */	addi r5, r5, 3
lbl_8027B6D4:
/* 8027B6D4  90 A3 01 F0 */	stw r5, 0x1f0(r3)
/* 8027B6D8  48 00 00 A0 */	b lbl_8027B778
lbl_8027B6DC:
/* 8027B6DC  80 A3 01 F0 */	lwz r5, 0x1f0(r3)
/* 8027B6E0  2C 05 00 04 */	cmpwi r5, 4
/* 8027B6E4  41 82 00 0C */	beq lbl_8027B6F0
/* 8027B6E8  38 A5 FF FC */	addi r5, r5, -4
/* 8027B6EC  48 00 00 08 */	b lbl_8027B6F4
lbl_8027B6F0:
/* 8027B6F0  38 A0 00 01 */	li r5, 1
lbl_8027B6F4:
/* 8027B6F4  90 A3 01 F0 */	stw r5, 0x1f0(r3)
/* 8027B6F8  48 00 00 80 */	b lbl_8027B778
lbl_8027B6FC:
/* 8027B6FC  80 06 00 C4 */	lwz r0, 0xc4(r6)
/* 8027B700  3C 80 00 19 */	lis r4, 0x0019 /* 0x0019660D@ha */
/* 8027B704  38 A4 66 0D */	addi r5, r4, 0x660D /* 0x0019660D@l */
/* 8027B708  7C 80 29 D6 */	mullw r4, r0, r5
/* 8027B70C  3C 84 3C 6F */	addis r4, r4, 0x3c6f
/* 8027B710  38 04 F3 5F */	addi r0, r4, -3233
/* 8027B714  90 06 00 C4 */	stw r0, 0xc4(r6)
/* 8027B718  54 00 84 3E */	srwi r0, r0, 0x10
/* 8027B71C  7C 00 07 34 */	extsh r0, r0
/* 8027B720  7C 00 0E 70 */	srawi r0, r0, 1
/* 8027B724  7C 00 07 34 */	extsh r0, r0
/* 8027B728  80 C3 00 00 */	lwz r6, 0(r3)
/* 8027B72C  80 86 00 C4 */	lwz r4, 0xc4(r6)
/* 8027B730  7C 84 29 D6 */	mullw r4, r4, r5
/* 8027B734  3C 84 3C 6F */	addis r4, r4, 0x3c6f
/* 8027B738  38 84 F3 5F */	addi r4, r4, -3233
/* 8027B73C  90 86 00 C4 */	stw r4, 0xc4(r6)
/* 8027B740  54 84 84 3E */	srwi r4, r4, 0x10
/* 8027B744  7C 84 07 34 */	extsh r4, r4
/* 8027B748  C0 43 00 3C */	lfs f2, 0x3c(r3)
/* 8027B74C  C8 22 B9 20 */	lfd f1, lit_2321(r2)
/* 8027B750  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8027B754  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8027B758  3C 80 43 30 */	lis r4, 0x4330
/* 8027B75C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8027B760  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8027B764  EC 00 08 28 */	fsubs f0, f0, f1
/* 8027B768  EC 02 00 32 */	fmuls f0, f2, f0
/* 8027B76C  FC 00 00 1E */	fctiwz f0, f0
/* 8027B770  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8027B774  80 81 00 14 */	lwz r4, 0x14(r1)
lbl_8027B778:
/* 8027B778  80 E3 00 00 */	lwz r7, 0(r3)
/* 8027B77C  80 C7 00 C4 */	lwz r6, 0xc4(r7)
/* 8027B780  3C A0 00 19 */	lis r5, 0x0019 /* 0x0019660D@ha */
/* 8027B784  38 A5 66 0D */	addi r5, r5, 0x660D /* 0x0019660D@l */
/* 8027B788  7C A6 29 D6 */	mullw r5, r6, r5
/* 8027B78C  3C A5 3C 6F */	addis r5, r5, 0x3c6f
/* 8027B790  38 A5 F3 5F */	addi r5, r5, -3233
/* 8027B794  90 A7 00 C4 */	stw r5, 0xc4(r7)
/* 8027B798  54 A5 BA 7E */	srwi r5, r5, 9
/* 8027B79C  64 A5 3F 80 */	oris r5, r5, 0x3f80
/* 8027B7A0  90 A1 00 08 */	stw r5, 8(r1)
/* 8027B7A4  C0 01 00 08 */	lfs f0, 8(r1)
/* 8027B7A8  C0 22 B9 14 */	lfs f1, lit_2288(r2)
/* 8027B7AC  EC 40 08 28 */	fsubs f2, f0, f1
/* 8027B7B0  FC 60 10 90 */	fmr f3, f2
/* 8027B7B4  80 A3 00 00 */	lwz r5, 0(r3)
/* 8027B7B8  80 A5 00 E8 */	lwz r5, 0xe8(r5)
/* 8027B7BC  80 A5 00 2C */	lwz r5, 0x2c(r5)
/* 8027B7C0  80 A5 00 00 */	lwz r5, 0(r5)
/* 8027B7C4  80 A5 00 08 */	lwz r5, 8(r5)
/* 8027B7C8  54 A5 07 FF */	clrlwi. r5, r5, 0x1f
/* 8027B7CC  41 82 00 10 */	beq lbl_8027B7DC
/* 8027B7D0  EC 02 00 B2 */	fmuls f0, f2, f2
/* 8027B7D4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8027B7D8  EC 61 00 28 */	fsubs f3, f1, f0
lbl_8027B7DC:
/* 8027B7DC  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 8027B7E0  C0 43 00 38 */	lfs f2, 0x38(r3)
/* 8027B7E4  C0 02 B9 14 */	lfs f0, lit_2288(r2)
/* 8027B7E8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8027B7EC  EC 03 00 32 */	fmuls f0, f3, f0
/* 8027B7F0  EC 02 00 2A */	fadds f0, f2, f0
/* 8027B7F4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8027B7F8  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8027B7FC  38 A5 9A 20 */	addi r5, r5, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8027B800  38 C5 00 04 */	addi r6, r5, 4
/* 8027B804  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8027B808  7C 06 04 2E */	lfsx f0, r6, r0
/* 8027B80C  EC 61 00 32 */	fmuls f3, f1, f0
/* 8027B810  54 84 04 38 */	rlwinm r4, r4, 0, 0x10, 0x1c
/* 8027B814  7C 06 24 2E */	lfsx f0, r6, r4
/* 8027B818  EC 43 00 32 */	fmuls f2, f3, f0
/* 8027B81C  FC 20 08 50 */	fneg f1, f1
/* 8027B820  7C 05 04 2E */	lfsx f0, r5, r0
/* 8027B824  EC 21 00 32 */	fmuls f1, f1, f0
/* 8027B828  7C 05 24 2E */	lfsx f0, r5, r4
/* 8027B82C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8027B830  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8027B834  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 8027B838  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 8027B83C  E0 23 00 10 */	psq_l f1, 16(r3), 0, 0 /* qr0 */
/* 8027B840  E0 03 01 14 */	psq_l f0, 276(r3), 0, 0 /* qr0 */
/* 8027B844  10 01 00 32 */	ps_mul f0, f1, f0
/* 8027B848  F0 03 00 1C */	psq_st f0, 28(r3), 0, 0 /* qr0 */
/* 8027B84C  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 8027B850  C0 03 01 1C */	lfs f0, 0x11c(r3)
/* 8027B854  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027B858  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8027B85C  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 8027B860  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8027B864  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8027B868  C0 02 B9 10 */	lfs f0, lit_2287(r2)
/* 8027B86C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8027B870  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 8027B874  38 21 00 20 */	addi r1, r1, 0x20
/* 8027B878  4E 80 00 20 */	blr 
