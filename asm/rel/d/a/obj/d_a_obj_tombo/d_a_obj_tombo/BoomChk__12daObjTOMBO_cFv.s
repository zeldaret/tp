lbl_80D1A648:
/* 80D1A648  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80D1A64C  7C 08 02 A6 */	mflr r0
/* 80D1A650  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80D1A654  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80D1A658  4B 64 7B 80 */	b _savegpr_28
/* 80D1A65C  7C 7E 1B 78 */	mr r30, r3
/* 80D1A660  3C 60 80 D2 */	lis r3, lit_3775@ha
/* 80D1A664  3B E3 B6 D8 */	addi r31, r3, lit_3775@l
/* 80D1A668  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D1A66C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D1A670  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80D1A674  88 1E 07 10 */	lbz r0, 0x710(r30)
/* 80D1A678  28 00 00 00 */	cmplwi r0, 0
/* 80D1A67C  41 82 02 28 */	beq lbl_80D1A8A4
/* 80D1A680  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80D1A684  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D1A688  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80D1A68C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D1A690  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80D1A694  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D1A698  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80D1A69C  EC 01 00 2A */	fadds f0, f1, f0
/* 80D1A6A0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D1A6A4  38 7E 07 04 */	addi r3, r30, 0x704
/* 80D1A6A8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80D1A6AC  38 BE 04 E6 */	addi r5, r30, 0x4e6
/* 80D1A6B0  38 C0 00 00 */	li r6, 0
/* 80D1A6B4  38 E0 1C 00 */	li r7, 0x1c00
/* 80D1A6B8  4B 44 3F 9C */	b posMove__20daPy_boomerangMove_cFP4cXyzPsP10fopAc_ac_cs
/* 80D1A6BC  2C 03 00 00 */	cmpwi r3, 0
/* 80D1A6C0  41 82 00 24 */	beq lbl_80D1A6E4
/* 80D1A6C4  38 7E 07 04 */	addi r3, r30, 0x704
/* 80D1A6C8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80D1A6CC  4B 44 41 B0 */	b bgCheckAfterOffset__20daPy_boomerangMove_cFPC4cXyz
/* 80D1A6D0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80D1A6D4  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80D1A6D8  EC 01 00 2A */	fadds f0, f1, f0
/* 80D1A6DC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80D1A6E0  48 00 01 C4 */	b lbl_80D1A8A4
lbl_80D1A6E4:
/* 80D1A6E4  38 61 00 28 */	addi r3, r1, 0x28
/* 80D1A6E8  4B 35 D5 80 */	b __ct__11dBgS_LinChkFv
/* 80D1A6EC  38 61 00 28 */	addi r3, r1, 0x28
/* 80D1A6F0  38 81 00 08 */	addi r4, r1, 8
/* 80D1A6F4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D1A6F8  38 C0 00 00 */	li r6, 0
/* 80D1A6FC  4B 35 D6 68 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80D1A700  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D1A704  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D1A708  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80D1A70C  7F 83 E3 78 */	mr r3, r28
/* 80D1A710  38 81 00 28 */	addi r4, r1, 0x28
/* 80D1A714  4B 35 9C A0 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80D1A718  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D1A71C  41 82 00 E4 */	beq lbl_80D1A800
/* 80D1A720  3C 60 80 D2 */	lis r3, __vt__8cM3dGPla@ha
/* 80D1A724  38 03 B8 84 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80D1A728  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D1A72C  7F 83 E3 78 */	mr r3, r28
/* 80D1A730  38 81 00 3C */	addi r4, r1, 0x3c
/* 80D1A734  38 A1 00 14 */	addi r5, r1, 0x14
/* 80D1A738  4B 35 A0 0C */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80D1A73C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80D1A740  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80D1A744  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80D1A748  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80D1A74C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80D1A750  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80D1A754  C0 1E 04 BC */	lfs f0, 0x4bc(r30)
/* 80D1A758  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80D1A75C  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 80D1A760  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80D1A764  C0 1E 04 C4 */	lfs f0, 0x4c4(r30)
/* 80D1A768  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80D1A76C  38 00 00 01 */	li r0, 1
/* 80D1A770  98 1E 07 11 */	stb r0, 0x711(r30)
/* 80D1A774  38 00 00 00 */	li r0, 0
/* 80D1A778  98 1E 07 12 */	stb r0, 0x712(r30)
/* 80D1A77C  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80D1A780  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80D1A784  D0 1E 07 1C */	stfs f0, 0x71c(r30)
/* 80D1A788  98 1E 07 10 */	stb r0, 0x710(r30)
/* 80D1A78C  38 00 00 64 */	li r0, 0x64
/* 80D1A790  B0 1E 07 18 */	sth r0, 0x718(r30)
/* 80D1A794  3C 60 80 D2 */	lis r3, stringBase0@ha
/* 80D1A798  38 63 B7 E8 */	addi r3, r3, stringBase0@l
/* 80D1A79C  38 80 00 06 */	li r4, 6
/* 80D1A7A0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D1A7A4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D1A7A8  3C A5 00 02 */	addis r5, r5, 2
/* 80D1A7AC  38 C0 00 80 */	li r6, 0x80
/* 80D1A7B0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D1A7B4  4B 32 1B 38 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D1A7B8  7C 64 1B 78 */	mr r4, r3
/* 80D1A7BC  80 7E 08 30 */	lwz r3, 0x830(r30)
/* 80D1A7C0  38 A0 00 02 */	li r5, 2
/* 80D1A7C4  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80D1A7C8  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80D1A7CC  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 80D1A7D0  C0 9F 00 E8 */	lfs f4, 0xe8(r31)
/* 80D1A7D4  4B 2F 66 9C */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80D1A7D8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D1A7DC  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80D1A7E0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80D1A7E4  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80D1A7E8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80D1A7EC  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 80D1A7F0  3C 60 80 D2 */	lis r3, __vt__8cM3dGPla@ha
/* 80D1A7F4  38 03 B8 84 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80D1A7F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D1A7FC  48 00 00 9C */	b lbl_80D1A898
lbl_80D1A800:
/* 80D1A800  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D1A804  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80D1A808  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80D1A80C  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80D1A810  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80D1A814  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 80D1A818  38 00 00 01 */	li r0, 1
/* 80D1A81C  98 1E 07 11 */	stb r0, 0x711(r30)
/* 80D1A820  38 00 00 00 */	li r0, 0
/* 80D1A824  98 1E 07 12 */	stb r0, 0x712(r30)
/* 80D1A828  98 1E 07 10 */	stb r0, 0x710(r30)
/* 80D1A82C  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80D1A830  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80D1A834  D0 1E 07 1C */	stfs f0, 0x71c(r30)
/* 80D1A838  38 00 00 64 */	li r0, 0x64
/* 80D1A83C  B0 1E 07 18 */	sth r0, 0x718(r30)
/* 80D1A840  3C 60 80 D2 */	lis r3, stringBase0@ha
/* 80D1A844  38 63 B7 E8 */	addi r3, r3, stringBase0@l
/* 80D1A848  38 80 00 06 */	li r4, 6
/* 80D1A84C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D1A850  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D1A854  3C A5 00 02 */	addis r5, r5, 2
/* 80D1A858  38 C0 00 80 */	li r6, 0x80
/* 80D1A85C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D1A860  4B 32 1A 8C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D1A864  7C 64 1B 78 */	mr r4, r3
/* 80D1A868  80 7E 08 30 */	lwz r3, 0x830(r30)
/* 80D1A86C  38 A0 00 02 */	li r5, 2
/* 80D1A870  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80D1A874  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80D1A878  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 80D1A87C  C0 9F 00 E8 */	lfs f4, 0xe8(r31)
/* 80D1A880  4B 2F 65 F0 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80D1A884  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80D1A888  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80D1A88C  EC 01 00 2A */	fadds f0, f1, f0
/* 80D1A890  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80D1A894  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_80D1A898:
/* 80D1A898  38 61 00 28 */	addi r3, r1, 0x28
/* 80D1A89C  38 80 FF FF */	li r4, -1
/* 80D1A8A0  4B 35 D4 3C */	b __dt__11dBgS_LinChkFv
lbl_80D1A8A4:
/* 80D1A8A4  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80D1A8A8  4B 64 79 7C */	b _restgpr_28
/* 80D1A8AC  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80D1A8B0  7C 08 03 A6 */	mtlr r0
/* 80D1A8B4  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80D1A8B8  4E 80 00 20 */	blr 
