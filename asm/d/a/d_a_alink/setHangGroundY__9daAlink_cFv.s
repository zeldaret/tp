lbl_800FA6E4:
/* 800FA6E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800FA6E8  7C 08 02 A6 */	mflr r0
/* 800FA6EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800FA6F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800FA6F4  7C 7F 1B 78 */	mr r31, r3
/* 800FA6F8  80 63 06 50 */	lwz r3, 0x650(r3)
/* 800FA6FC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800FA700  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800FA704  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 800FA708  D0 61 00 08 */	stfs f3, 8(r1)
/* 800FA70C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800FA710  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800FA714  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 800FA718  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 800FA71C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800FA720  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FA724  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800FA728  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800FA72C  7C 03 04 2E */	lfsx f0, r3, r0
/* 800FA730  C0 22 94 64 */	lfs f1, lit_14954(r2)
/* 800FA734  EC 01 00 32 */	fmuls f0, f1, f0
/* 800FA738  EC 03 00 28 */	fsubs f0, f3, f0
/* 800FA73C  D0 01 00 08 */	stfs f0, 8(r1)
/* 800FA740  7C 63 02 14 */	add r3, r3, r0
/* 800FA744  C0 03 00 04 */	lfs f0, 4(r3)
/* 800FA748  EC 01 00 32 */	fmuls f0, f1, f0
/* 800FA74C  EC 02 00 28 */	fsubs f0, f2, f0
/* 800FA750  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800FA754  38 7F 1D 08 */	addi r3, r31, 0x1d08
/* 800FA758  38 81 00 08 */	addi r4, r1, 8
/* 800FA75C  48 16 D5 CD */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800FA760  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800FA764  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800FA768  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800FA76C  38 9F 1D 08 */	addi r4, r31, 0x1d08
/* 800FA770  4B F7 9D 31 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800FA774  D0 3F 33 D8 */	stfs f1, 0x33d8(r31)
/* 800FA778  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800FA77C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800FA780  7C 08 03 A6 */	mtlr r0
/* 800FA784  38 21 00 20 */	addi r1, r1, 0x20
/* 800FA788  4E 80 00 20 */	blr 
