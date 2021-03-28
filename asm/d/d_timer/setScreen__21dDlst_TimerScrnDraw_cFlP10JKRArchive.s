lbl_8025DFBC:
/* 8025DFBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025DFC0  7C 08 02 A6 */	mflr r0
/* 8025DFC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025DFC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025DFCC  93 C1 00 08 */	stw r30, 8(r1)
/* 8025DFD0  7C 7F 1B 78 */	mr r31, r3
/* 8025DFD4  90 83 03 C8 */	stw r4, 0x3c8(r3)
/* 8025DFD8  90 A3 00 7C */	stw r5, 0x7c(r3)
/* 8025DFDC  80 03 03 C8 */	lwz r0, 0x3c8(r3)
/* 8025DFE0  2C 00 00 03 */	cmpwi r0, 3
/* 8025DFE4  41 82 00 0C */	beq lbl_8025DFF0
/* 8025DFE8  2C 00 00 04 */	cmpwi r0, 4
/* 8025DFEC  40 82 00 10 */	bne lbl_8025DFFC
lbl_8025DFF0:
/* 8025DFF0  7F E3 FB 78 */	mr r3, r31
/* 8025DFF4  48 00 06 79 */	bl setScreenBoatRace__21dDlst_TimerScrnDraw_cFv
/* 8025DFF8  48 00 00 18 */	b lbl_8025E010
lbl_8025DFFC:
/* 8025DFFC  2C 00 00 08 */	cmpwi r0, 8
/* 8025E000  40 82 00 0C */	bne lbl_8025E00C
/* 8025E004  48 00 08 B5 */	bl setScreenRider__21dDlst_TimerScrnDraw_cFv
/* 8025E008  48 00 00 08 */	b lbl_8025E010
lbl_8025E00C:
/* 8025E00C  48 00 02 35 */	bl setScreenBase__21dDlst_TimerScrnDraw_cFv
lbl_8025E010:
/* 8025E010  7F E3 FB 78 */	mr r3, r31
/* 8025E014  38 80 00 03 */	li r4, 3
/* 8025E018  48 00 1A AD */	bl setShowType__21dDlst_TimerScrnDraw_cFUc
/* 8025E01C  38 60 01 18 */	li r3, 0x118
/* 8025E020  48 07 0C 2D */	bl __nw__FUl
/* 8025E024  7C 60 1B 79 */	or. r0, r3, r3
/* 8025E028  41 82 00 0C */	beq lbl_8025E034
/* 8025E02C  48 09 A4 6D */	bl __ct__9J2DScreenFv
/* 8025E030  7C 60 1B 78 */	mr r0, r3
lbl_8025E034:
/* 8025E034  90 1F 00 08 */	stw r0, 8(r31)
/* 8025E038  80 7F 00 08 */	lwz r3, 8(r31)
/* 8025E03C  3C 80 80 3A */	lis r4, d_d_timer__stringBase0@ha
/* 8025E040  38 84 A3 D8 */	addi r4, r4, d_d_timer__stringBase0@l
/* 8025E044  38 84 00 06 */	addi r4, r4, 6
/* 8025E048  3C A0 00 02 */	lis r5, 2
/* 8025E04C  80 DF 00 7C */	lwz r6, 0x7c(r31)
/* 8025E050  48 09 A5 F9 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 8025E054  80 7F 00 08 */	lwz r3, 8(r31)
/* 8025E058  4B FF 70 91 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 8025E05C  38 60 00 04 */	li r3, 4
/* 8025E060  64 63 00 04 */	oris r3, r3, 4
/* 8025E064  7C 72 E3 A6 */	mtspr 0x392, r3
/* 8025E068  38 60 00 05 */	li r3, 5
/* 8025E06C  64 63 00 05 */	oris r3, r3, 5
/* 8025E070  7C 73 E3 A6 */	mtspr 0x393, r3
/* 8025E074  38 60 00 06 */	li r3, 6
/* 8025E078  64 63 00 06 */	oris r3, r3, 6
/* 8025E07C  7C 74 E3 A6 */	mtspr 0x394, r3
/* 8025E080  38 60 00 07 */	li r3, 7
/* 8025E084  64 63 00 07 */	oris r3, r3, 7
/* 8025E088  7C 75 E3 A6 */	mtspr 0x395, r3
/* 8025E08C  3C 80 80 3A */	lis r4, d_d_timer__stringBase0@ha
/* 8025E090  38 84 A3 D8 */	addi r4, r4, d_d_timer__stringBase0@l
/* 8025E094  38 64 00 26 */	addi r3, r4, 0x26
/* 8025E098  80 9F 00 7C */	lwz r4, 0x7c(r31)
/* 8025E09C  48 07 61 D5 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8025E0A0  48 0A A9 CD */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8025E0A4  90 7F 00 0C */	stw r3, 0xc(r31)
/* 8025E0A8  38 60 00 6C */	li r3, 0x6c
/* 8025E0AC  48 07 0B A1 */	bl __nw__FUl
/* 8025E0B0  7C 60 1B 79 */	or. r0, r3, r3
/* 8025E0B4  41 82 00 28 */	beq lbl_8025E0DC
/* 8025E0B8  80 9F 00 08 */	lwz r4, 8(r31)
/* 8025E0BC  3C A0 69 6E */	lis r5, 0x696E /* 0x696E5F6E@ha */
/* 8025E0C0  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x696E5F6E@l */
/* 8025E0C4  3C A0 67 65 */	lis r5, 0x6765 /* 0x6765745F@ha */
/* 8025E0C8  38 A5 74 5F */	addi r5, r5, 0x745F /* 0x6765745F@l */
/* 8025E0CC  38 E0 00 02 */	li r7, 2
/* 8025E0D0  39 00 00 00 */	li r8, 0
/* 8025E0D4  4B FF 58 B1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8025E0D8  7C 60 1B 78 */	mr r0, r3
lbl_8025E0DC:
/* 8025E0DC  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8025E0E0  38 60 00 6C */	li r3, 0x6c
/* 8025E0E4  48 07 0B 69 */	bl __nw__FUl
/* 8025E0E8  7C 60 1B 79 */	or. r0, r3, r3
/* 8025E0EC  41 82 00 24 */	beq lbl_8025E110
/* 8025E0F0  80 9F 00 08 */	lwz r4, 8(r31)
/* 8025E0F4  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 8025E0F8  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 8025E0FC  38 A0 00 6E */	li r5, 0x6e
/* 8025E100  38 E0 00 00 */	li r7, 0
/* 8025E104  39 00 00 00 */	li r8, 0
/* 8025E108  4B FF 58 7D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8025E10C  7C 60 1B 78 */	mr r0, r3
lbl_8025E110:
/* 8025E110  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8025E114  38 60 00 6C */	li r3, 0x6c
/* 8025E118  48 07 0B 35 */	bl __nw__FUl
/* 8025E11C  7C 60 1B 79 */	or. r0, r3, r3
/* 8025E120  41 82 00 24 */	beq lbl_8025E144
/* 8025E124  80 9F 00 08 */	lwz r4, 8(r31)
/* 8025E128  3C A0 74 5F */	lis r5, 0x745F /* 0x745F696E@ha */
/* 8025E12C  38 C5 69 6E */	addi r6, r5, 0x696E /* 0x745F696E@l */
/* 8025E130  38 A0 67 65 */	li r5, 0x6765
/* 8025E134  38 E0 00 00 */	li r7, 0
/* 8025E138  39 00 00 00 */	li r8, 0
/* 8025E13C  4B FF 58 49 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8025E140  7C 60 1B 78 */	mr r0, r3
lbl_8025E144:
/* 8025E144  90 1F 00 28 */	stw r0, 0x28(r31)
/* 8025E148  4B DB 68 A9 */	bl mDoExt_getMesgFont__Fv
/* 8025E14C  7C 7E 1B 78 */	mr r30, r3
/* 8025E150  80 7F 00 08 */	lwz r3, 8(r31)
/* 8025E154  3C 80 69 6E */	lis r4, 0x696E /* 0x696E5F73@ha */
/* 8025E158  38 C4 5F 73 */	addi r6, r4, 0x5F73 /* 0x696E5F73@l */
/* 8025E15C  3C 80 67 65 */	lis r4, 0x6765 /* 0x6765745F@ha */
/* 8025E160  38 A4 74 5F */	addi r5, r4, 0x745F /* 0x6765745F@l */
/* 8025E164  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E168  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E16C  7D 89 03 A6 */	mtctr r12
/* 8025E170  4E 80 04 21 */	bctrl 
/* 8025E174  7F C4 F3 78 */	mr r4, r30
/* 8025E178  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E17C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8025E180  7D 89 03 A6 */	mtctr r12
/* 8025E184  4E 80 04 21 */	bctrl 
/* 8025E188  4B DB 68 69 */	bl mDoExt_getMesgFont__Fv
/* 8025E18C  7C 7E 1B 78 */	mr r30, r3
/* 8025E190  80 7F 00 08 */	lwz r3, 8(r31)
/* 8025E194  3C 80 74 5F */	lis r4, 0x745F /* 0x745F696E@ha */
/* 8025E198  38 C4 69 6E */	addi r6, r4, 0x696E /* 0x745F696E@l */
/* 8025E19C  38 A0 67 65 */	li r5, 0x6765
/* 8025E1A0  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E1A4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E1A8  7D 89 03 A6 */	mtctr r12
/* 8025E1AC  4E 80 04 21 */	bctrl 
/* 8025E1B0  7F C4 F3 78 */	mr r4, r30
/* 8025E1B4  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E1B8  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8025E1BC  7D 89 03 A6 */	mtctr r12
/* 8025E1C0  4E 80 04 21 */	bctrl 
/* 8025E1C4  38 80 00 00 */	li r4, 0
/* 8025E1C8  C0 02 B5 40 */	lfs f0, lit_3919(r2)
/* 8025E1CC  7C 88 23 78 */	mr r8, r4
/* 8025E1D0  7C 87 23 78 */	mr r7, r4
/* 8025E1D4  7C 86 23 78 */	mr r6, r4
/* 8025E1D8  38 A0 00 FF */	li r5, 0xff
/* 8025E1DC  38 00 00 33 */	li r0, 0x33
/* 8025E1E0  7C 09 03 A6 */	mtctr r0
lbl_8025E1E4:
/* 8025E1E4  7D 3F 22 14 */	add r9, r31, r4
/* 8025E1E8  D0 09 00 80 */	stfs f0, 0x80(r9)
/* 8025E1EC  D0 09 00 84 */	stfs f0, 0x84(r9)
/* 8025E1F0  B1 09 00 88 */	sth r8, 0x88(r9)
/* 8025E1F4  B0 E9 00 8A */	sth r7, 0x8a(r9)
/* 8025E1F8  98 C9 00 8C */	stb r6, 0x8c(r9)
/* 8025E1FC  98 A9 00 8D */	stb r5, 0x8d(r9)
/* 8025E200  38 84 00 10 */	addi r4, r4, 0x10
/* 8025E204  42 00 FF E0 */	bdnz lbl_8025E1E4
/* 8025E208  38 00 00 00 */	li r0, 0
/* 8025E20C  98 1F 03 DC */	stb r0, 0x3dc(r31)
/* 8025E210  7F E3 FB 78 */	mr r3, r31
/* 8025E214  C0 22 B5 40 */	lfs f1, lit_3919(r2)
/* 8025E218  48 00 28 BD */	bl playBckAnimation__21dDlst_TimerScrnDraw_cFf
/* 8025E21C  C0 02 B5 40 */	lfs f0, lit_3919(r2)
/* 8025E220  D0 1F 03 C4 */	stfs f0, 0x3c4(r31)
/* 8025E224  D0 1F 03 C0 */	stfs f0, 0x3c0(r31)
/* 8025E228  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025E22C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8025E230  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025E234  7C 08 03 A6 */	mtlr r0
/* 8025E238  38 21 00 10 */	addi r1, r1, 0x10
/* 8025E23C  4E 80 00 20 */	blr 
