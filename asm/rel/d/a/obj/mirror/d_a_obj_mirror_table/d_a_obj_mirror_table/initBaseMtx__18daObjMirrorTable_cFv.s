lbl_80C9AFD0:
/* 80C9AFD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C9AFD4  7C 08 02 A6 */	mflr r0
/* 80C9AFD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C9AFDC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C9AFE0  7C 7F 1B 78 */	mr r31, r3
/* 80C9AFE4  80 63 05 68 */	lwz r3, 0x568(r3)
/* 80C9AFE8  38 03 00 24 */	addi r0, r3, 0x24
/* 80C9AFEC  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C9AFF0  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 80C9AFF4  4B 37 24 35 */	bl play__14mDoExt_baseAnmFv
/* 80C9AFF8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C9AFFC  4B 37 1D 69 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C9B000  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80C9B004  4B 37 1F 41 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C9B008  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9B00C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9B010  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C9B014  38 84 00 24 */	addi r4, r4, 0x24
/* 80C9B018  4B 6A B4 99 */	bl PSMTXCopy
/* 80C9B01C  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80C9B020  28 04 00 00 */	cmplwi r4, 0
/* 80C9B024  41 82 00 14 */	beq lbl_80C9B038
/* 80C9B028  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9B02C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9B030  38 84 00 24 */	addi r4, r4, 0x24
/* 80C9B034  4B 6A B4 7D */	bl PSMTXCopy
lbl_80C9B038:
/* 80C9B038  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80C9B03C  28 04 00 00 */	cmplwi r4, 0
/* 80C9B040  41 82 00 14 */	beq lbl_80C9B054
/* 80C9B044  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9B048  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9B04C  38 84 00 24 */	addi r4, r4, 0x24
/* 80C9B050  4B 6A B4 61 */	bl PSMTXCopy
lbl_80C9B054:
/* 80C9B054  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 80C9B058  28 04 00 00 */	cmplwi r4, 0
/* 80C9B05C  41 82 00 14 */	beq lbl_80C9B070
/* 80C9B060  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9B064  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9B068  38 84 00 24 */	addi r4, r4, 0x24
/* 80C9B06C  4B 6A B4 45 */	bl PSMTXCopy
lbl_80C9B070:
/* 80C9B070  80 9F 05 7C */	lwz r4, 0x57c(r31)
/* 80C9B074  28 04 00 00 */	cmplwi r4, 0
/* 80C9B078  41 82 00 14 */	beq lbl_80C9B08C
/* 80C9B07C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9B080  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9B084  38 84 00 24 */	addi r4, r4, 0x24
/* 80C9B088  4B 6A B4 29 */	bl PSMTXCopy
lbl_80C9B08C:
/* 80C9B08C  38 7F 05 9C */	addi r3, r31, 0x59c
/* 80C9B090  4B 5C D1 45 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C9B094  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C9B098  41 82 00 1C */	beq lbl_80C9B0B4
/* 80C9B09C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9B0A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9B0A4  38 9F 07 DC */	addi r4, r31, 0x7dc
/* 80C9B0A8  4B 6A B4 09 */	bl PSMTXCopy
/* 80C9B0AC  38 7F 05 9C */	addi r3, r31, 0x59c
/* 80C9B0B0  4B 3E 09 11 */	bl Move__4dBgWFv
lbl_80C9B0B4:
/* 80C9B0B4  38 7F 07 1C */	addi r3, r31, 0x71c
/* 80C9B0B8  4B 5C D1 1D */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C9B0BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C9B0C0  41 82 00 1C */	beq lbl_80C9B0DC
/* 80C9B0C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9B0C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9B0CC  38 9F 08 3C */	addi r4, r31, 0x83c
/* 80C9B0D0  4B 6A B3 E1 */	bl PSMTXCopy
/* 80C9B0D4  38 7F 07 1C */	addi r3, r31, 0x71c
/* 80C9B0D8  4B 3E 08 E9 */	bl Move__4dBgWFv
lbl_80C9B0DC:
/* 80C9B0DC  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C9B0E0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80C9B0E4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80C9B0E8  38 63 00 30 */	addi r3, r3, 0x30
/* 80C9B0EC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9B0F0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9B0F4  4B 6A B3 BD */	bl PSMTXCopy
/* 80C9B0F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9B0FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9B100  80 9F 05 6C */	lwz r4, 0x56c(r31)
/* 80C9B104  38 84 00 24 */	addi r4, r4, 0x24
/* 80C9B108  4B 6A B3 A9 */	bl PSMTXCopy
/* 80C9B10C  38 7F 05 9C */	addi r3, r31, 0x59c
/* 80C9B110  4B 5C D0 C5 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C9B114  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C9B118  41 82 00 1C */	beq lbl_80C9B134
/* 80C9B11C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9B120  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9B124  38 9F 08 0C */	addi r4, r31, 0x80c
/* 80C9B128  4B 6A B3 89 */	bl PSMTXCopy
/* 80C9B12C  38 7F 06 5C */	addi r3, r31, 0x65c
/* 80C9B130  4B 3E 08 91 */	bl Move__4dBgWFv
lbl_80C9B134:
/* 80C9B134  80 9F 08 6C */	lwz r4, 0x86c(r31)
/* 80C9B138  28 04 00 00 */	cmplwi r4, 0
/* 80C9B13C  41 82 00 D0 */	beq lbl_80C9B20C
/* 80C9B140  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9B144  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9B148  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 80C9B14C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80C9B150  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80C9B154  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C9B158  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80C9B15C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C9B160  D0 44 00 A4 */	stfs f2, 0xa4(r4)
/* 80C9B164  D0 24 00 A8 */	stfs f1, 0xa8(r4)
/* 80C9B168  D0 04 00 AC */	stfs f0, 0xac(r4)
/* 80C9B16C  88 1F 08 74 */	lbz r0, 0x874(r31)
/* 80C9B170  28 00 00 00 */	cmplwi r0, 0
/* 80C9B174  41 82 00 50 */	beq lbl_80C9B1C4
/* 80C9B178  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802CC@ha */
/* 80C9B17C  38 03 02 CC */	addi r0, r3, 0x02CC /* 0x000802CC@l */
/* 80C9B180  90 01 00 08 */	stw r0, 8(r1)
/* 80C9B184  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C9B188  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C9B18C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9B190  38 81 00 08 */	addi r4, r1, 8
/* 80C9B194  38 A1 00 10 */	addi r5, r1, 0x10
/* 80C9B198  38 C0 00 00 */	li r6, 0
/* 80C9B19C  38 E0 00 00 */	li r7, 0
/* 80C9B1A0  3D 00 80 CA */	lis r8, lit_3850@ha /* 0x80C9B25C@ha */
/* 80C9B1A4  C0 28 B2 5C */	lfs f1, lit_3850@l(r8)  /* 0x80C9B25C@l */
/* 80C9B1A8  FC 40 08 90 */	fmr f2, f1
/* 80C9B1AC  3D 00 80 CA */	lis r8, lit_4350@ha /* 0x80C9B26C@ha */
/* 80C9B1B0  C0 68 B2 6C */	lfs f3, lit_4350@l(r8)  /* 0x80C9B26C@l */
/* 80C9B1B4  FC 80 18 90 */	fmr f4, f3
/* 80C9B1B8  39 00 00 00 */	li r8, 0
/* 80C9B1BC  4B 61 13 51 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C9B1C0  48 00 00 4C */	b lbl_80C9B20C
lbl_80C9B1C4:
/* 80C9B1C4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802F5@ha */
/* 80C9B1C8  38 03 02 F5 */	addi r0, r3, 0x02F5 /* 0x000802F5@l */
/* 80C9B1CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C9B1D0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C9B1D4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C9B1D8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9B1DC  38 81 00 0C */	addi r4, r1, 0xc
/* 80C9B1E0  38 A1 00 10 */	addi r5, r1, 0x10
/* 80C9B1E4  38 C0 00 00 */	li r6, 0
/* 80C9B1E8  38 E0 00 00 */	li r7, 0
/* 80C9B1EC  3D 00 80 CA */	lis r8, lit_3850@ha /* 0x80C9B25C@ha */
/* 80C9B1F0  C0 28 B2 5C */	lfs f1, lit_3850@l(r8)  /* 0x80C9B25C@l */
/* 80C9B1F4  FC 40 08 90 */	fmr f2, f1
/* 80C9B1F8  3D 00 80 CA */	lis r8, lit_4350@ha /* 0x80C9B26C@ha */
/* 80C9B1FC  C0 68 B2 6C */	lfs f3, lit_4350@l(r8)  /* 0x80C9B26C@l */
/* 80C9B200  FC 80 18 90 */	fmr f4, f3
/* 80C9B204  39 00 00 00 */	li r8, 0
/* 80C9B208  4B 61 13 05 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C9B20C:
/* 80C9B20C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C9B210  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C9B214  7C 08 03 A6 */	mtlr r0
/* 80C9B218  38 21 00 30 */	addi r1, r1, 0x30
/* 80C9B21C  4E 80 00 20 */	blr 
