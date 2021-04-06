lbl_8013CCF4:
/* 8013CCF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013CCF8  7C 08 02 A6 */	mflr r0
/* 8013CCFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013CD00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013CD04  7C 7F 1B 78 */	mr r31, r3
/* 8013CD08  38 80 01 36 */	li r4, 0x136
/* 8013CD0C  4B F8 52 61 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013CD10  7F E3 FB 78 */	mr r3, r31
/* 8013CD14  38 80 00 78 */	li r4, 0x78
/* 8013CD18  3C A0 80 39 */	lis r5, m__22daAlinkHIO_wlAtBite_c0@ha /* 0x8038F748@ha */
/* 8013CD1C  38 A5 F7 48 */	addi r5, r5, m__22daAlinkHIO_wlAtBite_c0@l /* 0x8038F748@l */
/* 8013CD20  38 A5 00 14 */	addi r5, r5, 0x14
/* 8013CD24  4B FE CB 25 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8013CD28  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013CD2C  D0 3F 33 98 */	stfs f1, 0x3398(r31)
/* 8013CD30  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
/* 8013CD34  7F E3 FB 78 */	mr r3, r31
/* 8013CD38  C0 5F 05 34 */	lfs f2, 0x534(r31)
/* 8013CD3C  38 80 00 00 */	li r4, 0
/* 8013CD40  4B F7 EA 31 */	bl setSpecialGravity__9daAlink_cFffi
/* 8013CD44  7F E3 FB 78 */	mr r3, r31
/* 8013CD48  80 9F 28 20 */	lwz r4, 0x2820(r31)
/* 8013CD4C  4B FF C8 B5 */	bl setWolfEnemyHangBitePos__9daAlink_cFP13fopEn_enemy_c
/* 8013CD50  2C 03 00 00 */	cmpwi r3, 0
/* 8013CD54  40 82 00 10 */	bne lbl_8013CD64
/* 8013CD58  7F E3 FB 78 */	mr r3, r31
/* 8013CD5C  4B FF DA 91 */	bl procWolfJumpAttackKickInit__9daAlink_cFv
/* 8013CD60  48 00 00 78 */	b lbl_8013CDD8
lbl_8013CD64:
/* 8013CD64  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8013CD68  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8013CD6C  38 00 00 50 */	li r0, 0x50
/* 8013CD70  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 8013CD74  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wlAtBite_c0@ha /* 0x8038F748@ha */
/* 8013CD78  38 63 F7 48 */	addi r3, r3, m__22daAlinkHIO_wlAtBite_c0@l /* 0x8038F748@l */
/* 8013CD7C  A8 03 00 28 */	lha r0, 0x28(r3)
/* 8013CD80  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 8013CD84  38 00 00 00 */	li r0, 0
/* 8013CD88  B0 1F 30 0A */	sth r0, 0x300a(r31)
/* 8013CD8C  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8013CD90  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8013CD94  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8013CD98  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 8013CD9C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8013CDA0  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 8013CDA4  7F E3 FB 78 */	mr r3, r31
/* 8013CDA8  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010044@ha */
/* 8013CDAC  38 84 00 44 */	addi r4, r4, 0x0044 /* 0x00010044@l */
/* 8013CDB0  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8013CDB4  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8013CDB8  7D 89 03 A6 */	mtctr r12
/* 8013CDBC  4E 80 04 21 */	bctrl 
/* 8013CDC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013CDC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013CDC8  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8013CDCC  64 00 00 20 */	oris r0, r0, 0x20
/* 8013CDD0  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 8013CDD4  38 60 00 01 */	li r3, 1
lbl_8013CDD8:
/* 8013CDD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013CDDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013CDE0  7C 08 03 A6 */	mtlr r0
/* 8013CDE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8013CDE8  4E 80 00 20 */	blr 
