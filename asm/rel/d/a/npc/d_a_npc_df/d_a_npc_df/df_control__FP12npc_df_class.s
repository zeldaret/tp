lbl_809A6100:
/* 809A6100  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809A6104  7C 08 02 A6 */	mflr r0
/* 809A6108  90 01 00 34 */	stw r0, 0x34(r1)
/* 809A610C  39 61 00 30 */	addi r11, r1, 0x30
/* 809A6110  4B 9B C0 C9 */	bl _savegpr_28
/* 809A6114  7C 7C 1B 78 */	mr r28, r3
/* 809A6118  3C 60 80 9A */	lis r3, lit_3748@ha /* 0x809A68A4@ha */
/* 809A611C  3B E3 68 A4 */	addi r31, r3, lit_3748@l /* 0x809A68A4@l */
/* 809A6120  3B DC 05 74 */	addi r30, r28, 0x574
/* 809A6124  3B A0 00 00 */	li r29, 0
/* 809A6128  48 00 01 C8 */	b lbl_809A62F0
lbl_809A612C:
/* 809A612C  88 1E 00 74 */	lbz r0, 0x74(r30)
/* 809A6130  7C 00 07 75 */	extsb. r0, r0
/* 809A6134  41 82 01 80 */	beq lbl_809A62B4
/* 809A6138  38 A0 00 00 */	li r5, 0
/* 809A613C  38 00 00 03 */	li r0, 3
/* 809A6140  7C 09 03 A6 */	mtctr r0
lbl_809A6144:
/* 809A6144  38 85 00 78 */	addi r4, r5, 0x78
/* 809A6148  7C 7E 20 AE */	lbzx r3, r30, r4
/* 809A614C  28 03 00 00 */	cmplwi r3, 0
/* 809A6150  41 82 00 0C */	beq lbl_809A615C
/* 809A6154  38 03 FF FF */	addi r0, r3, -1
/* 809A6158  7C 1E 21 AE */	stbx r0, r30, r4
lbl_809A615C:
/* 809A615C  38 A5 00 01 */	addi r5, r5, 1
/* 809A6160  42 00 FF E4 */	bdnz lbl_809A6144
/* 809A6164  88 1E 00 74 */	lbz r0, 0x74(r30)
/* 809A6168  2C 00 00 01 */	cmpwi r0, 1
/* 809A616C  40 82 00 1C */	bne lbl_809A6188
/* 809A6170  7F 83 E3 78 */	mr r3, r28
/* 809A6174  7F C4 F3 78 */	mr r4, r30
/* 809A6178  4B FF F2 AD */	bl df_fly__FP12npc_df_classP4df_s
/* 809A617C  38 00 00 00 */	li r0, 0
/* 809A6180  B0 1E 00 70 */	sth r0, 0x70(r30)
/* 809A6184  48 00 00 10 */	b lbl_809A6194
lbl_809A6188:
/* 809A6188  7F 83 E3 78 */	mr r3, r28
/* 809A618C  7F C4 F3 78 */	mr r4, r30
/* 809A6190  4B FF F8 4D */	bl df_rod__FP12npc_df_classP4df_s
lbl_809A6194:
/* 809A6194  A8 7E 00 6C */	lha r3, 0x6c(r30)
/* 809A6198  38 03 00 01 */	addi r0, r3, 1
/* 809A619C  B0 1E 00 6C */	sth r0, 0x6c(r30)
/* 809A61A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809A61A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809A61A8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 809A61AC  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809A61B0  EC 21 00 2A */	fadds f1, f1, f0
/* 809A61B4  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 809A61B8  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 809A61BC  EC 42 00 2A */	fadds f2, f2, f0
/* 809A61C0  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 809A61C4  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 809A61C8  EC 63 00 2A */	fadds f3, f3, f0
/* 809A61CC  4B 9A 07 1D */	bl PSMTXTrans
/* 809A61D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809A61D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809A61D8  A8 9E 00 46 */	lha r4, 0x46(r30)
/* 809A61DC  4B 66 62 59 */	bl mDoMtx_YrotM__FPA4_fs
/* 809A61E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809A61E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809A61E8  A8 9E 00 70 */	lha r4, 0x70(r30)
/* 809A61EC  4B 66 61 B1 */	bl mDoMtx_XrotM__FPA4_fs
/* 809A61F0  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 809A61F4  FC 40 08 90 */	fmr f2, f1
/* 809A61F8  FC 60 08 90 */	fmr f3, f1
/* 809A61FC  4B 66 6C 3D */	bl scaleM__14mDoMtx_stack_cFfff
/* 809A6200  A8 9E 00 72 */	lha r4, 0x72(r30)
/* 809A6204  7C 80 07 35 */	extsh. r0, r4
/* 809A6208  41 82 00 64 */	beq lbl_809A626C
/* 809A620C  1C 04 23 00 */	mulli r0, r4, 0x2300
/* 809A6210  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809A6214  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 809A6218  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 809A621C  7C 63 04 2E */	lfsx f3, r3, r0
/* 809A6220  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809A6224  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809A6228  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 809A622C  C8 3F 00 68 */	lfd f1, 0x68(r31)
/* 809A6230  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 809A6234  90 01 00 0C */	stw r0, 0xc(r1)
/* 809A6238  3C 00 43 30 */	lis r0, 0x4330
/* 809A623C  90 01 00 08 */	stw r0, 8(r1)
/* 809A6240  C8 01 00 08 */	lfd f0, 8(r1)
/* 809A6244  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A6248  EC 00 00 F2 */	fmuls f0, f0, f3
/* 809A624C  EC 02 00 32 */	fmuls f0, f2, f0
/* 809A6250  FC 00 00 1E */	fctiwz f0, f0
/* 809A6254  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 809A6258  80 81 00 14 */	lwz r4, 0x14(r1)
/* 809A625C  4B 66 62 71 */	bl mDoMtx_ZrotM__FPA4_fs
/* 809A6260  A8 7E 00 72 */	lha r3, 0x72(r30)
/* 809A6264  38 03 FF FF */	addi r0, r3, -1
/* 809A6268  B0 1E 00 72 */	sth r0, 0x72(r30)
lbl_809A626C:
/* 809A626C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809A6270  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809A6274  80 9E 00 00 */	lwz r4, 0(r30)
/* 809A6278  38 84 00 24 */	addi r4, r4, 0x24
/* 809A627C  4B 9A 02 35 */	bl PSMTXCopy
/* 809A6280  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 809A6284  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 809A6288  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 809A628C  4B 66 6B 11 */	bl transM__14mDoMtx_stack_cFfff
/* 809A6290  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 809A6294  C0 5E 00 5C */	lfs f2, 0x5c(r30)
/* 809A6298  FC 60 08 90 */	fmr f3, f1
/* 809A629C  4B 66 6B 9D */	bl scaleM__14mDoMtx_stack_cFfff
/* 809A62A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809A62A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809A62A8  80 9E 00 04 */	lwz r4, 4(r30)
/* 809A62AC  38 84 00 24 */	addi r4, r4, 0x24
/* 809A62B0  4B 9A 02 01 */	bl PSMTXCopy
lbl_809A62B4:
/* 809A62B4  2C 1D 00 00 */	cmpwi r29, 0
/* 809A62B8  40 82 00 30 */	bne lbl_809A62E8
/* 809A62BC  3C 60 80 9A */	lis r3, lrl@ha /* 0x809A6A50@ha */
/* 809A62C0  38 63 6A 50 */	addi r3, r3, lrl@l /* 0x809A6A50@l */
/* 809A62C4  80 63 00 00 */	lwz r3, 0(r3)
/* 809A62C8  28 03 00 00 */	cmplwi r3, 0
/* 809A62CC  41 82 00 1C */	beq lbl_809A62E8
/* 809A62D0  C0 03 06 04 */	lfs f0, 0x604(r3)
/* 809A62D4  D0 1C 0D 34 */	stfs f0, 0xd34(r28)
/* 809A62D8  C0 03 06 08 */	lfs f0, 0x608(r3)
/* 809A62DC  D0 1C 0D 38 */	stfs f0, 0xd38(r28)
/* 809A62E0  C0 03 06 0C */	lfs f0, 0x60c(r3)
/* 809A62E4  D0 1C 0D 3C */	stfs f0, 0xd3c(r28)
lbl_809A62E8:
/* 809A62E8  3B BD 00 01 */	addi r29, r29, 1
/* 809A62EC  3B DE 00 7C */	addi r30, r30, 0x7c
lbl_809A62F0:
/* 809A62F0  80 1C 0D 40 */	lwz r0, 0xd40(r28)
/* 809A62F4  7C 1D 00 00 */	cmpw r29, r0
/* 809A62F8  41 80 FE 34 */	blt lbl_809A612C
/* 809A62FC  39 61 00 30 */	addi r11, r1, 0x30
/* 809A6300  4B 9B BF 25 */	bl _restgpr_28
/* 809A6304  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809A6308  7C 08 03 A6 */	mtlr r0
/* 809A630C  38 21 00 30 */	addi r1, r1, 0x30
/* 809A6310  4E 80 00 20 */	blr 
