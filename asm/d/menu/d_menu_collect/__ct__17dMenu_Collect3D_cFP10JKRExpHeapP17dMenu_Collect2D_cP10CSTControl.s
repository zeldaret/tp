lbl_801B6454:
/* 801B6454  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B6458  7C 08 02 A6 */	mflr r0
/* 801B645C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B6460  39 61 00 20 */	addi r11, r1, 0x20
/* 801B6464  48 1A BD 71 */	bl _savegpr_27
/* 801B6468  7C 7F 1B 78 */	mr r31, r3
/* 801B646C  7C 9B 23 78 */	mr r27, r4
/* 801B6470  7C BC 2B 78 */	mr r28, r5
/* 801B6474  7C DD 33 78 */	mr r29, r6
/* 801B6478  3C 60 80 3C */	lis r3, __vt__17dMenu_Collect3D_c@ha /* 0x803BC790@ha */
/* 801B647C  38 03 C7 90 */	addi r0, r3, __vt__17dMenu_Collect3D_c@l /* 0x803BC790@l */
/* 801B6480  90 1F 00 00 */	stw r0, 0(r31)
/* 801B6484  3B DF 00 28 */	addi r30, r31, 0x28
/* 801B6488  7F C3 F3 78 */	mr r3, r30
/* 801B648C  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha /* 0x803A1EC8@ha */
/* 801B6490  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l /* 0x803A1EC8@l */
/* 801B6494  48 16 F2 31 */	bl __as__12J3DLightInfoFRC12J3DLightInfo
/* 801B6498  38 7E 00 74 */	addi r3, r30, 0x74
/* 801B649C  3C 80 80 02 */	lis r4, __ct__11J3DLightObjFv@ha /* 0x80018C0C@ha */
/* 801B64A0  38 84 8C 0C */	addi r4, r4, __ct__11J3DLightObjFv@l /* 0x80018C0C@l */
/* 801B64A4  38 A0 00 00 */	li r5, 0
/* 801B64A8  38 C0 00 74 */	li r6, 0x74
/* 801B64AC  38 E0 00 06 */	li r7, 6
/* 801B64B0  48 1A B8 B1 */	bl __construct_array
/* 801B64B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B64B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B64BC  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 801B64C0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 801B64C4  54 00 01 8C */	rlwinm r0, r0, 0, 6, 6
/* 801B64C8  90 1F 00 24 */	stw r0, 0x24(r31)
/* 801B64CC  93 7F 00 04 */	stw r27, 4(r31)
/* 801B64D0  38 00 00 00 */	li r0, 0
/* 801B64D4  90 1F 00 08 */	stw r0, 8(r31)
/* 801B64D8  93 BF 00 14 */	stw r29, 0x14(r31)
/* 801B64DC  93 9F 00 0C */	stw r28, 0xc(r31)
/* 801B64E0  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 801B64E4  28 00 00 00 */	cmplwi r0, 0
/* 801B64E8  41 82 00 10 */	beq lbl_801B64F8
/* 801B64EC  38 00 AE F4 */	li r0, -20748
/* 801B64F0  B0 1F 03 D8 */	sth r0, 0x3d8(r31)
/* 801B64F4  48 00 00 0C */	b lbl_801B6500
lbl_801B64F8:
/* 801B64F8  38 00 A4 E4 */	li r0, -23324
/* 801B64FC  B0 1F 03 D8 */	sth r0, 0x3d8(r31)
lbl_801B6500:
/* 801B6500  C0 02 A5 28 */	lfs f0, lit_4481(r2)
/* 801B6504  D0 1F 03 D0 */	stfs f0, 0x3d0(r31)
/* 801B6508  D0 1F 03 D4 */	stfs f0, 0x3d4(r31)
/* 801B650C  D0 1F 03 C8 */	stfs f0, 0x3c8(r31)
/* 801B6510  D0 1F 03 C4 */	stfs f0, 0x3c4(r31)
/* 801B6514  C0 02 A5 2C */	lfs f0, lit_4482(r2)
/* 801B6518  D0 1F 03 CC */	stfs f0, 0x3cc(r31)
/* 801B651C  7F E3 FB 78 */	mr r3, r31
/* 801B6520  39 61 00 20 */	addi r11, r1, 0x20
/* 801B6524  48 1A BC FD */	bl _restgpr_27
/* 801B6528  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B652C  7C 08 03 A6 */	mtlr r0
/* 801B6530  38 21 00 20 */	addi r1, r1, 0x20
/* 801B6534  4E 80 00 20 */	blr 
