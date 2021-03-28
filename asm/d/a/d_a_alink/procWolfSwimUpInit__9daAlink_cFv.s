lbl_801383D8:
/* 801383D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801383DC  7C 08 02 A6 */	mflr r0
/* 801383E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801383E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801383E8  7C 7F 1B 78 */	mr r31, r3
/* 801383EC  38 80 01 27 */	li r4, 0x127
/* 801383F0  4B F8 9B 7D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 801383F4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801383F8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 801383FC  C0 1F 33 B4 */	lfs f0, 0x33b4(r31)
/* 80138400  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80138404  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80138408  60 00 01 00 */	ori r0, r0, 0x100
/* 8013840C  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80138410  38 60 00 00 */	li r3, 0
/* 80138414  88 1F 2D 73 */	lbz r0, 0x2d73(r31)
/* 80138418  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8013841C  98 1F 2D 73 */	stb r0, 0x2d73(r31)
/* 80138420  7F E3 FB 78 */	mr r3, r31
/* 80138424  38 80 00 36 */	li r4, 0x36
/* 80138428  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlSwim_c0@ha
/* 8013842C  38 A5 F8 B4 */	addi r5, r5, m__20daAlinkHIO_wlSwim_c0@l
/* 80138430  4B FF 14 19 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 80138434  7F E3 FB 78 */	mr r3, r31
/* 80138438  38 80 00 8E */	li r4, 0x8e
/* 8013843C  4B F7 74 65 */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 80138440  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80138444  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80138448  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8013844C  64 00 00 10 */	oris r0, r0, 0x10
/* 80138450  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 80138454  7F E3 FB 78 */	mr r3, r31
/* 80138458  3C 80 00 03 */	lis r4, 0x0003 /* 0x00030023@ha */
/* 8013845C  38 84 00 23 */	addi r4, r4, 0x0023 /* 0x00030023@l */
/* 80138460  4B F8 6D 35 */	bl seStartMapInfo__9daAlink_cFUl
/* 80138464  38 00 00 01 */	li r0, 1
/* 80138468  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 8013846C  38 60 00 01 */	li r3, 1
/* 80138470  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80138474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80138478  7C 08 03 A6 */	mtlr r0
/* 8013847C  38 21 00 10 */	addi r1, r1, 0x10
/* 80138480  4E 80 00 20 */	blr 
