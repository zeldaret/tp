lbl_806BF444:
/* 806BF444  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 806BF448  7C 08 02 A6 */	mflr r0
/* 806BF44C  90 01 00 74 */	stw r0, 0x74(r1)
/* 806BF450  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 806BF454  93 C1 00 68 */	stw r30, 0x68(r1)
/* 806BF458  7C 7E 1B 78 */	mr r30, r3
/* 806BF45C  3C 60 80 6C */	lis r3, lit_3803@ha
/* 806BF460  3B E3 19 38 */	addi r31, r3, lit_3803@l
/* 806BF464  38 61 00 14 */	addi r3, r1, 0x14
/* 806BF468  4B 9B 81 14 */	b __ct__11dBgS_GndChkFv
/* 806BF46C  80 1E 07 98 */	lwz r0, 0x798(r30)
/* 806BF470  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 806BF474  41 82 00 18 */	beq lbl_806BF48C
/* 806BF478  38 61 00 14 */	addi r3, r1, 0x14
/* 806BF47C  38 80 FF FF */	li r4, -1
/* 806BF480  4B 9B 81 70 */	b __dt__11dBgS_GndChkFv
/* 806BF484  38 60 00 00 */	li r3, 0
/* 806BF488  48 00 00 EC */	b lbl_806BF574
lbl_806BF48C:
/* 806BF48C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806BF490  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806BF494  80 63 00 00 */	lwz r3, 0(r3)
/* 806BF498  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 806BF49C  4B 94 CF 40 */	b mDoMtx_YrotS__FPA4_fs
/* 806BF4A0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806BF4A4  D0 01 00 08 */	stfs f0, 8(r1)
/* 806BF4A8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 806BF4AC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806BF4B0  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 806BF4B4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806BF4B8  38 61 00 08 */	addi r3, r1, 8
/* 806BF4BC  38 9E 06 DC */	addi r4, r30, 0x6dc
/* 806BF4C0  4B BB 1A 2C */	b MtxPosition__FP4cXyzP4cXyz
/* 806BF4C4  38 7E 06 DC */	addi r3, r30, 0x6dc
/* 806BF4C8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806BF4CC  7C 65 1B 78 */	mr r5, r3
/* 806BF4D0  4B C8 7B C0 */	b PSVECAdd
/* 806BF4D4  C0 1E 06 DC */	lfs f0, 0x6dc(r30)
/* 806BF4D8  D0 1E 06 E8 */	stfs f0, 0x6e8(r30)
/* 806BF4DC  C0 1E 06 E0 */	lfs f0, 0x6e0(r30)
/* 806BF4E0  D0 1E 06 EC */	stfs f0, 0x6ec(r30)
/* 806BF4E4  C0 1E 06 E4 */	lfs f0, 0x6e4(r30)
/* 806BF4E8  D0 1E 06 F0 */	stfs f0, 0x6f0(r30)
/* 806BF4EC  38 61 00 14 */	addi r3, r1, 0x14
/* 806BF4F0  38 9E 06 E8 */	addi r4, r30, 0x6e8
/* 806BF4F4  4B BA 88 34 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 806BF4F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806BF4FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806BF500  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806BF504  38 81 00 14 */	addi r4, r1, 0x14
/* 806BF508  4B 9B 4F 98 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 806BF50C  D0 3E 06 EC */	stfs f1, 0x6ec(r30)
/* 806BF510  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 806BF514  C0 3E 06 EC */	lfs f1, 0x6ec(r30)
/* 806BF518  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 806BF51C  40 82 00 20 */	bne lbl_806BF53C
/* 806BF520  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806BF524  D0 1E 06 EC */	stfs f0, 0x6ec(r30)
/* 806BF528  38 61 00 14 */	addi r3, r1, 0x14
/* 806BF52C  38 80 FF FF */	li r4, -1
/* 806BF530  4B 9B 80 C0 */	b __dt__11dBgS_GndChkFv
/* 806BF534  38 60 00 01 */	li r3, 1
/* 806BF538  48 00 00 3C */	b lbl_806BF574
lbl_806BF53C:
/* 806BF53C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806BF540  EC 20 08 28 */	fsubs f1, f0, f1
/* 806BF544  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806BF548  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806BF54C  40 81 00 18 */	ble lbl_806BF564
/* 806BF550  38 61 00 14 */	addi r3, r1, 0x14
/* 806BF554  38 80 FF FF */	li r4, -1
/* 806BF558  4B 9B 80 98 */	b __dt__11dBgS_GndChkFv
/* 806BF55C  38 60 00 01 */	li r3, 1
/* 806BF560  48 00 00 14 */	b lbl_806BF574
lbl_806BF564:
/* 806BF564  38 61 00 14 */	addi r3, r1, 0x14
/* 806BF568  38 80 FF FF */	li r4, -1
/* 806BF56C  4B 9B 80 84 */	b __dt__11dBgS_GndChkFv
/* 806BF570  38 60 00 00 */	li r3, 0
lbl_806BF574:
/* 806BF574  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 806BF578  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 806BF57C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 806BF580  7C 08 03 A6 */	mtlr r0
/* 806BF584  38 21 00 70 */	addi r1, r1, 0x70
/* 806BF588  4E 80 00 20 */	blr 
