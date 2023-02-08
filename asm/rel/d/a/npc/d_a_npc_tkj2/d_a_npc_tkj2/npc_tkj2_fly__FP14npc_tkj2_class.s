lbl_80B125D0:
/* 80B125D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B125D4  7C 08 02 A6 */	mflr r0
/* 80B125D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B125DC  39 61 00 20 */	addi r11, r1, 0x20
/* 80B125E0  4B 84 FB FD */	bl _savegpr_29
/* 80B125E4  7C 7F 1B 78 */	mr r31, r3
/* 80B125E8  3C 80 80 B1 */	lis r4, lit_3648@ha /* 0x80B142DC@ha */
/* 80B125EC  3B C4 42 DC */	addi r30, r4, lit_3648@l /* 0x80B142DC@l */
/* 80B125F0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B125F4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B125F8  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 80B125FC  A8 03 06 0A */	lha r0, 0x60a(r3)
/* 80B12600  2C 00 00 01 */	cmpwi r0, 1
/* 80B12604  41 82 00 5C */	beq lbl_80B12660
/* 80B12608  40 80 00 5C */	bge lbl_80B12664
/* 80B1260C  2C 00 00 00 */	cmpwi r0, 0
/* 80B12610  40 80 00 08 */	bge lbl_80B12618
/* 80B12614  48 00 00 50 */	b lbl_80B12664
lbl_80B12618:
/* 80B12618  38 80 00 06 */	li r4, 6
/* 80B1261C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80B12620  38 A0 00 02 */	li r5, 2
/* 80B12624  FC 40 08 90 */	fmr f2, f1
/* 80B12628  4B FF E7 F9 */	bl anm_init__FP14npc_tkj2_classifUcf
/* 80B1262C  A8 7F 06 0A */	lha r3, 0x60a(r31)
/* 80B12630  38 03 00 01 */	addi r0, r3, 1
/* 80B12634  B0 1F 06 0A */	sth r0, 0x60a(r31)
/* 80B12638  38 00 00 32 */	li r0, 0x32
/* 80B1263C  B0 1F 06 10 */	sth r0, 0x610(r31)
/* 80B12640  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80B12644  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80B12648  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 80B1264C  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80B12650  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 80B12654  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80B12658  D0 1F 05 C0 */	stfs f0, 0x5c0(r31)
/* 80B1265C  48 00 00 08 */	b lbl_80B12664
lbl_80B12660:
/* 80B12660  C0 5E 00 74 */	lfs f2, 0x74(r30)
lbl_80B12664:
/* 80B12664  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80B12668  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80B1266C  C0 7E 00 78 */	lfs f3, 0x78(r30)
/* 80B12670  4B 75 D3 CD */	bl cLib_addCalc2__FPffff
/* 80B12674  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80B12678  D0 1F 05 D0 */	stfs f0, 0x5d0(r31)
/* 80B1267C  88 1F 05 EB */	lbz r0, 0x5eb(r31)
/* 80B12680  28 00 00 00 */	cmplwi r0, 0
/* 80B12684  41 82 00 20 */	beq lbl_80B126A4
/* 80B12688  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80B1268C  D0 1F 05 D0 */	stfs f0, 0x5d0(r31)
/* 80B12690  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80B12694  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80B12698  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80B1269C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B126A0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_80B126A4:
/* 80B126A4  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80B126A8  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80B126AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B126B0  40 80 00 08 */	bge lbl_80B126B8
/* 80B126B4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_80B126B8:
/* 80B126B8  A8 1F 06 10 */	lha r0, 0x610(r31)
/* 80B126BC  2C 00 00 00 */	cmpwi r0, 0
/* 80B126C0  40 82 00 48 */	bne lbl_80B12708
/* 80B126C4  38 00 00 04 */	li r0, 4
/* 80B126C8  B0 1F 06 08 */	sth r0, 0x608(r31)
/* 80B126CC  38 00 00 00 */	li r0, 0
/* 80B126D0  B0 1F 06 0A */	sth r0, 0x60a(r31)
/* 80B126D4  38 00 05 00 */	li r0, 0x500
/* 80B126D8  B0 1F 05 F8 */	sth r0, 0x5f8(r31)
/* 80B126DC  7F E3 FB 78 */	mr r3, r31
/* 80B126E0  4B FF F3 D1 */	bl GndCheck2__FP14npc_tkj2_class
/* 80B126E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B126E8  41 82 00 50 */	beq lbl_80B12738
/* 80B126EC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B126F0  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 80B126F4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B126F8  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 80B126FC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B12700  D0 1F 05 C0 */	stfs f0, 0x5c0(r31)
/* 80B12704  48 00 00 34 */	b lbl_80B12738
lbl_80B12708:
/* 80B12708  80 1F 06 A0 */	lwz r0, 0x6a0(r31)
/* 80B1270C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80B12710  41 82 00 28 */	beq lbl_80B12738
/* 80B12714  38 00 00 00 */	li r0, 0
/* 80B12718  B0 1F 06 08 */	sth r0, 0x608(r31)
/* 80B1271C  B0 1F 06 0A */	sth r0, 0x60a(r31)
/* 80B12720  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80B12724  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 80B12728  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B1272C  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 80B12730  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80B12734  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
lbl_80B12738:
/* 80B12738  39 61 00 20 */	addi r11, r1, 0x20
/* 80B1273C  4B 84 FA ED */	bl _restgpr_29
/* 80B12740  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B12744  7C 08 03 A6 */	mtlr r0
/* 80B12748  38 21 00 20 */	addi r1, r1, 0x20
/* 80B1274C  4E 80 00 20 */	blr 
