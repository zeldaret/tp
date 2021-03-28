lbl_80A687D0:
/* 80A687D0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A687D4  7C 08 02 A6 */	mflr r0
/* 80A687D8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A687DC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80A687E0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80A687E4  39 61 00 50 */	addi r11, r1, 0x50
/* 80A687E8  4B 8F 99 F0 */	b _savegpr_28
/* 80A687EC  7C 7F 1B 78 */	mr r31, r3
/* 80A687F0  7C 80 23 78 */	mr r0, r4
/* 80A687F4  7C BC 2B 78 */	mr r28, r5
/* 80A687F8  7C DD 33 78 */	mr r29, r6
/* 80A687FC  FF E0 08 90 */	fmr f31, f1
/* 80A68800  7C FE 3B 78 */	mr r30, r7
/* 80A68804  38 A0 00 00 */	li r5, 0
/* 80A68808  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80A6880C  28 04 00 00 */	cmplwi r4, 0
/* 80A68810  41 82 00 44 */	beq lbl_80A68854
/* 80A68814  38 61 00 08 */	addi r3, r1, 8
/* 80A68818  7C 05 03 78 */	mr r5, r0
/* 80A6881C  4B 7F E3 18 */	b __mi__4cXyzCFRC3Vec
/* 80A68820  C0 21 00 08 */	lfs f1, 8(r1)
/* 80A68824  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80A68828  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A6882C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A68830  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80A68834  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80A68838  4B 7F EE 3C */	b cM_atan2s__Fff
/* 80A6883C  7C BC 18 50 */	subf r5, r28, r3
/* 80A68840  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80A68844  7C 1C 00 50 */	subf r0, r28, r0
/* 80A68848  7C 00 07 34 */	extsh r0, r0
/* 80A6884C  7C A0 28 50 */	subf r5, r0, r5
/* 80A68850  7C A5 F2 14 */	add r5, r5, r30
lbl_80A68854:
/* 80A68854  2C 1D 00 00 */	cmpwi r29, 0
/* 80A68858  41 82 00 0C */	beq lbl_80A68864
/* 80A6885C  7C 05 00 D0 */	neg r0, r5
/* 80A68860  7C 05 07 34 */	extsh r5, r0
lbl_80A68864:
/* 80A68864  3C 60 80 A7 */	lis r3, lit_4388@ha
/* 80A68868  C0 63 8F 80 */	lfs f3, lit_4388@l(r3)
/* 80A6886C  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80A68870  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80A68874  3C 60 80 A7 */	lis r3, lit_4587@ha
/* 80A68878  C8 43 8F 8C */	lfd f2, lit_4587@l(r3)
/* 80A6887C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A68880  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A68884  3C 60 43 30 */	lis r3, 0x4330
/* 80A68888  90 61 00 20 */	stw r3, 0x20(r1)
/* 80A6888C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80A68890  EC 20 10 28 */	fsubs f1, f0, f2
/* 80A68894  EC 03 20 28 */	fsubs f0, f3, f4
/* 80A68898  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A6889C  7C A0 07 34 */	extsh r0, r5
/* 80A688A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A688A4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A688A8  90 61 00 28 */	stw r3, 0x28(r1)
/* 80A688AC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80A688B0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A688B4  EC 00 01 32 */	fmuls f0, f0, f4
/* 80A688B8  EC 01 00 2A */	fadds f0, f1, f0
/* 80A688BC  FC 00 00 1E */	fctiwz f0, f0
/* 80A688C0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80A688C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A688C8  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80A688CC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80A688D0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80A688D4  39 61 00 50 */	addi r11, r1, 0x50
/* 80A688D8  4B 8F 99 4C */	b _restgpr_28
/* 80A688DC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A688E0  7C 08 03 A6 */	mtlr r0
/* 80A688E4  38 21 00 60 */	addi r1, r1, 0x60
/* 80A688E8  4E 80 00 20 */	blr 
