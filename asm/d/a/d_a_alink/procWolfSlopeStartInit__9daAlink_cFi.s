lbl_80130440:
/* 80130440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80130444  7C 08 02 A6 */	mflr r0
/* 80130448  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013044C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80130450  93 C1 00 08 */	stw r30, 8(r1)
/* 80130454  7C 7E 1B 78 */	mr r30, r3
/* 80130458  7C 9F 23 78 */	mr r31, r4
/* 8013045C  38 80 01 12 */	li r4, 0x112
/* 80130460  4B F9 1B 0D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80130464  7F C3 F3 78 */	mr r3, r30
/* 80130468  38 80 00 6B */	li r4, 0x6b
/* 8013046C  3C A0 80 39 */	lis r5, m__21daAlinkHIO_wlSlide_c0@ha
/* 80130470  38 A5 F3 F0 */	addi r5, r5, m__21daAlinkHIO_wlSlide_c0@l
/* 80130474  38 A5 00 3C */	addi r5, r5, 0x3c
/* 80130478  4B FF 93 D1 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8013047C  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha
/* 80130480  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)
/* 80130484  D0 1E 35 88 */	stfs f0, 0x3588(r30)
/* 80130488  C0 03 00 04 */	lfs f0, 4(r3)
/* 8013048C  D0 1E 35 8C */	stfs f0, 0x358c(r30)
/* 80130490  C0 03 00 08 */	lfs f0, 8(r3)
/* 80130494  D0 1E 35 90 */	stfs f0, 0x3590(r30)
/* 80130498  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013049C  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 801304A0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 801304A4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 801304A8  2C 1F 00 00 */	cmpwi r31, 0
/* 801304AC  41 82 00 0C */	beq lbl_801304B8
/* 801304B0  38 00 00 0D */	li r0, 0xd
/* 801304B4  98 1E 2F 99 */	stb r0, 0x2f99(r30)
lbl_801304B8:
/* 801304B8  38 60 00 01 */	li r3, 1
/* 801304BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801304C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 801304C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801304C8  7C 08 03 A6 */	mtlr r0
/* 801304CC  38 21 00 10 */	addi r1, r1, 0x10
/* 801304D0  4E 80 00 20 */	blr 
