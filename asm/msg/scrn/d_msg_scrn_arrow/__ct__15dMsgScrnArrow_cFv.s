lbl_8023B9B4:
/* 8023B9B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023B9B8  7C 08 02 A6 */	mflr r0
/* 8023B9BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023B9C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023B9C4  93 C1 00 08 */	stw r30, 8(r1)
/* 8023B9C8  7C 7F 1B 78 */	mr r31, r3
/* 8023B9CC  3C 80 80 3C */	lis r4, __vt__15dMsgScrnArrow_c@ha /* 0x803C0CF8@ha */
/* 8023B9D0  38 04 0C F8 */	addi r0, r4, __vt__15dMsgScrnArrow_c@l /* 0x803C0CF8@l */
/* 8023B9D4  90 03 00 00 */	stw r0, 0(r3)
/* 8023B9D8  38 60 01 18 */	li r3, 0x118
/* 8023B9DC  48 09 32 71 */	bl __nw__FUl
/* 8023B9E0  7C 60 1B 79 */	or. r0, r3, r3
/* 8023B9E4  41 82 00 0C */	beq lbl_8023B9F0
/* 8023B9E8  48 0B CA B1 */	bl __ct__9J2DScreenFv
/* 8023B9EC  7C 60 1B 78 */	mr r0, r3
lbl_8023B9F0:
/* 8023B9F0  90 1F 00 04 */	stw r0, 4(r31)
/* 8023B9F4  80 7F 00 04 */	lwz r3, 4(r31)
/* 8023B9F8  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_arrow__stringBase0@ha /* 0x803998A0@ha */
/* 8023B9FC  38 84 98 A0 */	addi r4, r4, msg_scrn_d_msg_scrn_arrow__stringBase0@l /* 0x803998A0@l */
/* 8023BA00  3C A0 00 02 */	lis r5, 2
/* 8023BA04  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8023BA08  3B C6 61 C0 */	addi r30, r6, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8023BA0C  80 DE 5C 6C */	lwz r6, 0x5c6c(r30)
/* 8023BA10  48 0B CC 39 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 8023BA14  80 7F 00 04 */	lwz r3, 4(r31)
/* 8023BA18  48 01 96 D1 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 8023BA1C  38 60 00 04 */	li r3, 4
/* 8023BA20  64 63 00 04 */	oris r3, r3, 4
/* 8023BA24  7C 72 E3 A6 */	mtspr 0x392, r3
/* 8023BA28  38 60 00 05 */	li r3, 5
/* 8023BA2C  64 63 00 05 */	oris r3, r3, 5
/* 8023BA30  7C 73 E3 A6 */	mtspr 0x393, r3
/* 8023BA34  38 60 00 06 */	li r3, 6
/* 8023BA38  64 63 00 06 */	oris r3, r3, 6
/* 8023BA3C  7C 74 E3 A6 */	mtspr 0x394, r3
/* 8023BA40  38 60 00 07 */	li r3, 7
/* 8023BA44  64 63 00 07 */	oris r3, r3, 7
/* 8023BA48  7C 75 E3 A6 */	mtspr 0x395, r3
/* 8023BA4C  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_arrow__stringBase0@ha /* 0x803998A0@ha */
/* 8023BA50  38 84 98 A0 */	addi r4, r4, msg_scrn_d_msg_scrn_arrow__stringBase0@l /* 0x803998A0@l */
/* 8023BA54  38 64 00 1B */	addi r3, r4, 0x1b
/* 8023BA58  80 9E 5C 6C */	lwz r4, 0x5c6c(r30)
/* 8023BA5C  48 09 88 15 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8023BA60  48 0C D0 0D */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8023BA64  90 7F 00 08 */	stw r3, 8(r31)
/* 8023BA68  C0 02 B1 98 */	lfs f0, lit_3662(r2)
/* 8023BA6C  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8023BA70  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_arrow__stringBase0@ha /* 0x803998A0@ha */
/* 8023BA74  38 84 98 A0 */	addi r4, r4, msg_scrn_d_msg_scrn_arrow__stringBase0@l /* 0x803998A0@l */
/* 8023BA78  38 64 00 36 */	addi r3, r4, 0x36
/* 8023BA7C  80 9E 5C 6C */	lwz r4, 0x5c6c(r30)
/* 8023BA80  48 09 87 F1 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8023BA84  48 0C CF E9 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8023BA88  90 7F 00 0C */	stw r3, 0xc(r31)
/* 8023BA8C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8023BA90  80 9F 00 04 */	lwz r4, 4(r31)
/* 8023BA94  81 83 00 00 */	lwz r12, 0(r3)
/* 8023BA98  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8023BA9C  7D 89 03 A6 */	mtctr r12
/* 8023BAA0  4E 80 04 21 */	bctrl 
/* 8023BAA4  C0 02 B1 98 */	lfs f0, lit_3662(r2)
/* 8023BAA8  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8023BAAC  38 60 00 6C */	li r3, 0x6c
/* 8023BAB0  48 09 31 9D */	bl __nw__FUl
/* 8023BAB4  7C 60 1B 79 */	or. r0, r3, r3
/* 8023BAB8  41 82 00 28 */	beq lbl_8023BAE0
/* 8023BABC  80 9F 00 04 */	lwz r4, 4(r31)
/* 8023BAC0  3C A0 79 61 */	lis r5, 0x7961 /* 0x79615F6E@ha */
/* 8023BAC4  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x79615F6E@l */
/* 8023BAC8  3C A0 73 65 */	lis r5, 0x7365 /* 0x7365745F@ha */
/* 8023BACC  38 A5 74 5F */	addi r5, r5, 0x745F /* 0x7365745F@l */
/* 8023BAD0  38 E0 00 00 */	li r7, 0
/* 8023BAD4  39 00 00 00 */	li r8, 0
/* 8023BAD8  48 01 7E AD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8023BADC  7C 60 1B 78 */	mr r0, r3
lbl_8023BAE0:
/* 8023BAE0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8023BAE4  38 60 00 6C */	li r3, 0x6c
/* 8023BAE8  48 09 31 65 */	bl __nw__FUl
/* 8023BAEC  7C 60 1B 79 */	or. r0, r3, r3
/* 8023BAF0  41 82 00 28 */	beq lbl_8023BB18
/* 8023BAF4  80 9F 00 04 */	lwz r4, 4(r31)
/* 8023BAF8  3C A0 6E 65 */	lis r5, 0x6E65 /* 0x6E657874@ha */
/* 8023BAFC  38 C5 78 74 */	addi r6, r5, 0x7874 /* 0x6E657874@l */
/* 8023BB00  3C A0 00 79 */	lis r5, 0x0079 /* 0x0079615F@ha */
/* 8023BB04  38 A5 61 5F */	addi r5, r5, 0x615F /* 0x0079615F@l */
/* 8023BB08  38 E0 00 00 */	li r7, 0
/* 8023BB0C  39 00 00 00 */	li r8, 0
/* 8023BB10  48 01 7E 75 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8023BB14  7C 60 1B 78 */	mr r0, r3
lbl_8023BB18:
/* 8023BB18  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8023BB1C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8023BB20  48 01 9A E9 */	bl hide__13CPaneMgrAlphaFv
/* 8023BB24  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8023BB28  80 64 00 04 */	lwz r3, 4(r4)
/* 8023BB2C  80 9F 00 08 */	lwz r4, 8(r31)
/* 8023BB30  81 83 00 00 */	lwz r12, 0(r3)
/* 8023BB34  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8023BB38  7D 89 03 A6 */	mtctr r12
/* 8023BB3C  4E 80 04 21 */	bctrl 
/* 8023BB40  80 7F 00 04 */	lwz r3, 4(r31)
/* 8023BB44  3C 80 6E 65 */	lis r4, 0x6E65 /* 0x6E657874@ha */
/* 8023BB48  38 C4 78 74 */	addi r6, r4, 0x7874 /* 0x6E657874@l */
/* 8023BB4C  3C 80 00 79 */	lis r4, 0x0079 /* 0x0079616A@ha */
/* 8023BB50  38 A4 61 6A */	addi r5, r4, 0x616A /* 0x0079616A@l */
/* 8023BB54  81 83 00 00 */	lwz r12, 0(r3)
/* 8023BB58  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8023BB5C  7D 89 03 A6 */	mtctr r12
/* 8023BB60  4E 80 04 21 */	bctrl 
/* 8023BB64  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8023BB68  81 83 00 00 */	lwz r12, 0(r3)
/* 8023BB6C  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8023BB70  7D 89 03 A6 */	mtctr r12
/* 8023BB74  4E 80 04 21 */	bctrl 
/* 8023BB78  80 7F 00 04 */	lwz r3, 4(r31)
/* 8023BB7C  3C 80 6E 65 */	lis r4, 0x6E65 /* 0x6E65786C@ha */
/* 8023BB80  38 C4 78 6C */	addi r6, r4, 0x786C /* 0x6E65786C@l */
/* 8023BB84  3C 80 79 61 */	lis r4, 0x7961 /* 0x79616A69@ha */
/* 8023BB88  38 A4 6A 69 */	addi r5, r4, 0x6A69 /* 0x79616A69@l */
/* 8023BB8C  81 83 00 00 */	lwz r12, 0(r3)
/* 8023BB90  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8023BB94  7D 89 03 A6 */	mtctr r12
/* 8023BB98  4E 80 04 21 */	bctrl 
/* 8023BB9C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8023BBA0  81 83 00 00 */	lwz r12, 0(r3)
/* 8023BBA4  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8023BBA8  7D 89 03 A6 */	mtctr r12
/* 8023BBAC  4E 80 04 21 */	bctrl 
/* 8023BBB0  38 60 00 6C */	li r3, 0x6c
/* 8023BBB4  48 09 30 99 */	bl __nw__FUl
/* 8023BBB8  7C 60 1B 79 */	or. r0, r3, r3
/* 8023BBBC  41 82 00 24 */	beq lbl_8023BBE0
/* 8023BBC0  80 9F 00 04 */	lwz r4, 4(r31)
/* 8023BBC4  3C A0 5F 65 */	lis r5, 0x5F65 /* 0x5F656E64@ha */
/* 8023BBC8  38 C5 6E 64 */	addi r6, r5, 0x6E64 /* 0x5F656E64@l */
/* 8023BBCC  38 A0 79 61 */	li r5, 0x7961
/* 8023BBD0  38 E0 00 00 */	li r7, 0
/* 8023BBD4  39 00 00 00 */	li r8, 0
/* 8023BBD8  48 01 7D AD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8023BBDC  7C 60 1B 78 */	mr r0, r3
lbl_8023BBE0:
/* 8023BBE0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8023BBE4  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8023BBE8  48 01 9A 21 */	bl hide__13CPaneMgrAlphaFv
/* 8023BBEC  80 7F 00 04 */	lwz r3, 4(r31)
/* 8023BBF0  3C 80 5F 65 */	lis r4, 0x5F65 /* 0x5F656E64@ha */
/* 8023BBF4  38 C4 6E 64 */	addi r6, r4, 0x6E64 /* 0x5F656E64@l */
/* 8023BBF8  3C 80 00 79 */	lis r4, 0x0079 /* 0x0079616A@ha */
/* 8023BBFC  38 A4 61 6A */	addi r5, r4, 0x616A /* 0x0079616A@l */
/* 8023BC00  81 83 00 00 */	lwz r12, 0(r3)
/* 8023BC04  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8023BC08  7D 89 03 A6 */	mtctr r12
/* 8023BC0C  4E 80 04 21 */	bctrl 
/* 8023BC10  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8023BC14  81 83 00 00 */	lwz r12, 0(r3)
/* 8023BC18  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8023BC1C  7D 89 03 A6 */	mtctr r12
/* 8023BC20  4E 80 04 21 */	bctrl 
/* 8023BC24  80 7F 00 04 */	lwz r3, 4(r31)
/* 8023BC28  3C 80 65 6E */	lis r4, 0x656E /* 0x656E646C@ha */
/* 8023BC2C  38 C4 64 6C */	addi r6, r4, 0x646C /* 0x656E646C@l */
/* 8023BC30  3C 80 79 61 */	lis r4, 0x7961 /* 0x79616A69@ha */
/* 8023BC34  38 A4 6A 69 */	addi r5, r4, 0x6A69 /* 0x79616A69@l */
/* 8023BC38  81 83 00 00 */	lwz r12, 0(r3)
/* 8023BC3C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8023BC40  7D 89 03 A6 */	mtctr r12
/* 8023BC44  4E 80 04 21 */	bctrl 
/* 8023BC48  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8023BC4C  81 83 00 00 */	lwz r12, 0(r3)
/* 8023BC50  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8023BC54  7D 89 03 A6 */	mtctr r12
/* 8023BC58  4E 80 04 21 */	bctrl 
/* 8023BC5C  7F E3 FB 78 */	mr r3, r31
/* 8023BC60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023BC64  83 C1 00 08 */	lwz r30, 8(r1)
/* 8023BC68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023BC6C  7C 08 03 A6 */	mtlr r0
/* 8023BC70  38 21 00 10 */	addi r1, r1, 0x10
/* 8023BC74  4E 80 00 20 */	blr 
