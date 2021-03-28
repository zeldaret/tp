lbl_80BB0888:
/* 80BB0888  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BB088C  7C 08 02 A6 */	mflr r0
/* 80BB0890  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BB0894  39 61 00 40 */	addi r11, r1, 0x40
/* 80BB0898  4B 7B 19 44 */	b _savegpr_29
/* 80BB089C  7C 7E 1B 78 */	mr r30, r3
/* 80BB08A0  3C 60 80 BB */	lis r3, l_eye_offset@ha
/* 80BB08A4  3B E3 37 B8 */	addi r31, r3, l_eye_offset@l
/* 80BB08A8  A8 7E 10 CE */	lha r3, 0x10ce(r30)
/* 80BB08AC  2C 03 00 00 */	cmpwi r3, 0
/* 80BB08B0  40 81 00 0C */	ble lbl_80BB08BC
/* 80BB08B4  38 03 FF FF */	addi r0, r3, -1
/* 80BB08B8  B0 1E 10 CE */	sth r0, 0x10ce(r30)
lbl_80BB08BC:
/* 80BB08BC  7F C3 F3 78 */	mr r3, r30
/* 80BB08C0  4B FF FE 65 */	bl check_to_walk__9daObjBm_cFv
/* 80BB08C4  7C 7D 1B 78 */	mr r29, r3
/* 80BB08C8  38 7E 04 A8 */	addi r3, r30, 0x4a8
/* 80BB08CC  4B 45 C4 98 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BB08D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BB08D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BB08D8  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80BB08DC  4B 45 BB 58 */	b mDoMtx_YrotM__FPA4_fs
/* 80BB08E0  C0 9F 00 D8 */	lfs f4, 0xd8(r31)
/* 80BB08E4  80 1E 10 B0 */	lwz r0, 0x10b0(r30)
/* 80BB08E8  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 80BB08EC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BB08F0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80BB08F4  3C 60 43 30 */	lis r3, 0x4330
/* 80BB08F8  90 61 00 18 */	stw r3, 0x18(r1)
/* 80BB08FC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80BB0900  EC 00 18 28 */	fsubs f0, f0, f3
/* 80BB0904  EC 24 00 32 */	fmuls f1, f4, f0
/* 80BB0908  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 80BB090C  80 1E 10 B4 */	lwz r0, 0x10b4(r30)
/* 80BB0910  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BB0914  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BB0918  90 61 00 20 */	stw r3, 0x20(r1)
/* 80BB091C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80BB0920  EC 00 18 28 */	fsubs f0, f0, f3
/* 80BB0924  EC 64 00 32 */	fmuls f3, f4, f0
/* 80BB0928  4B 45 C4 74 */	b transM__14mDoMtx_stack_cFfff
/* 80BB092C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BB0930  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BB0934  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80BB0938  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BB093C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80BB0940  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BB0944  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80BB0948  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BB094C  D0 3E 04 D0 */	stfs f1, 0x4d0(r30)
/* 80BB0950  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80BB0954  2C 1D FF FF */	cmpwi r29, -1
/* 80BB0958  41 82 00 58 */	beq lbl_80BB09B0
/* 80BB095C  93 BE 10 BC */	stw r29, 0x10bc(r30)
/* 80BB0960  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BB0964  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BB0968  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80BB096C  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80BB0970  60 00 08 00 */	ori r0, r0, 0x800
/* 80BB0974  90 03 05 70 */	stw r0, 0x570(r3)
/* 80BB0978  7F C3 F3 78 */	mr r3, r30
/* 80BB097C  48 00 00 4D */	bl mode_walk_init__9daObjBm_cFv
/* 80BB0980  80 1E 10 C0 */	lwz r0, 0x10c0(r30)
/* 80BB0984  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80BB0988  41 82 00 18 */	beq lbl_80BB09A0
/* 80BB098C  38 00 00 0D */	li r0, 0xd
/* 80BB0990  B0 1E 10 CC */	sth r0, 0x10cc(r30)
/* 80BB0994  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 80BB0998  D0 1E 10 B8 */	stfs f0, 0x10b8(r30)
/* 80BB099C  48 00 00 14 */	b lbl_80BB09B0
lbl_80BB09A0:
/* 80BB09A0  38 00 00 0D */	li r0, 0xd
/* 80BB09A4  B0 1E 10 CC */	sth r0, 0x10cc(r30)
/* 80BB09A8  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 80BB09AC  D0 1E 10 B8 */	stfs f0, 0x10b8(r30)
lbl_80BB09B0:
/* 80BB09B0  39 61 00 40 */	addi r11, r1, 0x40
/* 80BB09B4  4B 7B 18 74 */	b _restgpr_29
/* 80BB09B8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BB09BC  7C 08 03 A6 */	mtlr r0
/* 80BB09C0  38 21 00 40 */	addi r1, r1, 0x40
/* 80BB09C4  4E 80 00 20 */	blr 
