lbl_8060601C:
/* 8060601C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80606020  7C 08 02 A6 */	mflr r0
/* 80606024  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80606028  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8060602C  4B D5 C1 AD */	bl _savegpr_28
/* 80606030  7C 7C 1B 78 */	mr r28, r3
/* 80606034  3C 60 80 61 */	lis r3, lit_3928@ha /* 0x8060FDE0@ha */
/* 80606038  3B E3 FD E0 */	addi r31, r3, lit_3928@l /* 0x8060FDE0@l */
/* 8060603C  3B C0 FF FF */	li r30, -1
/* 80606040  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 80606044  38 63 00 0C */	addi r3, r3, 0xc
/* 80606048  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8060604C  4B D2 23 E1 */	bl checkPass__12J3DFrameCtrlFf
/* 80606050  2C 03 00 00 */	cmpwi r3, 0
/* 80606054  41 82 00 6C */	beq lbl_806060C0
/* 80606058  3B C0 00 34 */	li r30, 0x34
/* 8060605C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80606060  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80606064  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80606068  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8060606C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80606070  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80606074  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80606078  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8060607C  38 80 00 02 */	li r4, 2
/* 80606080  38 A0 00 1F */	li r5, 0x1f
/* 80606084  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80606088  4B A6 99 9D */	bl StartShock__12dVibration_cFii4cXyz
/* 8060608C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704F6@ha */
/* 80606090  38 03 04 F6 */	addi r0, r3, 0x04F6 /* 0x000704F6@l */
/* 80606094  90 01 00 10 */	stw r0, 0x10(r1)
/* 80606098  38 7C 09 E0 */	addi r3, r28, 0x9e0
/* 8060609C  38 81 00 10 */	addi r4, r1, 0x10
/* 806060A0  38 A0 00 00 */	li r5, 0
/* 806060A4  38 C0 FF FF */	li r6, -1
/* 806060A8  81 9C 09 E0 */	lwz r12, 0x9e0(r28)
/* 806060AC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806060B0  7D 89 03 A6 */	mtctr r12
/* 806060B4  4E 80 04 21 */	bctrl 
/* 806060B8  3B A0 00 00 */	li r29, 0
/* 806060BC  48 00 01 24 */	b lbl_806061E0
lbl_806060C0:
/* 806060C0  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 806060C4  38 63 00 0C */	addi r3, r3, 0xc
/* 806060C8  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806060CC  4B D2 23 61 */	bl checkPass__12J3DFrameCtrlFf
/* 806060D0  2C 03 00 00 */	cmpwi r3, 0
/* 806060D4  41 82 00 6C */	beq lbl_80606140
/* 806060D8  3B C0 00 25 */	li r30, 0x25
/* 806060DC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806060E0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806060E4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806060E8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806060EC  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 806060F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806060F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806060F8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 806060FC  38 80 00 02 */	li r4, 2
/* 80606100  38 A0 00 1F */	li r5, 0x1f
/* 80606104  38 C1 00 20 */	addi r6, r1, 0x20
/* 80606108  4B A6 99 1D */	bl StartShock__12dVibration_cFii4cXyz
/* 8060610C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704F6@ha */
/* 80606110  38 03 04 F6 */	addi r0, r3, 0x04F6 /* 0x000704F6@l */
/* 80606114  90 01 00 0C */	stw r0, 0xc(r1)
/* 80606118  38 7C 09 E0 */	addi r3, r28, 0x9e0
/* 8060611C  38 81 00 0C */	addi r4, r1, 0xc
/* 80606120  38 A0 00 00 */	li r5, 0
/* 80606124  38 C0 FF FF */	li r6, -1
/* 80606128  81 9C 09 E0 */	lwz r12, 0x9e0(r28)
/* 8060612C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80606130  7D 89 03 A6 */	mtctr r12
/* 80606134  4E 80 04 21 */	bctrl 
/* 80606138  3B A0 00 01 */	li r29, 1
/* 8060613C  48 00 00 A4 */	b lbl_806061E0
lbl_80606140:
/* 80606140  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 80606144  38 63 00 0C */	addi r3, r3, 0xc
/* 80606148  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8060614C  4B D2 22 E1 */	bl checkPass__12J3DFrameCtrlFf
/* 80606150  2C 03 00 00 */	cmpwi r3, 0
/* 80606154  41 82 00 6C */	beq lbl_806061C0
/* 80606158  3B C0 00 47 */	li r30, 0x47
/* 8060615C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80606160  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80606164  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80606168  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8060616C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80606170  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80606174  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80606178  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8060617C  38 80 00 02 */	li r4, 2
/* 80606180  38 A0 00 1F */	li r5, 0x1f
/* 80606184  38 C1 00 14 */	addi r6, r1, 0x14
/* 80606188  4B A6 98 9D */	bl StartShock__12dVibration_cFii4cXyz
/* 8060618C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704F6@ha */
/* 80606190  38 03 04 F6 */	addi r0, r3, 0x04F6 /* 0x000704F6@l */
/* 80606194  90 01 00 08 */	stw r0, 8(r1)
/* 80606198  38 7C 09 E0 */	addi r3, r28, 0x9e0
/* 8060619C  38 81 00 08 */	addi r4, r1, 8
/* 806061A0  38 A0 00 00 */	li r5, 0
/* 806061A4  38 C0 FF FF */	li r6, -1
/* 806061A8  81 9C 09 E0 */	lwz r12, 0x9e0(r28)
/* 806061AC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806061B0  7D 89 03 A6 */	mtctr r12
/* 806061B4  4E 80 04 21 */	bctrl 
/* 806061B8  3B A0 00 02 */	li r29, 2
/* 806061BC  48 00 00 24 */	b lbl_806061E0
lbl_806061C0:
/* 806061C0  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 806061C4  38 63 00 0C */	addi r3, r3, 0xc
/* 806061C8  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806061CC  4B D2 22 61 */	bl checkPass__12J3DFrameCtrlFf
/* 806061D0  2C 03 00 00 */	cmpwi r3, 0
/* 806061D4  41 82 00 0C */	beq lbl_806061E0
/* 806061D8  3B C0 00 43 */	li r30, 0x43
/* 806061DC  3B A0 00 03 */	li r29, 3
lbl_806061E0:
/* 806061E0  2C 1E FF FF */	cmpwi r30, -1
/* 806061E4  41 82 00 C4 */	beq lbl_806062A8
/* 806061E8  38 61 00 44 */	addi r3, r1, 0x44
/* 806061EC  4B A7 13 91 */	bl __ct__11dBgS_GndChkFv
/* 806061F0  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 806061F4  80 63 00 04 */	lwz r3, 4(r3)
/* 806061F8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806061FC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80606200  1C 1E 00 30 */	mulli r0, r30, 0x30
/* 80606204  7C 63 02 14 */	add r3, r3, r0
/* 80606208  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060620C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80606210  4B D4 02 A1 */	bl PSMTXCopy
/* 80606214  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80606218  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060621C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80606220  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80606224  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80606228  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8060622C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80606230  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80606234  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80606238  EC 01 00 2A */	fadds f0, f1, f0
/* 8060623C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80606240  38 61 00 44 */	addi r3, r1, 0x44
/* 80606244  38 81 00 38 */	addi r4, r1, 0x38
/* 80606248  4B C6 1A E1 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8060624C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80606250  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80606254  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80606258  38 81 00 44 */	addi r4, r1, 0x44
/* 8060625C  4B A6 E2 45 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80606260  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80606264  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80606268  FC 00 08 18 */	frsp f0, f1
/* 8060626C  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 80606270  41 82 00 2C */	beq lbl_8060629C
/* 80606274  57 A0 10 3A */	slwi r0, r29, 2
/* 80606278  7C 9C 02 14 */	add r4, r28, r0
/* 8060627C  38 64 25 F8 */	addi r3, r4, 0x25f8
/* 80606280  38 84 26 08 */	addi r4, r4, 0x2608
/* 80606284  38 A1 00 38 */	addi r5, r1, 0x38
/* 80606288  38 C0 00 00 */	li r6, 0
/* 8060628C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80606290  38 FC 01 0C */	addi r7, r28, 0x10c
/* 80606294  39 00 00 01 */	li r8, 1
/* 80606298  4B A1 6D 89 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_8060629C:
/* 8060629C  38 61 00 44 */	addi r3, r1, 0x44
/* 806062A0  38 80 FF FF */	li r4, -1
/* 806062A4  4B A7 13 4D */	bl __dt__11dBgS_GndChkFv
lbl_806062A8:
/* 806062A8  39 61 00 B0 */	addi r11, r1, 0xb0
/* 806062AC  4B D5 BF 79 */	bl _restgpr_28
/* 806062B0  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 806062B4  7C 08 03 A6 */	mtlr r0
/* 806062B8  38 21 00 B0 */	addi r1, r1, 0xb0
/* 806062BC  4E 80 00 20 */	blr 
