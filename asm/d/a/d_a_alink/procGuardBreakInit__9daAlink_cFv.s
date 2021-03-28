lbl_800DDE58:
/* 800DDE58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DDE5C  7C 08 02 A6 */	mflr r0
/* 800DDE60  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DDE64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800DDE68  7C 7F 1B 78 */	mr r31, r3
/* 800DDE6C  38 80 00 1F */	li r4, 0x1f
/* 800DDE70  4B FE 40 FD */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800DDE74  7F E3 FB 78 */	mr r3, r31
/* 800DDE78  38 80 00 30 */	li r4, 0x30
/* 800DDE7C  3C A0 80 39 */	lis r5, m__19daAlinkHIO_guard_c0@ha
/* 800DDE80  38 A5 DF 9C */	addi r5, r5, m__19daAlinkHIO_guard_c0@l
/* 800DDE84  38 A5 00 3C */	addi r5, r5, 0x3c
/* 800DDE88  4B FC F2 6D */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800DDE8C  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800DDE90  28 00 00 42 */	cmplwi r0, 0x42
/* 800DDE94  40 82 00 14 */	bne lbl_800DDEA8
/* 800DDE98  7F E3 FB 78 */	mr r3, r31
/* 800DDE9C  38 80 00 00 */	li r4, 0
/* 800DDEA0  38 A0 00 00 */	li r5, 0
/* 800DDEA4  4B FE 34 39 */	bl deleteEquipItem__9daAlink_cFii
lbl_800DDEA8:
/* 800DDEA8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800DDEAC  D0 3F 33 98 */	stfs f1, 0x3398(r31)
/* 800DDEB0  3C 60 80 42 */	lis r3, l_halfAtnWaitBaseAnime@ha
/* 800DDEB4  C4 03 55 44 */	lfsu f0, l_halfAtnWaitBaseAnime@l(r3)
/* 800DDEB8  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 800DDEBC  C0 03 00 04 */	lfs f0, 4(r3)
/* 800DDEC0  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 800DDEC4  C0 03 00 08 */	lfs f0, 8(r3)
/* 800DDEC8  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 800DDECC  D0 21 00 08 */	stfs f1, 8(r1)
/* 800DDED0  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800DDED4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800DDED8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800DDEDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DDEE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800DDEE4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800DDEE8  38 80 00 05 */	li r4, 5
/* 800DDEEC  38 A0 00 1F */	li r5, 0x1f
/* 800DDEF0  38 C1 00 08 */	addi r6, r1, 8
/* 800DDEF4  4B F9 1B 31 */	bl StartShock__12dVibration_cFii4cXyz
/* 800DDEF8  7F E3 FB 78 */	mr r3, r31
/* 800DDEFC  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010091@ha */
/* 800DDF00  38 84 00 91 */	addi r4, r4, 0x0091 /* 0x00010091@l */
/* 800DDF04  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800DDF08  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800DDF0C  7D 89 03 A6 */	mtctr r12
/* 800DDF10  4E 80 04 21 */	bctrl 
/* 800DDF14  38 60 00 01 */	li r3, 1
/* 800DDF18  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800DDF1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DDF20  7C 08 03 A6 */	mtlr r0
/* 800DDF24  38 21 00 20 */	addi r1, r1, 0x20
/* 800DDF28  4E 80 00 20 */	blr 
