lbl_80665E14:
/* 80665E14  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80665E18  7C 08 02 A6 */	mflr r0
/* 80665E1C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80665E20  39 61 00 60 */	addi r11, r1, 0x60
/* 80665E24  4B CF C3 B9 */	bl _savegpr_29
/* 80665E28  7C 7F 1B 78 */	mr r31, r3
/* 80665E2C  80 03 0A EC */	lwz r0, 0xaec(r3)
/* 80665E30  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80665E34  40 82 00 0C */	bne lbl_80665E40
/* 80665E38  38 60 00 00 */	li r3, 0
/* 80665E3C  48 00 01 2C */	b lbl_80665F68
lbl_80665E40:
/* 80665E40  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80665E44  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80665E48  3C 60 80 66 */	lis r3, lit_5282@ha /* 0x80667820@ha */
/* 80665E4C  C0 23 78 20 */	lfs f1, lit_5282@l(r3)  /* 0x80667820@l */
/* 80665E50  C0 1F 09 F4 */	lfs f0, 0x9f4(r31)
/* 80665E54  EC 01 00 32 */	fmuls f0, f1, f0
/* 80665E58  EC 22 00 2A */	fadds f1, f2, f0
/* 80665E5C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80665E60  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80665E64  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80665E68  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 80665E6C  80 7F 0A 04 */	lwz r3, 0xa04(r31)
/* 80665E70  38 83 01 24 */	addi r4, r3, 0x124
/* 80665E74  38 A4 00 0C */	addi r5, r4, 0xc
/* 80665E78  38 61 00 14 */	addi r3, r1, 0x14
/* 80665E7C  4B C0 0C 69 */	bl __pl__4cXyzCFRC3Vec
/* 80665E80  38 61 00 08 */	addi r3, r1, 8
/* 80665E84  38 81 00 14 */	addi r4, r1, 0x14
/* 80665E88  3C A0 80 66 */	lis r5, lit_5282@ha /* 0x80667820@ha */
/* 80665E8C  C0 25 78 20 */	lfs f1, lit_5282@l(r5)  /* 0x80667820@l */
/* 80665E90  4B C0 0C F5 */	bl __ml__4cXyzCFf
/* 80665E94  C0 01 00 08 */	lfs f0, 8(r1)
/* 80665E98  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80665E9C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80665EA0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80665EA4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80665EA8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80665EAC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80665EB0  38 81 00 20 */	addi r4, r1, 0x20
/* 80665EB4  7F E5 FB 78 */	mr r5, r31
/* 80665EB8  4B 9B 7D B1 */	bl lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80665EBC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80665EC0  41 82 00 A4 */	beq lbl_80665F64
/* 80665EC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80665EC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80665ECC  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80665ED0  7F A3 EB 78 */	mr r3, r29
/* 80665ED4  3C 80 80 3F */	lis r4, mLineCheck__11fopAcM_lc_c@ha /* 0x803F1C48@ha */
/* 80665ED8  38 84 1C 48 */	addi r4, r4, mLineCheck__11fopAcM_lc_c@l /* 0x803F1C48@l */
/* 80665EDC  3B C4 00 14 */	addi r30, r4, 0x14
/* 80665EE0  7F C4 F3 78 */	mr r4, r30
/* 80665EE4  4B A0 EF 1D */	bl GetWallCode__4dBgSFRC13cBgS_PolyInfo
/* 80665EE8  2C 03 00 07 */	cmpwi r3, 7
/* 80665EEC  41 82 00 78 */	beq lbl_80665F64
/* 80665EF0  3C 60 80 66 */	lis r3, __vt__8cM3dGPla@ha /* 0x80667AF0@ha */
/* 80665EF4  38 03 7A F0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80667AF0@l */
/* 80665EF8  90 01 00 48 */	stw r0, 0x48(r1)
/* 80665EFC  7F A3 EB 78 */	mr r3, r29
/* 80665F00  7F C4 F3 78 */	mr r4, r30
/* 80665F04  38 A1 00 38 */	addi r5, r1, 0x38
/* 80665F08  4B A0 E8 3D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80665F0C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80665F10  4B C0 23 01 */	bl cBgW_CheckBWall__Ff
/* 80665F14  3C 80 80 66 */	lis r4, __vt__8cM3dGPla@ha /* 0x80667AF0@ha */
/* 80665F18  38 04 7A F0 */	addi r0, r4, __vt__8cM3dGPla@l /* 0x80667AF0@l */
/* 80665F1C  90 01 00 48 */	stw r0, 0x48(r1)
/* 80665F20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80665F24  41 82 00 40 */	beq lbl_80665F64
/* 80665F28  3C 60 80 3F */	lis r3, mLineCheck__11fopAcM_lc_c@ha /* 0x803F1C48@ha */
/* 80665F2C  34 63 1C 48 */	addic. r3, r3, mLineCheck__11fopAcM_lc_c@l /* 0x803F1C48@l */
/* 80665F30  41 82 00 08 */	beq lbl_80665F38
/* 80665F34  38 63 00 14 */	addi r3, r3, 0x14
lbl_80665F38:
/* 80665F38  4B B4 55 89 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 80665F3C  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 80665F40  38 7F 0A 14 */	addi r3, r31, 0xa14
/* 80665F44  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040015@ha */
/* 80665F48  38 84 00 15 */	addi r4, r4, 0x0015 /* 0x00040015@l */
/* 80665F4C  81 9F 0A 14 */	lwz r12, 0xa14(r31)
/* 80665F50  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80665F54  7D 89 03 A6 */	mtctr r12
/* 80665F58  4E 80 04 21 */	bctrl 
/* 80665F5C  38 60 00 01 */	li r3, 1
/* 80665F60  48 00 00 08 */	b lbl_80665F68
lbl_80665F64:
/* 80665F64  38 60 00 00 */	li r3, 0
lbl_80665F68:
/* 80665F68  39 61 00 60 */	addi r11, r1, 0x60
/* 80665F6C  4B CF C2 BD */	bl _restgpr_29
/* 80665F70  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80665F74  7C 08 03 A6 */	mtlr r0
/* 80665F78  38 21 00 60 */	addi r1, r1, 0x60
/* 80665F7C  4E 80 00 20 */	blr 
