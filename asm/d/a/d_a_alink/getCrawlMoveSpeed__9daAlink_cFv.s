lbl_800F7C74:
/* 800F7C74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F7C78  7C 08 02 A6 */	mflr r0
/* 800F7C7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F7C80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F7C84  7C 7F 1B 78 */	mr r31, r3
/* 800F7C88  C0 23 1F E0 */	lfs f1, 0x1fe0(r3)
/* 800F7C8C  C0 02 94 94 */	lfs f0, lit_16210(r2)
/* 800F7C90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F7C94  4C 41 13 82 */	cror 2, 1, 2
/* 800F7C98  40 82 00 08 */	bne lbl_800F7CA0
/* 800F7C9C  EC 21 00 28 */	fsubs f1, f1, f0
lbl_800F7CA0:
/* 800F7CA0  C0 02 95 34 */	lfs f0, lit_22146(r2)
/* 800F7CA4  EC 20 00 72 */	fmuls f1, f0, f1
/* 800F7CA8  48 16 F9 3D */	bl cM_rad2s__Ff
/* 800F7CAC  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 800F7CB0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800F7CB4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800F7CB8  7C 43 04 2E */	lfsx f2, r3, r0
/* 800F7CBC  3C 60 80 39 */	lis r3, m__20daAlinkHIO_crouch_c0@ha /* 0x8038E01C@ha */
/* 800F7CC0  38 63 E0 1C */	addi r3, r3, m__20daAlinkHIO_crouch_c0@l /* 0x8038E01C@l */
/* 800F7CC4  C0 23 00 3C */	lfs f1, 0x3c(r3)
/* 800F7CC8  C0 1F 1F DC */	lfs f0, 0x1fdc(r31)
/* 800F7CCC  EC 01 00 32 */	fmuls f0, f1, f0
/* 800F7CD0  EC 20 00 B2 */	fmuls f1, f0, f2
/* 800F7CD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F7CD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F7CDC  7C 08 03 A6 */	mtlr r0
/* 800F7CE0  38 21 00 10 */	addi r1, r1, 0x10
/* 800F7CE4  4E 80 00 20 */	blr 
