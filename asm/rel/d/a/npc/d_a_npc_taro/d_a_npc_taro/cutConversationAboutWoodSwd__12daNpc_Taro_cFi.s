lbl_80568C58:
/* 80568C58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80568C5C  7C 08 02 A6 */	mflr r0
/* 80568C60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80568C64  39 61 00 20 */	addi r11, r1, 0x20
/* 80568C68  4B DF 95 6C */	b _savegpr_27
/* 80568C6C  7C 7E 1B 78 */	mr r30, r3
/* 80568C70  7C 9B 23 78 */	mr r27, r4
/* 80568C74  3B E0 00 00 */	li r31, 0
/* 80568C78  3B 80 FF FF */	li r28, -1
/* 80568C7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80568C80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80568C84  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 80568C88  7F A3 EB 78 */	mr r3, r29
/* 80568C8C  3C A0 80 57 */	lis r5, struct_80571908+0x0@ha
/* 80568C90  38 A5 19 08 */	addi r5, r5, struct_80571908+0x0@l
/* 80568C94  38 A5 02 9C */	addi r5, r5, 0x29c
/* 80568C98  38 C0 00 03 */	li r6, 3
/* 80568C9C  4B AD F4 50 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80568CA0  28 03 00 00 */	cmplwi r3, 0
/* 80568CA4  41 82 00 08 */	beq lbl_80568CAC
/* 80568CA8  83 83 00 00 */	lwz r28, 0(r3)
lbl_80568CAC:
/* 80568CAC  7F A3 EB 78 */	mr r3, r29
/* 80568CB0  7F 64 DB 78 */	mr r4, r27
/* 80568CB4  4B AD F0 98 */	b getIsAddvance__16dEvent_manager_cFi
/* 80568CB8  2C 03 00 00 */	cmpwi r3, 0
/* 80568CBC  41 82 00 34 */	beq lbl_80568CF0
/* 80568CC0  2C 1C 00 01 */	cmpwi r28, 1
/* 80568CC4  41 82 00 2C */	beq lbl_80568CF0
/* 80568CC8  40 80 00 28 */	bge lbl_80568CF0
/* 80568CCC  2C 1C 00 00 */	cmpwi r28, 0
/* 80568CD0  40 80 00 08 */	bge lbl_80568CD8
/* 80568CD4  48 00 00 1C */	b lbl_80568CF0
lbl_80568CD8:
/* 80568CD8  7F C3 F3 78 */	mr r3, r30
/* 80568CDC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80568CE0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80568CE4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80568CE8  4B AB 1A 28 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80568CEC  B0 7E 0D C8 */	sth r3, 0xdc8(r30)
lbl_80568CF0:
/* 80568CF0  2C 1C 00 01 */	cmpwi r28, 1
/* 80568CF4  41 82 00 EC */	beq lbl_80568DE0
/* 80568CF8  40 80 00 EC */	bge lbl_80568DE4
/* 80568CFC  2C 1C 00 00 */	cmpwi r28, 0
/* 80568D00  40 80 00 08 */	bge lbl_80568D08
/* 80568D04  48 00 00 E0 */	b lbl_80568DE4
lbl_80568D08:
/* 80568D08  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80568D0C  2C 00 00 01 */	cmpwi r0, 1
/* 80568D10  41 82 00 2C */	beq lbl_80568D3C
/* 80568D14  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80568D18  4B BD C9 E4 */	b remove__18daNpcT_ActorMngr_cFv
/* 80568D1C  38 00 00 00 */	li r0, 0
/* 80568D20  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80568D24  3C 60 80 57 */	lis r3, lit_4472@ha
/* 80568D28  C0 03 17 AC */	lfs f0, lit_4472@l(r3)
/* 80568D2C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80568D30  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80568D34  38 00 00 01 */	li r0, 1
/* 80568D38  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80568D3C:
/* 80568D3C  38 00 00 00 */	li r0, 0
/* 80568D40  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80568D44  A8 9E 0D C8 */	lha r4, 0xdc8(r30)
/* 80568D48  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80568D4C  7C 04 00 00 */	cmpw r4, r0
/* 80568D50  41 82 00 88 */	beq lbl_80568DD8
/* 80568D54  7F C3 F3 78 */	mr r3, r30
/* 80568D58  38 A0 00 1F */	li r5, 0x1f
/* 80568D5C  38 C0 00 24 */	li r6, 0x24
/* 80568D60  38 E0 00 0F */	li r7, 0xf
/* 80568D64  39 00 00 00 */	li r8, 0
/* 80568D68  4B BE 28 E0 */	b step__8daNpcT_cFsiiii
/* 80568D6C  2C 03 00 00 */	cmpwi r3, 0
/* 80568D70  41 82 00 74 */	beq lbl_80568DE4
/* 80568D74  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80568D78  2C 00 00 1F */	cmpwi r0, 0x1f
/* 80568D7C  41 82 00 28 */	beq lbl_80568DA4
/* 80568D80  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80568D84  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80568D88  4B BD CB 10 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80568D8C  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80568D90  38 00 00 1F */	li r0, 0x1f
/* 80568D94  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80568D98  3C 60 80 57 */	lis r3, lit_5232@ha
/* 80568D9C  C0 03 17 D0 */	lfs f0, lit_5232@l(r3)
/* 80568DA0  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80568DA4:
/* 80568DA4  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80568DA8  2C 00 00 00 */	cmpwi r0, 0
/* 80568DAC  41 82 00 38 */	beq lbl_80568DE4
/* 80568DB0  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80568DB4  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80568DB8  4B BD CA E0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80568DBC  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80568DC0  38 00 00 00 */	li r0, 0
/* 80568DC4  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80568DC8  3C 60 80 57 */	lis r3, lit_5232@ha
/* 80568DCC  C0 03 17 D0 */	lfs f0, lit_5232@l(r3)
/* 80568DD0  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80568DD4  48 00 00 10 */	b lbl_80568DE4
lbl_80568DD8:
/* 80568DD8  3B E0 00 01 */	li r31, 1
/* 80568DDC  48 00 00 08 */	b lbl_80568DE4
lbl_80568DE0:
/* 80568DE0  3B E0 00 01 */	li r31, 1
lbl_80568DE4:
/* 80568DE4  7F E3 FB 78 */	mr r3, r31
/* 80568DE8  39 61 00 20 */	addi r11, r1, 0x20
/* 80568DEC  4B DF 94 34 */	b _restgpr_27
/* 80568DF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80568DF4  7C 08 03 A6 */	mtlr r0
/* 80568DF8  38 21 00 20 */	addi r1, r1, 0x20
/* 80568DFC  4E 80 00 20 */	blr 
