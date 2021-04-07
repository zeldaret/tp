lbl_8012FC38:
/* 8012FC38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8012FC3C  7C 08 02 A6 */	mflr r0
/* 8012FC40  90 01 00 24 */	stw r0, 0x24(r1)
/* 8012FC44  39 61 00 20 */	addi r11, r1, 0x20
/* 8012FC48  48 23 25 95 */	bl _savegpr_29
/* 8012FC4C  7C 7D 1B 78 */	mr r29, r3
/* 8012FC50  7C 9E 23 78 */	mr r30, r4
/* 8012FC54  7C BF 2B 78 */	mr r31, r5
/* 8012FC58  38 80 01 0E */	li r4, 0x10e
/* 8012FC5C  4B F9 23 11 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8012FC60  38 00 00 08 */	li r0, 8
/* 8012FC64  B0 1D 30 90 */	sth r0, 0x3090(r29)
/* 8012FC68  B3 DD 04 DE */	sth r30, 0x4de(r29)
/* 8012FC6C  7F A3 EB 78 */	mr r3, r29
/* 8012FC70  38 80 00 20 */	li r4, 0x20
/* 8012FC74  3C A0 80 39 */	lis r5, m__21daAlinkHIO_wlSlide_c0@ha /* 0x8038F3F0@ha */
/* 8012FC78  38 A5 F3 F0 */	addi r5, r5, m__21daAlinkHIO_wlSlide_c0@l /* 0x8038F3F0@l */
/* 8012FC7C  4B FF 9B CD */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8012FC80  7F A3 EB 78 */	mr r3, r29
/* 8012FC84  3C 80 00 01 */	lis r4, 0x0001 /* 0x000100B0@ha */
/* 8012FC88  38 84 00 B0 */	addi r4, r4, 0x00B0 /* 0x000100B0@l */
/* 8012FC8C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8012FC90  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8012FC94  7D 89 03 A6 */	mtctr r12
/* 8012FC98  4E 80 04 21 */	bctrl 
/* 8012FC9C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8012FCA0  D0 1D 33 98 */	stfs f0, 0x3398(r29)
/* 8012FCA4  3C 60 80 39 */	lis r3, m__21daAlinkHIO_wlSlide_c0@ha /* 0x8038F3F0@ha */
/* 8012FCA8  38 63 F3 F0 */	addi r3, r3, m__21daAlinkHIO_wlSlide_c0@l /* 0x8038F3F0@l */
/* 8012FCAC  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 8012FCB0  D0 1D 05 94 */	stfs f0, 0x594(r29)
/* 8012FCB4  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha /* 0x8042561C@ha */
/* 8012FCB8  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)  /* 0x8042561C@l */
/* 8012FCBC  D0 1D 35 88 */	stfs f0, 0x3588(r29)
/* 8012FCC0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8012FCC4  D0 1D 35 8C */	stfs f0, 0x358c(r29)
/* 8012FCC8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8012FCCC  D0 1D 35 90 */	stfs f0, 0x3590(r29)
/* 8012FCD0  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 8012FCD4  A8 1D 1F D8 */	lha r0, 0x1fd8(r29)
/* 8012FCD8  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 8012FCDC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8012FCE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8012FCE4  3C 00 43 30 */	lis r0, 0x4330
/* 8012FCE8  90 01 00 08 */	stw r0, 8(r1)
/* 8012FCEC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8012FCF0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8012FCF4  EC 02 00 24 */	fdivs f0, f2, f0
/* 8012FCF8  D0 1D 34 78 */	stfs f0, 0x3478(r29)
/* 8012FCFC  38 00 00 00 */	li r0, 0
/* 8012FD00  B0 1D 30 0C */	sth r0, 0x300c(r29)
/* 8012FD04  B3 FD 30 0E */	sth r31, 0x300e(r29)
/* 8012FD08  38 00 00 FF */	li r0, 0xff
/* 8012FD0C  98 1D 08 28 */	stb r0, 0x828(r29)
/* 8012FD10  38 60 00 01 */	li r3, 1
/* 8012FD14  39 61 00 20 */	addi r11, r1, 0x20
/* 8012FD18  48 23 25 11 */	bl _restgpr_29
/* 8012FD1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8012FD20  7C 08 03 A6 */	mtlr r0
/* 8012FD24  38 21 00 20 */	addi r1, r1, 0x20
/* 8012FD28  4E 80 00 20 */	blr 
