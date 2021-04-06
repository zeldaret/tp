lbl_80C27C4C:
/* 80C27C4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C27C50  7C 08 02 A6 */	mflr r0
/* 80C27C54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C27C58  39 61 00 20 */	addi r11, r1, 0x20
/* 80C27C5C  4B 73 A5 81 */	bl _savegpr_29
/* 80C27C60  7C 7F 1B 78 */	mr r31, r3
/* 80C27C64  3C 80 80 C3 */	lis r4, l_cyl_src@ha /* 0x80C28120@ha */
/* 80C27C68  3B A4 81 20 */	addi r29, r4, l_cyl_src@l /* 0x80C28120@l */
/* 80C27C6C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C27C70  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C27C74  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80C27C78  4B 3F 2C ED */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C27C7C  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80C27C80  C0 43 04 D4 */	lfs f2, 0x4d4(r3)
/* 80C27C84  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C27C88  EC 42 00 28 */	fsubs f2, f2, f0
/* 80C27C8C  C0 1D 00 88 */	lfs f0, 0x88(r29)
/* 80C27C90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C27C94  40 80 00 30 */	bge lbl_80C27CC4
/* 80C27C98  C0 1D 00 8C */	lfs f0, 0x8c(r29)
/* 80C27C9C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80C27CA0  40 80 00 24 */	bge lbl_80C27CC4
/* 80C27CA4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80C27CA8  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80C27CAC  7D 89 03 A6 */	mtctr r12
/* 80C27CB0  4E 80 04 21 */	bctrl 
/* 80C27CB4  28 03 00 00 */	cmplwi r3, 0
/* 80C27CB8  41 82 00 0C */	beq lbl_80C27CC4
/* 80C27CBC  38 00 00 01 */	li r0, 1
/* 80C27CC0  98 1F 08 28 */	stb r0, 0x828(r31)
lbl_80C27CC4:
/* 80C27CC4  3C 60 80 C2 */	lis r3, s_boar_sub__FPvPv@ha /* 0x80C27780@ha */
/* 80C27CC8  38 63 77 80 */	addi r3, r3, s_boar_sub__FPvPv@l /* 0x80C27780@l */
/* 80C27CCC  7F E4 FB 78 */	mr r4, r31
/* 80C27CD0  4B 3F 1B 29 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80C27CD4  28 03 00 00 */	cmplwi r3, 0
/* 80C27CD8  41 82 00 0C */	beq lbl_80C27CE4
/* 80C27CDC  38 00 00 03 */	li r0, 3
/* 80C27CE0  98 1F 08 28 */	stb r0, 0x828(r31)
lbl_80C27CE4:
/* 80C27CE4  88 1F 08 28 */	lbz r0, 0x828(r31)
/* 80C27CE8  2C 00 00 01 */	cmpwi r0, 1
/* 80C27CEC  41 82 00 18 */	beq lbl_80C27D04
/* 80C27CF0  40 80 00 08 */	bge lbl_80C27CF8
/* 80C27CF4  48 00 00 90 */	b lbl_80C27D84
lbl_80C27CF8:
/* 80C27CF8  2C 00 00 04 */	cmpwi r0, 4
/* 80C27CFC  40 80 00 88 */	bge lbl_80C27D84
/* 80C27D00  48 00 00 3C */	b lbl_80C27D3C
lbl_80C27D04:
/* 80C27D04  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C27D08  38 80 00 00 */	li r4, 0
/* 80C27D0C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C27D10  7C 05 07 74 */	extsb r5, r0
/* 80C27D14  38 C0 00 00 */	li r6, 0
/* 80C27D18  38 E0 00 00 */	li r7, 0
/* 80C27D1C  C0 3D 00 94 */	lfs f1, 0x94(r29)
/* 80C27D20  FC 40 08 90 */	fmr f2, f1
/* 80C27D24  4B 3F 44 95 */	bl fopAcM_createItemForDirectGet__FPC4cXyziiPC5csXyzPC4cXyzff
/* 80C27D28  7F E3 FB 78 */	mr r3, r31
/* 80C27D2C  48 00 01 1D */	bl setBreakEffect__12daObjIBone_cFv
/* 80C27D30  7F E3 FB 78 */	mr r3, r31
/* 80C27D34  4B 3F 1F 49 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80C27D38  48 00 00 4C */	b lbl_80C27D84
lbl_80C27D3C:
/* 80C27D3C  38 61 00 08 */	addi r3, r1, 8
/* 80C27D40  38 80 00 00 */	li r4, 0
/* 80C27D44  A8 BF 04 B6 */	lha r5, 0x4b6(r31)
/* 80C27D48  38 C0 00 00 */	li r6, 0
/* 80C27D4C  4B 63 F6 A9 */	bl __ct__5csXyzFsss
/* 80C27D50  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C27D54  38 80 00 00 */	li r4, 0
/* 80C27D58  38 A0 FF FF */	li r5, -1
/* 80C27D5C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C27D60  7C 06 07 74 */	extsb r6, r0
/* 80C27D64  38 E1 00 08 */	addi r7, r1, 8
/* 80C27D68  39 00 00 00 */	li r8, 0
/* 80C27D6C  39 20 00 00 */	li r9, 0
/* 80C27D70  4B 3F 44 D1 */	bl fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi
/* 80C27D74  7F E3 FB 78 */	mr r3, r31
/* 80C27D78  48 00 00 D1 */	bl setBreakEffect__12daObjIBone_cFv
/* 80C27D7C  7F E3 FB 78 */	mr r3, r31
/* 80C27D80  4B 3F 1E FD */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80C27D84:
/* 80C27D84  38 7F 06 EC */	addi r3, r31, 0x6ec
/* 80C27D88  4B 45 C6 D9 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80C27D8C  28 03 00 00 */	cmplwi r3, 0
/* 80C27D90  41 82 00 38 */	beq lbl_80C27DC8
/* 80C27D94  38 7F 06 EC */	addi r3, r31, 0x6ec
/* 80C27D98  4B 45 C7 61 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80C27D9C  28 03 00 00 */	cmplwi r3, 0
/* 80C27DA0  41 82 00 28 */	beq lbl_80C27DC8
/* 80C27DA4  38 7F 06 EC */	addi r3, r31, 0x6ec
/* 80C27DA8  4B 45 C7 D5 */	bl GetTgHitObjSe__12dCcD_GObjInfFv
/* 80C27DAC  38 80 00 01 */	li r4, 1
/* 80C27DB0  4B 45 C8 01 */	bl getHitSeID__12dCcD_GObjInfFUci
/* 80C27DB4  7C 64 1B 78 */	mr r4, r3
/* 80C27DB8  38 7F 08 2C */	addi r3, r31, 0x82c
/* 80C27DBC  38 A0 00 02 */	li r5, 2
/* 80C27DC0  38 C0 00 00 */	li r6, 0
/* 80C27DC4  4B 69 66 E1 */	bl startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
lbl_80C27DC8:
/* 80C27DC8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C27DCC  7C 03 07 74 */	extsb r3, r0
/* 80C27DD0  4B 40 52 9D */	bl dComIfGp_getReverb__Fi
/* 80C27DD4  7C 65 1B 78 */	mr r5, r3
/* 80C27DD8  38 7F 08 2C */	addi r3, r31, 0x82c
/* 80C27DDC  38 80 00 00 */	li r4, 0
/* 80C27DE0  81 9F 08 3C */	lwz r12, 0x83c(r31)
/* 80C27DE4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80C27DE8  7D 89 03 A6 */	mtctr r12
/* 80C27DEC  4E 80 04 21 */	bctrl 
/* 80C27DF0  38 7F 06 D4 */	addi r3, r31, 0x6d4
/* 80C27DF4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C27DF8  4B 64 73 E5 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80C27DFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C27E00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C27E04  3B A3 23 3C */	addi r29, r3, 0x233c
/* 80C27E08  7F A3 EB 78 */	mr r3, r29
/* 80C27E0C  38 9F 05 B0 */	addi r4, r31, 0x5b0
/* 80C27E10  4B 63 CD 99 */	bl Set__4cCcSFP8cCcD_Obj
/* 80C27E14  38 7F 08 10 */	addi r3, r31, 0x810
/* 80C27E18  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C27E1C  4B 64 73 C1 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80C27E20  7F A3 EB 78 */	mr r3, r29
/* 80C27E24  38 9F 06 EC */	addi r4, r31, 0x6ec
/* 80C27E28  4B 63 CD 81 */	bl Set__4cCcSFP8cCcD_Obj
/* 80C27E2C  38 60 00 01 */	li r3, 1
/* 80C27E30  39 61 00 20 */	addi r11, r1, 0x20
/* 80C27E34  4B 73 A3 F5 */	bl _restgpr_29
/* 80C27E38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C27E3C  7C 08 03 A6 */	mtlr r0
/* 80C27E40  38 21 00 20 */	addi r1, r1, 0x20
/* 80C27E44  4E 80 00 20 */	blr 
