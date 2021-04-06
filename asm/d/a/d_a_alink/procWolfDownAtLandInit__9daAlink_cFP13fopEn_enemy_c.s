lbl_8013B964:
/* 8013B964  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8013B968  7C 08 02 A6 */	mflr r0
/* 8013B96C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8013B970  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8013B974  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8013B978  7C 7E 1B 78 */	mr r30, r3
/* 8013B97C  7C 9F 23 78 */	mr r31, r4
/* 8013B980  38 80 01 23 */	li r4, 0x123
/* 8013B984  4B F8 65 E9 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013B988  38 7E 28 0C */	addi r3, r30, 0x280c
/* 8013B98C  7F E4 FB 78 */	mr r4, r31
/* 8013B990  48 02 33 29 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 8013B994  7F C3 F3 78 */	mr r3, r30
/* 8013B998  38 80 00 64 */	li r4, 0x64
/* 8013B99C  3C A0 80 39 */	lis r5, m__22daAlinkHIO_wlAtDown_c0@ha /* 0x8038F658@ha */
/* 8013B9A0  38 A5 F6 58 */	addi r5, r5, m__22daAlinkHIO_wlAtDown_c0@l /* 0x8038F658@l */
/* 8013B9A4  38 A5 00 28 */	addi r5, r5, 0x28
/* 8013B9A8  4B FE DE A1 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8013B9AC  38 00 00 04 */	li r0, 4
/* 8013B9B0  98 1E 2F 9D */	stb r0, 0x2f9d(r30)
/* 8013B9B4  7F C3 F3 78 */	mr r3, r30
/* 8013B9B8  38 80 00 02 */	li r4, 2
/* 8013B9BC  4B FE 58 05 */	bl setFootEffectProcType__9daAlink_cFi
/* 8013B9C0  A0 1F 05 8E */	lhz r0, 0x58e(r31)
/* 8013B9C4  60 00 00 14 */	ori r0, r0, 0x14
/* 8013B9C8  B0 1F 05 8E */	sth r0, 0x58e(r31)
/* 8013B9CC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013B9D0  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 8013B9D4  7F C3 F3 78 */	mr r3, r30
/* 8013B9D8  4B FF D3 E9 */	bl setWolfBallModel__9daAlink_cFv
/* 8013B9DC  7F C3 F3 78 */	mr r3, r30
/* 8013B9E0  3C 80 00 01 */	lis r4, 0x0001 /* 0x000100BF@ha */
/* 8013B9E4  38 84 00 BF */	addi r4, r4, 0x00BF /* 0x000100BF@l */
/* 8013B9E8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8013B9EC  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8013B9F0  7D 89 03 A6 */	mtctr r12
/* 8013B9F4  4E 80 04 21 */	bctrl 
/* 8013B9F8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013B9FC  D0 21 00 08 */	stfs f1, 8(r1)
/* 8013BA00  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8013BA04  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8013BA08  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8013BA0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013BA10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013BA14  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8013BA18  38 80 00 02 */	li r4, 2
/* 8013BA1C  38 A0 00 0F */	li r5, 0xf
/* 8013BA20  38 C1 00 08 */	addi r6, r1, 8
/* 8013BA24  4B F3 40 01 */	bl StartShock__12dVibration_cFii4cXyz
/* 8013BA28  38 60 00 01 */	li r3, 1
/* 8013BA2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8013BA30  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8013BA34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8013BA38  7C 08 03 A6 */	mtlr r0
/* 8013BA3C  38 21 00 20 */	addi r1, r1, 0x20
/* 8013BA40  4E 80 00 20 */	blr 
