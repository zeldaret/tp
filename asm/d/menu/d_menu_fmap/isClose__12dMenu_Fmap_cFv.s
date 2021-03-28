lbl_801CB038:
/* 801CB038  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801CB03C  7C 08 02 A6 */	mflr r0
/* 801CB040  90 01 00 34 */	stw r0, 0x34(r1)
/* 801CB044  39 61 00 30 */	addi r11, r1, 0x30
/* 801CB048  48 19 71 95 */	bl _savegpr_29
/* 801CB04C  7C 7D 1B 78 */	mr r29, r3
/* 801CB050  3B E0 00 01 */	li r31, 1
/* 801CB054  3B C0 00 00 */	li r30, 0
/* 801CB058  3C 60 80 43 */	lis r3, g_fmapHIO@ha
/* 801CB05C  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l
/* 801CB060  A8 83 00 96 */	lha r4, 0x96(r3)
/* 801CB064  A8 1D 02 12 */	lha r0, 0x212(r29)
/* 801CB068  7C 00 20 00 */	cmpw r0, r4
/* 801CB06C  40 82 00 08 */	bne lbl_801CB074
/* 801CB070  3B C0 00 01 */	li r30, 1
lbl_801CB074:
/* 801CB074  A8 7D 02 12 */	lha r3, 0x212(r29)
/* 801CB078  38 03 FF FF */	addi r0, r3, -1
/* 801CB07C  B0 1D 02 12 */	sth r0, 0x212(r29)
/* 801CB080  A8 BD 02 12 */	lha r5, 0x212(r29)
/* 801CB084  C8 42 A7 40 */	lfd f2, lit_4358(r2)
/* 801CB088  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 801CB08C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801CB090  3C 60 43 30 */	lis r3, 0x4330
/* 801CB094  90 61 00 08 */	stw r3, 8(r1)
/* 801CB098  C8 01 00 08 */	lfd f0, 8(r1)
/* 801CB09C  EC 20 10 28 */	fsubs f1, f0, f2
/* 801CB0A0  7C 80 07 34 */	extsh r0, r4
/* 801CB0A4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801CB0A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CB0AC  90 61 00 10 */	stw r3, 0x10(r1)
/* 801CB0B0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801CB0B4  EC 00 10 28 */	fsubs f0, f0, f2
/* 801CB0B8  EC 41 00 24 */	fdivs f2, f1, f0
/* 801CB0BC  7C A0 07 35 */	extsh. r0, r5
/* 801CB0C0  41 81 00 10 */	bgt lbl_801CB0D0
/* 801CB0C4  38 00 00 00 */	li r0, 0
/* 801CB0C8  B0 1D 02 12 */	sth r0, 0x212(r29)
/* 801CB0CC  48 00 00 08 */	b lbl_801CB0D4
lbl_801CB0D0:
/* 801CB0D0  3B E0 00 00 */	li r31, 0
lbl_801CB0D4:
/* 801CB0D4  88 1D 03 04 */	lbz r0, 0x304(r29)
/* 801CB0D8  28 00 00 01 */	cmplwi r0, 1
/* 801CB0DC  40 82 00 24 */	bne lbl_801CB100
/* 801CB0E0  C0 22 A7 30 */	lfs f1, lit_4160(r2)
/* 801CB0E4  C0 02 A7 24 */	lfs f0, lit_3995(r2)
/* 801CB0E8  EC 00 10 28 */	fsubs f0, f0, f2
/* 801CB0EC  EC 01 00 32 */	fmuls f0, f1, f0
/* 801CB0F0  D0 1D 01 1C */	stfs f0, 0x11c(r29)
/* 801CB0F4  C0 02 A7 28 */	lfs f0, lit_4158(r2)
/* 801CB0F8  D0 1D 01 20 */	stfs f0, 0x120(r29)
/* 801CB0FC  48 00 00 78 */	b lbl_801CB174
lbl_801CB100:
/* 801CB100  28 00 00 03 */	cmplwi r0, 3
/* 801CB104  40 82 00 24 */	bne lbl_801CB128
/* 801CB108  C0 22 A7 2C */	lfs f1, lit_4159(r2)
/* 801CB10C  C0 02 A7 24 */	lfs f0, lit_3995(r2)
/* 801CB110  EC 00 10 28 */	fsubs f0, f0, f2
/* 801CB114  EC 01 00 32 */	fmuls f0, f1, f0
/* 801CB118  D0 1D 01 1C */	stfs f0, 0x11c(r29)
/* 801CB11C  C0 02 A7 28 */	lfs f0, lit_4158(r2)
/* 801CB120  D0 1D 01 20 */	stfs f0, 0x120(r29)
/* 801CB124  48 00 00 50 */	b lbl_801CB174
lbl_801CB128:
/* 801CB128  28 00 00 02 */	cmplwi r0, 2
/* 801CB12C  40 82 00 24 */	bne lbl_801CB150
/* 801CB130  C0 02 A7 28 */	lfs f0, lit_4158(r2)
/* 801CB134  D0 1D 01 1C */	stfs f0, 0x11c(r29)
/* 801CB138  C0 22 A7 38 */	lfs f1, lit_4162(r2)
/* 801CB13C  C0 02 A7 24 */	lfs f0, lit_3995(r2)
/* 801CB140  EC 00 10 28 */	fsubs f0, f0, f2
/* 801CB144  EC 01 00 32 */	fmuls f0, f1, f0
/* 801CB148  D0 1D 01 20 */	stfs f0, 0x120(r29)
/* 801CB14C  48 00 00 28 */	b lbl_801CB174
lbl_801CB150:
/* 801CB150  28 00 00 00 */	cmplwi r0, 0
/* 801CB154  40 82 00 20 */	bne lbl_801CB174
/* 801CB158  C0 02 A7 28 */	lfs f0, lit_4158(r2)
/* 801CB15C  D0 1D 01 1C */	stfs f0, 0x11c(r29)
/* 801CB160  C0 22 A7 34 */	lfs f1, lit_4161(r2)
/* 801CB164  C0 02 A7 24 */	lfs f0, lit_3995(r2)
/* 801CB168  EC 00 10 28 */	fsubs f0, f0, f2
/* 801CB16C  EC 01 00 32 */	fmuls f0, f1, f0
/* 801CB170  D0 1D 01 20 */	stfs f0, 0x120(r29)
lbl_801CB174:
/* 801CB174  D0 5D 01 24 */	stfs f2, 0x124(r29)
/* 801CB178  C0 3D 01 20 */	lfs f1, 0x120(r29)
/* 801CB17C  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 801CB180  C0 1D 01 1C */	lfs f0, 0x11c(r29)
/* 801CB184  D0 03 0F BC */	stfs f0, 0xfbc(r3)
/* 801CB188  D0 23 0F C0 */	stfs f1, 0xfc0(r3)
/* 801CB18C  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 801CB190  C0 3D 01 24 */	lfs f1, 0x124(r29)
/* 801CB194  7F C4 F3 78 */	mr r4, r30
/* 801CB198  48 00 A1 9D */	bl setAllAlphaRate__18dMenu_Fmap2DBack_cFfb
/* 801CB19C  C0 3D 01 20 */	lfs f1, 0x120(r29)
/* 801CB1A0  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 801CB1A4  C0 1D 01 1C */	lfs f0, 0x11c(r29)
/* 801CB1A8  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 801CB1AC  D0 23 00 7C */	stfs f1, 0x7c(r3)
/* 801CB1B0  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 801CB1B4  C0 3D 01 24 */	lfs f1, 0x124(r29)
/* 801CB1B8  7F C4 F3 78 */	mr r4, r30
/* 801CB1BC  48 00 BA 89 */	bl setAllAlphaRate__17dMenu_Fmap2DTop_cFfb
/* 801CB1C0  7F E3 FB 78 */	mr r3, r31
/* 801CB1C4  39 61 00 30 */	addi r11, r1, 0x30
/* 801CB1C8  48 19 70 61 */	bl _restgpr_29
/* 801CB1CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801CB1D0  7C 08 03 A6 */	mtlr r0
/* 801CB1D4  38 21 00 30 */	addi r1, r1, 0x30
/* 801CB1D8  4E 80 00 20 */	blr 
