lbl_801659F4:
/* 801659F4  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 801659F8  7C 08 02 A6 */	mflr r0
/* 801659FC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80165A00  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80165A04  48 1F C7 D1 */	bl _savegpr_27
/* 80165A08  7C 7B 1B 78 */	mr r27, r3
/* 80165A0C  7C 9C 23 78 */	mr r28, r4
/* 80165A10  7C BD 2B 78 */	mr r29, r5
/* 80165A14  7C DE 33 78 */	mr r30, r6
/* 80165A18  7C FF 3B 78 */	mr r31, r7
/* 80165A1C  38 61 00 28 */	addi r3, r1, 0x28
/* 80165A20  4B F1 23 85 */	bl __ct__14dBgS_CamLinChkFv
/* 80165A24  7F 63 DB 78 */	mr r3, r27
/* 80165A28  7F 84 E3 78 */	mr r4, r28
/* 80165A2C  7F A5 EB 78 */	mr r5, r29
/* 80165A30  38 C1 00 28 */	addi r6, r1, 0x28
/* 80165A34  7F E7 FB 78 */	mr r7, r31
/* 80165A38  4B FF FE 89 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzP11dBgS_LinChkUl
/* 80165A3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80165A40  41 82 00 70 */	beq lbl_80165AB0
/* 80165A44  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 80165A48  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80165A4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80165A50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80165A54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80165A58  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80165A5C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80165A60  38 A1 00 14 */	addi r5, r1, 0x14
/* 80165A64  4B F0 EC E1 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80165A68  38 61 00 08 */	addi r3, r1, 8
/* 80165A6C  38 81 00 58 */	addi r4, r1, 0x58
/* 80165A70  38 A1 00 14 */	addi r5, r1, 0x14
/* 80165A74  48 10 10 71 */	bl __pl__4cXyzCFRC3Vec
/* 80165A78  C0 01 00 08 */	lfs f0, 8(r1)
/* 80165A7C  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80165A80  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80165A84  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80165A88  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80165A8C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80165A90  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 80165A94  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80165A98  90 01 00 24 */	stw r0, 0x24(r1)
/* 80165A9C  38 61 00 28 */	addi r3, r1, 0x28
/* 80165AA0  38 80 FF FF */	li r4, -1
/* 80165AA4  4B F1 23 5D */	bl __dt__14dBgS_CamLinChkFv
/* 80165AA8  38 60 00 01 */	li r3, 1
/* 80165AAC  48 00 00 2C */	b lbl_80165AD8
lbl_80165AB0:
/* 80165AB0  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80165AB4  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80165AB8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80165ABC  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80165AC0  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80165AC4  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80165AC8  38 61 00 28 */	addi r3, r1, 0x28
/* 80165ACC  38 80 FF FF */	li r4, -1
/* 80165AD0  4B F1 23 31 */	bl __dt__14dBgS_CamLinChkFv
/* 80165AD4  38 60 00 00 */	li r3, 0
lbl_80165AD8:
/* 80165AD8  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80165ADC  48 1F C7 45 */	bl _restgpr_27
/* 80165AE0  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80165AE4  7C 08 03 A6 */	mtlr r0
/* 80165AE8  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80165AEC  4E 80 00 20 */	blr 
