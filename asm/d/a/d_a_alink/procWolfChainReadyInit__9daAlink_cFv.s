lbl_8013E240:
/* 8013E240  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013E244  7C 08 02 A6 */	mflr r0
/* 8013E248  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013E24C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013E250  7C 7F 1B 78 */	mr r31, r3
/* 8013E254  38 80 01 30 */	li r4, 0x130
/* 8013E258  4B F8 3D 15 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013E25C  38 7F 28 0C */	addi r3, r31, 0x280c
/* 8013E260  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 8013E264  48 02 0A 55 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 8013E268  7F E3 FB 78 */	mr r3, r31
/* 8013E26C  38 80 00 50 */	li r4, 0x50
/* 8013E270  3C A0 80 39 */	lis r5, m__23daAlinkHIO_wlAtNjump_c0@ha /* 0x8038F578@ha */
/* 8013E274  38 A5 F5 78 */	addi r5, r5, m__23daAlinkHIO_wlAtNjump_c0@l /* 0x8038F578@l */
/* 8013E278  4B FE B5 D1 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8013E27C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013E280  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8013E284  38 00 00 00 */	li r0, 0
/* 8013E288  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8013E28C  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8013E290  38 60 00 01 */	li r3, 1
/* 8013E294  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013E298  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013E29C  7C 08 03 A6 */	mtlr r0
/* 8013E2A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8013E2A4  4E 80 00 20 */	blr 
