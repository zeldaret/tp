lbl_801D0C6C:
/* 801D0C6C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801D0C70  7C 08 02 A6 */	mflr r0
/* 801D0C74  90 01 00 44 */	stw r0, 0x44(r1)
/* 801D0C78  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801D0C7C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801D0C80  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 801D0C84  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 801D0C88  39 61 00 20 */	addi r11, r1, 0x20
/* 801D0C8C  48 19 15 51 */	bl _savegpr_29
/* 801D0C90  7C 7D 1B 78 */	mr r29, r3
/* 801D0C94  7C 9E 23 78 */	mr r30, r4
/* 801D0C98  7C BF 2B 78 */	mr r31, r5
/* 801D0C9C  C0 A3 0F F0 */	lfs f5, 0xff0(r3)
/* 801D0CA0  C0 82 A7 E8 */	lfs f4, lit_4202(r2)
/* 801D0CA4  C0 63 0F E8 */	lfs f3, 0xfe8(r3)
/* 801D0CA8  C0 03 0F E0 */	lfs f0, 0xfe0(r3)
/* 801D0CAC  EC 03 00 2A */	fadds f0, f3, f0
/* 801D0CB0  EC 04 00 32 */	fmuls f0, f4, f0
/* 801D0CB4  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D0CB8  EF E5 00 32 */	fmuls f31, f5, f0
/* 801D0CBC  C0 23 0F EC */	lfs f1, 0xfec(r3)
/* 801D0CC0  C0 03 0F E4 */	lfs f0, 0xfe4(r3)
/* 801D0CC4  EC 01 00 2A */	fadds f0, f1, f0
/* 801D0CC8  EC 04 00 32 */	fmuls f0, f4, f0
/* 801D0CCC  EC 02 00 28 */	fsubs f0, f2, f0
/* 801D0CD0  EF C5 00 32 */	fmuls f30, f5, f0
/* 801D0CD4  48 00 19 A5 */	bl getMapAreaGlobalCenterPosX__18dMenu_Fmap2DBack_cFv
/* 801D0CD8  EC 1F 08 2A */	fadds f0, f31, f1
/* 801D0CDC  D0 1E 00 00 */	stfs f0, 0(r30)
/* 801D0CE0  7F A3 EB 78 */	mr r3, r29
/* 801D0CE4  48 00 19 E5 */	bl getMapAreaGlobalCenterPosY__18dMenu_Fmap2DBack_cFv
/* 801D0CE8  EC 1E 08 2A */	fadds f0, f30, f1
/* 801D0CEC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 801D0CF0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801D0CF4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801D0CF8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 801D0CFC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 801D0D00  39 61 00 20 */	addi r11, r1, 0x20
/* 801D0D04  48 19 15 25 */	bl _restgpr_29
/* 801D0D08  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801D0D0C  7C 08 03 A6 */	mtlr r0
/* 801D0D10  38 21 00 40 */	addi r1, r1, 0x40
/* 801D0D14  4E 80 00 20 */	blr 
