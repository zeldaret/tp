lbl_809FC2E4:
/* 809FC2E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809FC2E8  7C 08 02 A6 */	mflr r0
/* 809FC2EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809FC2F0  39 61 00 20 */	addi r11, r1, 0x20
/* 809FC2F4  4B 96 5E E0 */	b _savegpr_27
/* 809FC2F8  7C 7E 1B 78 */	mr r30, r3
/* 809FC2FC  7C 9B 23 78 */	mr r27, r4
/* 809FC300  3B E0 00 00 */	li r31, 0
/* 809FC304  3B 80 FF FF */	li r28, -1
/* 809FC308  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809FC30C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809FC310  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 809FC314  7F A3 EB 78 */	mr r3, r29
/* 809FC318  3C A0 80 A0 */	lis r5, struct_80A007F8+0x0@ha
/* 809FC31C  38 A5 07 F8 */	addi r5, r5, struct_80A007F8+0x0@l
/* 809FC320  38 A5 01 1D */	addi r5, r5, 0x11d
/* 809FC324  38 C0 00 03 */	li r6, 3
/* 809FC328  4B 64 BD C4 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809FC32C  28 03 00 00 */	cmplwi r3, 0
/* 809FC330  41 82 00 08 */	beq lbl_809FC338
/* 809FC334  83 83 00 00 */	lwz r28, 0(r3)
lbl_809FC338:
/* 809FC338  7F A3 EB 78 */	mr r3, r29
/* 809FC33C  7F 64 DB 78 */	mr r4, r27
/* 809FC340  4B 64 BA 0C */	b getIsAddvance__16dEvent_manager_cFi
/* 809FC344  2C 03 00 00 */	cmpwi r3, 0
/* 809FC348  41 82 00 48 */	beq lbl_809FC390
/* 809FC34C  2C 1C 00 01 */	cmpwi r28, 1
/* 809FC350  41 82 00 40 */	beq lbl_809FC390
/* 809FC354  40 80 00 3C */	bge lbl_809FC390
/* 809FC358  2C 1C 00 00 */	cmpwi r28, 0
/* 809FC35C  40 80 00 08 */	bge lbl_809FC364
/* 809FC360  48 00 00 30 */	b lbl_809FC390
lbl_809FC364:
/* 809FC364  7F C3 F3 78 */	mr r3, r30
/* 809FC368  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809FC36C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809FC370  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809FC374  4B 61 E3 9C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809FC378  B0 7E 0D C8 */	sth r3, 0xdc8(r30)
/* 809FC37C  A8 1E 0D D8 */	lha r0, 0xdd8(r30)
/* 809FC380  2C 00 00 01 */	cmpwi r0, 1
/* 809FC384  40 82 00 0C */	bne lbl_809FC390
/* 809FC388  38 00 00 00 */	li r0, 0
/* 809FC38C  B0 1E 0D D8 */	sth r0, 0xdd8(r30)
lbl_809FC390:
/* 809FC390  2C 1C 00 01 */	cmpwi r28, 1
/* 809FC394  41 82 00 1C */	beq lbl_809FC3B0
/* 809FC398  40 80 00 84 */	bge lbl_809FC41C
/* 809FC39C  2C 1C 00 00 */	cmpwi r28, 0
/* 809FC3A0  40 80 00 08 */	bge lbl_809FC3A8
/* 809FC3A4  48 00 00 78 */	b lbl_809FC41C
lbl_809FC3A8:
/* 809FC3A8  3B E0 00 01 */	li r31, 1
/* 809FC3AC  48 00 00 70 */	b lbl_809FC41C
lbl_809FC3B0:
/* 809FC3B0  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809FC3B4  2C 00 00 01 */	cmpwi r0, 1
/* 809FC3B8  41 82 00 2C */	beq lbl_809FC3E4
/* 809FC3BC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809FC3C0  4B 74 93 3C */	b remove__18daNpcT_ActorMngr_cFv
/* 809FC3C4  38 00 00 00 */	li r0, 0
/* 809FC3C8  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809FC3CC  3C 60 80 A0 */	lis r3, lit_4141@ha
/* 809FC3D0  C0 03 06 FC */	lfs f0, lit_4141@l(r3)
/* 809FC3D4  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809FC3D8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809FC3DC  38 00 00 01 */	li r0, 1
/* 809FC3E0  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_809FC3E4:
/* 809FC3E4  38 00 00 00 */	li r0, 0
/* 809FC3E8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809FC3EC  A8 9E 0D C8 */	lha r4, 0xdc8(r30)
/* 809FC3F0  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 809FC3F4  7C 04 00 00 */	cmpw r4, r0
/* 809FC3F8  41 82 00 20 */	beq lbl_809FC418
/* 809FC3FC  7F C3 F3 78 */	mr r3, r30
/* 809FC400  38 A0 00 07 */	li r5, 7
/* 809FC404  38 C0 00 0E */	li r6, 0xe
/* 809FC408  38 E0 00 0F */	li r7, 0xf
/* 809FC40C  39 00 00 00 */	li r8, 0
/* 809FC410  4B 74 F2 38 */	b step__8daNpcT_cFsiiii
/* 809FC414  48 00 00 08 */	b lbl_809FC41C
lbl_809FC418:
/* 809FC418  3B E0 00 01 */	li r31, 1
lbl_809FC41C:
/* 809FC41C  7F E3 FB 78 */	mr r3, r31
/* 809FC420  39 61 00 20 */	addi r11, r1, 0x20
/* 809FC424  4B 96 5D FC */	b _restgpr_27
/* 809FC428  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809FC42C  7C 08 03 A6 */	mtlr r0
/* 809FC430  38 21 00 20 */	addi r1, r1, 0x20
/* 809FC434  4E 80 00 20 */	blr 
