lbl_800DE884:
/* 800DE884  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DE888  7C 08 02 A6 */	mflr r0
/* 800DE88C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DE890  39 61 00 20 */	addi r11, r1, 0x20
/* 800DE894  48 28 39 45 */	bl _savegpr_28
/* 800DE898  7C 7D 1B 78 */	mr r29, r3
/* 800DE89C  7C 9E 23 78 */	mr r30, r4
/* 800DE8A0  7C BF 2B 78 */	mr r31, r5
/* 800DE8A4  48 00 01 45 */	bl checkBowAnime__9daAlink_cCFv
/* 800DE8A8  2C 03 00 00 */	cmpwi r3, 0
/* 800DE8AC  41 82 00 10 */	beq lbl_800DE8BC
/* 800DE8B0  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 800DE8B4  28 00 00 4B */	cmplwi r0, 0x4b
/* 800DE8B8  40 82 00 0C */	bne lbl_800DE8C4
lbl_800DE8BC:
/* 800DE8BC  38 60 00 00 */	li r3, 0
/* 800DE8C0  48 00 00 B8 */	b lbl_800DE978
lbl_800DE8C4:
/* 800DE8C4  7F A3 EB 78 */	mr r3, r29
/* 800DE8C8  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 800DE8CC  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800DE8D0  7D 89 03 A6 */	mtctr r12
/* 800DE8D4  4E 80 04 21 */	bctrl 
/* 800DE8D8  28 03 00 00 */	cmplwi r3, 0
/* 800DE8DC  41 82 00 2C */	beq lbl_800DE908
/* 800DE8E0  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 800DE8E4  54 00 01 D1 */	rlwinm. r0, r0, 0, 7, 8
/* 800DE8E8  41 82 00 20 */	beq lbl_800DE908
/* 800DE8EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DE8F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800DE8F4  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 800DE8F8  28 03 00 00 */	cmplwi r3, 0
/* 800DE8FC  41 82 00 0C */	beq lbl_800DE908
/* 800DE900  AB 83 04 E6 */	lha r28, 0x4e6(r3)
/* 800DE904  48 00 00 1C */	b lbl_800DE920
lbl_800DE908:
/* 800DE908  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 800DE90C  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800DE910  41 82 00 0C */	beq lbl_800DE91C
/* 800DE914  AB 9D 31 18 */	lha r28, 0x3118(r29)
/* 800DE918  48 00 00 08 */	b lbl_800DE920
lbl_800DE91C:
/* 800DE91C  AB 9D 04 E6 */	lha r28, 0x4e6(r29)
lbl_800DE920:
/* 800DE920  A8 1D 05 9E */	lha r0, 0x59e(r29)
/* 800DE924  7F 9C 02 14 */	add r28, r28, r0
/* 800DE928  38 7D 38 34 */	addi r3, r29, 0x3834
/* 800DE92C  4B F2 E4 39 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 800DE930  7F A3 EB 78 */	mr r3, r29
/* 800DE934  48 00 3A C9 */	bl concatMagneBootMtx__9daAlink_cFv
/* 800DE938  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800DE93C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800DE940  A8 9D 05 9C */	lha r4, 0x59c(r29)
/* 800DE944  7F 85 E3 78 */	mr r5, r28
/* 800DE948  38 C0 00 00 */	li r6, 0
/* 800DE94C  4B F2 D9 55 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 800DE950  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800DE954  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800DE958  3C 80 80 39 */	lis r4, localPos@ha
/* 800DE95C  38 84 18 C4 */	addi r4, r4, localPos@l
/* 800DE960  38 BD 37 E0 */	addi r5, r29, 0x37e0
/* 800DE964  48 26 84 09 */	bl PSMTXMultVec
/* 800DE968  A8 1D 05 9C */	lha r0, 0x59c(r29)
/* 800DE96C  B0 1E 00 00 */	sth r0, 0(r30)
/* 800DE970  B3 9F 00 00 */	sth r28, 0(r31)
/* 800DE974  38 7D 37 E0 */	addi r3, r29, 0x37e0
lbl_800DE978:
/* 800DE978  39 61 00 20 */	addi r11, r1, 0x20
/* 800DE97C  48 28 38 A9 */	bl _restgpr_28
/* 800DE980  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DE984  7C 08 03 A6 */	mtlr r0
/* 800DE988  38 21 00 20 */	addi r1, r1, 0x20
/* 800DE98C  4E 80 00 20 */	blr 
