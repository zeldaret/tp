lbl_8096A090:
/* 8096A090  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8096A094  7C 08 02 A6 */	mflr r0
/* 8096A098  90 01 00 34 */	stw r0, 0x34(r1)
/* 8096A09C  39 61 00 30 */	addi r11, r1, 0x30
/* 8096A0A0  4B 9F 81 3D */	bl _savegpr_29
/* 8096A0A4  7C 7E 1B 78 */	mr r30, r3
/* 8096A0A8  3C 60 80 97 */	lis r3, l_cyl_src@ha /* 0x8096C920@ha */
/* 8096A0AC  3B E3 C9 20 */	addi r31, r3, l_cyl_src@l /* 0x8096C920@l */
/* 8096A0B0  A8 1E 0D E8 */	lha r0, 0xde8(r30)
/* 8096A0B4  2C 00 00 01 */	cmpwi r0, 1
/* 8096A0B8  40 82 00 34 */	bne lbl_8096A0EC
/* 8096A0BC  38 60 00 00 */	li r3, 0
/* 8096A0C0  7C 66 1B 78 */	mr r6, r3
/* 8096A0C4  7C 65 1B 78 */	mr r5, r3
/* 8096A0C8  7C 64 1B 78 */	mr r4, r3
/* 8096A0CC  38 00 00 03 */	li r0, 3
/* 8096A0D0  7C 09 03 A6 */	mtctr r0
lbl_8096A0D4:
/* 8096A0D4  7C FE 1A 14 */	add r7, r30, r3
/* 8096A0D8  B0 C7 09 1A */	sth r6, 0x91a(r7)
/* 8096A0DC  B0 A7 09 1C */	sth r5, 0x91c(r7)
/* 8096A0E0  B0 87 09 1E */	sth r4, 0x91e(r7)
/* 8096A0E4  38 63 00 06 */	addi r3, r3, 6
/* 8096A0E8  42 00 FF EC */	bdnz lbl_8096A0D4
lbl_8096A0EC:
/* 8096A0EC  7F C3 F3 78 */	mr r3, r30
/* 8096A0F0  4B 7E 86 7D */	bl setMtx__8daNpcF_cFv
/* 8096A0F4  7F C3 F3 78 */	mr r3, r30
/* 8096A0F8  48 00 07 25 */	bl lookat__13daNpcBlueNS_cFv
/* 8096A0FC  C0 1F 01 28 */	lfs f0, 0x128(r31)
/* 8096A100  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8096A104  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 8096A108  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8096A10C  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 8096A110  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8096A114  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 8096A118  80 63 00 04 */	lwz r3, 4(r3)
/* 8096A11C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8096A120  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8096A124  38 63 00 C0 */	addi r3, r3, 0xc0
/* 8096A128  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8096A12C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8096A130  4B 9D C3 81 */	bl PSMTXCopy
/* 8096A134  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8096A138  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8096A13C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8096A140  D0 1E 08 E4 */	stfs f0, 0x8e4(r30)
/* 8096A144  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8096A148  D0 1E 08 E8 */	stfs f0, 0x8e8(r30)
/* 8096A14C  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 8096A150  D0 1E 08 EC */	stfs f0, 0x8ec(r30)
/* 8096A154  7F A3 EB 78 */	mr r3, r29
/* 8096A158  38 81 00 14 */	addi r4, r1, 0x14
/* 8096A15C  38 BE 05 38 */	addi r5, r30, 0x538
/* 8096A160  4B 9D CC 0D */	bl PSMTXMultVec
/* 8096A164  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 8096A168  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8096A16C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8096A170  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8096A174  38 81 00 14 */	addi r4, r1, 0x14
/* 8096A178  7C 85 23 78 */	mr r5, r4
/* 8096A17C  4B 9D CB F1 */	bl PSMTXMultVec
/* 8096A180  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 8096A184  38 81 00 14 */	addi r4, r1, 0x14
/* 8096A188  4B 90 6A ED */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 8096A18C  B0 7E 09 02 */	sth r3, 0x902(r30)
/* 8096A190  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 8096A194  38 81 00 14 */	addi r4, r1, 0x14
/* 8096A198  4B 90 6A 6D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8096A19C  B0 7E 09 04 */	sth r3, 0x904(r30)
/* 8096A1A0  C0 5E 08 EC */	lfs f2, 0x8ec(r30)
/* 8096A1A4  C0 3E 08 E8 */	lfs f1, 0x8e8(r30)
/* 8096A1A8  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 8096A1AC  EC 21 00 2A */	fadds f1, f1, f0
/* 8096A1B0  C0 1E 08 E4 */	lfs f0, 0x8e4(r30)
/* 8096A1B4  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 8096A1B8  D0 3E 05 54 */	stfs f1, 0x554(r30)
/* 8096A1BC  D0 5E 05 58 */	stfs f2, 0x558(r30)
/* 8096A1C0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 8096A1C4  80 63 00 04 */	lwz r3, 4(r3)
/* 8096A1C8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8096A1CC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8096A1D0  38 63 00 30 */	addi r3, r3, 0x30
/* 8096A1D4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8096A1D8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8096A1DC  4B 9D C2 D5 */	bl PSMTXCopy
/* 8096A1E0  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8096A1E4  D0 01 00 08 */	stfs f0, 8(r1)
/* 8096A1E8  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8096A1EC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8096A1F0  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 8096A1F4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8096A1F8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8096A1FC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8096A200  38 7E 0D A8 */	addi r3, r30, 0xda8
/* 8096A204  38 81 00 08 */	addi r4, r1, 8
/* 8096A208  4B 90 4F D5 */	bl SetC__8cM3dGCylFRC4cXyz
/* 8096A20C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8096A210  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8096A214  38 63 23 3C */	addi r3, r3, 0x233c
/* 8096A218  38 9E 0C 84 */	addi r4, r30, 0xc84
/* 8096A21C  4B 8F A9 8D */	bl Set__4cCcSFP8cCcD_Obj
/* 8096A220  39 61 00 30 */	addi r11, r1, 0x30
/* 8096A224  4B 9F 80 05 */	bl _restgpr_29
/* 8096A228  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8096A22C  7C 08 03 A6 */	mtlr r0
/* 8096A230  38 21 00 30 */	addi r1, r1, 0x30
/* 8096A234  4E 80 00 20 */	blr 
