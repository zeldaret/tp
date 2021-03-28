lbl_80115C50:
/* 80115C50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80115C54  7C 08 02 A6 */	mflr r0
/* 80115C58  90 01 00 34 */	stw r0, 0x34(r1)
/* 80115C5C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80115C60  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80115C64  7C BE 2B 78 */	mr r30, r5
/* 80115C68  7C DF 33 78 */	mr r31, r6
/* 80115C6C  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha
/* 80115C70  38 C5 9A 20 */	addi r6, r5, sincosTable___5JMath@l
/* 80115C74  A8 A3 04 E6 */	lha r5, 0x4e6(r3)
/* 80115C78  54 A0 04 38 */	rlwinm r0, r5, 0, 0x10, 0x1c
/* 80115C7C  7C 66 02 14 */	add r3, r6, r0
/* 80115C80  C0 03 00 04 */	lfs f0, 4(r3)
/* 80115C84  C0 24 00 08 */	lfs f1, 8(r4)
/* 80115C88  C0 42 93 68 */	lfs f2, lit_8472(r2)
/* 80115C8C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80115C90  EC 81 00 2A */	fadds f4, f1, f0
/* 80115C94  C0 64 00 04 */	lfs f3, 4(r4)
/* 80115C98  7C 06 04 2E */	lfsx f0, r6, r0
/* 80115C9C  C0 24 00 00 */	lfs f1, 0(r4)
/* 80115CA0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80115CA4  EC 01 00 2A */	fadds f0, f1, f0
/* 80115CA8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80115CAC  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80115CB0  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 80115CB4  38 61 00 08 */	addi r3, r1, 8
/* 80115CB8  38 80 00 00 */	li r4, 0
/* 80115CBC  3C A5 00 01 */	addis r5, r5, 1
/* 80115CC0  38 05 80 00 */	addi r0, r5, -32768
/* 80115CC4  7C 05 07 34 */	extsh r5, r0
/* 80115CC8  38 C0 00 00 */	li r6, 0
/* 80115CCC  48 15 17 29 */	bl __ct__5csXyzFsss
/* 80115CD0  38 60 02 75 */	li r3, 0x275
/* 80115CD4  7F E4 FB 78 */	mr r4, r31
/* 80115CD8  38 A1 00 10 */	addi r5, r1, 0x10
/* 80115CDC  7F C6 F3 78 */	mr r6, r30
/* 80115CE0  38 E1 00 08 */	addi r7, r1, 8
/* 80115CE4  39 00 00 00 */	li r8, 0
/* 80115CE8  39 20 FF FF */	li r9, -1
/* 80115CEC  4B F0 40 AD */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80115CF0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80115CF4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80115CF8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80115CFC  7C 08 03 A6 */	mtlr r0
/* 80115D00  38 21 00 30 */	addi r1, r1, 0x30
/* 80115D04  4E 80 00 20 */	blr 
