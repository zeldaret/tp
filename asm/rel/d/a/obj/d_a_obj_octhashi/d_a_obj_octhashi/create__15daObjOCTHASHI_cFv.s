lbl_80CA5B98:
/* 80CA5B98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CA5B9C  7C 08 02 A6 */	mflr r0
/* 80CA5BA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CA5BA4  39 61 00 30 */	addi r11, r1, 0x30
/* 80CA5BA8  4B 6B C6 30 */	b _savegpr_28
/* 80CA5BAC  7C 7F 1B 78 */	mr r31, r3
/* 80CA5BB0  3C 80 80 CA */	lis r4, ccSphSrc@ha
/* 80CA5BB4  3B C4 64 80 */	addi r30, r4, ccSphSrc@l
/* 80CA5BB8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CA5BBC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CA5BC0  40 82 01 54 */	bne lbl_80CA5D14
/* 80CA5BC4  7F E0 FB 79 */	or. r0, r31, r31
/* 80CA5BC8  41 82 01 40 */	beq lbl_80CA5D08
/* 80CA5BCC  7C 1D 03 78 */	mr r29, r0
/* 80CA5BD0  4B 3D 2A 54 */	b __ct__16dBgS_MoveBgActorFv
/* 80CA5BD4  3C 60 80 CA */	lis r3, __vt__15daObjOCTHASHI_c@ha
/* 80CA5BD8  38 03 66 58 */	addi r0, r3, __vt__15daObjOCTHASHI_c@l
/* 80CA5BDC  90 1D 05 9C */	stw r0, 0x59c(r29)
/* 80CA5BE0  38 7D 05 A0 */	addi r3, r29, 0x5a0
/* 80CA5BE4  3C 80 80 CA */	lis r4, __ct__4cXyzFv@ha
/* 80CA5BE8  38 84 62 50 */	addi r4, r4, __ct__4cXyzFv@l
/* 80CA5BEC  3C A0 80 CA */	lis r5, __dt__4cXyzFv@ha
/* 80CA5BF0  38 A5 54 A8 */	addi r5, r5, __dt__4cXyzFv@l
/* 80CA5BF4  38 C0 00 0C */	li r6, 0xc
/* 80CA5BF8  38 E0 00 08 */	li r7, 8
/* 80CA5BFC  4B 6B C1 64 */	b __construct_array
/* 80CA5C00  38 7D 06 00 */	addi r3, r29, 0x600
/* 80CA5C04  3C 80 80 CA */	lis r4, __ct__4cXyzFv@ha
/* 80CA5C08  38 84 62 50 */	addi r4, r4, __ct__4cXyzFv@l
/* 80CA5C0C  3C A0 80 CA */	lis r5, __dt__4cXyzFv@ha
/* 80CA5C10  38 A5 54 A8 */	addi r5, r5, __dt__4cXyzFv@l
/* 80CA5C14  38 C0 00 0C */	li r6, 0xc
/* 80CA5C18  38 E0 00 08 */	li r7, 8
/* 80CA5C1C  4B 6B C1 44 */	b __construct_array
/* 80CA5C20  38 7D 06 60 */	addi r3, r29, 0x660
/* 80CA5C24  3C 80 80 CA */	lis r4, __ct__5csXyzFv@ha
/* 80CA5C28  38 84 62 4C */	addi r4, r4, __ct__5csXyzFv@l
/* 80CA5C2C  3C A0 80 CA */	lis r5, __dt__5csXyzFv@ha
/* 80CA5C30  38 A5 54 6C */	addi r5, r5, __dt__5csXyzFv@l
/* 80CA5C34  38 C0 00 06 */	li r6, 6
/* 80CA5C38  38 E0 00 08 */	li r7, 8
/* 80CA5C3C  4B 6B C1 24 */	b __construct_array
/* 80CA5C40  38 7D 06 90 */	addi r3, r29, 0x690
/* 80CA5C44  3C 80 80 CA */	lis r4, __ct__5csXyzFv@ha
/* 80CA5C48  38 84 62 4C */	addi r4, r4, __ct__5csXyzFv@l
/* 80CA5C4C  3C A0 80 CA */	lis r5, __dt__5csXyzFv@ha
/* 80CA5C50  38 A5 54 6C */	addi r5, r5, __dt__5csXyzFv@l
/* 80CA5C54  38 C0 00 06 */	li r6, 6
/* 80CA5C58  38 E0 00 08 */	li r7, 8
/* 80CA5C5C  4B 6B C1 04 */	b __construct_array
/* 80CA5C60  38 7D 06 EC */	addi r3, r29, 0x6ec
/* 80CA5C64  4B 61 A7 64 */	b __ct__10Z2CreatureFv
/* 80CA5C68  38 7D 07 AC */	addi r3, r29, 0x7ac
/* 80CA5C6C  3C 80 80 CA */	lis r4, __ct__9dCcD_SttsFv@ha
/* 80CA5C70  38 84 61 9C */	addi r4, r4, __ct__9dCcD_SttsFv@l
/* 80CA5C74  3C A0 80 CA */	lis r5, __dt__9dCcD_SttsFv@ha
/* 80CA5C78  38 A5 61 0C */	addi r5, r5, __dt__9dCcD_SttsFv@l
/* 80CA5C7C  38 C0 00 3C */	li r6, 0x3c
/* 80CA5C80  38 E0 00 08 */	li r7, 8
/* 80CA5C84  4B 6B C0 DC */	b __construct_array
/* 80CA5C88  38 7D 09 8C */	addi r3, r29, 0x98c
/* 80CA5C8C  3C 80 80 CA */	lis r4, __ct__8dCcD_SphFv@ha
/* 80CA5C90  38 84 60 40 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 80CA5C94  3C A0 80 CA */	lis r5, __dt__8dCcD_SphFv@ha
/* 80CA5C98  38 A5 5F 74 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 80CA5C9C  38 C0 01 38 */	li r6, 0x138
/* 80CA5CA0  38 E0 00 08 */	li r7, 8
/* 80CA5CA4  4B 6B C0 BC */	b __construct_array
/* 80CA5CA8  3B 9D 13 4C */	addi r28, r29, 0x134c
/* 80CA5CAC  7F 83 E3 78 */	mr r3, r28
/* 80CA5CB0  4B 3D DD 78 */	b __ct__12dCcD_GObjInfFv
/* 80CA5CB4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CA5CB8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CA5CBC  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80CA5CC0  3C 60 80 CA */	lis r3, __vt__8cM3dGAab@ha
/* 80CA5CC4  38 03 66 4C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CA5CC8  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80CA5CCC  3C 60 80 CA */	lis r3, __vt__8cM3dGCyl@ha
/* 80CA5CD0  38 03 66 40 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80CA5CD4  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80CA5CD8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80CA5CDC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80CA5CE0  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80CA5CE4  38 03 00 58 */	addi r0, r3, 0x58
/* 80CA5CE8  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80CA5CEC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80CA5CF0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80CA5CF4  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80CA5CF8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CA5CFC  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80CA5D00  38 03 00 84 */	addi r0, r3, 0x84
/* 80CA5D04  90 1C 01 38 */	stw r0, 0x138(r28)
lbl_80CA5D08:
/* 80CA5D08  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CA5D0C  60 00 00 08 */	ori r0, r0, 8
/* 80CA5D10  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CA5D14:
/* 80CA5D14  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CA5D18  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80CA5D1C  90 1F 06 E0 */	stw r0, 0x6e0(r31)
/* 80CA5D20  80 1F 06 E0 */	lwz r0, 0x6e0(r31)
/* 80CA5D24  2C 00 00 FF */	cmpwi r0, 0xff
/* 80CA5D28  40 82 00 0C */	bne lbl_80CA5D34
/* 80CA5D2C  38 00 00 00 */	li r0, 0
/* 80CA5D30  90 1F 06 E0 */	stw r0, 0x6e0(r31)
lbl_80CA5D34:
/* 80CA5D34  80 1F 06 E0 */	lwz r0, 0x6e0(r31)
/* 80CA5D38  20 00 00 08 */	subfic r0, r0, 8
/* 80CA5D3C  90 1F 06 E0 */	stw r0, 0x6e0(r31)
/* 80CA5D40  80 1F 06 E0 */	lwz r0, 0x6e0(r31)
/* 80CA5D44  1F A0 08 D3 */	mulli r29, r0, 0x8d3
/* 80CA5D48  38 7F 07 A4 */	addi r3, r31, 0x7a4
/* 80CA5D4C  3C 80 80 CA */	lis r4, l_arcName@ha
/* 80CA5D50  38 84 65 84 */	addi r4, r4, l_arcName@l
/* 80CA5D54  80 84 00 00 */	lwz r4, 0(r4)
/* 80CA5D58  4B 38 71 64 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CA5D5C  7C 7C 1B 78 */	mr r28, r3
/* 80CA5D60  2C 1C 00 04 */	cmpwi r28, 4
/* 80CA5D64  40 82 01 64 */	bne lbl_80CA5EC8
/* 80CA5D68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CA5D6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CA5D70  38 63 09 58 */	addi r3, r3, 0x958
/* 80CA5D74  38 80 00 03 */	li r4, 3
/* 80CA5D78  4B 38 EB BC */	b isDungeonItem__12dSv_memBit_cCFi
/* 80CA5D7C  2C 03 00 00 */	cmpwi r3, 0
/* 80CA5D80  41 82 00 3C */	beq lbl_80CA5DBC
/* 80CA5D84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CA5D88  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80CA5D8C  88 04 4E 0A */	lbz r0, 0x4e0a(r4)
/* 80CA5D90  2C 00 00 32 */	cmpwi r0, 0x32
/* 80CA5D94  40 82 00 28 */	bne lbl_80CA5DBC
/* 80CA5D98  3C 60 80 CA */	lis r3, stringBase0@ha
/* 80CA5D9C  38 63 65 50 */	addi r3, r3, stringBase0@l
/* 80CA5DA0  38 63 00 1A */	addi r3, r3, 0x1a
/* 80CA5DA4  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80CA5DA8  4B 6C 2B EC */	b strcmp
/* 80CA5DAC  2C 03 00 00 */	cmpwi r3, 0
/* 80CA5DB0  40 82 00 0C */	bne lbl_80CA5DBC
/* 80CA5DB4  38 60 00 05 */	li r3, 5
/* 80CA5DB8  48 00 01 14 */	b lbl_80CA5ECC
lbl_80CA5DBC:
/* 80CA5DBC  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 80CA5DC0  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80CA5DC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CA5DC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CA5DCC  3C 63 00 02 */	addis r3, r3, 2
/* 80CA5DD0  3C 80 80 CA */	lis r4, l_arcName@ha
/* 80CA5DD4  38 84 65 84 */	addi r4, r4, l_arcName@l
/* 80CA5DD8  80 84 00 00 */	lwz r4, 0(r4)
/* 80CA5DDC  3C A0 80 CA */	lis r5, stringBase0@ha
/* 80CA5DE0  38 A5 65 50 */	addi r5, r5, stringBase0@l
/* 80CA5DE4  38 A5 00 22 */	addi r5, r5, 0x22
/* 80CA5DE8  38 63 C2 F8 */	addi r3, r3, -15624
/* 80CA5DEC  4B 39 68 CC */	b getObjectResName2Index__14dRes_control_cFPCcPCc
/* 80CA5DF0  7C 65 1B 78 */	mr r5, r3
/* 80CA5DF4  7F E3 FB 78 */	mr r3, r31
/* 80CA5DF8  3C 80 80 CA */	lis r4, l_arcName@ha
/* 80CA5DFC  38 84 65 84 */	addi r4, r4, l_arcName@l
/* 80CA5E00  80 84 00 00 */	lwz r4, 0(r4)
/* 80CA5E04  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80CA5E08  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80CA5E0C  7F A7 EB 78 */	mr r7, r29
/* 80CA5E10  39 00 00 00 */	li r8, 0
/* 80CA5E14  4B 3D 29 A8 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80CA5E18  7C 7C 1B 78 */	mr r28, r3
/* 80CA5E1C  2C 1C 00 05 */	cmpwi r28, 5
/* 80CA5E20  40 82 00 08 */	bne lbl_80CA5E28
/* 80CA5E24  48 00 00 A8 */	b lbl_80CA5ECC
lbl_80CA5E28:
/* 80CA5E28  38 7F 06 EC */	addi r3, r31, 0x6ec
/* 80CA5E2C  38 9F 05 38 */	addi r4, r31, 0x538
/* 80CA5E30  7C 85 23 78 */	mr r5, r4
/* 80CA5E34  38 C0 00 03 */	li r6, 3
/* 80CA5E38  38 E0 00 01 */	li r7, 1
/* 80CA5E3C  4B 61 A6 F4 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80CA5E40  38 00 00 00 */	li r0, 0
/* 80CA5E44  98 1F 06 CB */	stb r0, 0x6cb(r31)
/* 80CA5E48  80 7F 07 80 */	lwz r3, 0x780(r31)
/* 80CA5E4C  38 03 00 24 */	addi r0, r3, 0x24
/* 80CA5E50  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80CA5E54  7F E3 FB 78 */	mr r3, r31
/* 80CA5E58  4B FF ED 61 */	bl initCcCylinder__15daObjOCTHASHI_cFv
/* 80CA5E5C  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80CA5E60  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80CA5E64  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CA5E68  EC 21 00 2A */	fadds f1, f1, f0
/* 80CA5E6C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CA5E70  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CA5E74  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CA5E78  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80CA5E7C  38 61 00 08 */	addi r3, r1, 8
/* 80CA5E80  4B 37 7E 3C */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80CA5E84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CA5E88  41 82 00 10 */	beq lbl_80CA5E98
/* 80CA5E8C  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80CA5E90  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80CA5E94  D0 1F 06 D0 */	stfs f0, 0x6d0(r31)
lbl_80CA5E98:
/* 80CA5E98  7F E3 FB 78 */	mr r3, r31
/* 80CA5E9C  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 80CA5EA0  C0 5E 00 C8 */	lfs f2, 0xc8(r30)
/* 80CA5EA4  FC 60 08 90 */	fmr f3, f1
/* 80CA5EA8  C0 9E 00 CC */	lfs f4, 0xcc(r30)
/* 80CA5EAC  C0 BE 00 B0 */	lfs f5, 0xb0(r30)
/* 80CA5EB0  FC C0 20 90 */	fmr f6, f4
/* 80CA5EB4  4B 37 46 94 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80CA5EB8  38 00 00 07 */	li r0, 7
/* 80CA5EBC  90 1F 06 E4 */	stw r0, 0x6e4(r31)
/* 80CA5EC0  7F E3 FB 78 */	mr r3, r31
/* 80CA5EC4  4B FF FB FD */	bl daObjOCTHASHI_Execute__FP15daObjOCTHASHI_c
lbl_80CA5EC8:
/* 80CA5EC8  7F 83 E3 78 */	mr r3, r28
lbl_80CA5ECC:
/* 80CA5ECC  39 61 00 30 */	addi r11, r1, 0x30
/* 80CA5ED0  4B 6B C3 54 */	b _restgpr_28
/* 80CA5ED4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CA5ED8  7C 08 03 A6 */	mtlr r0
/* 80CA5EDC  38 21 00 30 */	addi r1, r1, 0x30
/* 80CA5EE0  4E 80 00 20 */	blr 
