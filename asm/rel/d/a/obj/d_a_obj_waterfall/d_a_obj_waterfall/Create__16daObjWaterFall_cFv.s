lbl_80D2F39C:
/* 80D2F39C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2F3A0  7C 08 02 A6 */	mflr r0
/* 80D2F3A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2F3A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2F3AC  93 C1 00 08 */	stw r30, 8(r1)
/* 80D2F3B0  7C 7E 1B 78 */	mr r30, r3
/* 80D2F3B4  3C 80 80 D3 */	lis r4, lit_3807@ha /* 0x80D2FD58@ha */
/* 80D2F3B8  3B E4 FD 58 */	addi r31, r4, lit_3807@l /* 0x80D2FD58@l */
/* 80D2F3BC  4B FF FF 69 */	bl initBaseMtx__16daObjWaterFall_cFv
/* 80D2F3C0  38 7E 05 74 */	addi r3, r30, 0x574
/* 80D2F3C4  38 80 00 00 */	li r4, 0
/* 80D2F3C8  38 A0 00 FF */	li r5, 0xff
/* 80D2F3CC  7F C6 F3 78 */	mr r6, r30
/* 80D2F3D0  4B 35 44 91 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D2F3D4  38 7E 08 68 */	addi r3, r30, 0x868
/* 80D2F3D8  3C 80 80 D3 */	lis r4, l_cyl_src@ha /* 0x80D2FD88@ha */
/* 80D2F3DC  38 84 FD 88 */	addi r4, r4, l_cyl_src@l /* 0x80D2FD88@l */
/* 80D2F3E0  4B 35 54 D5 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80D2F3E4  38 1E 05 74 */	addi r0, r30, 0x574
/* 80D2F3E8  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80D2F3EC  38 7E 09 8C */	addi r3, r30, 0x98c
/* 80D2F3F0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80D2F3F4  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80D2F3F8  EC 21 00 32 */	fmuls f1, f1, f0
/* 80D2F3FC  4B 53 FD FD */	bl SetH__8cM3dGCylFf
/* 80D2F400  C0 3E 04 EC */	lfs f1, 0x4ec(r30)
/* 80D2F404  C0 5E 04 F4 */	lfs f2, 0x4f4(r30)
/* 80D2F408  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80D2F40C  40 80 00 18 */	bge lbl_80D2F424
/* 80D2F410  38 7E 09 8C */	addi r3, r30, 0x98c
/* 80D2F414  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80D2F418  EC 20 00 72 */	fmuls f1, f0, f1
/* 80D2F41C  4B 53 FD E5 */	bl SetR__8cM3dGCylFf
/* 80D2F420  48 00 00 14 */	b lbl_80D2F434
lbl_80D2F424:
/* 80D2F424  38 7E 09 8C */	addi r3, r30, 0x98c
/* 80D2F428  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80D2F42C  EC 20 00 B2 */	fmuls f1, f0, f2
/* 80D2F430  4B 53 FD D1 */	bl SetR__8cM3dGCylFf
lbl_80D2F434:
/* 80D2F434  80 1E 09 50 */	lwz r0, 0x950(r30)
/* 80D2F438  60 00 00 02 */	ori r0, r0, 2
/* 80D2F43C  90 1E 09 50 */	stw r0, 0x950(r30)
/* 80D2F440  C0 9E 04 EC */	lfs f4, 0x4ec(r30)
/* 80D2F444  C0 5E 04 F4 */	lfs f2, 0x4f4(r30)
/* 80D2F448  FC 04 10 40 */	fcmpo cr0, f4, f2
/* 80D2F44C  40 81 00 70 */	ble lbl_80D2F4BC
/* 80D2F450  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80D2F454  EC 20 01 32 */	fmuls f1, f0, f4
/* 80D2F458  C0 7F 00 04 */	lfs f3, 4(r31)
/* 80D2F45C  EC 03 00 B2 */	fmuls f0, f3, f2
/* 80D2F460  EC 01 00 2A */	fadds f0, f1, f0
/* 80D2F464  D0 1E 09 A4 */	stfs f0, 0x9a4(r30)
/* 80D2F468  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80D2F46C  D0 5E 09 A8 */	stfs f2, 0x9a8(r30)
/* 80D2F470  D0 5E 09 AC */	stfs f2, 0x9ac(r30)
/* 80D2F474  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80D2F478  EC 23 00 32 */	fmuls f1, f3, f0
/* 80D2F47C  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 80D2F480  EC 03 00 32 */	fmuls f0, f3, f0
/* 80D2F484  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D2F488  D0 1E 09 B0 */	stfs f0, 0x9b0(r30)
/* 80D2F48C  D0 5E 09 B4 */	stfs f2, 0x9b4(r30)
/* 80D2F490  D0 5E 09 B8 */	stfs f2, 0x9b8(r30)
/* 80D2F494  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80D2F498  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80D2F49C  EC 22 00 32 */	fmuls f1, f2, f0
/* 80D2F4A0  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 80D2F4A4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D2F4A8  EC 21 00 28 */	fsubs f1, f1, f0
/* 80D2F4AC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80D2F4B0  EC 01 00 24 */	fdivs f0, f1, f0
/* 80D2F4B4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80D2F4B8  48 00 00 6C */	b lbl_80D2F524
lbl_80D2F4BC:
/* 80D2F4BC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80D2F4C0  EC 20 00 B2 */	fmuls f1, f0, f2
/* 80D2F4C4  C0 7F 00 04 */	lfs f3, 4(r31)
/* 80D2F4C8  EC 03 01 32 */	fmuls f0, f3, f4
/* 80D2F4CC  EC 01 00 2A */	fadds f0, f1, f0
/* 80D2F4D0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80D2F4D4  D0 5E 09 A4 */	stfs f2, 0x9a4(r30)
/* 80D2F4D8  D0 5E 09 A8 */	stfs f2, 0x9a8(r30)
/* 80D2F4DC  D0 1E 09 AC */	stfs f0, 0x9ac(r30)
/* 80D2F4E0  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 80D2F4E4  EC 23 00 32 */	fmuls f1, f3, f0
/* 80D2F4E8  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80D2F4EC  EC 03 00 32 */	fmuls f0, f3, f0
/* 80D2F4F0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D2F4F4  D0 5E 09 B0 */	stfs f2, 0x9b0(r30)
/* 80D2F4F8  D0 5E 09 B4 */	stfs f2, 0x9b4(r30)
/* 80D2F4FC  D0 1E 09 B8 */	stfs f0, 0x9b8(r30)
/* 80D2F500  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80D2F504  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 80D2F508  EC 22 00 32 */	fmuls f1, f2, f0
/* 80D2F50C  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80D2F510  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D2F514  EC 21 00 28 */	fsubs f1, f1, f0
/* 80D2F518  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80D2F51C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80D2F520  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80D2F524:
/* 80D2F524  38 7E 04 A8 */	addi r3, r30, 0x4a8
/* 80D2F528  4B 2D D8 3D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80D2F52C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D2F530  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D2F534  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80D2F538  4B 2D CE FD */	bl mDoMtx_YrotM__FPA4_fs
/* 80D2F53C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D2F540  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D2F544  38 9E 09 A4 */	addi r4, r30, 0x9a4
/* 80D2F548  7C 85 23 78 */	mr r5, r4
/* 80D2F54C  4B 61 78 21 */	bl PSMTXMultVec
/* 80D2F550  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D2F554  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D2F558  38 9E 09 B0 */	addi r4, r30, 0x9b0
/* 80D2F55C  7C 85 23 78 */	mr r5, r4
/* 80D2F560  4B 61 78 0D */	bl PSMTXMultVec
/* 80D2F564  C0 1E 09 A4 */	lfs f0, 0x9a4(r30)
/* 80D2F568  D0 1E 09 BC */	stfs f0, 0x9bc(r30)
/* 80D2F56C  C0 1E 09 A8 */	lfs f0, 0x9a8(r30)
/* 80D2F570  D0 1E 09 C0 */	stfs f0, 0x9c0(r30)
/* 80D2F574  C0 1E 09 AC */	lfs f0, 0x9ac(r30)
/* 80D2F578  D0 1E 09 C4 */	stfs f0, 0x9c4(r30)
/* 80D2F57C  38 00 00 01 */	li r0, 1
/* 80D2F580  98 1E 09 C8 */	stb r0, 0x9c8(r30)
/* 80D2F584  38 60 00 01 */	li r3, 1
/* 80D2F588  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2F58C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D2F590  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2F594  7C 08 03 A6 */	mtlr r0
/* 80D2F598  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2F59C  4E 80 00 20 */	blr 
