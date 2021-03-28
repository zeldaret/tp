lbl_80BCB5C0:
/* 80BCB5C0  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80BCB5C4  7C 08 02 A6 */	mflr r0
/* 80BCB5C8  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80BCB5CC  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80BCB5D0  4B 79 6C 08 */	b _savegpr_28
/* 80BCB5D4  7C 7E 1B 78 */	mr r30, r3
/* 80BCB5D8  3C 60 80 BD */	lis r3, lit_3775@ha
/* 80BCB5DC  3B E3 C5 78 */	addi r31, r3, lit_3775@l
/* 80BCB5E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BCB5E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BCB5E8  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80BCB5EC  88 1E 09 C9 */	lbz r0, 0x9c9(r30)
/* 80BCB5F0  28 00 00 00 */	cmplwi r0, 0
/* 80BCB5F4  41 82 02 28 */	beq lbl_80BCB81C
/* 80BCB5F8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80BCB5FC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BCB600  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80BCB604  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BCB608  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80BCB60C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BCB610  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80BCB614  EC 01 00 2A */	fadds f0, f1, f0
/* 80BCB618  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BCB61C  38 7E 09 1C */	addi r3, r30, 0x91c
/* 80BCB620  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BCB624  38 BE 04 E6 */	addi r5, r30, 0x4e6
/* 80BCB628  38 C0 00 00 */	li r6, 0
/* 80BCB62C  38 E0 1C 00 */	li r7, 0x1c00
/* 80BCB630  4B 59 30 24 */	b posMove__20daPy_boomerangMove_cFP4cXyzPsP10fopAc_ac_cs
/* 80BCB634  2C 03 00 00 */	cmpwi r3, 0
/* 80BCB638  41 82 00 24 */	beq lbl_80BCB65C
/* 80BCB63C  38 7E 09 1C */	addi r3, r30, 0x91c
/* 80BCB640  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BCB644  4B 59 32 38 */	b bgCheckAfterOffset__20daPy_boomerangMove_cFPC4cXyz
/* 80BCB648  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80BCB64C  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80BCB650  EC 01 00 2A */	fadds f0, f1, f0
/* 80BCB654  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80BCB658  48 00 01 C4 */	b lbl_80BCB81C
lbl_80BCB65C:
/* 80BCB65C  38 61 00 28 */	addi r3, r1, 0x28
/* 80BCB660  4B 4A C6 08 */	b __ct__11dBgS_LinChkFv
/* 80BCB664  38 61 00 28 */	addi r3, r1, 0x28
/* 80BCB668  38 81 00 08 */	addi r4, r1, 8
/* 80BCB66C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BCB670  38 C0 00 00 */	li r6, 0
/* 80BCB674  4B 4A C6 F0 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80BCB678  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BCB67C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BCB680  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80BCB684  7F 83 E3 78 */	mr r3, r28
/* 80BCB688  38 81 00 28 */	addi r4, r1, 0x28
/* 80BCB68C  4B 4A 8D 28 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80BCB690  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BCB694  41 82 00 E4 */	beq lbl_80BCB778
/* 80BCB698  3C 60 80 BD */	lis r3, __vt__8cM3dGPla@ha
/* 80BCB69C  38 03 C7 14 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80BCB6A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BCB6A4  7F 83 E3 78 */	mr r3, r28
/* 80BCB6A8  38 81 00 3C */	addi r4, r1, 0x3c
/* 80BCB6AC  38 A1 00 14 */	addi r5, r1, 0x14
/* 80BCB6B0  4B 4A 90 94 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80BCB6B4  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80BCB6B8  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80BCB6BC  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80BCB6C0  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80BCB6C4  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80BCB6C8  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80BCB6CC  C0 1E 04 BC */	lfs f0, 0x4bc(r30)
/* 80BCB6D0  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80BCB6D4  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 80BCB6D8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80BCB6DC  C0 1E 04 C4 */	lfs f0, 0x4c4(r30)
/* 80BCB6E0  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80BCB6E4  38 00 00 01 */	li r0, 1
/* 80BCB6E8  98 1E 09 80 */	stb r0, 0x980(r30)
/* 80BCB6EC  38 00 00 00 */	li r0, 0
/* 80BCB6F0  98 1E 09 81 */	stb r0, 0x981(r30)
/* 80BCB6F4  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80BCB6F8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80BCB6FC  D0 1E 09 88 */	stfs f0, 0x988(r30)
/* 80BCB700  98 1E 09 C9 */	stb r0, 0x9c9(r30)
/* 80BCB704  38 00 00 64 */	li r0, 0x64
/* 80BCB708  B0 1E 09 86 */	sth r0, 0x986(r30)
/* 80BCB70C  3C 60 80 BD */	lis r3, stringBase0@ha
/* 80BCB710  38 63 C6 78 */	addi r3, r3, stringBase0@l
/* 80BCB714  38 80 00 06 */	li r4, 6
/* 80BCB718  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BCB71C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BCB720  3C A5 00 02 */	addis r5, r5, 2
/* 80BCB724  38 C0 00 80 */	li r6, 0x80
/* 80BCB728  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BCB72C  4B 47 0B C0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BCB730  7C 64 1B 78 */	mr r4, r3
/* 80BCB734  80 7E 0A 60 */	lwz r3, 0xa60(r30)
/* 80BCB738  38 A0 00 02 */	li r5, 2
/* 80BCB73C  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80BCB740  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80BCB744  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 80BCB748  C0 9F 00 90 */	lfs f4, 0x90(r31)
/* 80BCB74C  4B 44 57 24 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80BCB750  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BCB754  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80BCB758  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BCB75C  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80BCB760  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BCB764  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 80BCB768  3C 60 80 BD */	lis r3, __vt__8cM3dGPla@ha
/* 80BCB76C  38 03 C7 14 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80BCB770  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BCB774  48 00 00 9C */	b lbl_80BCB810
lbl_80BCB778:
/* 80BCB778  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BCB77C  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80BCB780  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BCB784  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80BCB788  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BCB78C  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 80BCB790  38 00 00 01 */	li r0, 1
/* 80BCB794  98 1E 09 80 */	stb r0, 0x980(r30)
/* 80BCB798  38 00 00 00 */	li r0, 0
/* 80BCB79C  98 1E 09 81 */	stb r0, 0x981(r30)
/* 80BCB7A0  98 1E 09 C9 */	stb r0, 0x9c9(r30)
/* 80BCB7A4  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80BCB7A8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80BCB7AC  D0 1E 09 88 */	stfs f0, 0x988(r30)
/* 80BCB7B0  38 00 00 64 */	li r0, 0x64
/* 80BCB7B4  B0 1E 09 86 */	sth r0, 0x986(r30)
/* 80BCB7B8  3C 60 80 BD */	lis r3, stringBase0@ha
/* 80BCB7BC  38 63 C6 78 */	addi r3, r3, stringBase0@l
/* 80BCB7C0  38 80 00 06 */	li r4, 6
/* 80BCB7C4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BCB7C8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BCB7CC  3C A5 00 02 */	addis r5, r5, 2
/* 80BCB7D0  38 C0 00 80 */	li r6, 0x80
/* 80BCB7D4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BCB7D8  4B 47 0B 14 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BCB7DC  7C 64 1B 78 */	mr r4, r3
/* 80BCB7E0  80 7E 0A 60 */	lwz r3, 0xa60(r30)
/* 80BCB7E4  38 A0 00 02 */	li r5, 2
/* 80BCB7E8  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80BCB7EC  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80BCB7F0  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 80BCB7F4  C0 9F 00 90 */	lfs f4, 0x90(r31)
/* 80BCB7F8  4B 44 56 78 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80BCB7FC  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80BCB800  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80BCB804  EC 01 00 2A */	fadds f0, f1, f0
/* 80BCB808  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80BCB80C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_80BCB810:
/* 80BCB810  38 61 00 28 */	addi r3, r1, 0x28
/* 80BCB814  38 80 FF FF */	li r4, -1
/* 80BCB818  4B 4A C4 C4 */	b __dt__11dBgS_LinChkFv
lbl_80BCB81C:
/* 80BCB81C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80BCB820  4B 79 6A 04 */	b _restgpr_28
/* 80BCB824  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80BCB828  7C 08 03 A6 */	mtlr r0
/* 80BCB82C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80BCB830  4E 80 00 20 */	blr 
