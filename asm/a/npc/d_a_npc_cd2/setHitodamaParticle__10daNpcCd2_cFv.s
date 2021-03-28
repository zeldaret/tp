lbl_80159550:
/* 80159550  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80159554  7C 08 02 A6 */	mflr r0
/* 80159558  90 01 00 54 */	stw r0, 0x54(r1)
/* 8015955C  39 61 00 50 */	addi r11, r1, 0x50
/* 80159560  48 20 8C 71 */	bl _savegpr_26
/* 80159564  7C 7E 1B 78 */	mr r30, r3
/* 80159568  A8 03 0A C2 */	lha r0, 0xac2(r3)
/* 8015956C  54 00 0C 3C */	rlwinm r0, r0, 1, 0x10, 0x1e
/* 80159570  B0 03 0A C0 */	sth r0, 0xac0(r3)
/* 80159574  A8 03 0A C2 */	lha r0, 0xac2(r3)
/* 80159578  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8015957C  7C 00 1E 70 */	srawi r0, r0, 3
/* 80159580  54 00 18 38 */	slwi r0, r0, 3
/* 80159584  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80159588  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8015958C  7C 23 04 2E */	lfsx f1, r3, r0
/* 80159590  C0 02 9B 00 */	lfs f0, lit_4921(r2)
/* 80159594  EC 00 00 72 */	fmuls f0, f0, f1
/* 80159598  D0 1E 0A B4 */	stfs f0, 0xab4(r30)
/* 8015959C  A8 1E 0A C0 */	lha r0, 0xac0(r30)
/* 801595A0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801595A4  7C 23 04 2E */	lfsx f1, r3, r0
/* 801595A8  C0 02 9B 04 */	lfs f0, lit_4922(r2)
/* 801595AC  EC 00 00 72 */	fmuls f0, f0, f1
/* 801595B0  D0 1E 0A B8 */	stfs f0, 0xab8(r30)
/* 801595B4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 801595B8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801595BC  7C 03 04 2E */	lfsx f0, r3, r0
/* 801595C0  C0 3E 0A B4 */	lfs f1, 0xab4(r30)
/* 801595C4  FC 00 00 50 */	fneg f0, f0
/* 801595C8  EC 01 00 32 */	fmuls f0, f1, f0
/* 801595CC  D0 1E 0A BC */	stfs f0, 0xabc(r30)
/* 801595D0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 801595D4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801595D8  7C 63 02 14 */	add r3, r3, r0
/* 801595DC  C0 23 00 04 */	lfs f1, 4(r3)
/* 801595E0  C0 1E 0A B4 */	lfs f0, 0xab4(r30)
/* 801595E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 801595E8  D0 1E 0A B4 */	stfs f0, 0xab4(r30)
/* 801595EC  A8 7E 0A C2 */	lha r3, 0xac2(r30)
/* 801595F0  38 03 04 00 */	addi r0, r3, 0x400
/* 801595F4  B0 1E 0A C2 */	sth r0, 0xac2(r30)
/* 801595F8  C0 3E 05 40 */	lfs f1, 0x540(r30)
/* 801595FC  C0 1E 0A BC */	lfs f0, 0xabc(r30)
/* 80159600  EC 61 00 2A */	fadds f3, f1, f0
/* 80159604  C0 3E 05 3C */	lfs f1, 0x53c(r30)
/* 80159608  C0 1E 0A B8 */	lfs f0, 0xab8(r30)
/* 8015960C  EC 41 00 2A */	fadds f2, f1, f0
/* 80159610  C0 3E 05 38 */	lfs f1, 0x538(r30)
/* 80159614  C0 1E 0A B4 */	lfs f0, 0xab4(r30)
/* 80159618  EC 01 00 2A */	fadds f0, f1, f0
/* 8015961C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80159620  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80159624  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 80159628  3B E0 00 00 */	li r31, 0
/* 8015962C  3B A0 00 00 */	li r29, 0
/* 80159630  3B 80 00 00 */	li r28, 0
/* 80159634  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80159638  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
lbl_8015963C:
/* 8015963C  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80159640  38 00 00 FF */	li r0, 0xff
/* 80159644  90 01 00 08 */	stw r0, 8(r1)
/* 80159648  38 80 00 00 */	li r4, 0
/* 8015964C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80159650  38 00 FF FF */	li r0, -1
/* 80159654  90 01 00 10 */	stw r0, 0x10(r1)
/* 80159658  90 81 00 14 */	stw r4, 0x14(r1)
/* 8015965C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80159660  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80159664  3B 7C 0A A8 */	addi r27, r28, 0xaa8
/* 80159668  7C 9E D8 2E */	lwzx r4, r30, r27
/* 8015966C  38 A0 00 00 */	li r5, 0
/* 80159670  38 C2 9A FC */	la r6, id(r2) /* 804534FC-_SDA2_BASE_ */
/* 80159674  7C C6 EA 2E */	lhzx r6, r6, r29
/* 80159678  38 E1 00 20 */	addi r7, r1, 0x20
/* 8015967C  39 00 00 00 */	li r8, 0
/* 80159680  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80159684  39 40 00 00 */	li r10, 0
/* 80159688  C0 22 9A E0 */	lfs f1, lit_4050(r2)
/* 8015968C  4B EF 3E 41 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80159690  7C 7E D9 2E */	stwx r3, r30, r27
/* 80159694  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80159698  38 63 02 10 */	addi r3, r3, 0x210
/* 8015969C  7C 9E D8 2E */	lwzx r4, r30, r27
/* 801596A0  4B EF 22 79 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 801596A4  7C 7B 1B 79 */	or. r27, r3, r3
/* 801596A8  41 82 00 34 */	beq lbl_801596DC
/* 801596AC  48 00 5D 79 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 801596B0  30 03 FF FF */	addic r0, r3, -1
/* 801596B4  7C 60 01 10 */	subfe r3, r0, r0
/* 801596B8  38 00 00 FF */	li r0, 0xff
/* 801596BC  7C 00 18 38 */	and r0, r0, r3
/* 801596C0  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 801596C4  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 801596C8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801596CC  D0 1B 00 A4 */	stfs f0, 0xa4(r27)
/* 801596D0  D0 3B 00 A8 */	stfs f1, 0xa8(r27)
/* 801596D4  D0 5B 00 AC */	stfs f2, 0xac(r27)
/* 801596D8  98 1B 00 BB */	stb r0, 0xbb(r27)
lbl_801596DC:
/* 801596DC  3B FF 00 01 */	addi r31, r31, 1
/* 801596E0  2C 1F 00 02 */	cmpwi r31, 2
/* 801596E4  3B BD 00 02 */	addi r29, r29, 2
/* 801596E8  3B 9C 00 04 */	addi r28, r28, 4
/* 801596EC  41 80 FF 50 */	blt lbl_8015963C
/* 801596F0  39 61 00 50 */	addi r11, r1, 0x50
/* 801596F4  48 20 8B 29 */	bl _restgpr_26
/* 801596F8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801596FC  7C 08 03 A6 */	mtlr r0
/* 80159700  38 21 00 50 */	addi r1, r1, 0x50
/* 80159704  4E 80 00 20 */	blr 
