lbl_80D055A0:
/* 80D055A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D055A4  7C 08 02 A6 */	mflr r0
/* 80D055A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D055AC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80D055B0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80D055B4  7C 7E 1B 78 */	mr r30, r3
/* 80D055B8  3C 60 80 D0 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80D061A4@ha */
/* 80D055BC  38 C3 61 A4 */	addi r6, r3, cNullVec__6Z2Calc@l /* 0x80D061A4@l */
/* 80D055C0  3C 60 80 D0 */	lis r3, data_80D063B0@ha /* 0x80D063B0@ha */
/* 80D055C4  38 A3 63 B0 */	addi r5, r3, data_80D063B0@l /* 0x80D063B0@l */
/* 80D055C8  88 05 00 00 */	lbz r0, 0(r5)
/* 80D055CC  7C 00 07 75 */	extsb. r0, r0
/* 80D055D0  40 82 00 70 */	bne lbl_80D05640
/* 80D055D4  80 66 00 64 */	lwz r3, 0x64(r6)
/* 80D055D8  80 06 00 68 */	lwz r0, 0x68(r6)
/* 80D055DC  90 66 00 94 */	stw r3, 0x94(r6)
/* 80D055E0  90 06 00 98 */	stw r0, 0x98(r6)
/* 80D055E4  80 06 00 6C */	lwz r0, 0x6c(r6)
/* 80D055E8  90 06 00 9C */	stw r0, 0x9c(r6)
/* 80D055EC  38 86 00 94 */	addi r4, r6, 0x94
/* 80D055F0  80 66 00 70 */	lwz r3, 0x70(r6)
/* 80D055F4  80 06 00 74 */	lwz r0, 0x74(r6)
/* 80D055F8  90 64 00 0C */	stw r3, 0xc(r4)
/* 80D055FC  90 04 00 10 */	stw r0, 0x10(r4)
/* 80D05600  80 06 00 78 */	lwz r0, 0x78(r6)
/* 80D05604  90 04 00 14 */	stw r0, 0x14(r4)
/* 80D05608  80 66 00 7C */	lwz r3, 0x7c(r6)
/* 80D0560C  80 06 00 80 */	lwz r0, 0x80(r6)
/* 80D05610  90 64 00 18 */	stw r3, 0x18(r4)
/* 80D05614  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80D05618  80 06 00 84 */	lwz r0, 0x84(r6)
/* 80D0561C  90 04 00 20 */	stw r0, 0x20(r4)
/* 80D05620  80 66 00 88 */	lwz r3, 0x88(r6)
/* 80D05624  80 06 00 8C */	lwz r0, 0x8c(r6)
/* 80D05628  90 64 00 24 */	stw r3, 0x24(r4)
/* 80D0562C  90 04 00 28 */	stw r0, 0x28(r4)
/* 80D05630  80 06 00 90 */	lwz r0, 0x90(r6)
/* 80D05634  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80D05638  38 00 00 01 */	li r0, 1
/* 80D0563C  98 05 00 00 */	stb r0, 0(r5)
lbl_80D05640:
/* 80D05640  7F C3 F3 78 */	mr r3, r30
/* 80D05644  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 80D05648  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80D0564C  39 86 00 94 */	addi r12, r6, 0x94
/* 80D05650  7D 8C 02 14 */	add r12, r12, r0
/* 80D05654  4B 65 CA 31 */	bl __ptmf_scall
/* 80D05658  60 00 00 00 */	nop 
/* 80D0565C  3C 60 80 D0 */	lis r3, lit_3903@ha /* 0x80D06174@ha */
/* 80D05660  C0 23 61 74 */	lfs f1, lit_3903@l(r3)  /* 0x80D06174@l */
/* 80D05664  C0 1E 13 9C */	lfs f0, 0x139c(r30)
/* 80D05668  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D0566C  FC 00 00 1E */	fctiwz f0, f0
/* 80D05670  D8 01 00 08 */	stfd f0, 8(r1)
/* 80D05674  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80D05678  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80D0567C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80D05680  3B E4 00 04 */	addi r31, r4, 4
/* 80D05684  80 7E 13 88 */	lwz r3, 0x1388(r30)
/* 80D05688  7C 00 07 34 */	extsh r0, r0
/* 80D0568C  7C 03 01 D6 */	mullw r0, r3, r0
/* 80D05690  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D05694  7C 5F 04 2E */	lfsx f2, r31, r0
/* 80D05698  C0 1E 13 94 */	lfs f0, 0x1394(r30)
/* 80D0569C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80D056A0  FC 00 00 1E */	fctiwz f0, f0
/* 80D056A4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80D056A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D056AC  B0 1E 13 90 */	sth r0, 0x1390(r30)
/* 80D056B0  C0 1E 13 98 */	lfs f0, 0x1398(r30)
/* 80D056B4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D056B8  FC 00 00 1E */	fctiwz f0, f0
/* 80D056BC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80D056C0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80D056C4  80 7E 13 88 */	lwz r3, 0x1388(r30)
/* 80D056C8  7C 00 07 34 */	extsh r0, r0
/* 80D056CC  7C 03 01 D6 */	mullw r0, r3, r0
/* 80D056D0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D056D4  7C 24 04 2E */	lfsx f1, r4, r0
/* 80D056D8  C0 1E 13 94 */	lfs f0, 0x1394(r30)
/* 80D056DC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D056E0  FC 00 00 1E */	fctiwz f0, f0
/* 80D056E4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80D056E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D056EC  B0 1E 13 8E */	sth r0, 0x138e(r30)
/* 80D056F0  38 7E 13 94 */	addi r3, r30, 0x1394
/* 80D056F4  3C 80 80 D0 */	lis r4, lit_3651@ha /* 0x80D060E0@ha */
/* 80D056F8  C0 24 60 E0 */	lfs f1, lit_3651@l(r4)  /* 0x80D060E0@l */
/* 80D056FC  C0 5E 13 A0 */	lfs f2, 0x13a0(r30)
/* 80D05700  C0 7E 13 A4 */	lfs f3, 0x13a4(r30)
/* 80D05704  C0 9E 13 A8 */	lfs f4, 0x13a8(r30)
/* 80D05708  4B 56 A2 75 */	bl cLib_addCalc__FPfffff
/* 80D0570C  3C 60 80 D0 */	lis r3, lit_3903@ha /* 0x80D06174@ha */
/* 80D05710  C0 23 61 74 */	lfs f1, lit_3903@l(r3)  /* 0x80D06174@l */
/* 80D05714  C0 1E 13 B8 */	lfs f0, 0x13b8(r30)
/* 80D05718  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D0571C  FC 00 00 1E */	fctiwz f0, f0
/* 80D05720  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80D05724  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80D05728  80 7E 13 88 */	lwz r3, 0x1388(r30)
/* 80D0572C  7C 00 07 34 */	extsh r0, r0
/* 80D05730  7C 03 01 D6 */	mullw r0, r3, r0
/* 80D05734  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D05738  7C 5F 04 2E */	lfsx f2, r31, r0
/* 80D0573C  C0 1E 13 C0 */	lfs f0, 0x13c0(r30)
/* 80D05740  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80D05744  D0 1E 13 AC */	stfs f0, 0x13ac(r30)
/* 80D05748  C0 1E 13 BC */	lfs f0, 0x13bc(r30)
/* 80D0574C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D05750  FC 00 00 1E */	fctiwz f0, f0
/* 80D05754  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80D05758  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D0575C  80 7E 13 88 */	lwz r3, 0x1388(r30)
/* 80D05760  7C 00 07 34 */	extsh r0, r0
/* 80D05764  7C 03 01 D6 */	mullw r0, r3, r0
/* 80D05768  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D0576C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80D05770  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80D05774  7C 23 04 2E */	lfsx f1, r3, r0
/* 80D05778  C0 1E 13 C0 */	lfs f0, 0x13c0(r30)
/* 80D0577C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D05780  D0 1E 13 B0 */	stfs f0, 0x13b0(r30)
/* 80D05784  38 7E 13 C0 */	addi r3, r30, 0x13c0
/* 80D05788  3C 80 80 D0 */	lis r4, lit_3651@ha /* 0x80D060E0@ha */
/* 80D0578C  C0 24 60 E0 */	lfs f1, lit_3651@l(r4)  /* 0x80D060E0@l */
/* 80D05790  C0 5E 13 C4 */	lfs f2, 0x13c4(r30)
/* 80D05794  C0 7E 13 C8 */	lfs f3, 0x13c8(r30)
/* 80D05798  C0 9E 13 CC */	lfs f4, 0x13cc(r30)
/* 80D0579C  4B 56 A1 E1 */	bl cLib_addCalc__FPfffff
/* 80D057A0  80 7E 13 88 */	lwz r3, 0x1388(r30)
/* 80D057A4  38 03 00 01 */	addi r0, r3, 1
/* 80D057A8  90 1E 13 88 */	stw r0, 0x1388(r30)
/* 80D057AC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80D057B0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80D057B4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D057B8  7C 08 03 A6 */	mtlr r0
/* 80D057BC  38 21 00 40 */	addi r1, r1, 0x40
/* 80D057C0  4E 80 00 20 */	blr 
