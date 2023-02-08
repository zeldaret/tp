lbl_805CA158:
/* 805CA158  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805CA15C  7C 08 02 A6 */	mflr r0
/* 805CA160  90 01 00 34 */	stw r0, 0x34(r1)
/* 805CA164  39 61 00 30 */	addi r11, r1, 0x30
/* 805CA168  4B D9 80 75 */	bl _savegpr_29
/* 805CA16C  7C 7D 1B 78 */	mr r29, r3
/* 805CA170  3C 60 80 5D */	lis r3, lit_1109@ha /* 0x805CB040@ha */
/* 805CA174  3B C3 B0 40 */	addi r30, r3, lit_1109@l /* 0x805CB040@l */
/* 805CA178  3C 60 80 5D */	lis r3, lit_3844@ha /* 0x805CAD5C@ha */
/* 805CA17C  3B E3 AD 5C */	addi r31, r3, lit_3844@l /* 0x805CAD5C@l */
/* 805CA180  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805CA184  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805CA188  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805CA18C  38 83 04 D0 */	addi r4, r3, 0x4d0
/* 805CA190  90 9E 00 44 */	stw r4, 0x44(r30)
/* 805CA194  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 805CA198  4B CA 6A 6D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 805CA19C  B0 7E 00 48 */	sth r3, 0x48(r30)
/* 805CA1A0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 805CA1A4  80 9E 00 44 */	lwz r4, 0x44(r30)
/* 805CA1A8  4B D7 D1 F5 */	bl PSVECSquareDistance
/* 805CA1AC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805CA1B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CA1B4  40 81 00 58 */	ble lbl_805CA20C
/* 805CA1B8  FC 00 08 34 */	frsqrte f0, f1
/* 805CA1BC  C8 9F 01 38 */	lfd f4, 0x138(r31)
/* 805CA1C0  FC 44 00 32 */	fmul f2, f4, f0
/* 805CA1C4  C8 7F 01 40 */	lfd f3, 0x140(r31)
/* 805CA1C8  FC 00 00 32 */	fmul f0, f0, f0
/* 805CA1CC  FC 01 00 32 */	fmul f0, f1, f0
/* 805CA1D0  FC 03 00 28 */	fsub f0, f3, f0
/* 805CA1D4  FC 02 00 32 */	fmul f0, f2, f0
/* 805CA1D8  FC 44 00 32 */	fmul f2, f4, f0
/* 805CA1DC  FC 00 00 32 */	fmul f0, f0, f0
/* 805CA1E0  FC 01 00 32 */	fmul f0, f1, f0
/* 805CA1E4  FC 03 00 28 */	fsub f0, f3, f0
/* 805CA1E8  FC 02 00 32 */	fmul f0, f2, f0
/* 805CA1EC  FC 44 00 32 */	fmul f2, f4, f0
/* 805CA1F0  FC 00 00 32 */	fmul f0, f0, f0
/* 805CA1F4  FC 01 00 32 */	fmul f0, f1, f0
/* 805CA1F8  FC 03 00 28 */	fsub f0, f3, f0
/* 805CA1FC  FC 02 00 32 */	fmul f0, f2, f0
/* 805CA200  FC 21 00 32 */	fmul f1, f1, f0
/* 805CA204  FC 20 08 18 */	frsp f1, f1
/* 805CA208  48 00 00 88 */	b lbl_805CA290
lbl_805CA20C:
/* 805CA20C  C8 1F 01 48 */	lfd f0, 0x148(r31)
/* 805CA210  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CA214  40 80 00 10 */	bge lbl_805CA224
/* 805CA218  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805CA21C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805CA220  48 00 00 70 */	b lbl_805CA290
lbl_805CA224:
/* 805CA224  D0 21 00 08 */	stfs f1, 8(r1)
/* 805CA228  80 81 00 08 */	lwz r4, 8(r1)
/* 805CA22C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805CA230  3C 00 7F 80 */	lis r0, 0x7f80
/* 805CA234  7C 03 00 00 */	cmpw r3, r0
/* 805CA238  41 82 00 14 */	beq lbl_805CA24C
/* 805CA23C  40 80 00 40 */	bge lbl_805CA27C
/* 805CA240  2C 03 00 00 */	cmpwi r3, 0
/* 805CA244  41 82 00 20 */	beq lbl_805CA264
/* 805CA248  48 00 00 34 */	b lbl_805CA27C
lbl_805CA24C:
/* 805CA24C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805CA250  41 82 00 0C */	beq lbl_805CA25C
/* 805CA254  38 00 00 01 */	li r0, 1
/* 805CA258  48 00 00 28 */	b lbl_805CA280
lbl_805CA25C:
/* 805CA25C  38 00 00 02 */	li r0, 2
/* 805CA260  48 00 00 20 */	b lbl_805CA280
lbl_805CA264:
/* 805CA264  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805CA268  41 82 00 0C */	beq lbl_805CA274
/* 805CA26C  38 00 00 05 */	li r0, 5
/* 805CA270  48 00 00 10 */	b lbl_805CA280
lbl_805CA274:
/* 805CA274  38 00 00 03 */	li r0, 3
/* 805CA278  48 00 00 08 */	b lbl_805CA280
lbl_805CA27C:
/* 805CA27C  38 00 00 04 */	li r0, 4
lbl_805CA280:
/* 805CA280  2C 00 00 01 */	cmpwi r0, 1
/* 805CA284  40 82 00 0C */	bne lbl_805CA290
/* 805CA288  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805CA28C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805CA290:
/* 805CA290  D0 3E 00 40 */	stfs f1, 0x40(r30)
/* 805CA294  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805CA298  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805CA29C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805CA2A0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805CA2A4  80 7D 06 EC */	lwz r3, 0x6ec(r29)
/* 805CA2A8  80 63 00 04 */	lwz r3, 4(r3)
/* 805CA2AC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805CA2B0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805CA2B4  38 63 03 90 */	addi r3, r3, 0x390
/* 805CA2B8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805CA2BC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805CA2C0  4B D7 C1 F1 */	bl PSMTXCopy
/* 805CA2C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805CA2C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805CA2CC  38 81 00 0C */	addi r4, r1, 0xc
/* 805CA2D0  7C 85 23 78 */	mr r5, r4
/* 805CA2D4  4B D7 CA 99 */	bl PSMTXMultVec
/* 805CA2D8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805CA2DC  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 805CA2E0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805CA2E4  38 7E 00 58 */	addi r3, r30, 0x58
/* 805CA2E8  D0 03 00 04 */	stfs f0, 4(r3)
/* 805CA2EC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805CA2F0  D0 03 00 08 */	stfs f0, 8(r3)
/* 805CA2F4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805CA2F8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805CA2FC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805CA300  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805CA304  80 7D 06 EC */	lwz r3, 0x6ec(r29)
/* 805CA308  80 63 00 04 */	lwz r3, 4(r3)
/* 805CA30C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805CA310  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805CA314  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 805CA318  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805CA31C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805CA320  4B D7 C1 91 */	bl PSMTXCopy
/* 805CA324  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805CA328  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805CA32C  38 81 00 0C */	addi r4, r1, 0xc
/* 805CA330  7C 85 23 78 */	mr r5, r4
/* 805CA334  4B D7 CA 39 */	bl PSMTXMultVec
/* 805CA338  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805CA33C  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 805CA340  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805CA344  38 7E 00 70 */	addi r3, r30, 0x70
/* 805CA348  D0 03 00 04 */	stfs f0, 4(r3)
/* 805CA34C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805CA350  D0 03 00 08 */	stfs f0, 8(r3)
/* 805CA354  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805CA358  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805CA35C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805CA360  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805CA364  80 7D 06 EC */	lwz r3, 0x6ec(r29)
/* 805CA368  80 63 00 04 */	lwz r3, 4(r3)
/* 805CA36C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805CA370  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805CA374  38 63 08 70 */	addi r3, r3, 0x870
/* 805CA378  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805CA37C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805CA380  4B D7 C1 31 */	bl PSMTXCopy
/* 805CA384  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805CA388  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805CA38C  38 81 00 0C */	addi r4, r1, 0xc
/* 805CA390  7C 85 23 78 */	mr r5, r4
/* 805CA394  4B D7 C9 D9 */	bl PSMTXMultVec
/* 805CA398  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805CA39C  D0 1E 00 88 */	stfs f0, 0x88(r30)
/* 805CA3A0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805CA3A4  38 7E 00 88 */	addi r3, r30, 0x88
/* 805CA3A8  D0 03 00 04 */	stfs f0, 4(r3)
/* 805CA3AC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805CA3B0  D0 03 00 08 */	stfs f0, 8(r3)
/* 805CA3B4  38 60 00 00 */	li r3, 0
/* 805CA3B8  7C 64 1B 78 */	mr r4, r3
/* 805CA3BC  38 00 00 05 */	li r0, 5
/* 805CA3C0  7C 09 03 A6 */	mtctr r0
lbl_805CA3C4:
/* 805CA3C4  38 C3 06 2C */	addi r6, r3, 0x62c
/* 805CA3C8  7C BD 32 AE */	lhax r5, r29, r6
/* 805CA3CC  38 05 FF FF */	addi r0, r5, -1
/* 805CA3D0  7C 1D 33 2E */	sthx r0, r29, r6
/* 805CA3D4  7C 1D 32 AE */	lhax r0, r29, r6
/* 805CA3D8  2C 00 00 00 */	cmpwi r0, 0
/* 805CA3DC  41 81 00 08 */	bgt lbl_805CA3E4
/* 805CA3E0  7C 9D 33 2E */	sthx r4, r29, r6
lbl_805CA3E4:
/* 805CA3E4  38 63 00 02 */	addi r3, r3, 2
/* 805CA3E8  42 00 FF DC */	bdnz lbl_805CA3C4
/* 805CA3EC  7F A3 EB 78 */	mr r3, r29
/* 805CA3F0  4B FF EF 29 */	bl Action__9daB_DRE_cFv
/* 805CA3F4  7F A3 EB 78 */	mr r3, r29
/* 805CA3F8  4B FF F7 49 */	bl SoundChk__9daB_DRE_cFv
/* 805CA3FC  7F A3 EB 78 */	mr r3, r29
/* 805CA400  48 00 00 9D */	bl SpeedSet__9daB_DRE_cFv
/* 805CA404  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 805CA408  C0 1D 04 F8 */	lfs f0, 0x4f8(r29)
/* 805CA40C  EC 01 00 2A */	fadds f0, f1, f0
/* 805CA410  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 805CA414  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 805CA418  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 805CA41C  EC 01 00 2A */	fadds f0, f1, f0
/* 805CA420  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 805CA424  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 805CA428  C0 1D 05 00 */	lfs f0, 0x500(r29)
/* 805CA42C  EC 01 00 2A */	fadds f0, f1, f0
/* 805CA430  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 805CA434  88 1D 05 B7 */	lbz r0, 0x5b7(r29)
/* 805CA438  28 00 00 01 */	cmplwi r0, 1
/* 805CA43C  40 82 00 0C */	bne lbl_805CA448
/* 805CA440  80 7D 06 04 */	lwz r3, 0x604(r29)
/* 805CA444  4B A4 2F E5 */	bl play__14mDoExt_baseAnmFv
lbl_805CA448:
/* 805CA448  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805CA44C  7C 03 07 74 */	extsb r3, r0
/* 805CA450  4B A6 2C 1D */	bl dComIfGp_getReverb__Fi
/* 805CA454  7C 65 1B 78 */	mr r5, r3
/* 805CA458  80 7D 06 EC */	lwz r3, 0x6ec(r29)
/* 805CA45C  38 80 00 00 */	li r4, 0
/* 805CA460  4B A4 6C 51 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 805CA464  38 7D 07 30 */	addi r3, r29, 0x730
/* 805CA468  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805CA46C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805CA470  38 84 0F 38 */	addi r4, r4, 0xf38
/* 805CA474  4B AA C6 39 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 805CA478  7F A3 EB 78 */	mr r3, r29
/* 805CA47C  48 00 02 45 */	bl setBaseMtx__9daB_DRE_cFv
/* 805CA480  38 60 00 01 */	li r3, 1
/* 805CA484  39 61 00 30 */	addi r11, r1, 0x30
/* 805CA488  4B D9 7D A1 */	bl _restgpr_29
/* 805CA48C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805CA490  7C 08 03 A6 */	mtlr r0
/* 805CA494  38 21 00 30 */	addi r1, r1, 0x30
/* 805CA498  4E 80 00 20 */	blr 
