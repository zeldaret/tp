lbl_809E8BA0:
/* 809E8BA0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809E8BA4  7C 08 02 A6 */	mflr r0
/* 809E8BA8  90 01 00 44 */	stw r0, 0x44(r1)
/* 809E8BAC  39 61 00 40 */	addi r11, r1, 0x40
/* 809E8BB0  4B 97 96 19 */	bl _savegpr_24
/* 809E8BB4  7C 7E 1B 78 */	mr r30, r3
/* 809E8BB8  3C 80 80 9F */	lis r4, m__17daNpc_Grz_Param_c@ha /* 0x809EF1F4@ha */
/* 809E8BBC  3B E4 F1 F4 */	addi r31, r4, m__17daNpc_Grz_Param_c@l /* 0x809EF1F4@l */
/* 809E8BC0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 809E8BC4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 809E8BC8  40 82 00 1C */	bne lbl_809E8BE4
/* 809E8BCC  28 1E 00 00 */	cmplwi r30, 0
/* 809E8BD0  41 82 00 08 */	beq lbl_809E8BD8
/* 809E8BD4  4B FF F8 39 */	bl __ct__11daNpc_Grz_cFv
lbl_809E8BD8:
/* 809E8BD8  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 809E8BDC  60 00 00 08 */	ori r0, r0, 8
/* 809E8BE0  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_809E8BE4:
/* 809E8BE4  7F C3 F3 78 */	mr r3, r30
/* 809E8BE8  48 00 21 B5 */	bl getTypeFromParam__11daNpc_Grz_cFv
/* 809E8BEC  98 7E 1A 7C */	stb r3, 0x1a7c(r30)
/* 809E8BF0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 809E8BF4  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 809E8BF8  98 1E 1A 98 */	stb r0, 0x1a98(r30)
/* 809E8BFC  A8 7E 04 B4 */	lha r3, 0x4b4(r30)
/* 809E8C00  3C 03 00 00 */	addis r0, r3, 0
/* 809E8C04  28 00 FF FF */	cmplwi r0, 0xffff
/* 809E8C08  41 82 00 0C */	beq lbl_809E8C14
/* 809E8C0C  90 7E 1A 74 */	stw r3, 0x1a74(r30)
/* 809E8C10  48 00 00 0C */	b lbl_809E8C1C
lbl_809E8C14:
/* 809E8C14  38 00 FF FF */	li r0, -1
/* 809E8C18  90 1E 1A 74 */	stw r0, 0x1a74(r30)
lbl_809E8C1C:
/* 809E8C1C  7F C3 F3 78 */	mr r3, r30
/* 809E8C20  48 00 21 C9 */	bl isDelete__11daNpc_Grz_cFv
/* 809E8C24  2C 03 00 00 */	cmpwi r3, 0
/* 809E8C28  41 82 00 0C */	beq lbl_809E8C34
/* 809E8C2C  38 60 00 05 */	li r3, 5
/* 809E8C30  48 00 02 20 */	b lbl_809E8E50
lbl_809E8C34:
/* 809E8C34  3B 20 00 00 */	li r25, 0
/* 809E8C38  3B 00 00 00 */	li r24, 0
/* 809E8C3C  3B A0 00 00 */	li r29, 0
/* 809E8C40  3B 80 00 00 */	li r28, 0
/* 809E8C44  3C 60 80 9F */	lis r3, l_resNames@ha /* 0x809EF8E8@ha */
/* 809E8C48  3B 43 F8 E8 */	addi r26, r3, l_resNames@l /* 0x809EF8E8@l */
/* 809E8C4C  3C 60 80 9F */	lis r3, l_loadRes_list@ha /* 0x809EF8D4@ha */
/* 809E8C50  3B 63 F8 D4 */	addi r27, r3, l_loadRes_list@l /* 0x809EF8D4@l */
/* 809E8C54  48 00 00 48 */	b lbl_809E8C9C
lbl_809E8C58:
/* 809E8C58  38 7C 1A 3C */	addi r3, r28, 0x1a3c
/* 809E8C5C  7C 7E 1A 14 */	add r3, r30, r3
/* 809E8C60  54 00 10 3A */	slwi r0, r0, 2
/* 809E8C64  7C 9A 00 2E */	lwzx r4, r26, r0
/* 809E8C68  4B 64 42 55 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 809E8C6C  2C 03 00 05 */	cmpwi r3, 5
/* 809E8C70  41 82 00 0C */	beq lbl_809E8C7C
/* 809E8C74  2C 03 00 03 */	cmpwi r3, 3
/* 809E8C78  40 82 00 0C */	bne lbl_809E8C84
lbl_809E8C7C:
/* 809E8C7C  38 60 00 05 */	li r3, 5
/* 809E8C80  48 00 01 D0 */	b lbl_809E8E50
lbl_809E8C84:
/* 809E8C84  2C 03 00 04 */	cmpwi r3, 4
/* 809E8C88  40 82 00 08 */	bne lbl_809E8C90
/* 809E8C8C  3B 39 00 01 */	addi r25, r25, 1
lbl_809E8C90:
/* 809E8C90  3B 18 00 01 */	addi r24, r24, 1
/* 809E8C94  3B BD 00 04 */	addi r29, r29, 4
/* 809E8C98  3B 9C 00 08 */	addi r28, r28, 8
lbl_809E8C9C:
/* 809E8C9C  88 1E 1A 7C */	lbz r0, 0x1a7c(r30)
/* 809E8CA0  54 06 10 3A */	slwi r6, r0, 2
/* 809E8CA4  7C 7B 30 2E */	lwzx r3, r27, r6
/* 809E8CA8  7C 03 E8 2E */	lwzx r0, r3, r29
/* 809E8CAC  2C 00 00 00 */	cmpwi r0, 0
/* 809E8CB0  40 80 FF A8 */	bge lbl_809E8C58
/* 809E8CB4  7C 19 C0 00 */	cmpw r25, r24
/* 809E8CB8  40 82 01 94 */	bne lbl_809E8E4C
/* 809E8CBC  7F C3 F3 78 */	mr r3, r30
/* 809E8CC0  3C 80 80 9F */	lis r4, createHeapCallBack__11daNpc_Grz_cFP10fopAc_ac_c@ha /* 0x809E979C@ha */
/* 809E8CC4  38 84 97 9C */	addi r4, r4, createHeapCallBack__11daNpc_Grz_cFP10fopAc_ac_c@l /* 0x809E979C@l */
/* 809E8CC8  38 BF 00 80 */	addi r5, r31, 0x80
/* 809E8CCC  7C A5 30 2E */	lwzx r5, r5, r6
/* 809E8CD0  4B 63 17 E1 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 809E8CD4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809E8CD8  40 82 00 0C */	bne lbl_809E8CE4
/* 809E8CDC  38 60 00 05 */	li r3, 5
/* 809E8CE0  48 00 01 70 */	b lbl_809E8E50
lbl_809E8CE4:
/* 809E8CE4  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809E8CE8  80 63 00 04 */	lwz r3, 4(r3)
/* 809E8CEC  38 03 00 24 */	addi r0, r3, 0x24
/* 809E8CF0  90 1E 05 04 */	stw r0, 0x504(r30)
/* 809E8CF4  7F C3 F3 78 */	mr r3, r30
/* 809E8CF8  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 809E8CFC  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 809E8D00  FC 60 08 90 */	fmr f3, f1
/* 809E8D04  C0 9F 00 9C */	lfs f4, 0x9c(r31)
/* 809E8D08  C0 BF 00 A0 */	lfs f5, 0xa0(r31)
/* 809E8D0C  FC C0 20 90 */	fmr f6, f4
/* 809E8D10  4B 63 18 39 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 809E8D14  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 809E8D18  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 809E8D1C  38 BE 05 38 */	addi r5, r30, 0x538
/* 809E8D20  38 C0 00 03 */	li r6, 3
/* 809E8D24  38 E0 00 01 */	li r7, 1
/* 809E8D28  4B 8D 78 09 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 809E8D2C  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 809E8D30  38 9F 00 00 */	addi r4, r31, 0
/* 809E8D34  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 809E8D38  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 809E8D3C  4B 68 D2 1D */	bl SetWall__12dBgS_AcchCirFff
/* 809E8D40  38 1E 04 E4 */	addi r0, r30, 0x4e4
/* 809E8D44  90 01 00 08 */	stw r0, 8(r1)
/* 809E8D48  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 809E8D4C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 809E8D50  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 809E8D54  7F C6 F3 78 */	mr r6, r30
/* 809E8D58  38 E0 00 01 */	li r7, 1
/* 809E8D5C  39 1E 07 E4 */	addi r8, r30, 0x7e4
/* 809E8D60  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 809E8D64  39 5E 04 DC */	addi r10, r30, 0x4dc
/* 809E8D68  4B 68 D4 E1 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 809E8D6C  38 7E 07 A8 */	addi r3, r30, 0x7a8
/* 809E8D70  38 9F 00 00 */	addi r4, r31, 0
/* 809E8D74  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 809E8D78  FC 00 00 1E */	fctiwz f0, f0
/* 809E8D7C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 809E8D80  80 81 00 14 */	lwz r4, 0x14(r1)
/* 809E8D84  38 A0 00 00 */	li r5, 0
/* 809E8D88  7F C6 F3 78 */	mr r6, r30
/* 809E8D8C  4B 69 AA D5 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 809E8D90  7F C3 F3 78 */	mr r3, r30
/* 809E8D94  48 00 23 C1 */	bl resetCol__11daNpc_Grz_cFv
/* 809E8D98  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 809E8D9C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809E8DA0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809E8DA4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 809E8DA8  4B 68 DD 05 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 809E8DAC  80 1E 06 AC */	lwz r0, 0x6ac(r30)
/* 809E8DB0  90 1E 0A 44 */	stw r0, 0xa44(r30)
/* 809E8DB4  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 809E8DB8  90 1E 0A 48 */	stw r0, 0xa48(r30)
/* 809E8DBC  80 1E 06 B4 */	lwz r0, 0x6b4(r30)
/* 809E8DC0  90 1E 0A 4C */	stw r0, 0xa4c(r30)
/* 809E8DC4  88 1E 06 B8 */	lbz r0, 0x6b8(r30)
/* 809E8DC8  98 1E 0A 50 */	stb r0, 0xa50(r30)
/* 809E8DCC  A0 1E 06 C0 */	lhz r0, 0x6c0(r30)
/* 809E8DD0  B0 1E 0A 58 */	sth r0, 0xa58(r30)
/* 809E8DD4  A0 1E 06 C2 */	lhz r0, 0x6c2(r30)
/* 809E8DD8  B0 1E 0A 5A */	sth r0, 0xa5a(r30)
/* 809E8DDC  80 1E 06 C4 */	lwz r0, 0x6c4(r30)
/* 809E8DE0  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 809E8DE4  80 1E 06 C8 */	lwz r0, 0x6c8(r30)
/* 809E8DE8  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 809E8DEC  C0 1E 06 D0 */	lfs f0, 0x6d0(r30)
/* 809E8DF0  D0 1E 0A 68 */	stfs f0, 0xa68(r30)
/* 809E8DF4  C0 1E 06 D4 */	lfs f0, 0x6d4(r30)
/* 809E8DF8  D0 1E 0A 6C */	stfs f0, 0xa6c(r30)
/* 809E8DFC  C0 1E 06 D8 */	lfs f0, 0x6d8(r30)
/* 809E8E00  D0 1E 0A 70 */	stfs f0, 0xa70(r30)
/* 809E8E04  80 1E 06 DC */	lwz r0, 0x6dc(r30)
/* 809E8E08  90 1E 0A 74 */	stw r0, 0xa74(r30)
/* 809E8E0C  C0 1E 06 E0 */	lfs f0, 0x6e0(r30)
/* 809E8E10  D0 1E 0A 78 */	stfs f0, 0xa78(r30)
/* 809E8E14  80 1E 06 E4 */	lwz r0, 0x6e4(r30)
/* 809E8E18  90 1E 0A 7C */	stw r0, 0xa7c(r30)
/* 809E8E1C  C0 1E 06 68 */	lfs f0, 0x668(r30)
/* 809E8E20  D0 1E 09 80 */	stfs f0, 0x980(r30)
/* 809E8E24  7F C3 F3 78 */	mr r3, r30
/* 809E8E28  4B 76 9F 5D */	bl setEnvTevColor__8daNpcF_cFv
/* 809E8E2C  7F C3 F3 78 */	mr r3, r30
/* 809E8E30  4B 76 9F B1 */	bl setRoomNo__8daNpcF_cFv
/* 809E8E34  7F C3 F3 78 */	mr r3, r30
/* 809E8E38  48 00 20 51 */	bl reset__11daNpc_Grz_cFv
/* 809E8E3C  7F C3 F3 78 */	mr r3, r30
/* 809E8E40  48 00 04 A1 */	bl Execute__11daNpc_Grz_cFv
/* 809E8E44  38 60 00 04 */	li r3, 4
/* 809E8E48  48 00 00 08 */	b lbl_809E8E50
lbl_809E8E4C:
/* 809E8E4C  38 60 00 00 */	li r3, 0
lbl_809E8E50:
/* 809E8E50  39 61 00 40 */	addi r11, r1, 0x40
/* 809E8E54  4B 97 93 C1 */	bl _restgpr_24
/* 809E8E58  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809E8E5C  7C 08 03 A6 */	mtlr r0
/* 809E8E60  38 21 00 40 */	addi r1, r1, 0x40
/* 809E8E64  4E 80 00 20 */	blr 
