lbl_809DE30C:
/* 809DE30C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809DE310  7C 08 02 A6 */	mflr r0
/* 809DE314  90 01 00 44 */	stw r0, 0x44(r1)
/* 809DE318  39 61 00 40 */	addi r11, r1, 0x40
/* 809DE31C  4B 98 3E B8 */	b _savegpr_27
/* 809DE320  7C 7D 1B 78 */	mr r29, r3
/* 809DE324  7C 9B 23 78 */	mr r27, r4
/* 809DE328  3B E0 00 00 */	li r31, 0
/* 809DE32C  3B C0 FF FF */	li r30, -1
/* 809DE330  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809DE334  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809DE338  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 809DE33C  7F 83 E3 78 */	mr r3, r28
/* 809DE340  3C A0 80 9E */	lis r5, stringBase0@ha
/* 809DE344  38 A5 F2 B8 */	addi r5, r5, stringBase0@l
/* 809DE348  38 A5 00 3C */	addi r5, r5, 0x3c
/* 809DE34C  38 C0 00 03 */	li r6, 3
/* 809DE350  4B 66 9D 9C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809DE354  28 03 00 00 */	cmplwi r3, 0
/* 809DE358  41 82 00 08 */	beq lbl_809DE360
/* 809DE35C  83 C3 00 00 */	lwz r30, 0(r3)
lbl_809DE360:
/* 809DE360  7F 83 E3 78 */	mr r3, r28
/* 809DE364  7F 64 DB 78 */	mr r4, r27
/* 809DE368  4B 66 99 E4 */	b getIsAddvance__16dEvent_manager_cFi
/* 809DE36C  2C 03 00 00 */	cmpwi r3, 0
/* 809DE370  41 82 01 20 */	beq lbl_809DE490
/* 809DE374  2C 1E 00 01 */	cmpwi r30, 1
/* 809DE378  41 82 00 98 */	beq lbl_809DE410
/* 809DE37C  40 80 01 14 */	bge lbl_809DE490
/* 809DE380  2C 1E 00 00 */	cmpwi r30, 0
/* 809DE384  40 80 00 08 */	bge lbl_809DE38C
/* 809DE388  48 00 01 08 */	b lbl_809DE490
lbl_809DE38C:
/* 809DE38C  38 7D 08 24 */	addi r3, r29, 0x824
/* 809DE390  4B 77 23 5C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809DE394  7C 64 1B 78 */	mr r4, r3
/* 809DE398  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 809DE39C  54 05 86 3E */	rlwinm r5, r0, 0x10, 0x18, 0x1f
/* 809DE3A0  28 05 00 FF */	cmplwi r5, 0xff
/* 809DE3A4  38 00 FF FF */	li r0, -1
/* 809DE3A8  41 82 00 08 */	beq lbl_809DE3B0
/* 809DE3AC  7C A0 2B 78 */	mr r0, r5
lbl_809DE3B0:
/* 809DE3B0  2C 00 FF FF */	cmpwi r0, -1
/* 809DE3B4  40 81 00 DC */	ble lbl_809DE490
/* 809DE3B8  28 05 00 FF */	cmplwi r5, 0xff
/* 809DE3BC  38 60 FF FF */	li r3, -1
/* 809DE3C0  41 82 00 08 */	beq lbl_809DE3C8
/* 809DE3C4  54 A3 04 3E */	clrlwi r3, r5, 0x10
lbl_809DE3C8:
/* 809DE3C8  88 84 04 E2 */	lbz r4, 0x4e2(r4)
/* 809DE3CC  7C 84 07 74 */	extsb r4, r4
/* 809DE3D0  38 A1 00 10 */	addi r5, r1, 0x10
/* 809DE3D4  38 C1 00 08 */	addi r6, r1, 8
/* 809DE3D8  4B 76 E1 28 */	b daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 809DE3DC  2C 03 00 00 */	cmpwi r3, 0
/* 809DE3E0  41 82 00 B0 */	beq lbl_809DE490
/* 809DE3E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809DE3E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809DE3EC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809DE3F0  38 81 00 10 */	addi r4, r1, 0x10
/* 809DE3F4  A8 A1 00 0A */	lha r5, 0xa(r1)
/* 809DE3F8  38 C0 00 00 */	li r6, 0
/* 809DE3FC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809DE400  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 809DE404  7D 89 03 A6 */	mtctr r12
/* 809DE408  4E 80 04 21 */	bctrl 
/* 809DE40C  48 00 00 84 */	b lbl_809DE490
lbl_809DE410:
/* 809DE410  7F A3 EB 78 */	mr r3, r29
/* 809DE414  38 80 00 0C */	li r4, 0xc
/* 809DE418  3C A0 80 9E */	lis r5, lit_4553@ha
/* 809DE41C  C0 25 F0 0C */	lfs f1, lit_4553@l(r5)
/* 809DE420  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809DE424  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809DE428  7D 89 03 A6 */	mtctr r12
/* 809DE42C  4E 80 04 21 */	bctrl 
/* 809DE430  7F A3 EB 78 */	mr r3, r29
/* 809DE434  38 80 00 00 */	li r4, 0
/* 809DE438  3C A0 80 9E */	lis r5, lit_4553@ha
/* 809DE43C  C0 25 F0 0C */	lfs f1, lit_4553@l(r5)
/* 809DE440  38 A0 00 01 */	li r5, 1
/* 809DE444  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809DE448  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809DE44C  7D 89 03 A6 */	mtctr r12
/* 809DE450  4E 80 04 21 */	bctrl 
/* 809DE454  7F A3 EB 78 */	mr r3, r29
/* 809DE458  38 80 00 01 */	li r4, 1
/* 809DE45C  4B FF EF 7D */	bl setLookMode__11daNpc_grO_cFi
/* 809DE460  7F A3 EB 78 */	mr r3, r29
/* 809DE464  80 9D 09 B4 */	lwz r4, 0x9b4(r29)
/* 809DE468  38 A0 00 00 */	li r5, 0
/* 809DE46C  4B 77 58 B0 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 809DE470  7F A3 EB 78 */	mr r3, r29
/* 809DE474  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809DE478  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809DE47C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809DE480  4B 63 C2 90 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809DE484  7C 64 1B 78 */	mr r4, r3
/* 809DE488  7F A3 EB 78 */	mr r3, r29
/* 809DE48C  4B 77 5D C4 */	b setAngle__8daNpcF_cFs
lbl_809DE490:
/* 809DE490  2C 1E 00 01 */	cmpwi r30, 1
/* 809DE494  41 82 00 1C */	beq lbl_809DE4B0
/* 809DE498  40 80 00 38 */	bge lbl_809DE4D0
/* 809DE49C  2C 1E 00 00 */	cmpwi r30, 0
/* 809DE4A0  40 80 00 08 */	bge lbl_809DE4A8
/* 809DE4A4  48 00 00 2C */	b lbl_809DE4D0
lbl_809DE4A8:
/* 809DE4A8  3B E0 00 01 */	li r31, 1
/* 809DE4AC  48 00 00 24 */	b lbl_809DE4D0
lbl_809DE4B0:
/* 809DE4B0  7F A3 EB 78 */	mr r3, r29
/* 809DE4B4  38 80 00 00 */	li r4, 0
/* 809DE4B8  38 A0 00 01 */	li r5, 1
/* 809DE4BC  38 C0 00 00 */	li r6, 0
/* 809DE4C0  4B 77 58 C4 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809DE4C4  2C 03 00 00 */	cmpwi r3, 0
/* 809DE4C8  41 82 00 08 */	beq lbl_809DE4D0
/* 809DE4CC  3B E0 00 01 */	li r31, 1
lbl_809DE4D0:
/* 809DE4D0  7F E3 FB 78 */	mr r3, r31
/* 809DE4D4  39 61 00 40 */	addi r11, r1, 0x40
/* 809DE4D8  4B 98 3D 48 */	b _restgpr_27
/* 809DE4DC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809DE4E0  7C 08 03 A6 */	mtlr r0
/* 809DE4E4  38 21 00 40 */	addi r1, r1, 0x40
/* 809DE4E8  4E 80 00 20 */	blr 
