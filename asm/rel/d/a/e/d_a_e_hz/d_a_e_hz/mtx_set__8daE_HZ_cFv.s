lbl_806EF144:
/* 806EF144  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806EF148  7C 08 02 A6 */	mflr r0
/* 806EF14C  90 01 00 24 */	stw r0, 0x24(r1)
/* 806EF150  39 61 00 20 */	addi r11, r1, 0x20
/* 806EF154  4B C7 30 89 */	bl _savegpr_29
/* 806EF158  7C 7E 1B 78 */	mr r30, r3
/* 806EF15C  3C 60 80 6F */	lis r3, lit_3966@ha /* 0x806F0860@ha */
/* 806EF160  3B E3 08 60 */	addi r31, r3, lit_3966@l /* 0x806F0860@l */
/* 806EF164  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806EF168  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806EF16C  C0 3E 04 A8 */	lfs f1, 0x4a8(r30)
/* 806EF170  C0 5E 04 AC */	lfs f2, 0x4ac(r30)
/* 806EF174  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 806EF178  EC 42 00 28 */	fsubs f2, f2, f0
/* 806EF17C  C0 7E 04 B0 */	lfs f3, 0x4b0(r30)
/* 806EF180  4B C5 77 69 */	bl PSMTXTrans
/* 806EF184  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806EF188  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806EF18C  80 9E 05 C4 */	lwz r4, 0x5c4(r30)
/* 806EF190  38 84 00 24 */	addi r4, r4, 0x24
/* 806EF194  4B C5 73 1D */	bl PSMTXCopy
/* 806EF198  88 1E 06 E8 */	lbz r0, 0x6e8(r30)
/* 806EF19C  28 00 00 00 */	cmplwi r0, 0
/* 806EF1A0  40 82 01 10 */	bne lbl_806EF2B0
/* 806EF1A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806EF1A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806EF1AC  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 806EF1B0  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 806EF1B4  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 806EF1B8  4B C5 77 31 */	bl PSMTXTrans
/* 806EF1BC  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 806EF1C0  4B 91 DD 85 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806EF1C4  3C 60 80 6F */	lis r3, l_HIO@ha /* 0x806F0B7C@ha */
/* 806EF1C8  38 63 0B 7C */	addi r3, r3, l_HIO@l /* 0x806F0B7C@l */
/* 806EF1CC  C0 23 00 08 */	lfs f1, 8(r3)
/* 806EF1D0  FC 40 08 90 */	fmr f2, f1
/* 806EF1D4  FC 60 08 90 */	fmr f3, f1
/* 806EF1D8  4B 91 DC 61 */	bl scaleM__14mDoMtx_stack_cFfff
/* 806EF1DC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EF1E0  83 A3 00 04 */	lwz r29, 4(r3)
/* 806EF1E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806EF1E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806EF1EC  38 9D 00 24 */	addi r4, r29, 0x24
/* 806EF1F0  4B C5 72 C1 */	bl PSMTXCopy
/* 806EF1F4  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EF1F8  4B 92 1F F5 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 806EF1FC  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 806EF200  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806EF204  3B A3 01 50 */	addi r29, r3, 0x150
/* 806EF208  7F A3 EB 78 */	mr r3, r29
/* 806EF20C  80 9E 05 C0 */	lwz r4, 0x5c0(r30)
/* 806EF210  38 84 00 24 */	addi r4, r4, 0x24
/* 806EF214  4B C5 72 9D */	bl PSMTXCopy
/* 806EF218  C0 5D 00 2C */	lfs f2, 0x2c(r29)
/* 806EF21C  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 806EF220  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 806EF224  D0 1E 06 84 */	stfs f0, 0x684(r30)
/* 806EF228  D0 3E 06 88 */	stfs f1, 0x688(r30)
/* 806EF22C  D0 5E 06 8C */	stfs f2, 0x68c(r30)
/* 806EF230  88 1E 06 E5 */	lbz r0, 0x6e5(r30)
/* 806EF234  28 00 00 00 */	cmplwi r0, 0
/* 806EF238  41 82 00 50 */	beq lbl_806EF288
/* 806EF23C  38 00 00 00 */	li r0, 0
/* 806EF240  98 1E 06 E5 */	stb r0, 0x6e5(r30)
/* 806EF244  7F A3 EB 78 */	mr r3, r29
/* 806EF248  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806EF24C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806EF250  4B C5 72 61 */	bl PSMTXCopy
/* 806EF254  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806EF258  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806EF25C  38 80 C0 00 */	li r4, -16384
/* 806EF260  4B 91 D2 6D */	bl mDoMtx_ZrotM__FPA4_fs
/* 806EF264  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806EF268  C0 5F 00 A8 */	lfs f2, 0xa8(r31)
/* 806EF26C  FC 60 08 90 */	fmr f3, f1
/* 806EF270  4B 91 DB 2D */	bl transM__14mDoMtx_stack_cFfff
/* 806EF274  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806EF278  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806EF27C  38 9E 0A 84 */	addi r4, r30, 0xa84
/* 806EF280  4B C5 72 31 */	bl PSMTXCopy
/* 806EF284  48 00 00 1C */	b lbl_806EF2A0
lbl_806EF288:
/* 806EF288  38 7E 04 A8 */	addi r3, r30, 0x4a8
/* 806EF28C  4B 91 DA D9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 806EF290  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806EF294  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806EF298  38 9E 0A 84 */	addi r4, r30, 0xa84
/* 806EF29C  4B C5 72 15 */	bl PSMTXCopy
lbl_806EF2A0:
/* 806EF2A0  80 7E 0A B4 */	lwz r3, 0xab4(r30)
/* 806EF2A4  28 03 00 00 */	cmplwi r3, 0
/* 806EF2A8  41 82 00 08 */	beq lbl_806EF2B0
/* 806EF2AC  4B 98 C7 15 */	bl Move__4dBgWFv
lbl_806EF2B0:
/* 806EF2B0  39 61 00 20 */	addi r11, r1, 0x20
/* 806EF2B4  4B C7 2F 75 */	bl _restgpr_29
/* 806EF2B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806EF2BC  7C 08 03 A6 */	mtlr r0
/* 806EF2C0  38 21 00 20 */	addi r1, r1, 0x20
/* 806EF2C4  4E 80 00 20 */	blr 
