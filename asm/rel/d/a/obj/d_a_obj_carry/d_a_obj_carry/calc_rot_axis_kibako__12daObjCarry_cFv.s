lbl_80478028:
/* 80478028  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8047802C  7C 08 02 A6 */	mflr r0
/* 80478030  90 01 00 34 */	stw r0, 0x34(r1)
/* 80478034  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80478038  7C 7F 1B 78 */	mr r31, r3
/* 8047803C  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80478040  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80478044  41 82 00 2C */	beq lbl_80478070
/* 80478048  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 8047804C  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 80478050  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80478054  C0 03 00 04 */	lfs f0, 4(r3)
/* 80478058  D0 1F 0C F8 */	stfs f0, 0xcf8(r31)
/* 8047805C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80478060  D0 1F 0C FC */	stfs f0, 0xcfc(r31)
/* 80478064  38 00 00 00 */	li r0, 0
/* 80478068  B0 1F 0D 00 */	sth r0, 0xd00(r31)
/* 8047806C  48 00 00 CC */	b lbl_80478138
lbl_80478070:
/* 80478070  3C 60 80 43 */	lis r3, BaseX__4cXyz@ha
/* 80478074  C4 03 0D 0C */	lfsu f0, BaseX__4cXyz@l(r3)
/* 80478078  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8047807C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80478080  D0 1F 0C F8 */	stfs f0, 0xcf8(r31)
/* 80478084  C0 03 00 08 */	lfs f0, 8(r3)
/* 80478088  D0 1F 0C FC */	stfs f0, 0xcfc(r31)
/* 8047808C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80478090  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80478094  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80478098  4B B9 43 44 */	b mDoMtx_YrotS__FPA4_fs
/* 8047809C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804780A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804780A4  38 9F 0C F4 */	addi r4, r31, 0xcf4
/* 804780A8  7C 85 23 78 */	mr r5, r4
/* 804780AC  4B EC EC C0 */	b PSMTXMultVec
/* 804780B0  38 61 00 08 */	addi r3, r1, 8
/* 804780B4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804780B8  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 804780BC  4B DE EA 78 */	b __mi__4cXyzCFRC3Vec
/* 804780C0  88 1F 0C F1 */	lbz r0, 0xcf1(r31)
/* 804780C4  28 00 00 03 */	cmplwi r0, 3
/* 804780C8  40 82 00 68 */	bne lbl_80478130
/* 804780CC  7F E3 FB 78 */	mr r3, r31
/* 804780D0  4B FF 75 D5 */	bl data__12daObjCarry_cFv
/* 804780D4  A8 03 00 7A */	lha r0, 0x7a(r3)
/* 804780D8  3C 60 80 48 */	lis r3, lit_4171@ha
/* 804780DC  C8 23 A3 AC */	lfd f1, lit_4171@l(r3)
/* 804780E0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804780E4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804780E8  3C 00 43 30 */	lis r0, 0x4330
/* 804780EC  90 01 00 18 */	stw r0, 0x18(r1)
/* 804780F0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 804780F4  EC 40 08 28 */	fsubs f2, f0, f1
/* 804780F8  3C 60 80 48 */	lis r3, lit_3958@ha
/* 804780FC  C0 23 A3 84 */	lfs f1, lit_3958@l(r3)
/* 80478100  C0 1F 0D 70 */	lfs f0, 0xd70(r31)
/* 80478104  EC 01 00 32 */	fmuls f0, f1, f0
/* 80478108  EC 20 10 2A */	fadds f1, f0, f2
/* 8047810C  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80478110  EC 00 00 72 */	fmuls f0, f0, f1
/* 80478114  FC 00 00 1E */	fctiwz f0, f0
/* 80478118  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8047811C  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80478120  A8 1F 0D 00 */	lha r0, 0xd00(r31)
/* 80478124  7C 00 1A 14 */	add r0, r0, r3
/* 80478128  B0 1F 0D 00 */	sth r0, 0xd00(r31)
/* 8047812C  48 00 00 0C */	b lbl_80478138
lbl_80478130:
/* 80478130  38 00 00 00 */	li r0, 0
/* 80478134  B0 1F 0D 00 */	sth r0, 0xd00(r31)
lbl_80478138:
/* 80478138  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8047813C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80478140  7C 08 03 A6 */	mtlr r0
/* 80478144  38 21 00 30 */	addi r1, r1, 0x30
/* 80478148  4E 80 00 20 */	blr 
