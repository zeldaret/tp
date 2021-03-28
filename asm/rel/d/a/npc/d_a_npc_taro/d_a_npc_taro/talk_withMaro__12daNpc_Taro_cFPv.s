lbl_8056F418:
/* 8056F418  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8056F41C  7C 08 02 A6 */	mflr r0
/* 8056F420  90 01 00 44 */	stw r0, 0x44(r1)
/* 8056F424  39 61 00 40 */	addi r11, r1, 0x40
/* 8056F428  4B DF 2D A4 */	b _savegpr_25
/* 8056F42C  7C 7A 1B 78 */	mr r26, r3
/* 8056F430  3C 60 80 57 */	lis r3, m__18daNpc_Taro_Param_c@ha
/* 8056F434  3B C3 16 C8 */	addi r30, r3, m__18daNpc_Taro_Param_c@l
/* 8056F438  38 7A 10 C8 */	addi r3, r26, 0x10c8
/* 8056F43C  4B BD 62 CC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8056F440  7C 7D 1B 78 */	mr r29, r3
/* 8056F444  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8056F448  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8056F44C  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 8056F450  38 7E 00 00 */	addi r3, r30, 0
/* 8056F454  AB 63 00 8C */	lha r27, 0x8c(r3)
/* 8056F458  A0 1A 0E 22 */	lhz r0, 0xe22(r26)
/* 8056F45C  2C 00 00 02 */	cmpwi r0, 2
/* 8056F460  41 82 00 8C */	beq lbl_8056F4EC
/* 8056F464  40 80 03 68 */	bge lbl_8056F7CC
/* 8056F468  2C 00 00 00 */	cmpwi r0, 0
/* 8056F46C  40 80 00 0C */	bge lbl_8056F478
/* 8056F470  48 00 03 5C */	b lbl_8056F7CC
/* 8056F474  48 00 03 58 */	b lbl_8056F7CC
lbl_8056F478:
/* 8056F478  80 1A 0B 58 */	lwz r0, 0xb58(r26)
/* 8056F47C  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056F480  41 82 00 24 */	beq lbl_8056F4A4
/* 8056F484  83 3A 0B 5C */	lwz r25, 0xb5c(r26)
/* 8056F488  38 7A 0B 50 */	addi r3, r26, 0xb50
/* 8056F48C  4B BD 64 0C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056F490  93 3A 0B 5C */	stw r25, 0xb5c(r26)
/* 8056F494  38 00 00 1F */	li r0, 0x1f
/* 8056F498  90 1A 0B 58 */	stw r0, 0xb58(r26)
/* 8056F49C  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 8056F4A0  D0 1A 0B 68 */	stfs f0, 0xb68(r26)
lbl_8056F4A4:
/* 8056F4A4  80 1A 0B 7C */	lwz r0, 0xb7c(r26)
/* 8056F4A8  2C 00 00 00 */	cmpwi r0, 0
/* 8056F4AC  41 82 00 24 */	beq lbl_8056F4D0
/* 8056F4B0  83 3A 0B 80 */	lwz r25, 0xb80(r26)
/* 8056F4B4  38 7A 0B 74 */	addi r3, r26, 0xb74
/* 8056F4B8  4B BD 63 E0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056F4BC  93 3A 0B 80 */	stw r25, 0xb80(r26)
/* 8056F4C0  38 00 00 00 */	li r0, 0
/* 8056F4C4  90 1A 0B 7C */	stw r0, 0xb7c(r26)
/* 8056F4C8  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 8056F4CC  D0 1A 0B 8C */	stfs f0, 0xb8c(r26)
lbl_8056F4D0:
/* 8056F4D0  7F 60 0E 70 */	srawi r0, r27, 1
/* 8056F4D4  7C 60 01 94 */	addze r3, r0
/* 8056F4D8  7F 64 DB 78 */	mr r4, r27
/* 8056F4DC  48 00 1D 49 */	bl func_80571224
/* 8056F4E0  90 7A 11 98 */	stw r3, 0x1198(r26)
/* 8056F4E4  38 00 00 02 */	li r0, 2
/* 8056F4E8  B0 1A 0E 22 */	sth r0, 0xe22(r26)
lbl_8056F4EC:
/* 8056F4EC  A8 1A 0D 1C */	lha r0, 0xd1c(r26)
/* 8056F4F0  2C 00 00 00 */	cmpwi r0, 0
/* 8056F4F4  40 82 02 D8 */	bne lbl_8056F7CC
/* 8056F4F8  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 8056F4FC  2C 00 00 00 */	cmpwi r0, 0
/* 8056F500  41 82 00 24 */	beq lbl_8056F524
/* 8056F504  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 8056F508  4B BD 61 F4 */	b remove__18daNpcT_ActorMngr_cFv
/* 8056F50C  38 00 00 00 */	li r0, 0
/* 8056F510  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 8056F514  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8056F518  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 8056F51C  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8056F520  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_8056F524:
/* 8056F524  38 00 00 00 */	li r0, 0
/* 8056F528  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8056F52C  28 1D 00 00 */	cmplwi r29, 0
/* 8056F530  41 82 02 00 */	beq lbl_8056F730
/* 8056F534  88 1A 11 A0 */	lbz r0, 0x11a0(r26)
/* 8056F538  28 00 00 00 */	cmplwi r0, 0
/* 8056F53C  40 82 00 24 */	bne lbl_8056F560
/* 8056F540  7F 43 D3 78 */	mr r3, r26
/* 8056F544  4B BD BD F4 */	b srchPlayerActor__8daNpcT_cFv
/* 8056F548  2C 03 00 00 */	cmpwi r3, 0
/* 8056F54C  40 82 00 14 */	bne lbl_8056F560
/* 8056F550  7F A3 EB 78 */	mr r3, r29
/* 8056F554  4B BD BD E4 */	b srchPlayerActor__8daNpcT_cFv
/* 8056F558  2C 03 00 00 */	cmpwi r3, 0
/* 8056F55C  41 82 00 68 */	beq lbl_8056F5C4
lbl_8056F560:
/* 8056F560  38 7D 0B 98 */	addi r3, r29, 0xb98
/* 8056F564  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8056F568  4B BD 61 78 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8056F56C  38 00 00 00 */	li r0, 0
/* 8056F570  98 1D 11 34 */	stb r0, 0x1134(r29)
/* 8056F574  7F 60 0E 70 */	srawi r0, r27, 1
/* 8056F578  7C 60 01 94 */	addze r3, r0
/* 8056F57C  7F 64 DB 78 */	mr r4, r27
/* 8056F580  48 00 1C A5 */	bl func_80571224
/* 8056F584  90 7A 11 98 */	stw r3, 0x1198(r26)
/* 8056F588  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 8056F58C  2C 00 00 01 */	cmpwi r0, 1
/* 8056F590  41 82 00 28 */	beq lbl_8056F5B8
/* 8056F594  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 8056F598  4B BD 61 64 */	b remove__18daNpcT_ActorMngr_cFv
/* 8056F59C  38 00 00 00 */	li r0, 0
/* 8056F5A0  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 8056F5A4  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8056F5A8  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 8056F5AC  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8056F5B0  38 00 00 01 */	li r0, 1
/* 8056F5B4  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_8056F5B8:
/* 8056F5B8  38 00 00 00 */	li r0, 0
/* 8056F5BC  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8056F5C0  48 00 01 70 */	b lbl_8056F730
lbl_8056F5C4:
/* 8056F5C4  38 7D 0B 98 */	addi r3, r29, 0xb98
/* 8056F5C8  4B BD 61 34 */	b remove__18daNpcT_ActorMngr_cFv
/* 8056F5CC  80 7D 0B 7C */	lwz r3, 0xb7c(r29)
/* 8056F5D0  2C 03 00 05 */	cmpwi r3, 5
/* 8056F5D4  41 82 00 0C */	beq lbl_8056F5E0
/* 8056F5D8  2C 03 00 06 */	cmpwi r3, 6
/* 8056F5DC  40 82 00 0C */	bne lbl_8056F5E8
lbl_8056F5E0:
/* 8056F5E0  38 00 00 01 */	li r0, 1
/* 8056F5E4  48 00 00 08 */	b lbl_8056F5EC
lbl_8056F5E8:
/* 8056F5E8  38 00 00 00 */	li r0, 0
lbl_8056F5EC:
/* 8056F5EC  2C 00 00 00 */	cmpwi r0, 0
/* 8056F5F0  41 82 00 F4 */	beq lbl_8056F6E4
/* 8056F5F4  2C 03 00 05 */	cmpwi r3, 5
/* 8056F5F8  41 82 00 0C */	beq lbl_8056F604
/* 8056F5FC  2C 03 00 06 */	cmpwi r3, 6
/* 8056F600  40 82 00 0C */	bne lbl_8056F60C
lbl_8056F604:
/* 8056F604  38 00 00 01 */	li r0, 1
/* 8056F608  48 00 00 08 */	b lbl_8056F610
lbl_8056F60C:
/* 8056F60C  38 00 00 00 */	li r0, 0
lbl_8056F610:
/* 8056F610  2C 00 00 01 */	cmpwi r0, 1
/* 8056F614  40 82 00 18 */	bne lbl_8056F62C
/* 8056F618  80 1D 0B 84 */	lwz r0, 0xb84(r29)
/* 8056F61C  2C 00 00 00 */	cmpwi r0, 0
/* 8056F620  40 81 00 0C */	ble lbl_8056F62C
/* 8056F624  38 00 00 01 */	li r0, 1
/* 8056F628  48 00 00 08 */	b lbl_8056F630
lbl_8056F62C:
/* 8056F62C  38 00 00 00 */	li r0, 0
lbl_8056F630:
/* 8056F630  2C 00 00 00 */	cmpwi r0, 0
/* 8056F634  41 82 00 20 */	beq lbl_8056F654
/* 8056F638  38 00 00 00 */	li r0, 0
/* 8056F63C  98 1D 11 34 */	stb r0, 0x1134(r29)
/* 8056F640  7F 60 0E 70 */	srawi r0, r27, 1
/* 8056F644  7C 60 01 94 */	addze r3, r0
/* 8056F648  7F 64 DB 78 */	mr r4, r27
/* 8056F64C  48 00 1B D9 */	bl func_80571224
/* 8056F650  90 7A 11 98 */	stw r3, 0x1198(r26)
lbl_8056F654:
/* 8056F654  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 8056F658  4B BD 60 B0 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8056F65C  7C 63 E8 50 */	subf r3, r3, r29
/* 8056F660  30 03 FF FF */	addic r0, r3, -1
/* 8056F664  7C 00 19 10 */	subfe r0, r0, r3
/* 8056F668  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8056F66C  40 82 00 10 */	bne lbl_8056F67C
/* 8056F670  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 8056F674  2C 00 00 02 */	cmpwi r0, 2
/* 8056F678  41 82 00 30 */	beq lbl_8056F6A8
lbl_8056F67C:
/* 8056F67C  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 8056F680  4B BD 60 7C */	b remove__18daNpcT_ActorMngr_cFv
/* 8056F684  38 00 00 00 */	li r0, 0
/* 8056F688  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 8056F68C  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8056F690  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 8056F694  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8056F698  38 00 00 02 */	li r0, 2
/* 8056F69C  90 1A 0C E0 */	stw r0, 0xce0(r26)
/* 8056F6A0  38 00 00 01 */	li r0, 1
/* 8056F6A4  48 00 00 08 */	b lbl_8056F6AC
lbl_8056F6A8:
/* 8056F6A8  38 00 00 00 */	li r0, 0
lbl_8056F6AC:
/* 8056F6AC  2C 00 00 00 */	cmpwi r0, 0
/* 8056F6B0  41 82 00 28 */	beq lbl_8056F6D8
/* 8056F6B4  7F A3 EB 78 */	mr r3, r29
/* 8056F6B8  4B AA 96 28 */	b fopAc_IsActor__FPv
/* 8056F6BC  2C 03 00 00 */	cmpwi r3, 0
/* 8056F6C0  41 82 00 18 */	beq lbl_8056F6D8
/* 8056F6C4  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 8056F6C8  7F A4 EB 78 */	mr r4, r29
/* 8056F6CC  4B BD 60 14 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8056F6D0  C0 1E 01 5C */	lfs f0, 0x15c(r30)
/* 8056F6D4  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
lbl_8056F6D8:
/* 8056F6D8  38 00 00 00 */	li r0, 0
/* 8056F6DC  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8056F6E0  48 00 00 50 */	b lbl_8056F730
lbl_8056F6E4:
/* 8056F6E4  38 7A 11 98 */	addi r3, r26, 0x1198
/* 8056F6E8  48 00 1B 21 */	bl func_80571208
/* 8056F6EC  2C 03 00 00 */	cmpwi r3, 0
/* 8056F6F0  40 82 00 0C */	bne lbl_8056F6FC
/* 8056F6F4  38 00 00 01 */	li r0, 1
/* 8056F6F8  98 1D 11 34 */	stb r0, 0x1134(r29)
lbl_8056F6FC:
/* 8056F6FC  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 8056F700  2C 00 00 00 */	cmpwi r0, 0
/* 8056F704  41 82 00 24 */	beq lbl_8056F728
/* 8056F708  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 8056F70C  4B BD 5F F0 */	b remove__18daNpcT_ActorMngr_cFv
/* 8056F710  38 00 00 00 */	li r0, 0
/* 8056F714  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 8056F718  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8056F71C  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 8056F720  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8056F724  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_8056F728:
/* 8056F728  38 00 00 00 */	li r0, 0
/* 8056F72C  98 1A 0C FF */	stb r0, 0xcff(r26)
lbl_8056F730:
/* 8056F730  A8 9A 04 B6 */	lha r4, 0x4b6(r26)
/* 8056F734  A8 1A 0D 7A */	lha r0, 0xd7a(r26)
/* 8056F738  7C 04 00 00 */	cmpw r4, r0
/* 8056F73C  41 82 00 2C */	beq lbl_8056F768
/* 8056F740  7F 43 D3 78 */	mr r3, r26
/* 8056F744  38 A0 00 1F */	li r5, 0x1f
/* 8056F748  38 C0 00 24 */	li r6, 0x24
/* 8056F74C  38 E0 00 0F */	li r7, 0xf
/* 8056F750  39 00 00 00 */	li r8, 0
/* 8056F754  4B BD BE F4 */	b step__8daNpcT_cFsiiii
/* 8056F758  2C 03 00 00 */	cmpwi r3, 0
/* 8056F75C  41 82 00 0C */	beq lbl_8056F768
/* 8056F760  38 00 00 01 */	li r0, 1
/* 8056F764  B0 1A 0E 22 */	sth r0, 0xe22(r26)
lbl_8056F768:
/* 8056F768  38 7A 10 E0 */	addi r3, r26, 0x10e0
/* 8056F76C  4B BD 5F 9C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8056F770  28 03 00 00 */	cmplwi r3, 0
/* 8056F774  41 82 00 58 */	beq lbl_8056F7CC
/* 8056F778  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8056F77C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8056F780  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8056F784  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8056F788  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8056F78C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8056F790  38 81 00 08 */	addi r4, r1, 8
/* 8056F794  48 00 1E C1 */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz
/* 8056F798  2C 03 00 00 */	cmpwi r3, 0
/* 8056F79C  41 82 00 30 */	beq lbl_8056F7CC
/* 8056F7A0  38 60 00 16 */	li r3, 0x16
/* 8056F7A4  4B BD D3 C8 */	b daNpcT_chkTmpBit__FUl
/* 8056F7A8  2C 03 00 00 */	cmpwi r3, 0
/* 8056F7AC  41 82 00 20 */	beq lbl_8056F7CC
/* 8056F7B0  38 60 00 13 */	li r3, 0x13
/* 8056F7B4  4B BD D2 F8 */	b daNpcT_chkEvtBit__FUl
/* 8056F7B8  2C 03 00 00 */	cmpwi r3, 0
/* 8056F7BC  38 00 00 17 */	li r0, 0x17
/* 8056F7C0  41 82 00 08 */	beq lbl_8056F7C8
/* 8056F7C4  38 00 00 18 */	li r0, 0x18
lbl_8056F7C8:
/* 8056F7C8  B0 1A 0E 30 */	sth r0, 0xe30(r26)
lbl_8056F7CC:
/* 8056F7CC  38 60 00 01 */	li r3, 1
/* 8056F7D0  39 61 00 40 */	addi r11, r1, 0x40
/* 8056F7D4  4B DF 2A 44 */	b _restgpr_25
/* 8056F7D8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8056F7DC  7C 08 03 A6 */	mtlr r0
/* 8056F7E0  38 21 00 40 */	addi r1, r1, 0x40
/* 8056F7E4  4E 80 00 20 */	blr 
