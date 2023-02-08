lbl_80BBE578:
/* 80BBE578  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 80BBE57C  7C 08 02 A6 */	mflr r0
/* 80BBE580  90 01 01 34 */	stw r0, 0x134(r1)
/* 80BBE584  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 80BBE588  F3 E1 01 28 */	psq_st f31, 296(r1), 0, 0 /* qr0 */
/* 80BBE58C  DB C1 01 10 */	stfd f30, 0x110(r1)
/* 80BBE590  F3 C1 01 18 */	psq_st f30, 280(r1), 0, 0 /* qr0 */
/* 80BBE594  DB A1 01 00 */	stfd f29, 0x100(r1)
/* 80BBE598  F3 A1 01 08 */	psq_st f29, 264(r1), 0, 0 /* qr0 */
/* 80BBE59C  DB 81 00 F0 */	stfd f28, 0xf0(r1)
/* 80BBE5A0  F3 81 00 F8 */	psq_st f28, 248(r1), 0, 0 /* qr0 */
/* 80BBE5A4  DB 61 00 E0 */	stfd f27, 0xe0(r1)
/* 80BBE5A8  F3 61 00 E8 */	psq_st f27, 232(r1), 0, 0 /* qr0 */
/* 80BBE5AC  DB 41 00 D0 */	stfd f26, 0xd0(r1)
/* 80BBE5B0  F3 41 00 D8 */	psq_st f26, 216(r1), 0, 0 /* qr0 */
/* 80BBE5B4  DB 21 00 C0 */	stfd f25, 0xc0(r1)
/* 80BBE5B8  F3 21 00 C8 */	psq_st f25, 200(r1), 0, 0 /* qr0 */
/* 80BBE5BC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80BBE5C0  4B 7A 3B F1 */	bl _savegpr_18
/* 80BBE5C4  7C 7F 1B 78 */	mr r31, r3
/* 80BBE5C8  3C 60 80 BC */	lis r3, lit_3896@ha /* 0x80BC2148@ha */
/* 80BBE5CC  3B 63 21 48 */	addi r27, r3, lit_3896@l /* 0x80BC2148@l */
/* 80BBE5D0  3A BF 05 70 */	addi r21, r31, 0x570
/* 80BBE5D4  3C 7F 00 01 */	addis r3, r31, 1
/* 80BBE5D8  A8 03 AF 1C */	lha r0, -0x50e4(r3)
/* 80BBE5DC  2C 00 00 03 */	cmpwi r0, 3
/* 80BBE5E0  41 82 00 F8 */	beq lbl_80BBE6D8
/* 80BBE5E4  40 80 00 1C */	bge lbl_80BBE600
/* 80BBE5E8  2C 00 00 01 */	cmpwi r0, 1
/* 80BBE5EC  41 82 0B E0 */	beq lbl_80BBF1CC
/* 80BBE5F0  40 80 00 30 */	bge lbl_80BBE620
/* 80BBE5F4  2C 00 00 00 */	cmpwi r0, 0
/* 80BBE5F8  40 80 00 18 */	bge lbl_80BBE610
/* 80BBE5FC  48 00 0B D0 */	b lbl_80BBF1CC
lbl_80BBE600:
/* 80BBE600  2C 00 00 05 */	cmpwi r0, 5
/* 80BBE604  41 82 08 50 */	beq lbl_80BBEE54
/* 80BBE608  40 80 0B C4 */	bge lbl_80BBF1CC
/* 80BBE60C  48 00 07 9C */	b lbl_80BBEDA8
lbl_80BBE610:
/* 80BBE610  38 00 00 00 */	li r0, 0
/* 80BBE614  98 03 B1 E9 */	stb r0, -0x4e17(r3)
/* 80BBE618  38 00 00 02 */	li r0, 2
/* 80BBE61C  B0 03 AF 1C */	sth r0, -0x50e4(r3)
lbl_80BBE620:
/* 80BBE620  3A 40 00 00 */	li r18, 0
/* 80BBE624  3A 60 00 00 */	li r19, 0
/* 80BBE628  3E 9F 00 01 */	addis r20, r31, 1
/* 80BBE62C  48 00 00 94 */	b lbl_80BBE6C0
lbl_80BBE630:
/* 80BBE630  88 14 B1 E8 */	lbz r0, -0x4e18(r20)
/* 80BBE634  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80BBE638  2C 00 00 01 */	cmpwi r0, 1
/* 80BBE63C  40 82 00 14 */	bne lbl_80BBE650
/* 80BBE640  C0 1B 00 14 */	lfs f0, 0x14(r27)
/* 80BBE644  38 13 06 50 */	addi r0, r19, 0x650
/* 80BBE648  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80BBE64C  48 00 00 5C */	b lbl_80BBE6A8
lbl_80BBE650:
/* 80BBE650  C0 7B 00 C8 */	lfs f3, 0xc8(r27)
/* 80BBE654  C8 5B 00 B0 */	lfd f2, 0xb0(r27)
/* 80BBE658  6E 40 80 00 */	xoris r0, r18, 0x8000
/* 80BBE65C  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80BBE660  3C 60 43 30 */	lis r3, 0x4330
/* 80BBE664  90 61 00 78 */	stw r3, 0x78(r1)
/* 80BBE668  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 80BBE66C  EC 20 10 28 */	fsubs f1, f0, f2
/* 80BBE670  38 04 FF FF */	addi r0, r4, -1
/* 80BBE674  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BBE678  90 01 00 84 */	stw r0, 0x84(r1)
/* 80BBE67C  90 61 00 80 */	stw r3, 0x80(r1)
/* 80BBE680  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 80BBE684  EC 00 10 28 */	fsubs f0, f0, f2
/* 80BBE688  EC 01 00 24 */	fdivs f0, f1, f0
/* 80BBE68C  EC 23 00 32 */	fmuls f1, f3, f0
/* 80BBE690  4B 7A DF 01 */	bl sin
/* 80BBE694  FC 00 08 18 */	frsp f0, f1
/* 80BBE698  FC 00 02 10 */	fabs f0, f0
/* 80BBE69C  FC 00 00 18 */	frsp f0, f0
/* 80BBE6A0  38 13 06 50 */	addi r0, r19, 0x650
/* 80BBE6A4  7C 1F 05 2E */	stfsx f0, r31, r0
lbl_80BBE6A8:
/* 80BBE6A8  7C 7F 9A 14 */	add r3, r31, r19
/* 80BBE6AC  38 00 00 03 */	li r0, 3
/* 80BBE6B0  98 03 0C 75 */	stb r0, 0xc75(r3)
/* 80BBE6B4  98 03 0C 74 */	stb r0, 0xc74(r3)
/* 80BBE6B8  3A 52 00 01 */	addi r18, r18, 1
/* 80BBE6BC  3A 73 07 0C */	addi r19, r19, 0x70c
lbl_80BBE6C0:
/* 80BBE6C0  88 94 B1 EA */	lbz r4, -0x4e16(r20)
/* 80BBE6C4  7C 84 07 74 */	extsb r4, r4
/* 80BBE6C8  7C 12 20 00 */	cmpw r18, r4
/* 80BBE6CC  41 80 FF 64 */	blt lbl_80BBE630
/* 80BBE6D0  38 00 00 03 */	li r0, 3
/* 80BBE6D4  B0 14 AF 1C */	sth r0, -0x50e4(r20)
lbl_80BBE6D8:
/* 80BBE6D8  3C 9F 00 01 */	addis r4, r31, 1
/* 80BBE6DC  A8 64 AF 1E */	lha r3, -0x50e2(r4)
/* 80BBE6E0  38 03 0B B8 */	addi r0, r3, 0xbb8
/* 80BBE6E4  B0 04 AF 1E */	sth r0, -0x50e2(r4)
/* 80BBE6E8  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80BBE6EC  D0 15 00 B0 */	stfs f0, 0xb0(r21)
/* 80BBE6F0  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80BBE6F4  D0 15 00 B4 */	stfs f0, 0xb4(r21)
/* 80BBE6F8  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80BBE6FC  D0 15 00 B8 */	stfs f0, 0xb8(r21)
/* 80BBE700  88 04 B1 E8 */	lbz r0, -0x4e18(r4)
/* 80BBE704  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80BBE708  2C 00 00 01 */	cmpwi r0, 1
/* 80BBE70C  40 82 00 70 */	bne lbl_80BBE77C
/* 80BBE710  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BBE714  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BBE718  80 63 00 00 */	lwz r3, 0(r3)
/* 80BBE71C  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80BBE720  4B 44 DC BD */	bl mDoMtx_YrotS__FPA4_fs
/* 80BBE724  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BBE728  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BBE72C  3C 9F 00 01 */	addis r4, r31, 1
/* 80BBE730  A8 04 AF 22 */	lha r0, -0x50de(r4)
/* 80BBE734  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BBE738  7C 63 02 14 */	add r3, r3, r0
/* 80BBE73C  C0 43 00 04 */	lfs f2, 4(r3)
/* 80BBE740  C0 3B 00 CC */	lfs f1, 0xcc(r27)
/* 80BBE744  C0 04 AE EC */	lfs f0, -0x5114(r4)
/* 80BBE748  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80BBE74C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BBE750  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80BBE754  C0 1B 00 00 */	lfs f0, 0(r27)
/* 80BBE758  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BBE75C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BBE760  38 61 00 44 */	addi r3, r1, 0x44
/* 80BBE764  38 81 00 38 */	addi r4, r1, 0x38
/* 80BBE768  4B 6B 27 85 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BBE76C  38 75 00 B0 */	addi r3, r21, 0xb0
/* 80BBE770  38 81 00 38 */	addi r4, r1, 0x38
/* 80BBE774  7C 65 1B 78 */	mr r5, r3
/* 80BBE778  4B 78 89 19 */	bl PSVECAdd
lbl_80BBE77C:
/* 80BBE77C  7F E3 FB 78 */	mr r3, r31
/* 80BBE780  7E A4 AB 78 */	mr r4, r21
/* 80BBE784  4B FF EF BD */	bl control1__FP13obj_brg_classP4br_s
/* 80BBE788  3C 9F 00 01 */	addis r4, r31, 1
/* 80BBE78C  88 04 B1 EA */	lbz r0, -0x4e16(r4)
/* 80BBE790  7C 00 07 74 */	extsb r0, r0
/* 80BBE794  1C 60 07 0C */	mulli r3, r0, 0x70c
/* 80BBE798  38 63 F9 A4 */	addi r3, r3, -1628
/* 80BBE79C  7C 75 1A 14 */	add r3, r21, r3
/* 80BBE7A0  C0 04 AE F8 */	lfs f0, -0x5108(r4)
/* 80BBE7A4  D0 03 00 00 */	stfs f0, 0(r3)
/* 80BBE7A8  C0 04 AE FC */	lfs f0, -0x5104(r4)
/* 80BBE7AC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BBE7B0  C0 04 AF 00 */	lfs f0, -0x5100(r4)
/* 80BBE7B4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BBE7B8  88 04 B1 E8 */	lbz r0, -0x4e18(r4)
/* 80BBE7BC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80BBE7C0  2C 00 00 01 */	cmpwi r0, 1
/* 80BBE7C4  40 82 00 24 */	bne lbl_80BBE7E8
/* 80BBE7C8  88 04 B1 EA */	lbz r0, -0x4e16(r4)
/* 80BBE7CC  7C 00 07 74 */	extsb r0, r0
/* 80BBE7D0  1C 60 07 0C */	mulli r3, r0, 0x70c
/* 80BBE7D4  38 63 F9 A4 */	addi r3, r3, -1628
/* 80BBE7D8  7C 75 1A 14 */	add r3, r21, r3
/* 80BBE7DC  38 81 00 38 */	addi r4, r1, 0x38
/* 80BBE7E0  7C 65 1B 78 */	mr r5, r3
/* 80BBE7E4  4B 78 88 D1 */	bl PSVECSubtract
lbl_80BBE7E8:
/* 80BBE7E8  7F E3 FB 78 */	mr r3, r31
/* 80BBE7EC  7E A4 AB 78 */	mr r4, r21
/* 80BBE7F0  4B FF F2 75 */	bl control2__FP13obj_brg_classP4br_s
/* 80BBE7F4  7F E3 FB 78 */	mr r3, r31
/* 80BBE7F8  7E A4 AB 78 */	mr r4, r21
/* 80BBE7FC  4B FF F4 2D */	bl control3__FP13obj_brg_classP4br_s
/* 80BBE800  38 61 00 20 */	addi r3, r1, 0x20
/* 80BBE804  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 80BBE808  38 B5 00 B0 */	addi r5, r21, 0xb0
/* 80BBE80C  4B 6A 83 29 */	bl __mi__4cXyzCFRC3Vec
/* 80BBE810  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 80BBE814  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 80BBE818  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 80BBE81C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80BBE820  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80BBE824  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80BBE828  C0 15 00 B0 */	lfs f0, 0xb0(r21)
/* 80BBE82C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80BBE830  C0 15 00 B4 */	lfs f0, 0xb4(r21)
/* 80BBE834  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80BBE838  C0 15 00 B8 */	lfs f0, 0xb8(r21)
/* 80BBE83C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80BBE840  A8 15 00 D4 */	lha r0, 0xd4(r21)
/* 80BBE844  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80BBE848  A8 15 00 D6 */	lha r0, 0xd6(r21)
/* 80BBE84C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80BBE850  A8 15 00 D8 */	lha r0, 0xd8(r21)
/* 80BBE854  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80BBE858  3A E0 00 00 */	li r23, 0
/* 80BBE85C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BBE860  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BBE864  3B 5C 5B D4 */	addi r26, r28, 0x5bd4
/* 80BBE868  C3 7B 00 D0 */	lfs f27, 0xd0(r27)
/* 80BBE86C  3F BF 00 01 */	addis r29, r31, 1
/* 80BBE870  CB 9B 00 B0 */	lfd f28, 0xb0(r27)
/* 80BBE874  3F C0 43 30 */	lis r30, 0x4330
/* 80BBE878  FF A0 18 18 */	frsp f29, f3
/* 80BBE87C  FF C0 10 18 */	frsp f30, f2
/* 80BBE880  FF E0 08 18 */	frsp f31, f1
/* 80BBE884  48 00 04 94 */	b lbl_80BBED18
lbl_80BBE888:
/* 80BBE888  C0 15 00 B0 */	lfs f0, 0xb0(r21)
/* 80BBE88C  D0 15 00 BC */	stfs f0, 0xbc(r21)
/* 80BBE890  C0 15 00 B4 */	lfs f0, 0xb4(r21)
/* 80BBE894  D0 15 00 C0 */	stfs f0, 0xc0(r21)
/* 80BBE898  C0 15 00 B8 */	lfs f0, 0xb8(r21)
/* 80BBE89C  D0 15 00 C4 */	stfs f0, 0xc4(r21)
/* 80BBE8A0  88 1D B1 EA */	lbz r0, -0x4e16(r29)
/* 80BBE8A4  7C 03 07 74 */	extsb r3, r0
/* 80BBE8A8  7C 17 18 50 */	subf r0, r23, r3
/* 80BBE8AC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BBE8B0  90 01 00 84 */	stw r0, 0x84(r1)
/* 80BBE8B4  93 C1 00 80 */	stw r30, 0x80(r1)
/* 80BBE8B8  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 80BBE8BC  EC 20 E0 28 */	fsubs f1, f0, f28
/* 80BBE8C0  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80BBE8C4  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80BBE8C8  93 C1 00 78 */	stw r30, 0x78(r1)
/* 80BBE8CC  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 80BBE8D0  EC 00 E0 28 */	fsubs f0, f0, f28
/* 80BBE8D4  EC 01 00 24 */	fdivs f0, f1, f0
/* 80BBE8D8  EC 5B 00 32 */	fmuls f2, f27, f0
/* 80BBE8DC  C0 35 00 BC */	lfs f1, 0xbc(r21)
/* 80BBE8E0  EC 1D 00 B2 */	fmuls f0, f29, f2
/* 80BBE8E4  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBE8E8  D0 15 00 BC */	stfs f0, 0xbc(r21)
/* 80BBE8EC  C0 35 00 C0 */	lfs f1, 0xc0(r21)
/* 80BBE8F0  EC 1E 00 B2 */	fmuls f0, f30, f2
/* 80BBE8F4  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBE8F8  D0 15 00 C0 */	stfs f0, 0xc0(r21)
/* 80BBE8FC  C0 35 00 C4 */	lfs f1, 0xc4(r21)
/* 80BBE900  EC 1F 00 B2 */	fmuls f0, f31, f2
/* 80BBE904  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBE908  D0 15 00 C4 */	stfs f0, 0xc4(r21)
/* 80BBE90C  88 15 07 06 */	lbz r0, 0x706(r21)
/* 80BBE910  28 00 00 00 */	cmplwi r0, 0
/* 80BBE914  41 82 00 BC */	beq lbl_80BBE9D0
/* 80BBE918  3A C0 FF FB */	li r22, -5
/* 80BBE91C  3A 60 DC C4 */	li r19, -9020
/* 80BBE920  3A 80 FF EC */	li r20, -20
lbl_80BBE924:
/* 80BBE924  7C 97 B2 15 */	add. r4, r23, r22
/* 80BBE928  41 80 00 94 */	blt lbl_80BBE9BC
/* 80BBE92C  3C 7F 00 01 */	addis r3, r31, 1
/* 80BBE930  88 03 B1 EA */	lbz r0, -0x4e16(r3)
/* 80BBE934  7C 00 07 74 */	extsb r0, r0
/* 80BBE938  7C 04 00 00 */	cmpw r4, r0
/* 80BBE93C  40 80 00 80 */	bge lbl_80BBE9BC
/* 80BBE940  A8 15 00 F2 */	lha r0, 0xf2(r21)
/* 80BBE944  C8 3B 00 B0 */	lfd f1, 0xb0(r27)
/* 80BBE948  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BBE94C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80BBE950  3C 00 43 30 */	lis r0, 0x4330
/* 80BBE954  90 01 00 80 */	stw r0, 0x80(r1)
/* 80BBE958  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 80BBE95C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80BBE960  3C 60 80 BC */	lis r3, ita_z_p@ha /* 0x80BC23AC@ha */
/* 80BBE964  38 03 23 AC */	addi r0, r3, ita_z_p@l /* 0x80BC23AC@l */
/* 80BBE968  7C 60 A2 14 */	add r3, r0, r20
/* 80BBE96C  3B 23 00 14 */	addi r25, r3, 0x14
/* 80BBE970  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80BBE974  EC 21 00 32 */	fmuls f1, f1, f0
/* 80BBE978  7F 15 9A 14 */	add r24, r21, r19
/* 80BBE97C  C0 18 00 E0 */	lfs f0, 0xe0(r24)
/* 80BBE980  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BBE984  FC 00 00 1E */	fctiwz f0, f0
/* 80BBE988  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 80BBE98C  80 81 00 7C */	lwz r4, 0x7c(r1)
/* 80BBE990  38 78 00 F4 */	addi r3, r24, 0xf4
/* 80BBE994  38 A0 00 04 */	li r5, 4
/* 80BBE998  38 C0 08 00 */	li r6, 0x800
/* 80BBE99C  4B 6B 1C 6D */	bl cLib_addCalcAngleS2__FPssss
/* 80BBE9A0  38 78 00 E8 */	addi r3, r24, 0xe8
/* 80BBE9A4  C0 35 00 E4 */	lfs f1, 0xe4(r21)
/* 80BBE9A8  C0 19 00 00 */	lfs f0, 0(r25)
/* 80BBE9AC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80BBE9B0  C0 5B 00 14 */	lfs f2, 0x14(r27)
/* 80BBE9B4  C0 7B 00 A8 */	lfs f3, 0xa8(r27)
/* 80BBE9B8  4B 6B 10 85 */	bl cLib_addCalc2__FPffff
lbl_80BBE9BC:
/* 80BBE9BC  3A D6 00 01 */	addi r22, r22, 1
/* 80BBE9C0  2C 16 00 05 */	cmpwi r22, 5
/* 80BBE9C4  3A 73 07 0C */	addi r19, r19, 0x70c
/* 80BBE9C8  3A 94 00 04 */	addi r20, r20, 4
/* 80BBE9CC  40 81 FF 58 */	ble lbl_80BBE924
lbl_80BBE9D0:
/* 80BBE9D0  88 75 07 08 */	lbz r3, 0x708(r21)
/* 80BBE9D4  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 80BBE9D8  41 82 01 A4 */	beq lbl_80BBEB7C
/* 80BBE9DC  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 80BBE9E0  2C 00 00 03 */	cmpwi r0, 3
/* 80BBE9E4  41 82 01 98 */	beq lbl_80BBEB7C
/* 80BBE9E8  C3 5B 00 00 */	lfs f26, 0(r27)
/* 80BBE9EC  C3 3B 00 8C */	lfs f25, 0x8c(r27)
/* 80BBE9F0  2C 00 00 01 */	cmpwi r0, 1
/* 80BBE9F4  40 82 00 10 */	bne lbl_80BBEA04
/* 80BBE9F8  C3 5B 00 D4 */	lfs f26, 0xd4(r27)
/* 80BBE9FC  C3 3B 00 D8 */	lfs f25, 0xd8(r27)
/* 80BBEA00  48 00 00 14 */	b lbl_80BBEA14
lbl_80BBEA04:
/* 80BBEA04  2C 00 00 02 */	cmpwi r0, 2
/* 80BBEA08  40 82 00 0C */	bne lbl_80BBEA14
/* 80BBEA0C  C3 5B 00 DC */	lfs f26, 0xdc(r27)
/* 80BBEA10  C3 3B 00 D8 */	lfs f25, 0xd8(r27)
lbl_80BBEA14:
/* 80BBEA14  3A C0 FF FB */	li r22, -5
/* 80BBEA18  3A 80 DC C4 */	li r20, -9020
/* 80BBEA1C  3A 60 FF EC */	li r19, -20
lbl_80BBEA20:
/* 80BBEA20  7F 37 B2 15 */	add. r25, r23, r22
/* 80BBEA24  41 80 01 44 */	blt lbl_80BBEB68
/* 80BBEA28  3C 7F 00 01 */	addis r3, r31, 1
/* 80BBEA2C  88 03 B1 EA */	lbz r0, -0x4e16(r3)
/* 80BBEA30  7C 00 07 74 */	extsb r0, r0
/* 80BBEA34  7C 19 00 00 */	cmpw r25, r0
/* 80BBEA38  40 80 01 30 */	bge lbl_80BBEB68
/* 80BBEA3C  3C 60 80 BC */	lis r3, ita_z_p@ha /* 0x80BC23AC@ha */
/* 80BBEA40  38 03 23 AC */	addi r0, r3, ita_z_p@l /* 0x80BC23AC@l */
/* 80BBEA44  7C 60 9A 14 */	add r3, r0, r19
/* 80BBEA48  3A 43 00 14 */	addi r18, r3, 0x14
/* 80BBEA4C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80BBEA50  EC 3A 00 32 */	fmuls f1, f26, f0
/* 80BBEA54  7F 15 A2 14 */	add r24, r21, r20
/* 80BBEA58  C0 18 00 E0 */	lfs f0, 0xe0(r24)
/* 80BBEA5C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BBEA60  FC 00 00 1E */	fctiwz f0, f0
/* 80BBEA64  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 80BBEA68  80 81 00 84 */	lwz r4, 0x84(r1)
/* 80BBEA6C  38 78 00 F6 */	addi r3, r24, 0xf6
/* 80BBEA70  38 A0 00 04 */	li r5, 4
/* 80BBEA74  38 C0 08 00 */	li r6, 0x800
/* 80BBEA78  4B 6B 1B 91 */	bl cLib_addCalcAngleS2__FPssss
/* 80BBEA7C  38 78 00 E8 */	addi r3, r24, 0xe8
/* 80BBEA80  C0 12 00 00 */	lfs f0, 0(r18)
/* 80BBEA84  EC 39 00 32 */	fmuls f1, f25, f0
/* 80BBEA88  C0 5B 00 14 */	lfs f2, 0x14(r27)
/* 80BBEA8C  C0 7B 00 E0 */	lfs f3, 0xe0(r27)
/* 80BBEA90  4B 6B 0F AD */	bl cLib_addCalc2__FPffff
/* 80BBEA94  88 15 07 08 */	lbz r0, 0x708(r21)
/* 80BBEA98  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 80BBEA9C  40 82 00 A8 */	bne lbl_80BBEB44
/* 80BBEAA0  3C 9F 00 01 */	addis r4, r31, 1
/* 80BBEAA4  88 04 B1 E8 */	lbz r0, -0x4e18(r4)
/* 80BBEAA8  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80BBEAAC  40 82 00 98 */	bne lbl_80BBEB44
/* 80BBEAB0  2C 16 FF FE */	cmpwi r22, -2
/* 80BBEAB4  41 80 00 90 */	blt lbl_80BBEB44
/* 80BBEAB8  2C 16 00 02 */	cmpwi r22, 2
/* 80BBEABC  41 81 00 88 */	bgt lbl_80BBEB44
/* 80BBEAC0  88 18 07 06 */	lbz r0, 0x706(r24)
/* 80BBEAC4  28 00 00 00 */	cmplwi r0, 0
/* 80BBEAC8  41 82 00 7C */	beq lbl_80BBEB44
/* 80BBEACC  88 1C 4F AD */	lbz r0, 0x4fad(r28)
/* 80BBEAD0  28 00 00 00 */	cmplwi r0, 0
/* 80BBEAD4  41 82 00 10 */	beq lbl_80BBEAE4
/* 80BBEAD8  38 00 00 00 */	li r0, 0
/* 80BBEADC  90 04 AE D4 */	stw r0, -0x512c(r4)
/* 80BBEAE0  48 00 00 10 */	b lbl_80BBEAF0
lbl_80BBEAE4:
/* 80BBEAE4  80 64 AE D4 */	lwz r3, -0x512c(r4)
/* 80BBEAE8  38 03 00 02 */	addi r0, r3, 2
/* 80BBEAEC  90 04 AE D4 */	stw r0, -0x512c(r4)
lbl_80BBEAF0:
/* 80BBEAF0  3C 7F 00 01 */	addis r3, r31, 1
/* 80BBEAF4  80 03 AE D4 */	lwz r0, -0x512c(r3)
/* 80BBEAF8  2C 00 00 64 */	cmpwi r0, 0x64
/* 80BBEAFC  40 81 00 48 */	ble lbl_80BBEB44
/* 80BBEB00  38 00 00 04 */	li r0, 4
/* 80BBEB04  B0 03 AF 1C */	sth r0, -0x50e4(r3)
/* 80BBEB08  93 23 AE D0 */	stw r25, -0x5130(r3)
/* 80BBEB0C  88 03 B1 EF */	lbz r0, -0x4e11(r3)
/* 80BBEB10  7C 00 07 75 */	extsb. r0, r0
/* 80BBEB14  41 82 00 68 */	beq lbl_80BBEB7C
/* 80BBEB18  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80BBEB1C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BBEB20  C0 1B 00 14 */	lfs f0, 0x14(r27)
/* 80BBEB24  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BBEB28  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80BBEB2C  7F 43 D3 78 */	mr r3, r26
/* 80BBEB30  38 80 00 05 */	li r4, 5
/* 80BBEB34  38 A0 00 1F */	li r5, 0x1f
/* 80BBEB38  38 C1 00 14 */	addi r6, r1, 0x14
/* 80BBEB3C  4B 4B 0E E9 */	bl StartShock__12dVibration_cFii4cXyz
/* 80BBEB40  48 00 00 3C */	b lbl_80BBEB7C
lbl_80BBEB44:
/* 80BBEB44  C0 38 00 E4 */	lfs f1, 0xe4(r24)
/* 80BBEB48  C0 1B 00 E4 */	lfs f0, 0xe4(r27)
/* 80BBEB4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BBEB50  40 80 00 18 */	bge lbl_80BBEB68
/* 80BBEB54  38 00 00 04 */	li r0, 4
/* 80BBEB58  3C 7F 00 01 */	addis r3, r31, 1
/* 80BBEB5C  B0 03 AF 1C */	sth r0, -0x50e4(r3)
/* 80BBEB60  93 23 AE D0 */	stw r25, -0x5130(r3)
/* 80BBEB64  48 00 00 18 */	b lbl_80BBEB7C
lbl_80BBEB68:
/* 80BBEB68  3A D6 00 01 */	addi r22, r22, 1
/* 80BBEB6C  2C 16 00 05 */	cmpwi r22, 5
/* 80BBEB70  3A 94 07 0C */	addi r20, r20, 0x70c
/* 80BBEB74  3A 73 00 04 */	addi r19, r19, 4
/* 80BBEB78  40 81 FE A8 */	ble lbl_80BBEA20
lbl_80BBEB7C:
/* 80BBEB7C  88 15 07 08 */	lbz r0, 0x708(r21)
/* 80BBEB80  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80BBEB84  41 82 00 DC */	beq lbl_80BBEC60
/* 80BBEB88  A8 95 00 FE */	lha r4, 0xfe(r21)
/* 80BBEB8C  7C 80 07 35 */	extsh. r0, r4
/* 80BBEB90  40 82 00 10 */	bne lbl_80BBEBA0
/* 80BBEB94  A8 15 01 00 */	lha r0, 0x100(r21)
/* 80BBEB98  2C 00 00 00 */	cmpwi r0, 0
/* 80BBEB9C  41 82 00 C4 */	beq lbl_80BBEC60
lbl_80BBEBA0:
/* 80BBEBA0  3C 7F 00 01 */	addis r3, r31, 1
/* 80BBEBA4  A8 03 AF 1E */	lha r0, -0x50e2(r3)
/* 80BBEBA8  54 00 14 38 */	rlwinm r0, r0, 2, 0x10, 0x1c
/* 80BBEBAC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BBEBB0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BBEBB4  7C 63 04 2E */	lfsx f3, r3, r0
/* 80BBEBB8  C0 5B 00 E8 */	lfs f2, 0xe8(r27)
/* 80BBEBBC  A8 15 01 00 */	lha r0, 0x100(r21)
/* 80BBEBC0  7C 80 03 78 */	or r0, r4, r0
/* 80BBEBC4  C8 3B 00 B0 */	lfd f1, 0xb0(r27)
/* 80BBEBC8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BBEBCC  90 01 00 84 */	stw r0, 0x84(r1)
/* 80BBEBD0  3C 00 43 30 */	lis r0, 0x4330
/* 80BBEBD4  90 01 00 80 */	stw r0, 0x80(r1)
/* 80BBEBD8  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 80BBEBDC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BBEBE0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BBEBE4  EC 40 00 F2 */	fmuls f2, f0, f3
/* 80BBEBE8  38 E0 FF FB */	li r7, -5
/* 80BBEBEC  38 60 DC C4 */	li r3, -9020
/* 80BBEBF0  38 80 FF EC */	li r4, -20
/* 80BBEBF4  38 00 00 0B */	li r0, 0xb
/* 80BBEBF8  7C 09 03 A6 */	mtctr r0
lbl_80BBEBFC:
/* 80BBEBFC  7C D7 3A 15 */	add. r6, r23, r7
/* 80BBEC00  41 80 00 50 */	blt lbl_80BBEC50
/* 80BBEC04  3C BF 00 01 */	addis r5, r31, 1
/* 80BBEC08  88 05 B1 EA */	lbz r0, -0x4e16(r5)
/* 80BBEC0C  7C 00 07 74 */	extsb r0, r0
/* 80BBEC10  7C 06 00 00 */	cmpw r6, r0
/* 80BBEC14  40 80 00 3C */	bge lbl_80BBEC50
/* 80BBEC18  3C A0 80 BC */	lis r5, ita_z_p@ha /* 0x80BC23AC@ha */
/* 80BBEC1C  38 05 23 AC */	addi r0, r5, ita_z_p@l /* 0x80BC23AC@l */
/* 80BBEC20  7C A0 22 14 */	add r5, r0, r4
/* 80BBEC24  C0 05 00 14 */	lfs f0, 0x14(r5)
/* 80BBEC28  EC 22 00 32 */	fmuls f1, f2, f0
/* 80BBEC2C  7C B5 1A 14 */	add r5, r21, r3
/* 80BBEC30  C0 05 00 E0 */	lfs f0, 0xe0(r5)
/* 80BBEC34  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BBEC38  FC 00 00 1E */	fctiwz f0, f0
/* 80BBEC3C  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 80BBEC40  80 C1 00 84 */	lwz r6, 0x84(r1)
/* 80BBEC44  A8 05 00 F6 */	lha r0, 0xf6(r5)
/* 80BBEC48  7C 00 32 14 */	add r0, r0, r6
/* 80BBEC4C  B0 05 00 F6 */	sth r0, 0xf6(r5)
lbl_80BBEC50:
/* 80BBEC50  38 E7 00 01 */	addi r7, r7, 1
/* 80BBEC54  38 63 07 0C */	addi r3, r3, 0x70c
/* 80BBEC58  38 84 00 04 */	addi r4, r4, 4
/* 80BBEC5C  42 00 FF A0 */	bdnz lbl_80BBEBFC
lbl_80BBEC60:
/* 80BBEC60  88 75 07 06 */	lbz r3, 0x706(r21)
/* 80BBEC64  28 03 00 00 */	cmplwi r3, 0
/* 80BBEC68  41 82 00 0C */	beq lbl_80BBEC74
/* 80BBEC6C  38 03 FF FF */	addi r0, r3, -1
/* 80BBEC70  98 15 07 06 */	stb r0, 0x706(r21)
lbl_80BBEC74:
/* 80BBEC74  38 00 00 00 */	li r0, 0
/* 80BBEC78  B0 15 00 F2 */	sth r0, 0xf2(r21)
/* 80BBEC7C  A8 75 00 F4 */	lha r3, 0xf4(r21)
/* 80BBEC80  A8 15 00 F6 */	lha r0, 0xf6(r21)
/* 80BBEC84  7C 03 02 14 */	add r0, r3, r0
/* 80BBEC88  B0 15 00 D8 */	sth r0, 0xd8(r21)
/* 80BBEC8C  38 80 00 00 */	li r4, 0
/* 80BBEC90  88 1D B1 EC */	lbz r0, -0x4e14(r29)
/* 80BBEC94  7C 00 07 75 */	extsb. r0, r0
/* 80BBEC98  41 82 00 30 */	beq lbl_80BBECC8
/* 80BBEC9C  2C 17 00 07 */	cmpwi r23, 7
/* 80BBECA0  40 82 00 0C */	bne lbl_80BBECAC
/* 80BBECA4  38 80 08 00 */	li r4, 0x800
/* 80BBECA8  48 00 00 20 */	b lbl_80BBECC8
lbl_80BBECAC:
/* 80BBECAC  2C 17 00 05 */	cmpwi r23, 5
/* 80BBECB0  40 82 00 0C */	bne lbl_80BBECBC
/* 80BBECB4  38 80 FB 00 */	li r4, -1280
/* 80BBECB8  48 00 00 10 */	b lbl_80BBECC8
lbl_80BBECBC:
/* 80BBECBC  2C 17 00 09 */	cmpwi r23, 9
/* 80BBECC0  40 82 00 08 */	bne lbl_80BBECC8
/* 80BBECC4  38 80 FD 00 */	li r4, -768
lbl_80BBECC8:
/* 80BBECC8  38 75 00 F4 */	addi r3, r21, 0xf4
/* 80BBECCC  38 A0 00 04 */	li r5, 4
/* 80BBECD0  38 C0 04 00 */	li r6, 0x400
/* 80BBECD4  4B 6B 19 35 */	bl cLib_addCalcAngleS2__FPssss
/* 80BBECD8  38 75 00 F6 */	addi r3, r21, 0xf6
/* 80BBECDC  38 80 00 00 */	li r4, 0
/* 80BBECE0  38 A0 00 04 */	li r5, 4
/* 80BBECE4  38 C0 04 00 */	li r6, 0x400
/* 80BBECE8  4B 6B 19 21 */	bl cLib_addCalcAngleS2__FPssss
/* 80BBECEC  38 75 00 EC */	addi r3, r21, 0xec
/* 80BBECF0  C0 3B 00 EC */	lfs f1, 0xec(r27)
/* 80BBECF4  C0 5B 00 14 */	lfs f2, 0x14(r27)
/* 80BBECF8  C0 7B 00 5C */	lfs f3, 0x5c(r27)
/* 80BBECFC  4B 6B 0D 41 */	bl cLib_addCalc2__FPffff
/* 80BBED00  38 75 00 E8 */	addi r3, r21, 0xe8
/* 80BBED04  C0 3B 00 14 */	lfs f1, 0x14(r27)
/* 80BBED08  C0 5B 00 5C */	lfs f2, 0x5c(r27)
/* 80BBED0C  4B 6B 0D 75 */	bl cLib_addCalc0__FPfff
/* 80BBED10  3A F7 00 01 */	addi r23, r23, 1
/* 80BBED14  3A B5 07 0C */	addi r21, r21, 0x70c
lbl_80BBED18:
/* 80BBED18  88 1D B1 EA */	lbz r0, -0x4e16(r29)
/* 80BBED1C  7C 00 07 74 */	extsb r0, r0
/* 80BBED20  7C 17 00 00 */	cmpw r23, r0
/* 80BBED24  41 80 FB 64 */	blt lbl_80BBE888
/* 80BBED28  80 7D AE D4 */	lwz r3, -0x512c(r29)
/* 80BBED2C  2C 03 00 00 */	cmpwi r3, 0
/* 80BBED30  41 82 00 0C */	beq lbl_80BBED3C
/* 80BBED34  38 03 FF FF */	addi r0, r3, -1
/* 80BBED38  90 1D AE D4 */	stw r0, -0x512c(r29)
lbl_80BBED3C:
/* 80BBED3C  3C 7F 00 01 */	addis r3, r31, 1
/* 80BBED40  C0 03 AE E0 */	lfs f0, -0x5120(r3)
/* 80BBED44  D0 03 AE F0 */	stfs f0, -0x5110(r3)
/* 80BBED48  C0 03 AE E0 */	lfs f0, -0x5120(r3)
/* 80BBED4C  D0 03 AE E8 */	stfs f0, -0x5118(r3)
/* 80BBED50  C0 03 AE E4 */	lfs f0, -0x511c(r3)
/* 80BBED54  D0 03 AE EC */	stfs f0, -0x5114(r3)
/* 80BBED58  38 00 0B B8 */	li r0, 0xbb8
/* 80BBED5C  B0 03 AF 28 */	sth r0, -0x50d8(r3)
/* 80BBED60  38 00 05 78 */	li r0, 0x578
/* 80BBED64  B0 03 AF 26 */	sth r0, -0x50da(r3)
/* 80BBED68  C0 3B 00 60 */	lfs f1, 0x60(r27)
/* 80BBED6C  C0 03 AF 30 */	lfs f0, -0x50d0(r3)
/* 80BBED70  EF 21 00 32 */	fmuls f25, f1, f0
/* 80BBED74  FC 20 C8 90 */	fmr f1, f25
/* 80BBED78  C0 5B 00 10 */	lfs f2, 0x10(r27)
/* 80BBED7C  FC 60 10 90 */	fmr f3, f2
/* 80BBED80  38 63 AE E0 */	addi r3, r3, -20768
/* 80BBED84  4B 6B 0C B9 */	bl cLib_addCalc2__FPffff
/* 80BBED88  3C 7F 00 01 */	addis r3, r31, 1
/* 80BBED8C  C0 1B 00 50 */	lfs f0, 0x50(r27)
/* 80BBED90  EC 20 06 72 */	fmuls f1, f0, f25
/* 80BBED94  C0 5B 00 10 */	lfs f2, 0x10(r27)
/* 80BBED98  C0 7B 00 B8 */	lfs f3, 0xb8(r27)
/* 80BBED9C  38 63 AE E4 */	addi r3, r3, -20764
/* 80BBEDA0  4B 6B 0C 9D */	bl cLib_addCalc2__FPffff
/* 80BBEDA4  48 00 04 28 */	b lbl_80BBF1CC
lbl_80BBEDA8:
/* 80BBEDA8  38 80 00 00 */	li r4, 0
/* 80BBEDAC  C0 1B 00 00 */	lfs f0, 0(r27)
/* 80BBEDB0  48 00 00 10 */	b lbl_80BBEDC0
lbl_80BBEDB4:
/* 80BBEDB4  D0 15 00 EC */	stfs f0, 0xec(r21)
/* 80BBEDB8  38 84 00 01 */	addi r4, r4, 1
/* 80BBEDBC  3A B5 07 0C */	addi r21, r21, 0x70c
lbl_80BBEDC0:
/* 80BBEDC0  88 03 B1 EA */	lbz r0, -0x4e16(r3)
/* 80BBEDC4  7C 00 07 74 */	extsb r0, r0
/* 80BBEDC8  7C 04 00 00 */	cmpw r4, r0
/* 80BBEDCC  41 80 FF E8 */	blt lbl_80BBEDB4
/* 80BBEDD0  38 00 00 05 */	li r0, 5
/* 80BBEDD4  B0 03 AF 1C */	sth r0, -0x50e4(r3)
/* 80BBEDD8  38 00 00 32 */	li r0, 0x32
/* 80BBEDDC  B0 03 AF 2C */	sth r0, -0x50d4(r3)
/* 80BBEDE0  C0 1B 00 F0 */	lfs f0, 0xf0(r27)
/* 80BBEDE4  D0 03 AE F4 */	stfs f0, -0x510c(r3)
/* 80BBEDE8  3C 60 00 04 */	lis r3, 0x0004 /* 0x00040020@ha */
/* 80BBEDEC  38 03 00 20 */	addi r0, r3, 0x0020 /* 0x00040020@l */
/* 80BBEDF0  90 01 00 08 */	stw r0, 8(r1)
/* 80BBEDF4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BBEDF8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BBEDFC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BBEE00  38 81 00 08 */	addi r4, r1, 8
/* 80BBEE04  38 A0 00 00 */	li r5, 0
/* 80BBEE08  38 C0 00 00 */	li r6, 0
/* 80BBEE0C  38 E0 00 00 */	li r7, 0
/* 80BBEE10  C0 3B 00 14 */	lfs f1, 0x14(r27)
/* 80BBEE14  FC 40 08 90 */	fmr f2, f1
/* 80BBEE18  C0 7B 00 A4 */	lfs f3, 0xa4(r27)
/* 80BBEE1C  FC 80 18 90 */	fmr f4, f3
/* 80BBEE20  39 00 00 00 */	li r8, 0
/* 80BBEE24  4B 6E CB 61 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BBEE28  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BBEE2C  7C 05 07 74 */	extsb r5, r0
/* 80BBEE30  2C 05 00 04 */	cmpwi r5, 4
/* 80BBEE34  41 82 00 20 */	beq lbl_80BBEE54
/* 80BBEE38  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BBEE3C  54 04 46 3E */	srwi r4, r0, 0x18
/* 80BBEE40  2C 04 00 FF */	cmpwi r4, 0xff
/* 80BBEE44  41 82 00 10 */	beq lbl_80BBEE54
/* 80BBEE48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BBEE4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BBEE50  4B 47 63 B1 */	bl onSwitch__10dSv_info_cFii
lbl_80BBEE54:
/* 80BBEE54  3B 1F 05 70 */	addi r24, r31, 0x570
/* 80BBEE58  3C 9F 00 01 */	addis r4, r31, 1
/* 80BBEE5C  A8 64 AF 2C */	lha r3, -0x50d4(r4)
/* 80BBEE60  2C 03 00 00 */	cmpwi r3, 0
/* 80BBEE64  41 82 00 0C */	beq lbl_80BBEE70
/* 80BBEE68  38 03 FF FF */	addi r0, r3, -1
/* 80BBEE6C  B0 04 AF 2C */	sth r0, -0x50d4(r4)
lbl_80BBEE70:
/* 80BBEE70  3C 9F 00 01 */	addis r4, r31, 1
/* 80BBEE74  A8 64 AF 1E */	lha r3, -0x50e2(r4)
/* 80BBEE78  38 03 0F A0 */	addi r0, r3, 0xfa0
/* 80BBEE7C  B0 04 AF 1E */	sth r0, -0x50e2(r4)
/* 80BBEE80  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80BBEE84  D0 18 00 B0 */	stfs f0, 0xb0(r24)
/* 80BBEE88  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80BBEE8C  D0 18 00 B4 */	stfs f0, 0xb4(r24)
/* 80BBEE90  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80BBEE94  D0 18 00 B8 */	stfs f0, 0xb8(r24)
/* 80BBEE98  7F E3 FB 78 */	mr r3, r31
/* 80BBEE9C  7F 04 C3 78 */	mr r4, r24
/* 80BBEEA0  4B FF EE 49 */	bl cut_control1__FP13obj_brg_classP4br_s
/* 80BBEEA4  3C 9F 00 01 */	addis r4, r31, 1
/* 80BBEEA8  88 04 B1 EA */	lbz r0, -0x4e16(r4)
/* 80BBEEAC  7C 00 07 74 */	extsb r0, r0
/* 80BBEEB0  1C 60 07 0C */	mulli r3, r0, 0x70c
/* 80BBEEB4  38 63 F9 A4 */	addi r3, r3, -1628
/* 80BBEEB8  7C 78 1A 14 */	add r3, r24, r3
/* 80BBEEBC  C0 04 AE F8 */	lfs f0, -0x5108(r4)
/* 80BBEEC0  D0 03 00 00 */	stfs f0, 0(r3)
/* 80BBEEC4  C0 04 AE FC */	lfs f0, -0x5104(r4)
/* 80BBEEC8  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BBEECC  C0 04 AF 00 */	lfs f0, -0x5100(r4)
/* 80BBEED0  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BBEED4  7F E3 FB 78 */	mr r3, r31
/* 80BBEED8  7F 04 C3 78 */	mr r4, r24
/* 80BBEEDC  4B FF F1 2D */	bl cut_control2__FP13obj_brg_classP4br_s
/* 80BBEEE0  3C 7F 00 01 */	addis r3, r31, 1
/* 80BBEEE4  88 03 B1 ED */	lbz r0, -0x4e13(r3)
/* 80BBEEE8  7C 00 07 75 */	extsb. r0, r0
/* 80BBEEEC  41 82 00 A8 */	beq lbl_80BBEF94
/* 80BBEEF0  C0 3B 00 9C */	lfs f1, 0x9c(r27)
/* 80BBEEF4  C0 03 AF 30 */	lfs f0, -0x50d0(r3)
/* 80BBEEF8  EC 21 00 32 */	fmuls f1, f1, f0
/* 80BBEEFC  4B 7A 31 B1 */	bl __cvt_fp2unsigned
/* 80BBEF00  3A 43 FF F6 */	addi r18, r3, -10
/* 80BBEF04  28 12 00 7F */	cmplwi r18, 0x7f
/* 80BBEF08  40 81 00 08 */	ble lbl_80BBEF10
/* 80BBEF0C  3A 40 00 7F */	li r18, 0x7f
lbl_80BBEF10:
/* 80BBEF10  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080120@ha */
/* 80BBEF14  38 03 01 20 */	addi r0, r3, 0x0120 /* 0x00080120@l */
/* 80BBEF18  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BBEF1C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BBEF20  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BBEF24  80 63 00 00 */	lwz r3, 0(r3)
/* 80BBEF28  38 81 00 10 */	addi r4, r1, 0x10
/* 80BBEF2C  38 BF 04 A8 */	addi r5, r31, 0x4a8
/* 80BBEF30  7E 46 93 78 */	mr r6, r18
/* 80BBEF34  38 E0 00 00 */	li r7, 0
/* 80BBEF38  C0 3B 00 14 */	lfs f1, 0x14(r27)
/* 80BBEF3C  FC 40 08 90 */	fmr f2, f1
/* 80BBEF40  C0 7B 00 A4 */	lfs f3, 0xa4(r27)
/* 80BBEF44  FC 80 18 90 */	fmr f4, f3
/* 80BBEF48  39 00 00 00 */	li r8, 0
/* 80BBEF4C  4B 6E D5 C1 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BBEF50  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080120@ha */
/* 80BBEF54  38 03 01 20 */	addi r0, r3, 0x0120 /* 0x00080120@l */
/* 80BBEF58  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BBEF5C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BBEF60  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BBEF64  80 63 00 00 */	lwz r3, 0(r3)
/* 80BBEF68  38 81 00 0C */	addi r4, r1, 0xc
/* 80BBEF6C  3C BF 00 01 */	addis r5, r31, 1
/* 80BBEF70  7E 46 93 78 */	mr r6, r18
/* 80BBEF74  38 E0 00 00 */	li r7, 0
/* 80BBEF78  C0 3B 00 14 */	lfs f1, 0x14(r27)
/* 80BBEF7C  FC 40 08 90 */	fmr f2, f1
/* 80BBEF80  C0 7B 00 A4 */	lfs f3, 0xa4(r27)
/* 80BBEF84  FC 80 18 90 */	fmr f4, f3
/* 80BBEF88  39 00 00 00 */	li r8, 0
/* 80BBEF8C  38 A5 AE F8 */	addi r5, r5, -20744
/* 80BBEF90  4B 6E D5 7D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BBEF94:
/* 80BBEF94  3B 20 00 00 */	li r25, 0
/* 80BBEF98  3A A0 00 00 */	li r21, 0
/* 80BBEF9C  C3 7B 00 F8 */	lfs f27, 0xf8(r27)
/* 80BBEFA0  3F DF 00 01 */	addis r30, r31, 1
/* 80BBEFA4  48 00 00 B8 */	b lbl_80BBF05C
lbl_80BBEFA8:
/* 80BBEFA8  C0 18 00 B0 */	lfs f0, 0xb0(r24)
/* 80BBEFAC  D0 18 00 BC */	stfs f0, 0xbc(r24)
/* 80BBEFB0  C0 18 00 B4 */	lfs f0, 0xb4(r24)
/* 80BBEFB4  D0 18 00 C0 */	stfs f0, 0xc0(r24)
/* 80BBEFB8  C0 18 00 B8 */	lfs f0, 0xb8(r24)
/* 80BBEFBC  D0 18 00 C4 */	stfs f0, 0xc4(r24)
/* 80BBEFC0  38 78 00 EC */	addi r3, r24, 0xec
/* 80BBEFC4  C0 3B 00 F4 */	lfs f1, 0xf4(r27)
/* 80BBEFC8  C0 5B 00 14 */	lfs f2, 0x14(r27)
/* 80BBEFCC  C0 7B 00 5C */	lfs f3, 0x5c(r27)
/* 80BBEFD0  4B 6B 0A 6D */	bl cLib_addCalc2__FPffff
/* 80BBEFD4  D3 78 00 DC */	stfs f27, 0xdc(r24)
/* 80BBEFD8  88 7E B1 F1 */	lbz r3, -0x4e0f(r30)
/* 80BBEFDC  7C 60 07 75 */	extsb. r0, r3
/* 80BBEFE0  41 82 00 30 */	beq lbl_80BBF010
/* 80BBEFE4  80 9E AE D0 */	lwz r4, -0x5130(r30)
/* 80BBEFE8  7C 19 20 00 */	cmpw r25, r4
/* 80BBEFEC  40 80 00 10 */	bge lbl_80BBEFFC
/* 80BBEFF0  7C 60 07 74 */	extsb r0, r3
/* 80BBEFF4  2C 00 00 02 */	cmpwi r0, 2
/* 80BBEFF8  41 82 00 18 */	beq lbl_80BBF010
lbl_80BBEFFC:
/* 80BBEFFC  7C 19 20 00 */	cmpw r25, r4
/* 80BBF000  41 80 00 50 */	blt lbl_80BBF050
/* 80BBF004  7C 60 07 74 */	extsb r0, r3
/* 80BBF008  2C 00 00 01 */	cmpwi r0, 1
/* 80BBF00C  40 82 00 44 */	bne lbl_80BBF050
lbl_80BBF010:
/* 80BBF010  3C 9F 00 01 */	addis r4, r31, 1
/* 80BBF014  A8 04 AF 2E */	lha r0, -0x50d2(r4)
/* 80BBF018  7C 00 AA 14 */	add r0, r0, r21
/* 80BBF01C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BBF020  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BBF024  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BBF028  7C 23 04 2E */	lfsx f1, r3, r0
/* 80BBF02C  38 78 00 D8 */	addi r3, r24, 0xd8
/* 80BBF030  C0 04 AE F4 */	lfs f0, -0x510c(r4)
/* 80BBF034  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BBF038  FC 00 00 1E */	fctiwz f0, f0
/* 80BBF03C  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 80BBF040  80 81 00 84 */	lwz r4, 0x84(r1)
/* 80BBF044  38 A0 00 04 */	li r5, 4
/* 80BBF048  38 C0 08 00 */	li r6, 0x800
/* 80BBF04C  4B 6B 15 BD */	bl cLib_addCalcAngleS2__FPssss
lbl_80BBF050:
/* 80BBF050  3B 39 00 01 */	addi r25, r25, 1
/* 80BBF054  3A B5 27 10 */	addi r21, r21, 0x2710
/* 80BBF058  3B 18 07 0C */	addi r24, r24, 0x70c
lbl_80BBF05C:
/* 80BBF05C  88 1E B1 EA */	lbz r0, -0x4e16(r30)
/* 80BBF060  7C 00 07 74 */	extsb r0, r0
/* 80BBF064  7C 19 00 00 */	cmpw r25, r0
/* 80BBF068  41 80 FF 40 */	blt lbl_80BBEFA8
/* 80BBF06C  7F C3 F3 78 */	mr r3, r30
/* 80BBF070  C0 3B 00 B8 */	lfs f1, 0xb8(r27)
/* 80BBF074  C0 5B 00 FC */	lfs f2, 0xfc(r27)
/* 80BBF078  38 63 AE F4 */	addi r3, r3, -20748
/* 80BBF07C  4B 6B 0A 05 */	bl cLib_addCalc0__FPfff
/* 80BBF080  3C 7F 00 01 */	addis r3, r31, 1
/* 80BBF084  A8 83 AF 2E */	lha r4, -0x50d2(r3)
/* 80BBF088  38 04 11 94 */	addi r0, r4, 0x1194
/* 80BBF08C  B0 03 AF 2E */	sth r0, -0x50d2(r3)
/* 80BBF090  88 03 B1 EC */	lbz r0, -0x4e14(r3)
/* 80BBF094  7C 00 07 75 */	extsb. r0, r0
/* 80BBF098  41 82 01 34 */	beq lbl_80BBF1CC
/* 80BBF09C  C0 03 AE F8 */	lfs f0, -0x5108(r3)
/* 80BBF0A0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BBF0A4  C0 03 AE FC */	lfs f0, -0x5104(r3)
/* 80BBF0A8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BBF0AC  C0 03 AF 00 */	lfs f0, -0x5100(r3)
/* 80BBF0B0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80BBF0B4  C0 1B 01 00 */	lfs f0, 0x100(r27)
/* 80BBF0B8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BBF0BC  38 63 B0 58 */	addi r3, r3, -20392
/* 80BBF0C0  38 81 00 38 */	addi r4, r1, 0x38
/* 80BBF0C4  4B 6B 01 19 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80BBF0C8  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80BBF0CC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BBF0D0  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80BBF0D4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BBF0D8  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80BBF0DC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80BBF0E0  C0 1B 01 00 */	lfs f0, 0x100(r27)
/* 80BBF0E4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BBF0E8  3C 7F 00 01 */	addis r3, r31, 1
/* 80BBF0EC  38 63 B1 94 */	addi r3, r3, -20076
/* 80BBF0F0  38 81 00 38 */	addi r4, r1, 0x38
/* 80BBF0F4  4B 6B 00 E9 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80BBF0F8  3A A0 00 00 */	li r21, 0
/* 80BBF0FC  3A C0 00 00 */	li r22, 0
/* 80BBF100  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BBF104  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BBF108  3A 63 23 3C */	addi r19, r3, 0x233c
lbl_80BBF10C:
/* 80BBF10C  7E 5F B2 14 */	add r18, r31, r22
/* 80BBF110  3C 72 00 01 */	addis r3, r18, 1
/* 80BBF114  C0 3B 01 04 */	lfs f1, 0x104(r27)
/* 80BBF118  38 63 B0 58 */	addi r3, r3, -20392
/* 80BBF11C  4B 6B 00 E5 */	bl SetR__8cM3dGCylFf
/* 80BBF120  7E 63 9B 78 */	mr r3, r19
/* 80BBF124  3E 92 00 01 */	addis r20, r18, 1
/* 80BBF128  3A 94 AF 34 */	addi r20, r20, -20684
/* 80BBF12C  7E 84 A3 78 */	mr r4, r20
/* 80BBF130  4B 6A 5A 79 */	bl Set__4cCcSFP8cCcD_Obj
/* 80BBF134  3E 55 00 01 */	addis r18, r21, 1
/* 80BBF138  3A 52 B1 F2 */	addi r18, r18, -19982
/* 80BBF13C  7C 7F 90 AE */	lbzx r3, r31, r18
/* 80BBF140  7C 60 07 75 */	extsb. r0, r3
/* 80BBF144  41 82 00 0C */	beq lbl_80BBF150
/* 80BBF148  38 03 FF FF */	addi r0, r3, -1
/* 80BBF14C  7C 1F 91 AE */	stbx r0, r31, r18
lbl_80BBF150:
/* 80BBF150  7C 1F 90 AE */	lbzx r0, r31, r18
/* 80BBF154  7C 00 07 75 */	extsb. r0, r0
/* 80BBF158  40 82 00 64 */	bne lbl_80BBF1BC
/* 80BBF15C  7E 83 A3 78 */	mr r3, r20
/* 80BBF160  4B 4C 53 01 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80BBF164  28 03 00 00 */	cmplwi r3, 0
/* 80BBF168  41 82 00 54 */	beq lbl_80BBF1BC
/* 80BBF16C  38 00 00 0A */	li r0, 0xa
/* 80BBF170  7C 1F 91 AE */	stbx r0, r31, r18
/* 80BBF174  38 15 00 01 */	addi r0, r21, 1
/* 80BBF178  3C 7F 00 01 */	addis r3, r31, 1
/* 80BBF17C  98 03 B1 F1 */	stb r0, -0x4e0f(r3)
/* 80BBF180  7E 83 A3 78 */	mr r3, r20
/* 80BBF184  4B 4C 53 75 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80BBF188  90 61 00 50 */	stw r3, 0x50(r1)
/* 80BBF18C  38 61 00 50 */	addi r3, r1, 0x50
/* 80BBF190  4B 4C 88 C9 */	bl at_power_check__FP11dCcU_AtInfo
/* 80BBF194  A0 01 00 6C */	lhz r0, 0x6c(r1)
/* 80BBF198  28 00 00 03 */	cmplwi r0, 3
/* 80BBF19C  41 80 00 14 */	blt lbl_80BBF1B0
/* 80BBF1A0  C0 1B 00 BC */	lfs f0, 0xbc(r27)
/* 80BBF1A4  3C 7F 00 01 */	addis r3, r31, 1
/* 80BBF1A8  D0 03 AE F4 */	stfs f0, -0x510c(r3)
/* 80BBF1AC  48 00 00 10 */	b lbl_80BBF1BC
lbl_80BBF1B0:
/* 80BBF1B0  C0 1B 01 08 */	lfs f0, 0x108(r27)
/* 80BBF1B4  3C 7F 00 01 */	addis r3, r31, 1
/* 80BBF1B8  D0 03 AE F4 */	stfs f0, -0x510c(r3)
lbl_80BBF1BC:
/* 80BBF1BC  3A B5 00 01 */	addi r21, r21, 1
/* 80BBF1C0  2C 15 00 02 */	cmpwi r21, 2
/* 80BBF1C4  3A D6 01 3C */	addi r22, r22, 0x13c
/* 80BBF1C8  41 80 FF 44 */	blt lbl_80BBF10C
lbl_80BBF1CC:
/* 80BBF1CC  E3 E1 01 28 */	psq_l f31, 296(r1), 0, 0 /* qr0 */
/* 80BBF1D0  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 80BBF1D4  E3 C1 01 18 */	psq_l f30, 280(r1), 0, 0 /* qr0 */
/* 80BBF1D8  CB C1 01 10 */	lfd f30, 0x110(r1)
/* 80BBF1DC  E3 A1 01 08 */	psq_l f29, 264(r1), 0, 0 /* qr0 */
/* 80BBF1E0  CB A1 01 00 */	lfd f29, 0x100(r1)
/* 80BBF1E4  E3 81 00 F8 */	psq_l f28, 248(r1), 0, 0 /* qr0 */
/* 80BBF1E8  CB 81 00 F0 */	lfd f28, 0xf0(r1)
/* 80BBF1EC  E3 61 00 E8 */	psq_l f27, 232(r1), 0, 0 /* qr0 */
/* 80BBF1F0  CB 61 00 E0 */	lfd f27, 0xe0(r1)
/* 80BBF1F4  E3 41 00 D8 */	psq_l f26, 216(r1), 0, 0 /* qr0 */
/* 80BBF1F8  CB 41 00 D0 */	lfd f26, 0xd0(r1)
/* 80BBF1FC  E3 21 00 C8 */	psq_l f25, 200(r1), 0, 0 /* qr0 */
/* 80BBF200  CB 21 00 C0 */	lfd f25, 0xc0(r1)
/* 80BBF204  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80BBF208  4B 7A 2F F5 */	bl _restgpr_18
/* 80BBF20C  80 01 01 34 */	lwz r0, 0x134(r1)
/* 80BBF210  7C 08 03 A6 */	mtlr r0
/* 80BBF214  38 21 01 30 */	addi r1, r1, 0x130
/* 80BBF218  4E 80 00 20 */	blr 
