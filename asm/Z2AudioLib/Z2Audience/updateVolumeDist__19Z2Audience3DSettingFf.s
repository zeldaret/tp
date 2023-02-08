lbl_802BC4D0:
/* 802BC4D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BC4D4  D0 23 00 00 */	stfs f1, 0(r3)
/* 802BC4D8  C0 0D 82 58 */	lfs f0, DISTANCE_MAX__7Z2Param(r13)
/* 802BC4DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BC4E0  40 81 00 14 */	ble lbl_802BC4F4
/* 802BC4E4  C0 0D 8D D0 */	lfs f0, cNearFarRatio(r13)
/* 802BC4E8  EC 00 00 72 */	fmuls f0, f0, f1
/* 802BC4EC  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 802BC4F0  48 00 00 0C */	b lbl_802BC4FC
lbl_802BC4F4:
/* 802BC4F4  C0 0D 82 5C */	lfs f0, MAX_VOLUME_DISTANCE__7Z2Param(r13)
/* 802BC4F8  D0 03 00 3C */	stfs f0, 0x3c(r3)
lbl_802BC4FC:
/* 802BC4FC  C0 22 C0 DC */	lfs f1, lit_1058(r2)
/* 802BC500  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC504  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC508  D0 03 00 04 */	stfs f0, 4(r3)
/* 802BC50C  C0 22 C0 D8 */	lfs f1, lit_1036(r2)
/* 802BC510  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC514  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC518  D0 03 00 08 */	stfs f0, 8(r3)
/* 802BC51C  C0 22 C0 E0 */	lfs f1, lit_1059(r2)
/* 802BC520  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC524  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC528  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802BC52C  C0 22 C0 B0 */	lfs f1, lit_998(r2)
/* 802BC530  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC534  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC538  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802BC53C  C0 22 C0 E4 */	lfs f1, lit_1060(r2)
/* 802BC540  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC544  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC548  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802BC54C  C0 22 C0 E8 */	lfs f1, lit_1061(r2)
/* 802BC550  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC554  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC558  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 802BC55C  C0 22 C0 EC */	lfs f1, lit_1062(r2)
/* 802BC560  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC564  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC568  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 802BC56C  C0 22 C0 F0 */	lfs f1, lit_1063(r2)
/* 802BC570  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC574  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC578  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 802BC57C  C0 22 C0 F4 */	lfs f1, lit_1064(r2)
/* 802BC580  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC584  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC588  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 802BC58C  C0 22 C0 F8 */	lfs f1, lit_1065(r2)
/* 802BC590  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC594  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC598  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 802BC59C  C0 22 C0 FC */	lfs f1, lit_1066(r2)
/* 802BC5A0  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC5A4  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC5A8  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802BC5AC  C0 22 C0 A8 */	lfs f1, lit_895(r2)
/* 802BC5B0  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC5B4  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC5B8  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 802BC5BC  C0 22 C1 00 */	lfs f1, lit_1067(r2)
/* 802BC5C0  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC5C4  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC5C8  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 802BC5CC  C0 22 C0 B8 */	lfs f1, lit_1000(r2)
/* 802BC5D0  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BC5D4  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC5D8  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 802BC5DC  38 80 00 00 */	li r4, 0
/* 802BC5E0  C0 62 C0 A4 */	lfs f3, lit_894(r2)
/* 802BC5E4  38 00 00 0F */	li r0, 0xf
/* 802BC5E8  7C 09 03 A6 */	mtctr r0
lbl_802BC5EC:
/* 802BC5EC  7C A3 22 14 */	add r5, r3, r4
/* 802BC5F0  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 802BC5F4  EC 40 18 28 */	fsubs f2, f0, f3
/* 802BC5F8  C0 25 00 00 */	lfs f1, 0(r5)
/* 802BC5FC  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 802BC600  EC 01 00 28 */	fsubs f0, f1, f0
/* 802BC604  EC 02 00 24 */	fdivs f0, f2, f0
/* 802BC608  D0 05 00 70 */	stfs f0, 0x70(r5)
/* 802BC60C  38 84 00 04 */	addi r4, r4, 4
/* 802BC610  42 00 FF DC */	bdnz lbl_802BC5EC
/* 802BC614  38 80 00 00 */	li r4, 0
/* 802BC618  C8 62 C0 D0 */	lfd f3, lit_1008(r2)
/* 802BC61C  3C A0 43 30 */	lis r5, 0x4330
/* 802BC620  38 00 00 0F */	li r0, 0xf
/* 802BC624  7C 09 03 A6 */	mtctr r0
lbl_802BC628:
/* 802BC628  7C C3 22 14 */	add r6, r3, r4
/* 802BC62C  80 03 00 64 */	lwz r0, 0x64(r3)
/* 802BC630  90 01 00 0C */	stw r0, 0xc(r1)
/* 802BC634  90 A1 00 08 */	stw r5, 8(r1)
/* 802BC638  C8 01 00 08 */	lfd f0, 8(r1)
/* 802BC63C  EC 40 18 28 */	fsubs f2, f0, f3
/* 802BC640  C0 26 00 00 */	lfs f1, 0(r6)
/* 802BC644  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 802BC648  EC 01 00 28 */	fsubs f0, f1, f0
/* 802BC64C  EC 02 00 24 */	fdivs f0, f2, f0
/* 802BC650  D0 06 00 AC */	stfs f0, 0xac(r6)
/* 802BC654  38 84 00 04 */	addi r4, r4, 4
/* 802BC658  42 00 FF D0 */	bdnz lbl_802BC628
/* 802BC65C  38 80 00 00 */	li r4, 0
/* 802BC660  38 00 00 0F */	li r0, 0xf
/* 802BC664  7C 09 03 A6 */	mtctr r0
lbl_802BC668:
/* 802BC668  7C A3 22 14 */	add r5, r3, r4
/* 802BC66C  C0 23 00 54 */	lfs f1, 0x54(r3)
/* 802BC670  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 802BC674  EC 41 00 28 */	fsubs f2, f1, f0
/* 802BC678  C0 25 00 00 */	lfs f1, 0(r5)
/* 802BC67C  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 802BC680  EC 01 00 28 */	fsubs f0, f1, f0
/* 802BC684  EC 02 00 24 */	fdivs f0, f2, f0
/* 802BC688  D0 05 00 E8 */	stfs f0, 0xe8(r5)
/* 802BC68C  38 84 00 04 */	addi r4, r4, 4
/* 802BC690  42 00 FF D8 */	bdnz lbl_802BC668
/* 802BC694  38 00 00 00 */	li r0, 0
/* 802BC698  98 03 01 24 */	stb r0, 0x124(r3)
/* 802BC69C  38 21 00 10 */	addi r1, r1, 0x10
/* 802BC6A0  4E 80 00 20 */	blr 
