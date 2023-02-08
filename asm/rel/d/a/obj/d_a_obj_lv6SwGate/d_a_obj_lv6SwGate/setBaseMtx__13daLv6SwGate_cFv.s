lbl_80C74004:
/* 80C74004  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C74008  7C 08 02 A6 */	mflr r0
/* 80C7400C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C74010  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C74014  7C 7F 1B 78 */	mr r31, r3
/* 80C74018  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7401C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C74020  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C74024  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C74028  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C7402C  4B 6D 28 BD */	bl PSMTXTrans
/* 80C74030  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C74034  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C74038  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C7403C  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C74040  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80C74044  4B 39 82 5D */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80C74048  3C 60 80 C7 */	lis r3, lit_3674@ha /* 0x80C75560@ha */
/* 80C7404C  C0 23 55 60 */	lfs f1, lit_3674@l(r3)  /* 0x80C75560@l */
/* 80C74050  C0 1F 14 C0 */	lfs f0, 0x14c0(r31)
/* 80C74054  EC 21 00 28 */	fsubs f1, f1, f0
/* 80C74058  3C 60 80 C7 */	lis r3, lit_3675@ha /* 0x80C75564@ha */
/* 80C7405C  C0 43 55 64 */	lfs f2, lit_3675@l(r3)  /* 0x80C75564@l */
/* 80C74060  FC 60 10 90 */	fmr f3, f2
/* 80C74064  4B 39 8D 39 */	bl transM__14mDoMtx_stack_cFfff
/* 80C74068  80 7F 14 B4 */	lwz r3, 0x14b4(r31)
/* 80C7406C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C74070  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C74074  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C74078  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C7407C  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C74080  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C74084  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C74088  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7408C  80 9F 14 B4 */	lwz r4, 0x14b4(r31)
/* 80C74090  38 84 00 24 */	addi r4, r4, 0x24
/* 80C74094  4B 6D 24 1D */	bl PSMTXCopy
/* 80C74098  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7409C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C740A0  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80C740A4  4B 6D 24 0D */	bl PSMTXCopy
/* 80C740A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C740AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C740B0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C740B4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C740B8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C740BC  4B 6D 28 2D */	bl PSMTXTrans
/* 80C740C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C740C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C740C8  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C740CC  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C740D0  3C A5 00 01 */	addis r5, r5, 1
/* 80C740D4  38 05 80 00 */	addi r0, r5, -32768
/* 80C740D8  7C 05 07 34 */	extsh r5, r0
/* 80C740DC  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80C740E0  4B 39 81 C1 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80C740E4  3C 60 80 C7 */	lis r3, lit_3674@ha /* 0x80C75560@ha */
/* 80C740E8  C0 23 55 60 */	lfs f1, lit_3674@l(r3)  /* 0x80C75560@l */
/* 80C740EC  C0 1F 14 C0 */	lfs f0, 0x14c0(r31)
/* 80C740F0  EC 21 00 28 */	fsubs f1, f1, f0
/* 80C740F4  3C 60 80 C7 */	lis r3, lit_3675@ha /* 0x80C75564@ha */
/* 80C740F8  C0 43 55 64 */	lfs f2, lit_3675@l(r3)  /* 0x80C75564@l */
/* 80C740FC  FC 60 10 90 */	fmr f3, f2
/* 80C74100  4B 39 8C 9D */	bl transM__14mDoMtx_stack_cFfff
/* 80C74104  80 7F 14 B8 */	lwz r3, 0x14b8(r31)
/* 80C74108  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C7410C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C74110  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C74114  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C74118  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C7411C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C74120  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C74124  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C74128  80 9F 14 B8 */	lwz r4, 0x14b8(r31)
/* 80C7412C  38 84 00 24 */	addi r4, r4, 0x24
/* 80C74130  4B 6D 23 81 */	bl PSMTXCopy
/* 80C74134  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C74138  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7413C  38 9F 14 C8 */	addi r4, r31, 0x14c8
/* 80C74140  4B 6D 23 71 */	bl PSMTXCopy
/* 80C74144  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C74148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7414C  7C 08 03 A6 */	mtlr r0
/* 80C74150  38 21 00 10 */	addi r1, r1, 0x10
/* 80C74154  4E 80 00 20 */	blr 
