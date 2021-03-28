lbl_8010B720:
/* 8010B720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010B724  7C 08 02 A6 */	mflr r0
/* 8010B728  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010B72C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010B730  93 C1 00 08 */	stw r30, 8(r1)
/* 8010B734  7C 7F 1B 78 */	mr r31, r3
/* 8010B738  A8 03 30 26 */	lha r0, 0x3026(r3)
/* 8010B73C  2C 00 00 00 */	cmpwi r0, 0
/* 8010B740  41 82 00 88 */	beq lbl_8010B7C8
/* 8010B744  83 DF 28 50 */	lwz r30, 0x2850(r31)
/* 8010B748  A8 7F 30 1A */	lha r3, 0x301a(r31)
/* 8010B74C  2C 03 00 05 */	cmpwi r3, 5
/* 8010B750  40 82 00 18 */	bne lbl_8010B768
/* 8010B754  28 1E 00 00 */	cmplwi r30, 0
/* 8010B758  41 82 00 10 */	beq lbl_8010B768
/* 8010B75C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8010B760  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 8010B764  40 82 00 50 */	bne lbl_8010B7B4
lbl_8010B768:
/* 8010B768  2C 03 00 04 */	cmpwi r3, 4
/* 8010B76C  40 82 00 B8 */	bne lbl_8010B824
/* 8010B770  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010B774  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010B778  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8010B77C  38 9F 1E 2C */	addi r4, r31, 0x1e2c
/* 8010B780  4B F6 8E E1 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 8010B784  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010B788  41 82 00 9C */	beq lbl_8010B824
/* 8010B78C  7F E3 FB 78 */	mr r3, r31
/* 8010B790  38 9F 1E 2C */	addi r4, r31, 0x1e2c
/* 8010B794  4B FF D0 1D */	bl checkHookshotStickBG__9daAlink_cFR13cBgS_PolyInfo
/* 8010B798  2C 03 00 00 */	cmpwi r3, 0
/* 8010B79C  41 82 00 88 */	beq lbl_8010B824
/* 8010B7A0  28 1E 00 00 */	cmplwi r30, 0
/* 8010B7A4  41 82 00 10 */	beq lbl_8010B7B4
/* 8010B7A8  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8010B7AC  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 8010B7B0  41 82 00 74 */	beq lbl_8010B824
lbl_8010B7B4:
/* 8010B7B4  38 00 00 00 */	li r0, 0
/* 8010B7B8  B0 1F 30 26 */	sth r0, 0x3026(r31)
/* 8010B7BC  7F E3 FB 78 */	mr r3, r31
/* 8010B7C0  48 00 05 D1 */	bl procHookshotFlyInit__9daAlink_cFv
/* 8010B7C4  48 00 00 70 */	b lbl_8010B834
lbl_8010B7C8:
/* 8010B7C8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8010B7CC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8010B7D0  80 04 5F 1C */	lwz r0, 0x5f1c(r4)
/* 8010B7D4  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 8010B7D8  41 82 00 4C */	beq lbl_8010B824
/* 8010B7DC  4B FF D0 C5 */	bl checkHookshotRoofLv7Boss__9daAlink_cFv
/* 8010B7E0  2C 03 00 00 */	cmpwi r3, 0
/* 8010B7E4  41 82 00 40 */	beq lbl_8010B824
/* 8010B7E8  80 7F 28 58 */	lwz r3, 0x2858(r31)
/* 8010B7EC  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 8010B7F0  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 8010B7F4  40 82 00 30 */	bne lbl_8010B824
/* 8010B7F8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8010B7FC  B0 1F 31 02 */	sth r0, 0x3102(r31)
/* 8010B800  7F E3 FB 78 */	mr r3, r31
/* 8010B804  38 80 FF FA */	li r4, -6
/* 8010B808  38 A0 00 01 */	li r5, 1
/* 8010B80C  38 C0 00 00 */	li r6, 0
/* 8010B810  38 E0 00 00 */	li r7, 0
/* 8010B814  39 00 00 00 */	li r8, 0
/* 8010B818  39 20 00 00 */	li r9, 0
/* 8010B81C  4B FC DE C1 */	bl procCoLargeDamageInit__9daAlink_cFiissP12dCcD_GObjInfi
/* 8010B820  48 00 00 14 */	b lbl_8010B834
lbl_8010B824:
/* 8010B824  7F E3 FB 78 */	mr r3, r31
/* 8010B828  38 80 00 01 */	li r4, 1
/* 8010B82C  C0 22 93 3C */	lfs f1, lit_7808(r2)
/* 8010B830  4B FB B2 19 */	bl procFallInit__9daAlink_cFif
lbl_8010B834:
/* 8010B834  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010B838  83 C1 00 08 */	lwz r30, 8(r1)
/* 8010B83C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010B840  7C 08 03 A6 */	mtlr r0
/* 8010B844  38 21 00 10 */	addi r1, r1, 0x10
/* 8010B848  4E 80 00 20 */	blr 
