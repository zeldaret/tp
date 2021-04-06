lbl_80104034:
/* 80104034  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80104038  7C 08 02 A6 */	mflr r0
/* 8010403C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80104040  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80104044  7C 7F 1B 78 */	mr r31, r3
/* 80104048  C0 22 94 A8 */	lfs f1, lit_16570(r2)
/* 8010404C  48 16 39 09 */	bl cM_rndF__Ff
/* 80104050  C0 02 95 DC */	lfs f0, lit_27477(r2)
/* 80104054  EC 20 08 2A */	fadds f1, f0, f1
/* 80104058  C0 02 95 D8 */	lfs f0, lit_27476(r2)
/* 8010405C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80104060  FC 00 00 1E */	fctiwz f0, f0
/* 80104064  D8 01 00 08 */	stfd f0, 8(r1)
/* 80104068  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8010406C  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 80104070  7C 00 1A 14 */	add r0, r0, r3
/* 80104074  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 80104078  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8010407C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80104080  41 82 00 3C */	beq lbl_801040BC
/* 80104084  7F E3 FB 78 */	mr r3, r31
/* 80104088  38 80 00 01 */	li r4, 1
/* 8010408C  38 A0 00 01 */	li r5, 1
/* 80104090  4B FB 74 29 */	bl checkHeavyStateOn__9daAlink_cFii
/* 80104094  2C 03 00 00 */	cmpwi r3, 0
/* 80104098  41 82 00 14 */	beq lbl_801040AC
/* 8010409C  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlSwim_c0@ha /* 0x8038F8B4@ha */
/* 801040A0  38 63 F8 B4 */	addi r3, r3, m__20daAlinkHIO_wlSwim_c0@l /* 0x8038F8B4@l */
/* 801040A4  C0 23 00 98 */	lfs f1, 0x98(r3)
/* 801040A8  48 00 00 20 */	b lbl_801040C8
lbl_801040AC:
/* 801040AC  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlSwim_c0@ha /* 0x8038F8B4@ha */
/* 801040B0  38 63 F8 B4 */	addi r3, r3, m__20daAlinkHIO_wlSwim_c0@l /* 0x8038F8B4@l */
/* 801040B4  C0 23 00 6C */	lfs f1, 0x6c(r3)
/* 801040B8  48 00 00 10 */	b lbl_801040C8
lbl_801040BC:
/* 801040BC  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha /* 0x8038ED2C@ha */
/* 801040C0  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l /* 0x8038ED2C@l */
/* 801040C4  C0 23 00 98 */	lfs f1, 0x98(r3)
lbl_801040C8:
/* 801040C8  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 801040CC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801040D0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 801040D4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 801040D8  7C 03 04 2E */	lfsx f0, r3, r0
/* 801040DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 801040E0  D0 1F 2B 98 */	stfs f0, 0x2b98(r31)
/* 801040E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801040E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801040EC  7C 08 03 A6 */	mtlr r0
/* 801040F0  38 21 00 20 */	addi r1, r1, 0x20
/* 801040F4  4E 80 00 20 */	blr 
