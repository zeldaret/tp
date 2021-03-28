lbl_8013C8C8:
/* 8013C8C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013C8CC  7C 08 02 A6 */	mflr r0
/* 8013C8D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013C8D4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8013C8D8  7C 7F 1B 78 */	mr r31, r3
/* 8013C8DC  38 80 01 34 */	li r4, 0x134
/* 8013C8E0  4B F8 56 8D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013C8E4  7F E3 FB 78 */	mr r3, r31
/* 8013C8E8  38 80 00 74 */	li r4, 0x74
/* 8013C8EC  4B FE CD 8D */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8013C8F0  7F E3 FB 78 */	mr r3, r31
/* 8013C8F4  38 80 00 9A */	li r4, 0x9a
/* 8013C8F8  4B F7 2F A9 */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 8013C8FC  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wlAttack_c0@ha
/* 8013C900  38 63 F7 A4 */	addi r3, r3, m__22daAlinkHIO_wlAttack_c0@l
/* 8013C904  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8013C908  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8013C90C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8013C910  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8013C914  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 8013C918  3C 63 00 01 */	addis r3, r3, 1
/* 8013C91C  38 03 80 00 */	addi r0, r3, -32768
/* 8013C920  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8013C924  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013C928  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8013C92C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8013C930  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8013C934  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8013C938  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8013C93C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8013C940  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8013C944  38 80 00 05 */	li r4, 5
/* 8013C948  38 A0 00 0F */	li r5, 0xf
/* 8013C94C  38 C1 00 14 */	addi r6, r1, 0x14
/* 8013C950  4B F3 30 D5 */	bl StartShock__12dVibration_cFii4cXyz
/* 8013C954  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8013C958  D0 01 00 08 */	stfs f0, 8(r1)
/* 8013C95C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8013C960  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8013C964  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8013C968  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8013C96C  38 61 00 08 */	addi r3, r1, 8
/* 8013C970  38 80 00 64 */	li r4, 0x64
/* 8013C974  28 1F 00 00 */	cmplwi r31, 0
/* 8013C978  41 82 00 0C */	beq lbl_8013C984
/* 8013C97C  80 BF 00 04 */	lwz r5, 4(r31)
/* 8013C980  48 00 00 08 */	b lbl_8013C988
lbl_8013C984:
/* 8013C984  38 A0 FF FF */	li r5, -1
lbl_8013C988:
/* 8013C988  38 C0 00 05 */	li r6, 5
/* 8013C98C  48 06 B8 35 */	bl dKy_Sound_set__F4cXyziUii
/* 8013C990  7F E3 FB 78 */	mr r3, r31
/* 8013C994  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020054@ha */
/* 8013C998  38 84 00 54 */	addi r4, r4, 0x0054 /* 0x00020054@l */
/* 8013C99C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8013C9A0  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8013C9A4  7D 89 03 A6 */	mtctr r12
/* 8013C9A8  4E 80 04 21 */	bctrl 
/* 8013C9AC  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 8013C9B0  60 00 00 01 */	ori r0, r0, 1
/* 8013C9B4  90 1F 05 84 */	stw r0, 0x584(r31)
/* 8013C9B8  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha
/* 8013C9BC  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)
/* 8013C9C0  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 8013C9C4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8013C9C8  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 8013C9CC  C0 03 00 08 */	lfs f0, 8(r3)
/* 8013C9D0  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 8013C9D4  38 60 00 01 */	li r3, 1
/* 8013C9D8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8013C9DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8013C9E0  7C 08 03 A6 */	mtlr r0
/* 8013C9E4  38 21 00 30 */	addi r1, r1, 0x30
/* 8013C9E8  4E 80 00 20 */	blr 
