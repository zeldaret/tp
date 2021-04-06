lbl_80784720:
/* 80784720  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80784724  7C 08 02 A6 */	mflr r0
/* 80784728  90 01 00 34 */	stw r0, 0x34(r1)
/* 8078472C  39 61 00 30 */	addi r11, r1, 0x30
/* 80784730  4B BD DA A9 */	bl _savegpr_28
/* 80784734  7C 7D 1B 78 */	mr r29, r3
/* 80784738  3C 80 80 78 */	lis r4, lit_3658@ha /* 0x80784D68@ha */
/* 8078473C  3B E4 4D 68 */	addi r31, r4, lit_3658@l /* 0x80784D68@l */
/* 80784740  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80784744  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80784748  40 82 01 48 */	bne lbl_80784890
/* 8078474C  7F A0 EB 79 */	or. r0, r29, r29
/* 80784750  41 82 01 34 */	beq lbl_80784884
/* 80784754  7C 1E 03 78 */	mr r30, r0
/* 80784758  4B 89 44 0D */	bl __ct__10fopAc_ac_cFv
/* 8078475C  38 7E 06 2C */	addi r3, r30, 0x62c
/* 80784760  4B B3 C8 05 */	bl __ct__15Z2CreatureEnemyFv
/* 80784764  38 7E 06 D0 */	addi r3, r30, 0x6d0
/* 80784768  4B 8F 17 45 */	bl __ct__12dBgS_AcchCirFv
/* 8078476C  3B 9E 07 10 */	addi r28, r30, 0x710
/* 80784770  7F 83 E3 78 */	mr r3, r28
/* 80784774  4B 8F 19 2D */	bl __ct__9dBgS_AcchFv
/* 80784778  3C 60 80 78 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80784EFC@ha */
/* 8078477C  38 63 4E FC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80784EFC@l */
/* 80784780  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80784784  38 03 00 0C */	addi r0, r3, 0xc
/* 80784788  90 1C 00 14 */	stw r0, 0x14(r28)
/* 8078478C  38 03 00 18 */	addi r0, r3, 0x18
/* 80784790  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80784794  38 7C 00 14 */	addi r3, r28, 0x14
/* 80784798  4B 8F 46 D1 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8078479C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 807847A0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 807847A4  90 1E 09 00 */	stw r0, 0x900(r30)
/* 807847A8  38 7E 09 04 */	addi r3, r30, 0x904
/* 807847AC  4B 8F EF B5 */	bl __ct__10dCcD_GSttsFv
/* 807847B0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 807847B4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 807847B8  90 7E 09 00 */	stw r3, 0x900(r30)
/* 807847BC  38 03 00 20 */	addi r0, r3, 0x20
/* 807847C0  90 1E 09 04 */	stw r0, 0x904(r30)
/* 807847C4  3B 9E 09 24 */	addi r28, r30, 0x924
/* 807847C8  7F 83 E3 78 */	mr r3, r28
/* 807847CC  4B 8F F2 5D */	bl __ct__12dCcD_GObjInfFv
/* 807847D0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 807847D4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 807847D8  90 1C 01 20 */	stw r0, 0x120(r28)
/* 807847DC  3C 60 80 78 */	lis r3, __vt__8cM3dGAab@ha /* 0x80784EF0@ha */
/* 807847E0  38 03 4E F0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80784EF0@l */
/* 807847E4  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 807847E8  3C 60 80 78 */	lis r3, __vt__8cM3dGSph@ha /* 0x80784EE4@ha */
/* 807847EC  38 03 4E E4 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80784EE4@l */
/* 807847F0  90 1C 01 34 */	stw r0, 0x134(r28)
/* 807847F4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 807847F8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 807847FC  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80784800  38 03 00 58 */	addi r0, r3, 0x58
/* 80784804  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80784808  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8078480C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80784810  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80784814  38 03 00 2C */	addi r0, r3, 0x2c
/* 80784818  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8078481C  38 03 00 84 */	addi r0, r3, 0x84
/* 80784820  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80784824  3B 9E 0A 5C */	addi r28, r30, 0xa5c
/* 80784828  7F 83 E3 78 */	mr r3, r28
/* 8078482C  4B 8F F1 FD */	bl __ct__12dCcD_GObjInfFv
/* 80784830  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80784834  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80784838  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8078483C  3C 60 80 78 */	lis r3, __vt__8cM3dGAab@ha /* 0x80784EF0@ha */
/* 80784840  38 03 4E F0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80784EF0@l */
/* 80784844  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80784848  3C 60 80 78 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80784ED8@ha */
/* 8078484C  38 03 4E D8 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80784ED8@l */
/* 80784850  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80784854  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80784858  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 8078485C  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80784860  38 03 00 58 */	addi r0, r3, 0x58
/* 80784864  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80784868  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 8078486C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80784870  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80784874  38 03 00 2C */	addi r0, r3, 0x2c
/* 80784878  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8078487C  38 03 00 84 */	addi r0, r3, 0x84
/* 80784880  90 1C 01 38 */	stw r0, 0x138(r28)
lbl_80784884:
/* 80784884  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80784888  60 00 00 08 */	ori r0, r0, 8
/* 8078488C  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80784890:
/* 80784890  38 7D 06 20 */	addi r3, r29, 0x620
/* 80784894  3C 80 80 78 */	lis r4, d_a_e_sb__stringBase0@ha /* 0x80784E64@ha */
/* 80784898  38 84 4E 64 */	addi r4, r4, d_a_e_sb__stringBase0@l /* 0x80784E64@l */
/* 8078489C  4B 8A 86 21 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 807848A0  7C 7E 1B 78 */	mr r30, r3
/* 807848A4  2C 1E 00 04 */	cmpwi r30, 4
/* 807848A8  40 82 02 94 */	bne lbl_80784B3C
/* 807848AC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 807848B0  98 1D 06 1A */	stb r0, 0x61a(r29)
/* 807848B4  88 9D 06 1A */	lbz r4, 0x61a(r29)
/* 807848B8  28 04 00 FF */	cmplwi r4, 0xff
/* 807848BC  41 82 00 28 */	beq lbl_807848E4
/* 807848C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807848C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807848C8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 807848CC  7C 05 07 74 */	extsb r5, r0
/* 807848D0  4B 8B 0A 91 */	bl isSwitch__10dSv_info_cCFii
/* 807848D4  2C 03 00 00 */	cmpwi r3, 0
/* 807848D8  41 82 00 0C */	beq lbl_807848E4
/* 807848DC  38 60 00 05 */	li r3, 5
/* 807848E0  48 00 02 60 */	b lbl_80784B40
lbl_807848E4:
/* 807848E4  7F A3 EB 78 */	mr r3, r29
/* 807848E8  3C 80 80 78 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x807817D0@ha */
/* 807848EC  38 84 17 D0 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x807817D0@l */
/* 807848F0  38 A0 11 00 */	li r5, 0x1100
/* 807848F4  4B 89 5B BD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 807848F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807848FC  40 82 00 0C */	bne lbl_80784908
/* 80784900  38 60 00 05 */	li r3, 5
/* 80784904  48 00 02 3C */	b lbl_80784B40
lbl_80784908:
/* 80784908  3C 60 80 78 */	lis r3, struct_80784F74+0x1@ha /* 0x80784F75@ha */
/* 8078490C  8C 03 4F 75 */	lbzu r0, struct_80784F74+0x1@l(r3)  /* 0x80784F75@l */
/* 80784910  28 00 00 00 */	cmplwi r0, 0
/* 80784914  40 82 00 20 */	bne lbl_80784934
/* 80784918  38 00 00 01 */	li r0, 1
/* 8078491C  98 03 00 00 */	stb r0, 0(r3)
/* 80784920  98 1D 0B BC */	stb r0, 0xbbc(r29)
/* 80784924  38 00 FF FF */	li r0, -1
/* 80784928  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x80784F84@ha */
/* 8078492C  38 63 4F 84 */	addi r3, r3, l_HIO@l /* 0x80784F84@l */
/* 80784930  98 03 00 04 */	stb r0, 4(r3)
lbl_80784934:
/* 80784934  38 00 00 04 */	li r0, 4
/* 80784938  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 8078493C  38 00 00 24 */	li r0, 0x24
/* 80784940  98 1D 05 46 */	stb r0, 0x546(r29)
/* 80784944  80 7D 06 1C */	lwz r3, 0x61c(r29)
/* 80784948  80 63 00 04 */	lwz r3, 4(r3)
/* 8078494C  38 03 00 24 */	addi r0, r3, 0x24
/* 80784950  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80784954  7F A3 EB 78 */	mr r3, r29
/* 80784958  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 8078495C  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 80784960  FC 60 08 90 */	fmr f3, f1
/* 80784964  4B 89 5B C5 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80784968  7F A3 EB 78 */	mr r3, r29
/* 8078496C  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 80784970  FC 40 08 90 */	fmr f2, f1
/* 80784974  FC 60 08 90 */	fmr f3, f1
/* 80784978  4B 89 5B C1 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 8078497C  38 7D 06 D0 */	addi r3, r29, 0x6d0
/* 80784980  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80784984  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 80784988  4B 8F 15 D1 */	bl SetWall__12dBgS_AcchCirFff
/* 8078498C  38 00 00 00 */	li r0, 0
/* 80784990  90 01 00 08 */	stw r0, 8(r1)
/* 80784994  38 7D 07 10 */	addi r3, r29, 0x710
/* 80784998  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8078499C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 807849A0  7F A6 EB 78 */	mr r6, r29
/* 807849A4  38 E0 00 01 */	li r7, 1
/* 807849A8  39 1D 06 D0 */	addi r8, r29, 0x6d0
/* 807849AC  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 807849B0  39 40 00 00 */	li r10, 0
/* 807849B4  4B 8F 18 95 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 807849B8  38 7D 06 2C */	addi r3, r29, 0x62c
/* 807849BC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807849C0  38 BD 05 38 */	addi r5, r29, 0x538
/* 807849C4  38 C0 00 03 */	li r6, 3
/* 807849C8  38 E0 00 01 */	li r7, 1
/* 807849CC  4B B3 C6 C9 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 807849D0  38 7D 06 2C */	addi r3, r29, 0x62c
/* 807849D4  90 7D 0B A0 */	stw r3, 0xba0(r29)
/* 807849D8  38 00 00 01 */	li r0, 1
/* 807849DC  98 1D 0B B6 */	stb r0, 0xbb6(r29)
/* 807849E0  90 7D 0B A0 */	stw r3, 0xba0(r29)
/* 807849E4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807849E8  4B 89 92 D5 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 807849EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807849F0  41 82 00 10 */	beq lbl_80784A00
/* 807849F4  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 807849F8  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 807849FC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
lbl_80784A00:
/* 80784A00  7F A3 EB 78 */	mr r3, r29
/* 80784A04  4B FF CD ED */	bl initCcCylinder__8daE_SB_cFv
/* 80784A08  3C 60 80 78 */	lis r3, d_a_e_sb__stringBase0@ha /* 0x80784E64@ha */
/* 80784A0C  38 63 4E 64 */	addi r3, r3, d_a_e_sb__stringBase0@l /* 0x80784E64@l */
/* 80784A10  38 80 00 0C */	li r4, 0xc
/* 80784A14  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80784A18  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80784A1C  3C A5 00 02 */	addis r5, r5, 2
/* 80784A20  38 C0 00 80 */	li r6, 0x80
/* 80784A24  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80784A28  4B 8B 78 C5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80784A2C  7C 64 1B 78 */	mr r4, r3
/* 80784A30  80 7D 06 1C */	lwz r3, 0x61c(r29)
/* 80784A34  38 A0 00 02 */	li r5, 2
/* 80784A38  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80784A3C  3C C0 80 78 */	lis r6, l_HIO@ha /* 0x80784F84@ha */
/* 80784A40  38 C6 4F 84 */	addi r6, r6, l_HIO@l /* 0x80784F84@l */
/* 80784A44  C0 46 00 28 */	lfs f2, 0x28(r6)
/* 80784A48  C0 7F 00 70 */	lfs f3, 0x70(r31)
/* 80784A4C  C0 9F 00 74 */	lfs f4, 0x74(r31)
/* 80784A50  4B 88 C4 21 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80784A54  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702AC@ha */
/* 80784A58  38 03 02 AC */	addi r0, r3, 0x02AC /* 0x000702AC@l */
/* 80784A5C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80784A60  38 7D 06 2C */	addi r3, r29, 0x62c
/* 80784A64  38 81 00 10 */	addi r4, r1, 0x10
/* 80784A68  38 A0 00 00 */	li r5, 0
/* 80784A6C  38 C0 FF FF */	li r6, -1
/* 80784A70  81 9D 06 2C */	lwz r12, 0x62c(r29)
/* 80784A74  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80784A78  7D 89 03 A6 */	mtctr r12
/* 80784A7C  4E 80 04 21 */	bctrl 
/* 80784A80  38 00 00 01 */	li r0, 1
/* 80784A84  90 1D 05 B0 */	stw r0, 0x5b0(r29)
/* 80784A88  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80784A8C  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80784A90  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80784A94  D0 1D 05 F4 */	stfs f0, 0x5f4(r29)
/* 80784A98  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80784A9C  D0 1D 05 F8 */	stfs f0, 0x5f8(r29)
/* 80784AA0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80784AA4  D0 1D 05 FC */	stfs f0, 0x5fc(r29)
/* 80784AA8  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80784AAC  B0 1D 06 00 */	sth r0, 0x600(r29)
/* 80784AB0  80 1D 0A F8 */	lwz r0, 0xaf8(r29)
/* 80784AB4  60 00 00 01 */	ori r0, r0, 1
/* 80784AB8  90 1D 0A F8 */	stw r0, 0xaf8(r29)
/* 80784ABC  38 00 00 02 */	li r0, 2
/* 80784AC0  98 1D 0B 16 */	stb r0, 0xb16(r29)
/* 80784AC4  80 1D 0A 5C */	lwz r0, 0xa5c(r29)
/* 80784AC8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80784ACC  90 1D 0A 5C */	stw r0, 0xa5c(r29)
/* 80784AD0  38 7D 06 2C */	addi r3, r29, 0x62c
/* 80784AD4  3C 80 80 78 */	lis r4, d_a_e_sb__stringBase0@ha /* 0x80784E64@ha */
/* 80784AD8  38 84 4E 64 */	addi r4, r4, d_a_e_sb__stringBase0@l /* 0x80784E64@l */
/* 80784ADC  4B B3 D0 B5 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 80784AE0  80 7D 06 1C */	lwz r3, 0x61c(r29)
/* 80784AE4  80 A3 00 04 */	lwz r5, 4(r3)
/* 80784AE8  93 A5 00 14 */	stw r29, 0x14(r5)
/* 80784AEC  38 E0 00 00 */	li r7, 0
/* 80784AF0  3C 60 80 78 */	lis r3, JointCallBack__FP8J3DJointi@ha /* 0x80781990@ha */
/* 80784AF4  38 83 19 90 */	addi r4, r3, JointCallBack__FP8J3DJointi@l /* 0x80781990@l */
/* 80784AF8  48 00 00 20 */	b lbl_80784B18
lbl_80784AFC:
/* 80784AFC  54 E0 04 3F */	clrlwi. r0, r7, 0x10
/* 80784B00  41 82 00 14 */	beq lbl_80784B14
/* 80784B04  80 66 00 28 */	lwz r3, 0x28(r6)
/* 80784B08  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 80784B0C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80784B10  90 83 00 04 */	stw r4, 4(r3)
lbl_80784B14:
/* 80784B14  38 E7 00 01 */	addi r7, r7, 1
lbl_80784B18:
/* 80784B18  80 C5 00 04 */	lwz r6, 4(r5)
/* 80784B1C  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 80784B20  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80784B24  7C 00 18 40 */	cmplw r0, r3
/* 80784B28  41 80 FF D4 */	blt lbl_80784AFC
/* 80784B2C  38 00 00 03 */	li r0, 3
/* 80784B30  B0 1D 05 E6 */	sth r0, 0x5e6(r29)
/* 80784B34  7F A3 EB 78 */	mr r3, r29
/* 80784B38  4B FF FB A1 */	bl daE_SB_Execute__FP8daE_SB_c
lbl_80784B3C:
/* 80784B3C  7F C3 F3 78 */	mr r3, r30
lbl_80784B40:
/* 80784B40  39 61 00 30 */	addi r11, r1, 0x30
/* 80784B44  4B BD D6 E1 */	bl _restgpr_28
/* 80784B48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80784B4C  7C 08 03 A6 */	mtlr r0
/* 80784B50  38 21 00 30 */	addi r1, r1, 0x30
/* 80784B54  4E 80 00 20 */	blr 
