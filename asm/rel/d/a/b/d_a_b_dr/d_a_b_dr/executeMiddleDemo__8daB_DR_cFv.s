lbl_805C3558:
/* 805C3558  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805C355C  7C 08 02 A6 */	mflr r0
/* 805C3560  90 01 00 54 */	stw r0, 0x54(r1)
/* 805C3564  39 61 00 50 */	addi r11, r1, 0x50
/* 805C3568  4B D9 EC 75 */	bl _savegpr_29
/* 805C356C  7C 7F 1B 78 */	mr r31, r3
/* 805C3570  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C3574  38 A4 61 C0 */	addi r5, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C3578  88 05 5D B0 */	lbz r0, 0x5db0(r5)
/* 805C357C  7C 00 07 74 */	extsb r0, r0
/* 805C3580  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805C3584  7C 85 02 14 */	add r4, r5, r0
/* 805C3588  83 C4 5D 74 */	lwz r30, 0x5d74(r4)
/* 805C358C  83 A5 5D AC */	lwz r29, 0x5dac(r5)
/* 805C3590  80 03 07 0C */	lwz r0, 0x70c(r3)
/* 805C3594  2C 00 00 01 */	cmpwi r0, 1
/* 805C3598  41 82 00 38 */	beq lbl_805C35D0
/* 805C359C  40 80 00 A4 */	bge lbl_805C3640
/* 805C35A0  2C 00 00 00 */	cmpwi r0, 0
/* 805C35A4  40 80 00 08 */	bge lbl_805C35AC
/* 805C35A8  48 00 00 98 */	b lbl_805C3640
lbl_805C35AC:
/* 805C35AC  4B FF F6 3D */	bl startDemoCheck__8daB_DR_cFv
/* 805C35B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805C35B4  41 82 00 8C */	beq lbl_805C3640
/* 805C35B8  7F E3 FB 78 */	mr r3, r31
/* 805C35BC  4B FF 96 5D */	bl mAllClr__8daB_DR_cFv
/* 805C35C0  80 7F 07 0C */	lwz r3, 0x70c(r31)
/* 805C35C4  38 03 00 01 */	addi r0, r3, 1
/* 805C35C8  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 805C35CC  48 00 00 74 */	b lbl_805C3640
lbl_805C35D0:
/* 805C35D0  7F A4 EB 78 */	mr r4, r29
/* 805C35D4  4B A5 71 3D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805C35D8  7C 64 1B 78 */	mr r4, r3
/* 805C35DC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805C35E0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805C35E4  80 63 00 00 */	lwz r3, 0(r3)
/* 805C35E8  3C 84 00 01 */	addis r4, r4, 1
/* 805C35EC  38 04 80 00 */	addi r0, r4, -32768
/* 805C35F0  7C 04 07 34 */	extsh r4, r0
/* 805C35F4  4B A4 8D E9 */	bl mDoMtx_YrotS__FPA4_fs
/* 805C35F8  3C 60 80 5C */	lis r3, lit_4011@ha /* 0x805C6CA4@ha */
/* 805C35FC  C0 03 6C A4 */	lfs f0, lit_4011@l(r3)  /* 0x805C6CA4@l */
/* 805C3600  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805C3604  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805C3608  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805C360C  38 61 00 2C */	addi r3, r1, 0x2c
/* 805C3610  38 81 00 20 */	addi r4, r1, 0x20
/* 805C3614  4B CA D8 D9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805C3618  38 61 00 20 */	addi r3, r1, 0x20
/* 805C361C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805C3620  7C 65 1B 78 */	mr r5, r3
/* 805C3624  4B D8 3A 6D */	bl PSVECAdd
/* 805C3628  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805C362C  D0 1F 27 D0 */	stfs f0, 0x27d0(r31)
/* 805C3630  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805C3634  D0 1F 27 D4 */	stfs f0, 0x27d4(r31)
/* 805C3638  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805C363C  D0 1F 27 D8 */	stfs f0, 0x27d8(r31)
lbl_805C3640:
/* 805C3640  80 1F 07 0C */	lwz r0, 0x70c(r31)
/* 805C3644  2C 00 00 01 */	cmpwi r0, 1
/* 805C3648  41 80 00 44 */	blt lbl_805C368C
/* 805C364C  C0 1F 27 D0 */	lfs f0, 0x27d0(r31)
/* 805C3650  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805C3654  C0 1F 27 D4 */	lfs f0, 0x27d4(r31)
/* 805C3658  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805C365C  C0 1F 27 D8 */	lfs f0, 0x27d8(r31)
/* 805C3660  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805C3664  C0 1F 27 C4 */	lfs f0, 0x27c4(r31)
/* 805C3668  D0 01 00 08 */	stfs f0, 8(r1)
/* 805C366C  C0 1F 27 C8 */	lfs f0, 0x27c8(r31)
/* 805C3670  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805C3674  C0 1F 27 CC */	lfs f0, 0x27cc(r31)
/* 805C3678  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805C367C  38 7E 02 48 */	addi r3, r30, 0x248
/* 805C3680  38 81 00 14 */	addi r4, r1, 0x14
/* 805C3684  38 A1 00 08 */	addi r5, r1, 8
/* 805C3688  4B BB D4 21 */	bl Set__9dCamera_cF4cXyz4cXyz
lbl_805C368C:
/* 805C368C  39 61 00 50 */	addi r11, r1, 0x50
/* 805C3690  4B D9 EB 99 */	bl _restgpr_29
/* 805C3694  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805C3698  7C 08 03 A6 */	mtlr r0
/* 805C369C  38 21 00 50 */	addi r1, r1, 0x50
/* 805C36A0  4E 80 00 20 */	blr 
