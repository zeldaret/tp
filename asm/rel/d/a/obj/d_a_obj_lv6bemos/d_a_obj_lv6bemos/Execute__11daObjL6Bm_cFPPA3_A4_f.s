lbl_80C7D3A4:
/* 80C7D3A4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C7D3A8  7C 08 02 A6 */	mflr r0
/* 80C7D3AC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C7D3B0  39 61 00 40 */	addi r11, r1, 0x40
/* 80C7D3B4  4B 6E 4E 18 */	b _savegpr_25
/* 80C7D3B8  7C 7E 1B 78 */	mr r30, r3
/* 80C7D3BC  7C 9F 23 78 */	mr r31, r4
/* 80C7D3C0  88 03 08 91 */	lbz r0, 0x891(r3)
/* 80C7D3C4  28 00 00 00 */	cmplwi r0, 0
/* 80C7D3C8  41 82 00 20 */	beq lbl_80C7D3E8
/* 80C7D3CC  80 7E 08 8C */	lwz r3, 0x88c(r30)
/* 80C7D3D0  4B 39 00 58 */	b play__14mDoExt_baseAnmFv
/* 80C7D3D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C7D3D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C7D3DC  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C7D3E0  38 9E 05 E8 */	addi r4, r30, 0x5e8
/* 80C7D3E4  4B 5E 77 C4 */	b Set__4cCcSFP8cCcD_Obj
lbl_80C7D3E8:
/* 80C7D3E8  38 7E 07 48 */	addi r3, r30, 0x748
/* 80C7D3EC  4B 40 70 74 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80C7D3F0  28 03 00 00 */	cmplwi r3, 0
/* 80C7D3F4  41 82 00 AC */	beq lbl_80C7D4A0
/* 80C7D3F8  38 7E 07 48 */	addi r3, r30, 0x748
/* 80C7D3FC  4B 40 70 FC */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80C7D400  28 03 00 00 */	cmplwi r3, 0
/* 80C7D404  41 82 00 9C */	beq lbl_80C7D4A0
/* 80C7D408  3B 20 00 00 */	li r25, 0
/* 80C7D40C  3B A0 00 00 */	li r29, 0
/* 80C7D410  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C7D414  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 80C7D418  3C 60 80 C8 */	lis r3, l_particle_id@ha
/* 80C7D41C  3B 63 DF 44 */	addi r27, r3, l_particle_id@l
/* 80C7D420  3C 60 80 C8 */	lis r3, lit_3880@ha
/* 80C7D424  3B 83 DF 38 */	addi r28, r3, lit_3880@l
lbl_80C7D428:
/* 80C7D428  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80C7D42C  38 80 00 00 */	li r4, 0
/* 80C7D430  90 81 00 08 */	stw r4, 8(r1)
/* 80C7D434  38 00 FF FF */	li r0, -1
/* 80C7D438  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C7D43C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C7D440  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C7D444  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C7D448  38 80 00 00 */	li r4, 0
/* 80C7D44C  7C BB EA 2E */	lhzx r5, r27, r29
/* 80C7D450  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80C7D454  38 E0 00 00 */	li r7, 0
/* 80C7D458  39 00 00 00 */	li r8, 0
/* 80C7D45C  39 3E 04 EC */	addi r9, r30, 0x4ec
/* 80C7D460  39 40 00 FF */	li r10, 0xff
/* 80C7D464  C0 3C 00 00 */	lfs f1, 0(r28)
/* 80C7D468  4B 3C F6 28 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C7D46C  3B 39 00 01 */	addi r25, r25, 1
/* 80C7D470  2C 19 00 05 */	cmpwi r25, 5
/* 80C7D474  3B BD 00 02 */	addi r29, r29, 2
/* 80C7D478  41 80 FF B0 */	blt lbl_80C7D428
/* 80C7D47C  7F C3 F3 78 */	mr r3, r30
/* 80C7D480  4B 39 C7 FC */	b fopAcM_delete__FP10fopAc_ac_c
/* 80C7D484  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C7D488  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C7D48C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C7D490  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C7D494  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C7D498  7C 05 07 74 */	extsb r5, r0
/* 80C7D49C  4B 3B 7D 64 */	b onSwitch__10dSv_info_cFii
lbl_80C7D4A0:
/* 80C7D4A0  38 7E 08 6C */	addi r3, r30, 0x86c
/* 80C7D4A4  38 9E 08 94 */	addi r4, r30, 0x894
/* 80C7D4A8  4B 5F 21 A0 */	b SetC__8cM3dGSphFRC4cXyz
/* 80C7D4AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C7D4B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C7D4B4  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C7D4B8  38 9E 07 48 */	addi r4, r30, 0x748
/* 80C7D4BC  4B 5E 76 EC */	b Set__4cCcSFP8cCcD_Obj
/* 80C7D4C0  7F C3 F3 78 */	mr r3, r30
/* 80C7D4C4  48 00 00 31 */	bl action__11daObjL6Bm_cFv
/* 80C7D4C8  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80C7D4CC  90 1F 00 00 */	stw r0, 0(r31)
/* 80C7D4D0  7F C3 F3 78 */	mr r3, r30
/* 80C7D4D4  4B FF F9 8D */	bl setBaseMtx__11daObjL6Bm_cFv
/* 80C7D4D8  38 60 00 01 */	li r3, 1
/* 80C7D4DC  39 61 00 40 */	addi r11, r1, 0x40
/* 80C7D4E0  4B 6E 4D 38 */	b _restgpr_25
/* 80C7D4E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C7D4E8  7C 08 03 A6 */	mtlr r0
/* 80C7D4EC  38 21 00 40 */	addi r1, r1, 0x40
/* 80C7D4F0  4E 80 00 20 */	blr 
