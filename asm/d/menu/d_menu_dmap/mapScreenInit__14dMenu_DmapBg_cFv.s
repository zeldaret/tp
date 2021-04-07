lbl_801B8110:
/* 801B8110  94 21 FE 30 */	stwu r1, -0x1d0(r1)
/* 801B8114  7C 08 02 A6 */	mflr r0
/* 801B8118  90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 801B811C  39 61 01 D0 */	addi r11, r1, 0x1d0
/* 801B8120  48 1A A0 B1 */	bl _savegpr_26
/* 801B8124  7C 7D 1B 78 */	mr r29, r3
/* 801B8128  3B 40 00 00 */	li r26, 0
/* 801B812C  3B C0 00 00 */	li r30, 0
/* 801B8130  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B8134  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B8138  3C 80 80 39 */	lis r4, d_menu_d_menu_dmap__stringBase0@ha /* 0x80395760@ha */
/* 801B813C  3B 84 57 60 */	addi r28, r4, d_menu_d_menu_dmap__stringBase0@l /* 0x80395760@l */
lbl_801B8140:
/* 801B8140  38 60 01 18 */	li r3, 0x118
/* 801B8144  48 11 6B 09 */	bl __nw__FUl
/* 801B8148  7C 60 1B 79 */	or. r0, r3, r3
/* 801B814C  41 82 00 0C */	beq lbl_801B8158
/* 801B8150  48 14 03 49 */	bl __ct__9J2DScreenFv
/* 801B8154  7C 60 1B 78 */	mr r0, r3
lbl_801B8158:
/* 801B8158  3B 7E 0C A8 */	addi r27, r30, 0xca8
/* 801B815C  7C 1D D9 2E */	stwx r0, r29, r27
/* 801B8160  7C 7D D8 2E */	lwzx r3, r29, r27
/* 801B8164  38 9C 00 19 */	addi r4, r28, 0x19
/* 801B8168  3C A0 00 02 */	lis r5, 2
/* 801B816C  80 DF 5C C0 */	lwz r6, 0x5cc0(r31)
/* 801B8170  48 14 04 D9 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801B8174  7C 7D D8 2E */	lwzx r3, r29, r27
/* 801B8178  48 09 CF 71 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801B817C  3B 5A 00 01 */	addi r26, r26, 1
/* 801B8180  2C 1A 00 02 */	cmpwi r26, 2
/* 801B8184  3B DE 00 04 */	addi r30, r30, 4
/* 801B8188  41 80 FF B8 */	blt lbl_801B8140
/* 801B818C  38 00 00 00 */	li r0, 0
/* 801B8190  90 1D 0C E4 */	stw r0, 0xce4(r29)
/* 801B8194  80 7D 0C A8 */	lwz r3, 0xca8(r29)
/* 801B8198  3C 80 69 63 */	lis r4, 0x6963 /* 0x69636F6E@ha */
/* 801B819C  38 C4 6F 6E */	addi r6, r4, 0x6F6E /* 0x69636F6E@l */
/* 801B81A0  3C 80 6D 61 */	lis r4, 0x6D61 /* 0x6D61705F@ha */
/* 801B81A4  38 A4 70 5F */	addi r5, r4, 0x705F /* 0x6D61705F@l */
/* 801B81A8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B81AC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B81B0  7D 89 03 A6 */	mtctr r12
/* 801B81B4  4E 80 04 21 */	bctrl 
/* 801B81B8  38 00 00 00 */	li r0, 0
/* 801B81BC  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B81C0  80 7D 0C A8 */	lwz r3, 0xca8(r29)
/* 801B81C4  3C 80 61 72 */	lis r4, 0x6172 /* 0x61726961@ha */
/* 801B81C8  38 C4 69 61 */	addi r6, r4, 0x6961 /* 0x61726961@l */
/* 801B81CC  3C 80 6D 61 */	lis r4, 0x6D61 /* 0x6D61705F@ha */
/* 801B81D0  38 A4 70 5F */	addi r5, r4, 0x705F /* 0x6D61705F@l */
/* 801B81D4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B81D8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B81DC  7D 89 03 A6 */	mtctr r12
/* 801B81E0  4E 80 04 21 */	bctrl 
/* 801B81E4  38 00 00 00 */	li r0, 0
/* 801B81E8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B81EC  80 7D 0C A8 */	lwz r3, 0xca8(r29)
/* 801B81F0  3C 80 5F 61 */	lis r4, 0x5F61 /* 0x5F616C6C@ha */
/* 801B81F4  38 C4 6C 6C */	addi r6, r4, 0x6C6C /* 0x5F616C6C@l */
/* 801B81F8  38 A0 00 6E */	li r5, 0x6e
/* 801B81FC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B8200  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B8204  7D 89 03 A6 */	mtctr r12
/* 801B8208  4E 80 04 21 */	bctrl 
/* 801B820C  38 00 00 00 */	li r0, 0
/* 801B8210  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B8214  80 7D 0C AC */	lwz r3, 0xcac(r29)
/* 801B8218  3C 80 5F 61 */	lis r4, 0x5F61 /* 0x5F616C6C@ha */
/* 801B821C  38 C4 6C 6C */	addi r6, r4, 0x6C6C /* 0x5F616C6C@l */
/* 801B8220  38 A0 00 6E */	li r5, 0x6e
/* 801B8224  81 83 00 00 */	lwz r12, 0(r3)
/* 801B8228  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B822C  7D 89 03 A6 */	mtctr r12
/* 801B8230  4E 80 04 21 */	bctrl 
/* 801B8234  38 00 00 00 */	li r0, 0
/* 801B8238  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B823C  80 7D 0C A8 */	lwz r3, 0xca8(r29)
/* 801B8240  3C 80 6C 61 */	lis r4, 0x6C61 /* 0x6C61636B@ha */
/* 801B8244  38 C4 63 6B */	addi r6, r4, 0x636B /* 0x6C61636B@l */
/* 801B8248  3C 80 00 6D */	lis r4, 0x006D /* 0x006D5F62@ha */
/* 801B824C  38 A4 5F 62 */	addi r5, r4, 0x5F62 /* 0x006D5F62@l */
/* 801B8250  81 83 00 00 */	lwz r12, 0(r3)
/* 801B8254  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B8258  7D 89 03 A6 */	mtctr r12
/* 801B825C  4E 80 04 21 */	bctrl 
/* 801B8260  38 00 00 00 */	li r0, 0
/* 801B8264  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B8268  80 7D 0C AC */	lwz r3, 0xcac(r29)
/* 801B826C  3C 80 30 30 */	lis r4, 0x3030 /* 0x30305F30@ha */
/* 801B8270  38 C4 5F 30 */	addi r6, r4, 0x5F30 /* 0x30305F30@l */
/* 801B8274  3C 80 00 62 */	lis r4, 0x0062 /* 0x0062735F@ha */
/* 801B8278  38 A4 73 5F */	addi r5, r4, 0x735F /* 0x0062735F@l */
/* 801B827C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B8280  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B8284  7D 89 03 A6 */	mtctr r12
/* 801B8288  4E 80 04 21 */	bctrl 
/* 801B828C  38 00 00 00 */	li r0, 0
/* 801B8290  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B8294  80 7D 0C AC */	lwz r3, 0xcac(r29)
/* 801B8298  3C 80 30 30 */	lis r4, 0x3030 /* 0x30305F31@ha */
/* 801B829C  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x30305F31@l */
/* 801B82A0  3C 80 00 62 */	lis r4, 0x0062 /* 0x0062735F@ha */
/* 801B82A4  38 A4 73 5F */	addi r5, r4, 0x735F /* 0x0062735F@l */
/* 801B82A8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B82AC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B82B0  7D 89 03 A6 */	mtctr r12
/* 801B82B4  4E 80 04 21 */	bctrl 
/* 801B82B8  38 00 00 00 */	li r0, 0
/* 801B82BC  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B82C0  80 7D 0C AC */	lwz r3, 0xcac(r29)
/* 801B82C4  3C 80 30 30 */	lis r4, 0x3030 /* 0x30305F30@ha */
/* 801B82C8  38 C4 5F 30 */	addi r6, r4, 0x5F30 /* 0x30305F30@l */
/* 801B82CC  3C 80 67 6F */	lis r4, 0x676F /* 0x676F6C64@ha */
/* 801B82D0  38 A4 6C 64 */	addi r5, r4, 0x6C64 /* 0x676F6C64@l */
/* 801B82D4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B82D8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B82DC  7D 89 03 A6 */	mtctr r12
/* 801B82E0  4E 80 04 21 */	bctrl 
/* 801B82E4  38 00 00 00 */	li r0, 0
/* 801B82E8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B82EC  80 7D 0C AC */	lwz r3, 0xcac(r29)
/* 801B82F0  3C 80 30 30 */	lis r4, 0x3030 /* 0x30305F31@ha */
/* 801B82F4  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x30305F31@l */
/* 801B82F8  3C 80 67 6F */	lis r4, 0x676F /* 0x676F6C64@ha */
/* 801B82FC  38 A4 6C 64 */	addi r5, r4, 0x6C64 /* 0x676F6C64@l */
/* 801B8300  81 83 00 00 */	lwz r12, 0(r3)
/* 801B8304  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B8308  7D 89 03 A6 */	mtctr r12
/* 801B830C  4E 80 04 21 */	bctrl 
/* 801B8310  38 00 00 00 */	li r0, 0
/* 801B8314  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B8318  80 7D 0C AC */	lwz r3, 0xcac(r29)
/* 801B831C  3C 80 6C 61 */	lis r4, 0x6C61 /* 0x6C61636B@ha */
/* 801B8320  38 C4 63 6B */	addi r6, r4, 0x636B /* 0x6C61636B@l */
/* 801B8324  3C 80 00 6D */	lis r4, 0x006D /* 0x006D5F62@ha */
/* 801B8328  38 A4 5F 62 */	addi r5, r4, 0x5F62 /* 0x006D5F62@l */
/* 801B832C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B8330  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B8334  7D 89 03 A6 */	mtctr r12
/* 801B8338  4E 80 04 21 */	bctrl 
/* 801B833C  38 00 00 00 */	li r0, 0
/* 801B8340  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B8344  80 7D 0C AC */	lwz r3, 0xcac(r29)
/* 801B8348  3C 80 65 72 */	lis r4, 0x6572 /* 0x65725F6E@ha */
/* 801B834C  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x65725F6E@l */
/* 801B8350  3C 80 63 65 */	lis r4, 0x6365 /* 0x63656E74@ha */
/* 801B8354  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x63656E74@l */
/* 801B8358  81 83 00 00 */	lwz r12, 0(r3)
/* 801B835C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B8360  7D 89 03 A6 */	mtctr r12
/* 801B8364  4E 80 04 21 */	bctrl 
/* 801B8368  38 00 00 00 */	li r0, 0
/* 801B836C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B8370  80 7D 0C AC */	lwz r3, 0xcac(r29)
/* 801B8374  3C 80 61 69 */	lis r4, 0x6169 /* 0x61695F6E@ha */
/* 801B8378  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x61695F6E@l */
/* 801B837C  3C 80 6D 61 */	lis r4, 0x6D61 /* 0x6D61705F@ha */
/* 801B8380  38 A4 70 5F */	addi r5, r4, 0x705F /* 0x6D61705F@l */
/* 801B8384  81 83 00 00 */	lwz r12, 0(r3)
/* 801B8388  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B838C  7D 89 03 A6 */	mtctr r12
/* 801B8390  4E 80 04 21 */	bctrl 
/* 801B8394  38 80 00 00 */	li r4, 0
/* 801B8398  48 13 F3 61 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801B839C  80 7D 0C A8 */	lwz r3, 0xca8(r29)
/* 801B83A0  3C 80 65 72 */	lis r4, 0x6572 /* 0x65725F6E@ha */
/* 801B83A4  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x65725F6E@l */
/* 801B83A8  3C 80 63 65 */	lis r4, 0x6365 /* 0x63656E74@ha */
/* 801B83AC  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x63656E74@l */
/* 801B83B0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B83B4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B83B8  7D 89 03 A6 */	mtctr r12
/* 801B83BC  4E 80 04 21 */	bctrl 
/* 801B83C0  38 80 00 04 */	li r4, 4
/* 801B83C4  48 13 F3 35 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801B83C8  38 60 00 04 */	li r3, 4
/* 801B83CC  64 63 00 04 */	oris r3, r3, 4
/* 801B83D0  7C 72 E3 A6 */	mtspr 0x392, r3
/* 801B83D4  38 60 00 05 */	li r3, 5
/* 801B83D8  64 63 00 05 */	oris r3, r3, 5
/* 801B83DC  7C 73 E3 A6 */	mtspr 0x393, r3
/* 801B83E0  38 60 00 06 */	li r3, 6
/* 801B83E4  64 63 00 06 */	oris r3, r3, 6
/* 801B83E8  7C 74 E3 A6 */	mtspr 0x394, r3
/* 801B83EC  38 60 00 07 */	li r3, 7
/* 801B83F0  64 63 00 07 */	oris r3, r3, 7
/* 801B83F4  7C 75 E3 A6 */	mtspr 0x395, r3
/* 801B83F8  38 61 01 4C */	addi r3, r1, 0x14c
/* 801B83FC  48 09 B5 35 */	bl __ct__8CPaneMgrFv
/* 801B8400  80 7D 0C AC */	lwz r3, 0xcac(r29)
/* 801B8404  3C 80 69 63 */	lis r4, 0x6963 /* 0x69636F6E@ha */
/* 801B8408  38 C4 6F 6E */	addi r6, r4, 0x6F6E /* 0x69636F6E@l */
/* 801B840C  3C 80 6D 61 */	lis r4, 0x6D61 /* 0x6D61705F@ha */
/* 801B8410  38 A4 70 5F */	addi r5, r4, 0x705F /* 0x6D61705F@l */
/* 801B8414  81 83 00 00 */	lwz r12, 0(r3)
/* 801B8418  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B841C  7D 89 03 A6 */	mtctr r12
/* 801B8420  4E 80 04 21 */	bctrl 
/* 801B8424  7C 65 1B 78 */	mr r5, r3
/* 801B8428  38 61 00 50 */	addi r3, r1, 0x50
/* 801B842C  38 81 01 4C */	addi r4, r1, 0x14c
/* 801B8430  38 C1 00 B0 */	addi r6, r1, 0xb0
/* 801B8434  38 E0 00 00 */	li r7, 0
/* 801B8438  39 00 00 00 */	li r8, 0
/* 801B843C  39 20 00 00 */	li r9, 0
/* 801B8440  48 09 C8 51 */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 801B8444  80 81 00 50 */	lwz r4, 0x50(r1)
/* 801B8448  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801B844C  90 81 00 74 */	stw r4, 0x74(r1)
/* 801B8450  90 01 00 78 */	stw r0, 0x78(r1)
/* 801B8454  80 01 00 58 */	lwz r0, 0x58(r1)
/* 801B8458  90 01 00 7C */	stw r0, 0x7c(r1)
/* 801B845C  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 801B8460  D0 1D 0D C0 */	stfs f0, 0xdc0(r29)
/* 801B8464  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 801B8468  D0 1D 0D C4 */	stfs f0, 0xdc4(r29)
/* 801B846C  38 61 01 4C */	addi r3, r1, 0x14c
/* 801B8470  38 80 FF FF */	li r4, -1
/* 801B8474  48 09 B5 A5 */	bl __dt__8CPaneMgrFv
/* 801B8478  3B 40 00 00 */	li r26, 0
/* 801B847C  3B C0 00 00 */	li r30, 0
/* 801B8480  3F 80 52 4F */	lis r28, 0x524f
lbl_801B8484:
/* 801B8484  38 60 00 2C */	li r3, 0x2c
/* 801B8488  48 11 67 C5 */	bl __nw__FUl
/* 801B848C  7C 64 1B 79 */	or. r4, r3, r3
/* 801B8490  41 82 00 24 */	beq lbl_801B84B4
/* 801B8494  38 1E 0C A8 */	addi r0, r30, 0xca8
/* 801B8498  7C 9D 00 2E */	lwzx r4, r29, r0
/* 801B849C  38 DC 4F 54 */	addi r6, r28, 0x4f54
/* 801B84A0  38 A0 00 00 */	li r5, 0
/* 801B84A4  38 E0 00 02 */	li r7, 2
/* 801B84A8  39 00 00 00 */	li r8, 0
/* 801B84AC  48 09 D7 BD */	bl __ct__17CPaneMgrAlphaMorfFP9J2DScreenUxUcP10JKRExpHeap
/* 801B84B0  7C 64 1B 78 */	mr r4, r3
lbl_801B84B4:
/* 801B84B4  38 1E 0C D0 */	addi r0, r30, 0xcd0
/* 801B84B8  7C 9D 01 2E */	stwx r4, r29, r0
/* 801B84BC  3B 5A 00 01 */	addi r26, r26, 1
/* 801B84C0  2C 1A 00 02 */	cmpwi r26, 2
/* 801B84C4  3B DE 00 04 */	addi r30, r30, 4
/* 801B84C8  41 80 FF BC */	blt lbl_801B8484
/* 801B84CC  3C 80 80 39 */	lis r4, d_menu_d_menu_dmap__stringBase0@ha /* 0x80395760@ha */
/* 801B84D0  38 84 57 60 */	addi r4, r4, d_menu_d_menu_dmap__stringBase0@l /* 0x80395760@l */
/* 801B84D4  38 64 00 33 */	addi r3, r4, 0x33
/* 801B84D8  80 9F 5C C0 */	lwz r4, 0x5cc0(r31)
/* 801B84DC  48 11 BD 95 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 801B84E0  48 15 05 8D */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 801B84E4  90 7D 0D 28 */	stw r3, 0xd28(r29)
/* 801B84E8  80 7D 0D 28 */	lwz r3, 0xd28(r29)
/* 801B84EC  80 9D 0C A8 */	lwz r4, 0xca8(r29)
/* 801B84F0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B84F4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801B84F8  7D 89 03 A6 */	mtctr r12
/* 801B84FC  4E 80 04 21 */	bctrl 
/* 801B8500  C0 02 A5 E8 */	lfs f0, lit_3962(r2)
/* 801B8504  D0 1D 0D C8 */	stfs f0, 0xdc8(r29)
/* 801B8508  C0 1D 0D C8 */	lfs f0, 0xdc8(r29)
/* 801B850C  80 9D 0D 28 */	lwz r4, 0xd28(r29)
/* 801B8510  D0 04 00 08 */	stfs f0, 8(r4)
/* 801B8514  80 7D 0C A8 */	lwz r3, 0xca8(r29)
/* 801B8518  48 14 11 79 */	bl animation__9J2DScreenFv
/* 801B851C  7F A3 EB 78 */	mr r3, r29
/* 801B8520  38 80 00 01 */	li r4, 1
/* 801B8524  48 00 21 DD */	bl setGoldAnimation__14dMenu_DmapBg_cFb
/* 801B8528  80 7D 0C AC */	lwz r3, 0xcac(r29)
/* 801B852C  3C 80 61 72 */	lis r4, 0x6172 /* 0x61726961@ha */
/* 801B8530  38 C4 69 61 */	addi r6, r4, 0x6961 /* 0x61726961@l */
/* 801B8534  3C 80 6D 61 */	lis r4, 0x6D61 /* 0x6D61705F@ha */
/* 801B8538  38 A4 70 5F */	addi r5, r4, 0x705F /* 0x6D61705F@l */
/* 801B853C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B8540  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B8544  7D 89 03 A6 */	mtctr r12
/* 801B8548  4E 80 04 21 */	bctrl 
/* 801B854C  90 7D 0C C4 */	stw r3, 0xcc4(r29)
/* 801B8550  38 80 00 FF */	li r4, 0xff
/* 801B8554  98 81 00 34 */	stb r4, 0x34(r1)
/* 801B8558  98 81 00 35 */	stb r4, 0x35(r1)
/* 801B855C  98 81 00 36 */	stb r4, 0x36(r1)
/* 801B8560  98 81 00 37 */	stb r4, 0x37(r1)
/* 801B8564  80 BD 0C C4 */	lwz r5, 0xcc4(r29)
/* 801B8568  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801B856C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B8570  90 01 00 20 */	stw r0, 0x20(r1)
/* 801B8574  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801B8578  90 01 00 18 */	stw r0, 0x18(r1)
/* 801B857C  88 01 00 18 */	lbz r0, 0x18(r1)
/* 801B8580  98 05 01 38 */	stb r0, 0x138(r5)
/* 801B8584  88 01 00 19 */	lbz r0, 0x19(r1)
/* 801B8588  98 05 01 39 */	stb r0, 0x139(r5)
/* 801B858C  88 01 00 1A */	lbz r0, 0x1a(r1)
/* 801B8590  98 05 01 3A */	stb r0, 0x13a(r5)
/* 801B8594  88 01 00 1B */	lbz r0, 0x1b(r1)
/* 801B8598  98 05 01 3B */	stb r0, 0x13b(r5)
/* 801B859C  88 01 00 1C */	lbz r0, 0x1c(r1)
/* 801B85A0  98 05 01 3C */	stb r0, 0x13c(r5)
/* 801B85A4  88 01 00 1D */	lbz r0, 0x1d(r1)
/* 801B85A8  98 05 01 3D */	stb r0, 0x13d(r5)
/* 801B85AC  88 01 00 1E */	lbz r0, 0x1e(r1)
/* 801B85B0  98 05 01 3E */	stb r0, 0x13e(r5)
/* 801B85B4  88 01 00 1F */	lbz r0, 0x1f(r1)
/* 801B85B8  98 05 01 3F */	stb r0, 0x13f(r5)
/* 801B85BC  88 01 00 20 */	lbz r0, 0x20(r1)
/* 801B85C0  98 05 01 40 */	stb r0, 0x140(r5)
/* 801B85C4  88 01 00 21 */	lbz r0, 0x21(r1)
/* 801B85C8  98 05 01 41 */	stb r0, 0x141(r5)
/* 801B85CC  88 01 00 22 */	lbz r0, 0x22(r1)
/* 801B85D0  98 05 01 42 */	stb r0, 0x142(r5)
/* 801B85D4  88 01 00 23 */	lbz r0, 0x23(r1)
/* 801B85D8  98 05 01 43 */	stb r0, 0x143(r5)
/* 801B85DC  88 01 00 24 */	lbz r0, 0x24(r1)
/* 801B85E0  98 05 01 44 */	stb r0, 0x144(r5)
/* 801B85E4  88 01 00 25 */	lbz r0, 0x25(r1)
/* 801B85E8  98 05 01 45 */	stb r0, 0x145(r5)
/* 801B85EC  88 01 00 26 */	lbz r0, 0x26(r1)
/* 801B85F0  98 05 01 46 */	stb r0, 0x146(r5)
/* 801B85F4  88 01 00 27 */	lbz r0, 0x27(r1)
/* 801B85F8  98 05 01 47 */	stb r0, 0x147(r5)
/* 801B85FC  98 81 00 2C */	stb r4, 0x2c(r1)
/* 801B8600  98 81 00 2D */	stb r4, 0x2d(r1)
/* 801B8604  98 81 00 2E */	stb r4, 0x2e(r1)
/* 801B8608  98 81 00 2F */	stb r4, 0x2f(r1)
/* 801B860C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 801B8610  90 01 00 30 */	stw r0, 0x30(r1)
/* 801B8614  80 7D 0C C4 */	lwz r3, 0xcc4(r29)
/* 801B8618  38 81 00 30 */	addi r4, r1, 0x30
/* 801B861C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B8620  81 8C 01 2C */	lwz r12, 0x12c(r12)
/* 801B8624  7D 89 03 A6 */	mtctr r12
/* 801B8628  4E 80 04 21 */	bctrl 
/* 801B862C  38 61 00 E0 */	addi r3, r1, 0xe0
/* 801B8630  48 09 B3 01 */	bl __ct__8CPaneMgrFv
/* 801B8634  38 61 00 44 */	addi r3, r1, 0x44
/* 801B8638  38 81 00 E0 */	addi r4, r1, 0xe0
/* 801B863C  80 BD 0C C4 */	lwz r5, 0xcc4(r29)
/* 801B8640  38 C1 00 80 */	addi r6, r1, 0x80
/* 801B8644  38 E0 00 00 */	li r7, 0
/* 801B8648  39 00 00 00 */	li r8, 0
/* 801B864C  39 20 00 00 */	li r9, 0
/* 801B8650  48 09 C6 41 */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 801B8654  80 81 00 44 */	lwz r4, 0x44(r1)
/* 801B8658  80 01 00 48 */	lwz r0, 0x48(r1)
/* 801B865C  90 81 00 68 */	stw r4, 0x68(r1)
/* 801B8660  90 01 00 6C */	stw r0, 0x6c(r1)
/* 801B8664  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 801B8668  90 01 00 70 */	stw r0, 0x70(r1)
/* 801B866C  38 61 00 38 */	addi r3, r1, 0x38
/* 801B8670  38 81 00 E0 */	addi r4, r1, 0xe0
/* 801B8674  80 BD 0C C4 */	lwz r5, 0xcc4(r29)
/* 801B8678  38 C1 00 80 */	addi r6, r1, 0x80
/* 801B867C  38 E0 00 03 */	li r7, 3
/* 801B8680  39 00 00 00 */	li r8, 0
/* 801B8684  39 20 00 00 */	li r9, 0
/* 801B8688  48 09 C6 09 */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 801B868C  80 81 00 38 */	lwz r4, 0x38(r1)
/* 801B8690  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 801B8694  90 81 00 5C */	stw r4, 0x5c(r1)
/* 801B8698  90 01 00 60 */	stw r0, 0x60(r1)
/* 801B869C  80 01 00 40 */	lwz r0, 0x40(r1)
/* 801B86A0  90 01 00 64 */	stw r0, 0x64(r1)
/* 801B86A4  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 801B86A8  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 801B86AC  EC 01 00 28 */	fsubs f0, f1, f0
/* 801B86B0  D0 1D 0D A0 */	stfs f0, 0xda0(r29)
/* 801B86B4  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 801B86B8  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 801B86BC  EC 01 00 28 */	fsubs f0, f1, f0
/* 801B86C0  D0 1D 0D A4 */	stfs f0, 0xda4(r29)
/* 801B86C4  80 7D 0C AC */	lwz r3, 0xcac(r29)
/* 801B86C8  3C 80 69 63 */	lis r4, 0x6963 /* 0x69636F6E@ha */
/* 801B86CC  38 C4 6F 6E */	addi r6, r4, 0x6F6E /* 0x69636F6E@l */
/* 801B86D0  3C 80 6D 61 */	lis r4, 0x6D61 /* 0x6D61705F@ha */
/* 801B86D4  38 A4 70 5F */	addi r5, r4, 0x705F /* 0x6D61705F@l */
/* 801B86D8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B86DC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B86E0  7D 89 03 A6 */	mtctr r12
/* 801B86E4  4E 80 04 21 */	bctrl 
/* 801B86E8  7C 7E 1B 78 */	mr r30, r3
/* 801B86EC  38 80 00 04 */	li r4, 4
/* 801B86F0  48 13 F0 09 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801B86F4  38 00 00 FF */	li r0, 0xff
/* 801B86F8  98 01 00 28 */	stb r0, 0x28(r1)
/* 801B86FC  98 01 00 29 */	stb r0, 0x29(r1)
/* 801B8700  98 01 00 2A */	stb r0, 0x2a(r1)
/* 801B8704  98 01 00 2B */	stb r0, 0x2b(r1)
/* 801B8708  80 01 00 28 */	lwz r0, 0x28(r1)
/* 801B870C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B8710  90 01 00 10 */	stw r0, 0x10(r1)
/* 801B8714  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B8718  90 01 00 08 */	stw r0, 8(r1)
/* 801B871C  88 01 00 08 */	lbz r0, 8(r1)
/* 801B8720  98 1E 01 38 */	stb r0, 0x138(r30)
/* 801B8724  88 01 00 09 */	lbz r0, 9(r1)
/* 801B8728  98 1E 01 39 */	stb r0, 0x139(r30)
/* 801B872C  88 01 00 0A */	lbz r0, 0xa(r1)
/* 801B8730  98 1E 01 3A */	stb r0, 0x13a(r30)
/* 801B8734  88 01 00 0B */	lbz r0, 0xb(r1)
/* 801B8738  98 1E 01 3B */	stb r0, 0x13b(r30)
/* 801B873C  88 01 00 0C */	lbz r0, 0xc(r1)
/* 801B8740  98 1E 01 3C */	stb r0, 0x13c(r30)
/* 801B8744  88 01 00 0D */	lbz r0, 0xd(r1)
/* 801B8748  98 1E 01 3D */	stb r0, 0x13d(r30)
/* 801B874C  88 01 00 0E */	lbz r0, 0xe(r1)
/* 801B8750  98 1E 01 3E */	stb r0, 0x13e(r30)
/* 801B8754  88 01 00 0F */	lbz r0, 0xf(r1)
/* 801B8758  98 1E 01 3F */	stb r0, 0x13f(r30)
/* 801B875C  88 01 00 10 */	lbz r0, 0x10(r1)
/* 801B8760  98 1E 01 40 */	stb r0, 0x140(r30)
/* 801B8764  88 01 00 11 */	lbz r0, 0x11(r1)
/* 801B8768  98 1E 01 41 */	stb r0, 0x141(r30)
/* 801B876C  88 01 00 12 */	lbz r0, 0x12(r1)
/* 801B8770  98 1E 01 42 */	stb r0, 0x142(r30)
/* 801B8774  88 01 00 13 */	lbz r0, 0x13(r1)
/* 801B8778  98 1E 01 43 */	stb r0, 0x143(r30)
/* 801B877C  88 01 00 14 */	lbz r0, 0x14(r1)
/* 801B8780  98 1E 01 44 */	stb r0, 0x144(r30)
/* 801B8784  88 01 00 15 */	lbz r0, 0x15(r1)
/* 801B8788  98 1E 01 45 */	stb r0, 0x145(r30)
/* 801B878C  88 01 00 16 */	lbz r0, 0x16(r1)
/* 801B8790  98 1E 01 46 */	stb r0, 0x146(r30)
/* 801B8794  88 01 00 17 */	lbz r0, 0x17(r1)
/* 801B8798  98 1E 01 47 */	stb r0, 0x147(r30)
/* 801B879C  7F C3 F3 78 */	mr r3, r30
/* 801B87A0  38 80 00 00 */	li r4, 0
/* 801B87A4  81 9E 00 00 */	lwz r12, 0(r30)
/* 801B87A8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801B87AC  7D 89 03 A6 */	mtctr r12
/* 801B87B0  4E 80 04 21 */	bctrl 
/* 801B87B4  38 7D 00 04 */	addi r3, r29, 4
/* 801B87B8  80 9F 5C C0 */	lwz r4, 0x5cc0(r31)
/* 801B87BC  48 00 A1 1D */	bl initiate__16dMenuMapCommon_cFP10JKRArchive
/* 801B87C0  3B 40 00 00 */	li r26, 0
/* 801B87C4  3B C0 00 00 */	li r30, 0
lbl_801B87C8:
/* 801B87C8  38 60 00 6C */	li r3, 0x6c
/* 801B87CC  48 11 64 81 */	bl __nw__FUl
/* 801B87D0  7C 60 1B 79 */	or. r0, r3, r3
/* 801B87D4  41 82 00 2C */	beq lbl_801B8800
/* 801B87D8  38 1E 0C A8 */	addi r0, r30, 0xca8
/* 801B87DC  7C 9D 00 2E */	lwzx r4, r29, r0
/* 801B87E0  3C A0 70 61 */	lis r5, 0x7061 /* 0x70616365@ha */
/* 801B87E4  38 C5 63 65 */	addi r6, r5, 0x6365 /* 0x70616365@l */
/* 801B87E8  3C A0 6D 61 */	lis r5, 0x6D61 /* 0x6D617073@ha */
/* 801B87EC  38 A5 70 73 */	addi r5, r5, 0x7073 /* 0x6D617073@l */
/* 801B87F0  38 E0 00 00 */	li r7, 0
/* 801B87F4  39 00 00 00 */	li r8, 0
/* 801B87F8  48 09 B1 8D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801B87FC  7C 60 1B 78 */	mr r0, r3
lbl_801B8800:
/* 801B8800  38 9E 0D 00 */	addi r4, r30, 0xd00
/* 801B8804  7C 1D 21 2E */	stwx r0, r29, r4
/* 801B8808  7C 7D 20 2E */	lwzx r3, r29, r4
/* 801B880C  C0 22 A5 E8 */	lfs f1, lit_3962(r2)
/* 801B8810  C0 42 A5 F0 */	lfs f2, lit_4073(r2)
/* 801B8814  48 09 BD 9D */	bl paneTrans__8CPaneMgrFff
/* 801B8818  3B 5A 00 01 */	addi r26, r26, 1
/* 801B881C  2C 1A 00 02 */	cmpwi r26, 2
/* 801B8820  3B DE 00 04 */	addi r30, r30, 4
/* 801B8824  41 80 FF A4 */	blt lbl_801B87C8
/* 801B8828  38 61 00 E0 */	addi r3, r1, 0xe0
/* 801B882C  38 80 FF FF */	li r4, -1
/* 801B8830  48 09 B1 E9 */	bl __dt__8CPaneMgrFv
/* 801B8834  39 61 01 D0 */	addi r11, r1, 0x1d0
/* 801B8838  48 1A 99 E5 */	bl _restgpr_26
/* 801B883C  80 01 01 D4 */	lwz r0, 0x1d4(r1)
/* 801B8840  7C 08 03 A6 */	mtlr r0
/* 801B8844  38 21 01 D0 */	addi r1, r1, 0x1d0
/* 801B8848  4E 80 00 20 */	blr 
