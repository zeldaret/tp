lbl_800FB2A0:
/* 800FB2A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FB2A4  7C 08 02 A6 */	mflr r0
/* 800FB2A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FB2AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FB2B0  93 C1 00 08 */	stw r30, 8(r1)
/* 800FB2B4  7C 7E 1B 78 */	mr r30, r3
/* 800FB2B8  7C 9F 23 78 */	mr r31, r4
/* 800FB2BC  38 80 00 57 */	li r4, 0x57
/* 800FB2C0  4B FC 6C AD */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800FB2C4  7F C3 F3 78 */	mr r3, r30
/* 800FB2C8  38 80 00 96 */	li r4, 0x96
/* 800FB2CC  3C A0 80 39 */	lis r5, m__22daAlinkHIO_wallFall_c0@ha /* 0x8038E1B8@ha */
/* 800FB2D0  38 A5 E1 B8 */	addi r5, r5, m__22daAlinkHIO_wallFall_c0@l /* 0x8038E1B8@l */
/* 800FB2D4  38 A5 00 14 */	addi r5, r5, 0x14
/* 800FB2D8  4B FB 1E 1D */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800FB2DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800FB2E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800FB2E4  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800FB2E8  60 00 01 00 */	ori r0, r0, 0x100
/* 800FB2EC  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800FB2F0  7F C3 F3 78 */	mr r3, r30
/* 800FB2F4  4B FE 49 35 */	bl setBowHangAnime__9daAlink_cFv
/* 800FB2F8  93 FE 31 98 */	stw r31, 0x3198(r30)
/* 800FB2FC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FB300  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800FB304  7F C3 F3 78 */	mr r3, r30
/* 800FB308  4B FF F3 DD */	bl setHangGroundY__9daAlink_cFv
/* 800FB30C  38 60 00 01 */	li r3, 1
/* 800FB310  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FB314  83 C1 00 08 */	lwz r30, 8(r1)
/* 800FB318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FB31C  7C 08 03 A6 */	mtlr r0
/* 800FB320  38 21 00 10 */	addi r1, r1, 0x10
/* 800FB324  4E 80 00 20 */	blr 
