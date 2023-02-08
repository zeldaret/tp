lbl_8015736C:
/* 8015736C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80157370  7C 08 02 A6 */	mflr r0
/* 80157374  90 01 00 54 */	stw r0, 0x54(r1)
/* 80157378  39 61 00 50 */	addi r11, r1, 0x50
/* 8015737C  48 20 AE 55 */	bl _savegpr_26
/* 80157380  7C 7E 1B 78 */	mr r30, r3
/* 80157384  A8 03 09 E6 */	lha r0, 0x9e6(r3)
/* 80157388  54 00 0C 3C */	rlwinm r0, r0, 1, 0x10, 0x1e
/* 8015738C  B0 03 09 E4 */	sth r0, 0x9e4(r3)
/* 80157390  A8 03 09 E6 */	lha r0, 0x9e6(r3)
/* 80157394  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80157398  7C 00 1E 70 */	srawi r0, r0, 3
/* 8015739C  54 00 18 38 */	slwi r0, r0, 3
/* 801573A0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 801573A4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 801573A8  7C 23 04 2E */	lfsx f1, r3, r0
/* 801573AC  C0 02 9A D8 */	lfs f0, lit_4656(r2)
/* 801573B0  EC 00 00 72 */	fmuls f0, f0, f1
/* 801573B4  D0 1E 09 D8 */	stfs f0, 0x9d8(r30)
/* 801573B8  A8 1E 09 E4 */	lha r0, 0x9e4(r30)
/* 801573BC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801573C0  7C 23 04 2E */	lfsx f1, r3, r0
/* 801573C4  C0 02 9A DC */	lfs f0, lit_4657(r2)
/* 801573C8  EC 00 00 72 */	fmuls f0, f0, f1
/* 801573CC  D0 1E 09 DC */	stfs f0, 0x9dc(r30)
/* 801573D0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 801573D4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801573D8  7C 03 04 2E */	lfsx f0, r3, r0
/* 801573DC  C0 3E 09 D8 */	lfs f1, 0x9d8(r30)
/* 801573E0  FC 00 00 50 */	fneg f0, f0
/* 801573E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 801573E8  D0 1E 09 E0 */	stfs f0, 0x9e0(r30)
/* 801573EC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 801573F0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801573F4  7C 63 02 14 */	add r3, r3, r0
/* 801573F8  C0 23 00 04 */	lfs f1, 4(r3)
/* 801573FC  C0 1E 09 D8 */	lfs f0, 0x9d8(r30)
/* 80157400  EC 00 00 72 */	fmuls f0, f0, f1
/* 80157404  D0 1E 09 D8 */	stfs f0, 0x9d8(r30)
/* 80157408  A8 7E 09 E6 */	lha r3, 0x9e6(r30)
/* 8015740C  38 03 04 00 */	addi r0, r3, 0x400
/* 80157410  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 80157414  C0 3E 05 40 */	lfs f1, 0x540(r30)
/* 80157418  C0 1E 09 E0 */	lfs f0, 0x9e0(r30)
/* 8015741C  EC 61 00 2A */	fadds f3, f1, f0
/* 80157420  C0 3E 05 3C */	lfs f1, 0x53c(r30)
/* 80157424  C0 1E 09 DC */	lfs f0, 0x9dc(r30)
/* 80157428  EC 41 00 2A */	fadds f2, f1, f0
/* 8015742C  C0 3E 05 38 */	lfs f1, 0x538(r30)
/* 80157430  C0 1E 09 D8 */	lfs f0, 0x9d8(r30)
/* 80157434  EC 01 00 2A */	fadds f0, f1, f0
/* 80157438  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8015743C  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80157440  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 80157444  3B E0 00 00 */	li r31, 0
/* 80157448  3B A0 00 00 */	li r29, 0
/* 8015744C  3B 80 00 00 */	li r28, 0
/* 80157450  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80157454  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_80157458:
/* 80157458  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 8015745C  38 00 00 FF */	li r0, 0xff
/* 80157460  90 01 00 08 */	stw r0, 8(r1)
/* 80157464  38 80 00 00 */	li r4, 0
/* 80157468  90 81 00 0C */	stw r4, 0xc(r1)
/* 8015746C  38 00 FF FF */	li r0, -1
/* 80157470  90 01 00 10 */	stw r0, 0x10(r1)
/* 80157474  90 81 00 14 */	stw r4, 0x14(r1)
/* 80157478  90 81 00 18 */	stw r4, 0x18(r1)
/* 8015747C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80157480  3B 7C 09 CC */	addi r27, r28, 0x9cc
/* 80157484  7C 9E D8 2E */	lwzx r4, r30, r27
/* 80157488  38 A0 00 00 */	li r5, 0
/* 8015748C  38 C2 9A D4 */	la r6, id(r2) /* 804534D4-_SDA2_BASE_ */
/* 80157490  7C C6 EA 2E */	lhzx r6, r6, r29
/* 80157494  38 E1 00 20 */	addi r7, r1, 0x20
/* 80157498  39 00 00 00 */	li r8, 0
/* 8015749C  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 801574A0  39 40 00 00 */	li r10, 0
/* 801574A4  C0 22 9A B8 */	lfs f1, lit_4021(r2)
/* 801574A8  4B EF 60 25 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 801574AC  7C 7E D9 2E */	stwx r3, r30, r27
/* 801574B0  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 801574B4  38 63 02 10 */	addi r3, r3, 0x210
/* 801574B8  7C 9E D8 2E */	lwzx r4, r30, r27
/* 801574BC  4B EF 44 5D */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 801574C0  7C 7B 1B 79 */	or. r27, r3, r3
/* 801574C4  41 82 00 34 */	beq lbl_801574F8
/* 801574C8  48 00 7F 5D */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 801574CC  30 03 FF FF */	addic r0, r3, -1
/* 801574D0  7C 60 01 10 */	subfe r3, r0, r0
/* 801574D4  38 00 00 FF */	li r0, 0xff
/* 801574D8  7C 00 18 38 */	and r0, r0, r3
/* 801574DC  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 801574E0  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 801574E4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801574E8  D0 1B 00 A4 */	stfs f0, 0xa4(r27)
/* 801574EC  D0 3B 00 A8 */	stfs f1, 0xa8(r27)
/* 801574F0  D0 5B 00 AC */	stfs f2, 0xac(r27)
/* 801574F4  98 1B 00 BB */	stb r0, 0xbb(r27)
lbl_801574F8:
/* 801574F8  3B FF 00 01 */	addi r31, r31, 1
/* 801574FC  2C 1F 00 02 */	cmpwi r31, 2
/* 80157500  3B BD 00 02 */	addi r29, r29, 2
/* 80157504  3B 9C 00 04 */	addi r28, r28, 4
/* 80157508  41 80 FF 50 */	blt lbl_80157458
/* 8015750C  39 61 00 50 */	addi r11, r1, 0x50
/* 80157510  48 20 AD 0D */	bl _restgpr_26
/* 80157514  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80157518  7C 08 03 A6 */	mtlr r0
/* 8015751C  38 21 00 50 */	addi r1, r1, 0x50
/* 80157520  4E 80 00 20 */	blr 
