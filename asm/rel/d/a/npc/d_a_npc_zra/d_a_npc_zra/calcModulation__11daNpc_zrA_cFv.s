lbl_80B82300:
/* 80B82300  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B82304  7C 08 02 A6 */	mflr r0
/* 80B82308  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B8230C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B82310  4B 7D FE CC */	b _savegpr_29
/* 80B82314  7C 7D 1B 78 */	mr r29, r3
/* 80B82318  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha
/* 80B8231C  3B E3 C4 58 */	addi r31, r3, m__17daNpc_zrA_Param_c@l
/* 80B82320  80 1D 05 FC */	lwz r0, 0x5fc(r29)
/* 80B82324  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80B82328  41 82 01 3C */	beq lbl_80B82464
/* 80B8232C  41 82 00 BC */	beq lbl_80B823E8
/* 80B82330  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80B82334  C0 3D 07 9C */	lfs f1, 0x79c(r29)
/* 80B82338  C0 1F 07 B4 */	lfs f0, 0x7b4(r31)
/* 80B8233C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B82340  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80B82344  40 80 00 A4 */	bge lbl_80B823E8
/* 80B82348  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B8234C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80B82350  3B C3 00 04 */	addi r30, r3, 4
/* 80B82354  80 1D 15 5C */	lwz r0, 0x155c(r29)
/* 80B82358  54 03 80 1E */	slwi r3, r0, 0x10
/* 80B8235C  38 00 00 2A */	li r0, 0x2a
/* 80B82360  7C 03 03 D6 */	divw r0, r3, r0
/* 80B82364  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B82368  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80B8236C  38 7D 15 60 */	addi r3, r29, 0x1560
/* 80B82370  C0 3F 07 B8 */	lfs f1, 0x7b8(r31)
/* 80B82374  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B82378  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B8237C  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80B82380  4B 6E E3 C0 */	b cLib_chaseF__FPfff
/* 80B82384  80 1D 15 5C */	lwz r0, 0x155c(r29)
/* 80B82388  54 03 80 1E */	slwi r3, r0, 0x10
/* 80B8238C  38 00 00 46 */	li r0, 0x46
/* 80B82390  7C 03 03 D6 */	divw r0, r3, r0
/* 80B82394  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B82398  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80B8239C  38 7D 15 64 */	addi r3, r29, 0x1564
/* 80B823A0  C0 3F 07 BC */	lfs f1, 0x7bc(r31)
/* 80B823A4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B823A8  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B823AC  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80B823B0  4B 6E E3 90 */	b cLib_chaseF__FPfff
/* 80B823B4  80 1D 15 5C */	lwz r0, 0x155c(r29)
/* 80B823B8  54 03 80 1E */	slwi r3, r0, 0x10
/* 80B823BC  38 00 00 69 */	li r0, 0x69
/* 80B823C0  7C 03 03 D6 */	divw r0, r3, r0
/* 80B823C4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B823C8  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80B823CC  38 7D 15 68 */	addi r3, r29, 0x1568
/* 80B823D0  C0 3F 07 98 */	lfs f1, 0x798(r31)
/* 80B823D4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B823D8  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B823DC  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80B823E0  4B 6E E3 60 */	b cLib_chaseF__FPfff
/* 80B823E4  48 00 00 60 */	b lbl_80B82444
lbl_80B823E8:
/* 80B823E8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B823EC  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80B823F0  80 1D 15 5C */	lwz r0, 0x155c(r29)
/* 80B823F4  54 03 80 1E */	slwi r3, r0, 0x10
/* 80B823F8  38 00 00 23 */	li r0, 0x23
/* 80B823FC  7C 03 03 D6 */	divw r0, r3, r0
/* 80B82400  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B82404  7C 64 02 14 */	add r3, r4, r0
/* 80B82408  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B8240C  38 7D 15 64 */	addi r3, r29, 0x1564
/* 80B82410  C0 3F 07 B8 */	lfs f1, 0x7b8(r31)
/* 80B82414  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B82418  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B8241C  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80B82420  4B 6E E3 20 */	b cLib_chaseF__FPfff
/* 80B82424  38 7D 15 60 */	addi r3, r29, 0x1560
/* 80B82428  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80B8242C  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80B82430  4B 6E E3 10 */	b cLib_chaseF__FPfff
/* 80B82434  38 7D 15 68 */	addi r3, r29, 0x1568
/* 80B82438  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80B8243C  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80B82440  4B 6E E3 00 */	b cLib_chaseF__FPfff
lbl_80B82444:
/* 80B82444  80 7D 15 5C */	lwz r3, 0x155c(r29)
/* 80B82448  38 03 FF FF */	addi r0, r3, -1
/* 80B8244C  90 1D 15 5C */	stw r0, 0x155c(r29)
/* 80B82450  80 1D 15 5C */	lwz r0, 0x155c(r29)
/* 80B82454  2C 00 00 00 */	cmpwi r0, 0
/* 80B82458  41 81 00 0C */	bgt lbl_80B82464
/* 80B8245C  38 00 00 D2 */	li r0, 0xd2
/* 80B82460  90 1D 15 5C */	stw r0, 0x155c(r29)
lbl_80B82464:
/* 80B82464  39 61 00 20 */	addi r11, r1, 0x20
/* 80B82468  4B 7D FD C0 */	b _restgpr_29
/* 80B8246C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B82470  7C 08 03 A6 */	mtlr r0
/* 80B82474  38 21 00 20 */	addi r1, r1, 0x20
/* 80B82478  4E 80 00 20 */	blr 
