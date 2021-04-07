lbl_806065D4:
/* 806065D4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 806065D8  7C 08 02 A6 */	mflr r0
/* 806065DC  90 01 00 84 */	stw r0, 0x84(r1)
/* 806065E0  39 61 00 80 */	addi r11, r1, 0x80
/* 806065E4  4B D5 BB F5 */	bl _savegpr_28
/* 806065E8  7C 7E 1B 78 */	mr r30, r3
/* 806065EC  3C 60 80 61 */	lis r3, lit_3928@ha /* 0x8060FDE0@ha */
/* 806065F0  3B E3 FD E0 */	addi r31, r3, lit_3928@l /* 0x8060FDE0@l */
/* 806065F4  38 61 00 14 */	addi r3, r1, 0x14
/* 806065F8  4B A7 0F 85 */	bl __ct__11dBgS_GndChkFv
/* 806065FC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80606600  80 63 00 04 */	lwz r3, 4(r3)
/* 80606604  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80606608  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8060660C  38 63 09 C0 */	addi r3, r3, 0x9c0
/* 80606610  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80606614  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80606618  4B D3 FE 99 */	bl PSMTXCopy
/* 8060661C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80606620  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80606624  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80606628  D0 01 00 08 */	stfs f0, 8(r1)
/* 8060662C  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 80606630  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80606634  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80606638  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8060663C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80606640  EC 01 00 2A */	fadds f0, f1, f0
/* 80606644  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80606648  38 61 00 14 */	addi r3, r1, 0x14
/* 8060664C  38 81 00 08 */	addi r4, r1, 8
/* 80606650  4B C6 16 D9 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80606654  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80606658  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060665C  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80606660  7F 83 E3 78 */	mr r3, r28
/* 80606664  38 81 00 14 */	addi r4, r1, 0x14
/* 80606668  4B A6 DE 39 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8060666C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80606670  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80606674  FC 00 08 18 */	frsp f0, f1
/* 80606678  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 8060667C  41 82 00 24 */	beq lbl_806066A0
/* 80606680  38 7E 25 F8 */	addi r3, r30, 0x25f8
/* 80606684  38 9E 26 08 */	addi r4, r30, 0x2608
/* 80606688  38 A1 00 08 */	addi r5, r1, 8
/* 8060668C  38 C0 00 00 */	li r6, 0
/* 80606690  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80606694  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80606698  39 00 00 01 */	li r8, 1
/* 8060669C  4B A1 69 85 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_806066A0:
/* 806066A0  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806066A4  80 63 00 04 */	lwz r3, 4(r3)
/* 806066A8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806066AC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806066B0  38 63 06 F0 */	addi r3, r3, 0x6f0
/* 806066B4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806066B8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806066BC  4B D3 FD F5 */	bl PSMTXCopy
/* 806066C0  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 806066C4  D0 01 00 08 */	stfs f0, 8(r1)
/* 806066C8  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 806066CC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806066D0  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 806066D4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806066D8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806066DC  EC 01 00 2A */	fadds f0, f1, f0
/* 806066E0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806066E4  38 61 00 14 */	addi r3, r1, 0x14
/* 806066E8  38 81 00 08 */	addi r4, r1, 8
/* 806066EC  4B C6 16 3D */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 806066F0  7F 83 E3 78 */	mr r3, r28
/* 806066F4  38 81 00 14 */	addi r4, r1, 0x14
/* 806066F8  4B A6 DD A9 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 806066FC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80606700  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80606704  FC 00 08 18 */	frsp f0, f1
/* 80606708  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 8060670C  41 82 00 24 */	beq lbl_80606730
/* 80606710  38 7E 25 FC */	addi r3, r30, 0x25fc
/* 80606714  38 9E 26 0C */	addi r4, r30, 0x260c
/* 80606718  38 A1 00 08 */	addi r5, r1, 8
/* 8060671C  38 C0 00 00 */	li r6, 0
/* 80606720  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80606724  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80606728  39 00 00 01 */	li r8, 1
/* 8060672C  4B A1 68 F5 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_80606730:
/* 80606730  38 61 00 14 */	addi r3, r1, 0x14
/* 80606734  38 80 FF FF */	li r4, -1
/* 80606738  4B A7 0E B9 */	bl __dt__11dBgS_GndChkFv
/* 8060673C  39 61 00 80 */	addi r11, r1, 0x80
/* 80606740  4B D5 BA E5 */	bl _restgpr_28
/* 80606744  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80606748  7C 08 03 A6 */	mtlr r0
/* 8060674C  38 21 00 80 */	addi r1, r1, 0x80
/* 80606750  4E 80 00 20 */	blr 
