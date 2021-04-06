lbl_80587694:
/* 80587694  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80587698  7C 08 02 A6 */	mflr r0
/* 8058769C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805876A0  39 61 00 40 */	addi r11, r1, 0x40
/* 805876A4  4B DD AB 39 */	bl _savegpr_29
/* 805876A8  7C 7F 1B 78 */	mr r31, r3
/* 805876AC  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 805876B0  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 805876B4  7C 03 00 50 */	subf r0, r3, r0
/* 805876B8  7C 06 07 34 */	extsh r6, r0
/* 805876BC  A8 1F 0A 18 */	lha r0, 0xa18(r31)
/* 805876C0  3C 60 80 58 */	lis r3, lit_4489@ha /* 0x80587E5C@ha */
/* 805876C4  C8 43 7E 5C */	lfd f2, lit_4489@l(r3)  /* 0x80587E5C@l */
/* 805876C8  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 805876CC  90 A1 00 0C */	stw r5, 0xc(r1)
/* 805876D0  3C 00 43 30 */	lis r0, 0x4330
/* 805876D4  90 01 00 08 */	stw r0, 8(r1)
/* 805876D8  C8 01 00 08 */	lfd f0, 8(r1)
/* 805876DC  EC 20 10 28 */	fsubs f1, f0, f2
/* 805876E0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805876E4  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805876E8  54 C6 04 38 */	rlwinm r6, r6, 0, 0x10, 0x1c
/* 805876EC  7C 64 32 14 */	add r3, r4, r6
/* 805876F0  C0 03 00 04 */	lfs f0, 4(r3)
/* 805876F4  EC 01 00 32 */	fmuls f0, f1, f0
/* 805876F8  FC 00 00 1E */	fctiwz f0, f0
/* 805876FC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80587700  83 C1 00 14 */	lwz r30, 0x14(r1)
/* 80587704  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 80587708  90 01 00 18 */	stw r0, 0x18(r1)
/* 8058770C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80587710  EC 20 10 28 */	fsubs f1, f0, f2
/* 80587714  7C 04 34 2E */	lfsx f0, r4, r6
/* 80587718  EC 01 00 32 */	fmuls f0, f1, f0
/* 8058771C  FC 00 00 1E */	fctiwz f0, f0
/* 80587720  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80587724  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80587728  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8058772C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80587730  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80587734  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80587738  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8058773C  4B DB F1 AD */	bl PSMTXTrans
/* 80587740  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80587744  4B A8 58 01 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80587748  88 1F 0A 44 */	lbz r0, 0xa44(r31)
/* 8058774C  28 00 00 00 */	cmplwi r0, 0
/* 80587750  41 82 00 1C */	beq lbl_8058776C
/* 80587754  7C 1D 00 D0 */	neg r0, r29
/* 80587758  7C 04 07 34 */	extsh r4, r0
/* 8058775C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80587760  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80587764  4B A8 4D 69 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80587768  48 00 00 28 */	b lbl_80587790
lbl_8058776C:
/* 8058776C  88 1F 09 D0 */	lbz r0, 0x9d0(r31)
/* 80587770  28 00 00 00 */	cmplwi r0, 0
/* 80587774  40 82 00 0C */	bne lbl_80587780
/* 80587778  7C 1E 00 D0 */	neg r0, r30
/* 8058777C  7C 1E 07 34 */	extsh r30, r0
lbl_80587780:
/* 80587780  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80587784  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80587788  7F C4 F3 78 */	mr r4, r30
/* 8058778C  4B A8 4C A9 */	bl mDoMtx_YrotM__FPA4_fs
lbl_80587790:
/* 80587790  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80587794  4B A8 56 DD */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80587798  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8058779C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805877A0  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 805877A4  38 84 00 24 */	addi r4, r4, 0x24
/* 805877A8  4B DB ED 09 */	bl PSMTXCopy
/* 805877AC  39 61 00 40 */	addi r11, r1, 0x40
/* 805877B0  4B DD AA 79 */	bl _restgpr_29
/* 805877B4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805877B8  7C 08 03 A6 */	mtlr r0
/* 805877BC  38 21 00 40 */	addi r1, r1, 0x40
/* 805877C0  4E 80 00 20 */	blr 
