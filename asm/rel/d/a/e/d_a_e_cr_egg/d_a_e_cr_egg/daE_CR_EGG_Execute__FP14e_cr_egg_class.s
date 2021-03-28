lbl_8069A378:
/* 8069A378  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8069A37C  7C 08 02 A6 */	mflr r0
/* 8069A380  90 01 00 34 */	stw r0, 0x34(r1)
/* 8069A384  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8069A388  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8069A38C  7C 7E 1B 78 */	mr r30, r3
/* 8069A390  3C 60 80 6A */	lis r3, lit_3657@ha
/* 8069A394  3B E3 A8 CC */	addi r31, r3, lit_3657@l
/* 8069A398  A8 7E 06 4C */	lha r3, 0x64c(r30)
/* 8069A39C  38 03 00 01 */	addi r0, r3, 1
/* 8069A3A0  B0 1E 06 4C */	sth r0, 0x64c(r30)
/* 8069A3A4  38 60 00 00 */	li r3, 0
/* 8069A3A8  38 00 00 02 */	li r0, 2
/* 8069A3AC  7C 09 03 A6 */	mtctr r0
lbl_8069A3B0:
/* 8069A3B0  38 A3 06 52 */	addi r5, r3, 0x652
/* 8069A3B4  7C 9E 2A AE */	lhax r4, r30, r5
/* 8069A3B8  2C 04 00 00 */	cmpwi r4, 0
/* 8069A3BC  41 82 00 0C */	beq lbl_8069A3C8
/* 8069A3C0  38 04 FF FF */	addi r0, r4, -1
/* 8069A3C4  7C 1E 2B 2E */	sthx r0, r30, r5
lbl_8069A3C8:
/* 8069A3C8  38 63 00 02 */	addi r3, r3, 2
/* 8069A3CC  42 00 FF E4 */	bdnz lbl_8069A3B0
/* 8069A3D0  A8 7E 06 56 */	lha r3, 0x656(r30)
/* 8069A3D4  2C 03 00 00 */	cmpwi r3, 0
/* 8069A3D8  41 82 00 0C */	beq lbl_8069A3E4
/* 8069A3DC  38 03 FF FF */	addi r0, r3, -1
/* 8069A3E0  B0 1E 06 56 */	sth r0, 0x656(r30)
lbl_8069A3E4:
/* 8069A3E4  7F C3 F3 78 */	mr r3, r30
/* 8069A3E8  4B FF FE 71 */	bl action__FP14e_cr_egg_class
/* 8069A3EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8069A3F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8069A3F4  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8069A3F8  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8069A3FC  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 8069A400  4B CA C4 E8 */	b PSMTXTrans
/* 8069A404  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8069A408  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8069A40C  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8069A410  4B 97 20 24 */	b mDoMtx_YrotM__FPA4_fs
/* 8069A414  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8069A418  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8069A41C  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 8069A420  4B 97 1F 7C */	b mDoMtx_XrotM__FPA4_fs
/* 8069A424  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8069A428  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 8069A42C  FC 60 08 90 */	fmr f3, f1
/* 8069A430  4B 97 29 6C */	b transM__14mDoMtx_stack_cFfff
/* 8069A434  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8069A438  FC 40 08 90 */	fmr f2, f1
/* 8069A43C  FC 60 08 90 */	fmr f3, f1
/* 8069A440  4B 97 29 F8 */	b scaleM__14mDoMtx_stack_cFfff
/* 8069A444  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8069A448  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8069A44C  80 9E 05 B8 */	lwz r4, 0x5b8(r30)
/* 8069A450  38 84 00 24 */	addi r4, r4, 0x24
/* 8069A454  4B CA C0 5C */	b PSMTXCopy
/* 8069A458  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8069A45C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8069A460  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8069A464  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8069A468  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8069A46C  38 61 00 08 */	addi r3, r1, 8
/* 8069A470  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8069A474  38 A1 00 14 */	addi r5, r1, 0x14
/* 8069A478  4B BC C6 6C */	b __pl__4cXyzCFRC3Vec
/* 8069A47C  38 7E 09 D4 */	addi r3, r30, 0x9d4
/* 8069A480  38 81 00 08 */	addi r4, r1, 8
/* 8069A484  4B BD 51 C4 */	b SetC__8cM3dGSphFRC4cXyz
/* 8069A488  38 7E 09 D4 */	addi r3, r30, 0x9d4
/* 8069A48C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8069A490  4B BD 52 78 */	b SetR__8cM3dGSphFf
/* 8069A494  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8069A498  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8069A49C  38 63 23 3C */	addi r3, r3, 0x233c
/* 8069A4A0  38 9E 08 B0 */	addi r4, r30, 0x8b0
/* 8069A4A4  4B BC A7 04 */	b Set__4cCcSFP8cCcD_Obj
/* 8069A4A8  38 60 00 01 */	li r3, 1
/* 8069A4AC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8069A4B0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8069A4B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8069A4B8  7C 08 03 A6 */	mtlr r0
/* 8069A4BC  38 21 00 30 */	addi r1, r1, 0x30
/* 8069A4C0  4E 80 00 20 */	blr 
