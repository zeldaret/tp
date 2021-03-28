lbl_8049FBAC:
/* 8049FBAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049FBB0  7C 08 02 A6 */	mflr r0
/* 8049FBB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049FBB8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8049FBBC  7C 7F 1B 78 */	mr r31, r3
/* 8049FBC0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8049FBC4  4B B6 D1 A0 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8049FBC8  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8049FBCC  4B B6 D3 78 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8049FBD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8049FBD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8049FBD8  80 9F 05 6C */	lwz r4, 0x56c(r31)
/* 8049FBDC  38 84 00 24 */	addi r4, r4, 0x24
/* 8049FBE0  4B EA 68 D0 */	b PSMTXCopy
/* 8049FBE4  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 8049FBE8  4B C0 96 60 */	b simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 8049FBEC  C0 3F 09 8C */	lfs f1, 0x98c(r31)
/* 8049FBF0  3C 60 80 4A */	lis r3, lit_4945@ha
/* 8049FBF4  C0 03 29 10 */	lfs f0, lit_4945@l(r3)
/* 8049FBF8  EC 01 00 2A */	fadds f0, f1, f0
/* 8049FBFC  D0 1F 09 8C */	stfs f0, 0x98c(r31)
/* 8049FC00  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 8049FC04  A8 03 00 06 */	lha r0, 6(r3)
/* 8049FC08  C0 5F 09 8C */	lfs f2, 0x98c(r31)
/* 8049FC0C  3C 60 80 4A */	lis r3, lit_4487@ha
/* 8049FC10  C8 23 28 C0 */	lfd f1, lit_4487@l(r3)
/* 8049FC14  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8049FC18  90 61 00 0C */	stw r3, 0xc(r1)
/* 8049FC1C  3C 00 43 30 */	lis r0, 0x4330
/* 8049FC20  90 01 00 08 */	stw r0, 8(r1)
/* 8049FC24  C8 01 00 08 */	lfd f0, 8(r1)
/* 8049FC28  EC 00 08 28 */	fsubs f0, f0, f1
/* 8049FC2C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8049FC30  4C 41 13 82 */	cror 2, 1, 2
/* 8049FC34  40 82 00 1C */	bne lbl_8049FC50
/* 8049FC38  90 61 00 0C */	stw r3, 0xc(r1)
/* 8049FC3C  90 01 00 08 */	stw r0, 8(r1)
/* 8049FC40  C8 01 00 08 */	lfd f0, 8(r1)
/* 8049FC44  EC 00 08 28 */	fsubs f0, f0, f1
/* 8049FC48  EC 02 00 28 */	fsubs f0, f2, f0
/* 8049FC4C  D0 1F 09 8C */	stfs f0, 0x98c(r31)
lbl_8049FC50:
/* 8049FC50  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 8049FC54  80 83 00 04 */	lwz r4, 4(r3)
/* 8049FC58  38 7F 05 74 */	addi r3, r31, 0x574
/* 8049FC5C  C0 3F 09 8C */	lfs f1, 0x98c(r31)
/* 8049FC60  4B B6 DD 6C */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 8049FC64  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 8049FC68  81 83 00 00 */	lwz r12, 0(r3)
/* 8049FC6C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8049FC70  7D 89 03 A6 */	mtctr r12
/* 8049FC74  4E 80 04 21 */	bctrl 
/* 8049FC78  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8049FC7C  4B B6 D0 E8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8049FC80  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8049FC84  4B B6 D2 C0 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8049FC88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8049FC8C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8049FC90  A8 9F 09 5A */	lha r4, 0x95a(r31)
/* 8049FC94  4B B6 C7 A0 */	b mDoMtx_YrotM__FPA4_fs
/* 8049FC98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8049FC9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8049FCA0  38 80 7F FF */	li r4, 0x7fff
/* 8049FCA4  4B B6 C6 F8 */	b mDoMtx_XrotM__FPA4_fs
/* 8049FCA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8049FCAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8049FCB0  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 8049FCB4  38 84 00 24 */	addi r4, r4, 0x24
/* 8049FCB8  4B EA 67 F8 */	b PSMTXCopy
/* 8049FCBC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8049FCC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049FCC4  7C 08 03 A6 */	mtlr r0
/* 8049FCC8  38 21 00 20 */	addi r1, r1, 0x20
/* 8049FCCC  4E 80 00 20 */	blr 
