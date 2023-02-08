lbl_80CF2604:
/* 80CF2604  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF2608  7C 08 02 A6 */	mflr r0
/* 80CF260C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF2610  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF2614  7C 7F 1B 78 */	mr r31, r3
/* 80CF2618  38 60 00 00 */	li r3, 0
/* 80CF261C  38 00 00 03 */	li r0, 3
/* 80CF2620  7C 09 03 A6 */	mtctr r0
lbl_80CF2624:
/* 80CF2624  38 A3 05 7A */	addi r5, r3, 0x57a
/* 80CF2628  7C 9F 2A AE */	lhax r4, r31, r5
/* 80CF262C  2C 04 00 00 */	cmpwi r4, 0
/* 80CF2630  41 82 00 0C */	beq lbl_80CF263C
/* 80CF2634  38 04 FF FF */	addi r0, r4, -1
/* 80CF2638  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_80CF263C:
/* 80CF263C  38 63 00 02 */	addi r3, r3, 2
/* 80CF2640  42 00 FF E4 */	bdnz lbl_80CF2624
/* 80CF2644  A8 7F 05 74 */	lha r3, 0x574(r31)
/* 80CF2648  38 03 00 01 */	addi r0, r3, 1
/* 80CF264C  B0 1F 05 74 */	sth r0, 0x574(r31)
/* 80CF2650  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80CF2654  28 00 00 08 */	cmplwi r0, 8
/* 80CF2658  40 82 00 10 */	bne lbl_80CF2668
/* 80CF265C  7F E3 FB 78 */	mr r3, r31
/* 80CF2660  4B FF F3 11 */	bl sc_action__FP12obj_sw_class
/* 80CF2664  48 00 00 74 */	b lbl_80CF26D8
lbl_80CF2668:
/* 80CF2668  7F E3 FB 78 */	mr r3, r31
/* 80CF266C  4B FF FA F5 */	bl sw_action__FP12obj_sw_class
/* 80CF2670  38 9F 09 20 */	addi r4, r31, 0x920
/* 80CF2674  80 7F 0D 88 */	lwz r3, 0xd88(r31)
/* 80CF2678  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF267C  38 A0 00 00 */	li r5, 0
/* 80CF2680  38 00 00 3F */	li r0, 0x3f
/* 80CF2684  7C 09 03 A6 */	mtctr r0
lbl_80CF2688:
/* 80CF2688  80 1F 0D 8C */	lwz r0, 0xd8c(r31)
/* 80CF268C  7C 05 00 00 */	cmpw r5, r0
/* 80CF2690  40 80 00 20 */	bge lbl_80CF26B0
/* 80CF2694  C0 04 00 00 */	lfs f0, 0(r4)
/* 80CF2698  D0 03 00 00 */	stfs f0, 0(r3)
/* 80CF269C  C0 04 00 04 */	lfs f0, 4(r4)
/* 80CF26A0  D0 03 00 04 */	stfs f0, 4(r3)
/* 80CF26A4  C0 04 00 08 */	lfs f0, 8(r4)
/* 80CF26A8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80CF26AC  48 00 00 1C */	b lbl_80CF26C8
lbl_80CF26B0:
/* 80CF26B0  C0 1F 09 10 */	lfs f0, 0x910(r31)
/* 80CF26B4  D0 03 00 00 */	stfs f0, 0(r3)
/* 80CF26B8  C0 1F 09 14 */	lfs f0, 0x914(r31)
/* 80CF26BC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80CF26C0  C0 1F 09 18 */	lfs f0, 0x918(r31)
/* 80CF26C4  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80CF26C8:
/* 80CF26C8  38 A5 00 01 */	addi r5, r5, 1
/* 80CF26CC  38 63 00 0C */	addi r3, r3, 0xc
/* 80CF26D0  38 84 00 0C */	addi r4, r4, 0xc
/* 80CF26D4  42 00 FF B4 */	bdnz lbl_80CF2688
lbl_80CF26D8:
/* 80CF26D8  38 60 00 01 */	li r3, 1
/* 80CF26DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF26E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF26E4  7C 08 03 A6 */	mtlr r0
/* 80CF26E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF26EC  4E 80 00 20 */	blr 
