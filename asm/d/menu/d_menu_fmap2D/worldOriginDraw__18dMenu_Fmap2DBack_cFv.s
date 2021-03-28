lbl_801D382C:
/* 801D382C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D3830  7C 08 02 A6 */	mflr r0
/* 801D3834  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D3838  C0 03 0F C8 */	lfs f0, 0xfc8(r3)
/* 801D383C  FC 20 00 50 */	fneg f1, f0
/* 801D3840  C0 03 0F CC */	lfs f0, 0xfcc(r3)
/* 801D3844  FC 40 00 50 */	fneg f2, f0
/* 801D3848  38 81 00 1C */	addi r4, r1, 0x1c
/* 801D384C  38 A1 00 18 */	addi r5, r1, 0x18
/* 801D3850  4B FF D4 C9 */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPf
/* 801D3854  38 60 00 00 */	li r3, 0
/* 801D3858  98 61 00 10 */	stb r3, 0x10(r1)
/* 801D385C  38 00 00 FF */	li r0, 0xff
/* 801D3860  98 01 00 11 */	stb r0, 0x11(r1)
/* 801D3864  98 61 00 12 */	stb r3, 0x12(r1)
/* 801D3868  98 01 00 13 */	stb r0, 0x13(r1)
/* 801D386C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801D3870  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D3874  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801D3878  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801D387C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D3880  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801D3884  EC 40 08 2A */	fadds f2, f0, f1
/* 801D3888  C0 62 A7 DC */	lfs f3, lit_4199(r2)
/* 801D388C  EC 80 18 2A */	fadds f4, f0, f3
/* 801D3890  38 61 00 14 */	addi r3, r1, 0x14
/* 801D3894  38 80 00 06 */	li r4, 6
/* 801D3898  48 11 61 01 */	bl J2DDrawLine__FffffQ28JUtility6TColori
/* 801D389C  38 60 00 00 */	li r3, 0
/* 801D38A0  98 61 00 08 */	stb r3, 8(r1)
/* 801D38A4  38 00 00 FF */	li r0, 0xff
/* 801D38A8  98 01 00 09 */	stb r0, 9(r1)
/* 801D38AC  98 61 00 0A */	stb r3, 0xa(r1)
/* 801D38B0  98 01 00 0B */	stb r0, 0xb(r1)
/* 801D38B4  80 01 00 08 */	lwz r0, 8(r1)
/* 801D38B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D38BC  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801D38C0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801D38C4  EC 81 00 2A */	fadds f4, f1, f0
/* 801D38C8  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801D38CC  C0 02 A8 10 */	lfs f0, lit_5133(r2)
/* 801D38D0  EC 44 00 2A */	fadds f2, f4, f0
/* 801D38D4  C0 62 A7 DC */	lfs f3, lit_4199(r2)
/* 801D38D8  C0 02 A8 14 */	lfs f0, lit_5134(r2)
/* 801D38DC  EC 84 00 2A */	fadds f4, f4, f0
/* 801D38E0  38 61 00 0C */	addi r3, r1, 0xc
/* 801D38E4  38 80 00 06 */	li r4, 6
/* 801D38E8  48 11 60 B1 */	bl J2DDrawLine__FffffQ28JUtility6TColori
/* 801D38EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D38F0  7C 08 03 A6 */	mtlr r0
/* 801D38F4  38 21 00 20 */	addi r1, r1, 0x20
/* 801D38F8  4E 80 00 20 */	blr 
