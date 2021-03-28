lbl_808143A0:
/* 808143A0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 808143A4  7C 08 02 A6 */	mflr r0
/* 808143A8  90 01 00 94 */	stw r0, 0x94(r1)
/* 808143AC  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 808143B0  93 C1 00 88 */	stw r30, 0x88(r1)
/* 808143B4  7C 7E 1B 78 */	mr r30, r3
/* 808143B8  3C 60 80 81 */	lis r3, lit_3925@ha
/* 808143BC  3B E3 59 94 */	addi r31, r3, lit_3925@l
/* 808143C0  38 61 00 2C */	addi r3, r1, 0x2c
/* 808143C4  4B 86 31 B8 */	b __ct__11dBgS_GndChkFv
/* 808143C8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 808143CC  D0 01 00 08 */	stfs f0, 8(r1)
/* 808143D0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 808143D4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 808143D8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 808143DC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 808143E0  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 808143E4  EC 01 00 2A */	fadds f0, f1, f0
/* 808143E8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 808143EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 808143F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 808143F4  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 808143F8  4B 7F 7F E4 */	b mDoMtx_YrotS__FPA4_fs
/* 808143FC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80814400  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80814404  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80814408  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 8081440C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80814410  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80814414  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80814418  38 81 00 20 */	addi r4, r1, 0x20
/* 8081441C  38 A1 00 14 */	addi r5, r1, 0x14
/* 80814420  4B B3 29 4C */	b PSMTXMultVec
/* 80814424  C0 21 00 08 */	lfs f1, 8(r1)
/* 80814428  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8081442C  EC 01 00 2A */	fadds f0, f1, f0
/* 80814430  D0 01 00 08 */	stfs f0, 8(r1)
/* 80814434  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80814438  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8081443C  EC 01 00 2A */	fadds f0, f1, f0
/* 80814440  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80814444  38 61 00 2C */	addi r3, r1, 0x2c
/* 80814448  38 81 00 08 */	addi r4, r1, 8
/* 8081444C  4B A5 38 DC */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80814450  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80814454  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80814458  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8081445C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80814460  4B 86 00 40 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80814464  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80814468  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081446C  40 81 00 44 */	ble lbl_808144B0
/* 80814470  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80814474  C0 01 00 08 */	lfs f0, 8(r1)
/* 80814478  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8081447C  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
/* 80814480  D0 5E 04 D8 */	stfs f2, 0x4d8(r30)
/* 80814484  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80814488  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 8081448C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80814490  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80814494  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80814498  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 8081449C  38 61 00 2C */	addi r3, r1, 0x2c
/* 808144A0  38 80 FF FF */	li r4, -1
/* 808144A4  4B 86 31 4C */	b __dt__11dBgS_GndChkFv
/* 808144A8  38 60 00 01 */	li r3, 1
/* 808144AC  48 00 00 14 */	b lbl_808144C0
lbl_808144B0:
/* 808144B0  38 61 00 2C */	addi r3, r1, 0x2c
/* 808144B4  38 80 FF FF */	li r4, -1
/* 808144B8  4B 86 31 38 */	b __dt__11dBgS_GndChkFv
/* 808144BC  38 60 00 00 */	li r3, 0
lbl_808144C0:
/* 808144C0  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 808144C4  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 808144C8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 808144CC  7C 08 03 A6 */	mtlr r0
/* 808144D0  38 21 00 90 */	addi r1, r1, 0x90
/* 808144D4  4E 80 00 20 */	blr 
