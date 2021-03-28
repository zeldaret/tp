lbl_80AF389C:
/* 80AF389C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AF38A0  7C 08 02 A6 */	mflr r0
/* 80AF38A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AF38A8  39 61 00 30 */	addi r11, r1, 0x30
/* 80AF38AC  4B 86 E9 30 */	b _savegpr_29
/* 80AF38B0  7C 7D 1B 78 */	mr r29, r3
/* 80AF38B4  80 83 0D D0 */	lwz r4, 0xdd0(r3)
/* 80AF38B8  80 03 0D D4 */	lwz r0, 0xdd4(r3)
/* 80AF38BC  90 81 00 08 */	stw r4, 8(r1)
/* 80AF38C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AF38C4  80 03 0D D8 */	lwz r0, 0xdd8(r3)
/* 80AF38C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AF38CC  48 00 0D 11 */	bl selectAction__16daNpc_SoldierB_cFv
/* 80AF38D0  38 7D 0D D0 */	addi r3, r29, 0xdd0
/* 80AF38D4  38 81 00 08 */	addi r4, r1, 8
/* 80AF38D8  4B 86 E7 70 */	b __ptmf_cmpr
/* 80AF38DC  2C 03 00 00 */	cmpwi r3, 0
/* 80AF38E0  41 82 00 2C */	beq lbl_80AF390C
/* 80AF38E4  3B C0 00 03 */	li r30, 3
/* 80AF38E8  3B E0 00 18 */	li r31, 0x18
/* 80AF38EC  48 00 00 18 */	b lbl_80AF3904
lbl_80AF38F0:
/* 80AF38F0  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80AF38F4  7C 7D 1A 14 */	add r3, r29, r3
/* 80AF38F8  4B 65 CD B8 */	b initialize__18daNpcF_ActorMngr_cFv
/* 80AF38FC  3B DE 00 01 */	addi r30, r30, 1
/* 80AF3900  3B FF 00 08 */	addi r31, r31, 8
lbl_80AF3904:
/* 80AF3904  2C 1E 00 03 */	cmpwi r30, 3
/* 80AF3908  41 80 FF E8 */	blt lbl_80AF38F0
lbl_80AF390C:
/* 80AF390C  38 00 00 00 */	li r0, 0
/* 80AF3910  90 1D 0E 00 */	stw r0, 0xe00(r29)
/* 80AF3914  90 1D 0E 04 */	stw r0, 0xe04(r29)
/* 80AF3918  7F A3 EB 78 */	mr r3, r29
/* 80AF391C  38 80 00 05 */	li r4, 5
/* 80AF3920  38 A0 00 06 */	li r5, 6
/* 80AF3924  4B 66 09 54 */	b getDistTableIdx__8daNpcF_cFii
/* 80AF3928  98 7D 05 44 */	stb r3, 0x544(r29)
/* 80AF392C  88 1D 05 44 */	lbz r0, 0x544(r29)
/* 80AF3930  98 1D 05 45 */	stb r0, 0x545(r29)
/* 80AF3934  7F A3 EB 78 */	mr r3, r29
/* 80AF3938  38 80 00 03 */	li r4, 3
/* 80AF393C  38 A0 00 06 */	li r5, 6
/* 80AF3940  4B 66 09 38 */	b getDistTableIdx__8daNpcF_cFii
/* 80AF3944  98 7D 05 47 */	stb r3, 0x547(r29)
/* 80AF3948  38 00 00 00 */	li r0, 0
/* 80AF394C  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80AF3950  3C 60 80 AF */	lis r3, m__22daNpc_SoldierB_Param_c@ha
/* 80AF3954  38 83 5A D4 */	addi r4, r3, m__22daNpc_SoldierB_Param_c@l
/* 80AF3958  C0 04 00 08 */	lfs f0, 8(r4)
/* 80AF395C  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80AF3960  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80AF3964  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 80AF3968  38 7D 07 E4 */	addi r3, r29, 0x7e4
/* 80AF396C  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80AF3970  4B 58 25 D0 */	b SetWallR__12dBgS_AcchCirFf
/* 80AF3974  3C 60 80 AF */	lis r3, m__22daNpc_SoldierB_Param_c@ha
/* 80AF3978  38 83 5A D4 */	addi r4, r3, m__22daNpc_SoldierB_Param_c@l
/* 80AF397C  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80AF3980  D0 1D 08 14 */	stfs f0, 0x814(r29)
/* 80AF3984  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AF3988  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AF398C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80AF3990  28 00 00 00 */	cmplwi r0, 0
/* 80AF3994  40 82 00 0C */	bne lbl_80AF39A0
/* 80AF3998  C0 04 00 04 */	lfs f0, 4(r4)
/* 80AF399C  D0 1D 05 30 */	stfs f0, 0x530(r29)
lbl_80AF39A0:
/* 80AF39A0  39 61 00 30 */	addi r11, r1, 0x30
/* 80AF39A4  4B 86 E8 84 */	b _restgpr_29
/* 80AF39A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AF39AC  7C 08 03 A6 */	mtlr r0
/* 80AF39B0  38 21 00 30 */	addi r1, r1, 0x30
/* 80AF39B4  4E 80 00 20 */	blr 
