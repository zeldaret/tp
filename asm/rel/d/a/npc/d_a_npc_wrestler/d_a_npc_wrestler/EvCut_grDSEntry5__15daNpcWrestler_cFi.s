lbl_80B3E0FC:
/* 80B3E0FC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80B3E100  7C 08 02 A6 */	mflr r0
/* 80B3E104  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B3E108  39 61 00 50 */	addi r11, r1, 0x50
/* 80B3E10C  4B 82 40 C4 */	b _savegpr_26
/* 80B3E110  7C 7D 1B 78 */	mr r29, r3
/* 80B3E114  7C 9A 23 78 */	mr r26, r4
/* 80B3E118  3C 60 80 B4 */	lis r3, m__21daNpcWrestler_Param_c@ha
/* 80B3E11C  3B C3 16 DC */	addi r30, r3, m__21daNpcWrestler_Param_c@l
/* 80B3E120  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B3E124  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80B3E128  3B 7F 4F F8 */	addi r27, r31, 0x4ff8
/* 80B3E12C  7F 63 DB 78 */	mr r3, r27
/* 80B3E130  4B 50 9E 2C */	b getMyNowCutName__16dEvent_manager_cFi
/* 80B3E134  7C 7C 1B 78 */	mr r28, r3
/* 80B3E138  7F 63 DB 78 */	mr r3, r27
/* 80B3E13C  7F 44 D3 78 */	mr r4, r26
/* 80B3E140  4B 50 9C 0C */	b getIsAddvance__16dEvent_manager_cFi
/* 80B3E144  2C 03 00 00 */	cmpwi r3, 0
/* 80B3E148  41 82 00 6C */	beq lbl_80B3E1B4
/* 80B3E14C  80 9C 00 00 */	lwz r4, 0(r28)
/* 80B3E150  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303033@ha */
/* 80B3E154  38 03 30 33 */	addi r0, r3, 0x3033 /* 0x30303033@l */
/* 80B3E158  7C 04 00 00 */	cmpw r4, r0
/* 80B3E15C  40 80 00 58 */	bge lbl_80B3E1B4
/* 80B3E160  38 03 30 31 */	addi r0, r3, 0x3031
/* 80B3E164  7C 04 00 00 */	cmpw r4, r0
/* 80B3E168  40 80 00 08 */	bge lbl_80B3E170
/* 80B3E16C  48 00 00 48 */	b lbl_80B3E1B4
lbl_80B3E170:
/* 80B3E170  A8 1D 0E 90 */	lha r0, 0xe90(r29)
/* 80B3E174  2C 00 00 03 */	cmpwi r0, 3
/* 80B3E178  41 82 00 0C */	beq lbl_80B3E184
/* 80B3E17C  38 00 00 03 */	li r0, 3
/* 80B3E180  B0 1D 0E 90 */	sth r0, 0xe90(r29)
lbl_80B3E184:
/* 80B3E184  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80B3E188  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B3E18C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B3E190  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B3E194  4B 61 25 28 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B3E198  7F A3 EB 78 */	mr r3, r29
/* 80B3E19C  80 9D 0E 88 */	lwz r4, 0xe88(r29)
/* 80B3E1A0  38 A0 00 00 */	li r5, 0
/* 80B3E1A4  4B 61 5B 78 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B3E1A8  38 00 00 00 */	li r0, 0
/* 80B3E1AC  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80B3E1B0  90 1D 09 50 */	stw r0, 0x950(r29)
lbl_80B3E1B4:
/* 80B3E1B4  83 7D 09 50 */	lwz r27, 0x950(r29)
/* 80B3E1B8  7F A3 EB 78 */	mr r3, r29
/* 80B3E1BC  38 81 00 0C */	addi r4, r1, 0xc
/* 80B3E1C0  38 A1 00 08 */	addi r5, r1, 8
/* 80B3E1C4  7F A6 EB 78 */	mr r6, r29
/* 80B3E1C8  38 E0 00 00 */	li r7, 0
/* 80B3E1CC  4B 61 55 4C */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80B3E1D0  2C 03 00 00 */	cmpwi r3, 0
/* 80B3E1D4  41 82 00 44 */	beq lbl_80B3E218
/* 80B3E1D8  7F A3 EB 78 */	mr r3, r29
/* 80B3E1DC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B3E1E0  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3E1E4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3E1E8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3E1EC  7D 89 03 A6 */	mtctr r12
/* 80B3E1F0  4E 80 04 21 */	bctrl 
/* 80B3E1F4  7F A3 EB 78 */	mr r3, r29
/* 80B3E1F8  80 81 00 08 */	lwz r4, 8(r1)
/* 80B3E1FC  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3E200  38 A0 00 00 */	li r5, 0
/* 80B3E204  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3E208  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B3E20C  7D 89 03 A6 */	mtctr r12
/* 80B3E210  4E 80 04 21 */	bctrl 
/* 80B3E214  48 00 00 90 */	b lbl_80B3E2A4
lbl_80B3E218:
/* 80B3E218  2C 1B 00 00 */	cmpwi r27, 0
/* 80B3E21C  41 82 00 88 */	beq lbl_80B3E2A4
/* 80B3E220  80 1D 09 50 */	lwz r0, 0x950(r29)
/* 80B3E224  2C 00 00 00 */	cmpwi r0, 0
/* 80B3E228  40 82 00 7C */	bne lbl_80B3E2A4
/* 80B3E22C  A8 1D 09 DE */	lha r0, 0x9de(r29)
/* 80B3E230  2C 00 00 02 */	cmpwi r0, 2
/* 80B3E234  41 82 00 34 */	beq lbl_80B3E268
/* 80B3E238  40 80 00 50 */	bge lbl_80B3E288
/* 80B3E23C  2C 00 00 01 */	cmpwi r0, 1
/* 80B3E240  40 80 00 08 */	bge lbl_80B3E248
/* 80B3E244  48 00 00 44 */	b lbl_80B3E288
lbl_80B3E248:
/* 80B3E248  7F A3 EB 78 */	mr r3, r29
/* 80B3E24C  38 80 00 03 */	li r4, 3
/* 80B3E250  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3E254  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3E258  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3E25C  7D 89 03 A6 */	mtctr r12
/* 80B3E260  4E 80 04 21 */	bctrl 
/* 80B3E264  48 00 00 40 */	b lbl_80B3E2A4
lbl_80B3E268:
/* 80B3E268  7F A3 EB 78 */	mr r3, r29
/* 80B3E26C  38 80 00 04 */	li r4, 4
/* 80B3E270  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3E274  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3E278  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3E27C  7D 89 03 A6 */	mtctr r12
/* 80B3E280  4E 80 04 21 */	bctrl 
/* 80B3E284  48 00 00 20 */	b lbl_80B3E2A4
lbl_80B3E288:
/* 80B3E288  7F A3 EB 78 */	mr r3, r29
/* 80B3E28C  38 80 00 05 */	li r4, 5
/* 80B3E290  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3E294  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3E298  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3E29C  7D 89 03 A6 */	mtctr r12
/* 80B3E2A0  4E 80 04 21 */	bctrl 
lbl_80B3E2A4:
/* 80B3E2A4  80 9C 00 00 */	lwz r4, 0(r28)
/* 80B3E2A8  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80B3E2AC  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80B3E2B0  7C 04 00 00 */	cmpw r4, r0
/* 80B3E2B4  41 82 00 20 */	beq lbl_80B3E2D4
/* 80B3E2B8  40 80 02 B0 */	bge lbl_80B3E568
/* 80B3E2BC  38 03 30 31 */	addi r0, r3, 0x3031
/* 80B3E2C0  7C 04 00 00 */	cmpw r4, r0
/* 80B3E2C4  40 80 00 08 */	bge lbl_80B3E2CC
/* 80B3E2C8  48 00 02 A0 */	b lbl_80B3E568
lbl_80B3E2CC:
/* 80B3E2CC  38 60 00 01 */	li r3, 1
/* 80B3E2D0  48 00 02 9C */	b lbl_80B3E56C
lbl_80B3E2D4:
/* 80B3E2D4  7F A3 EB 78 */	mr r3, r29
/* 80B3E2D8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B3E2DC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B3E2E0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B3E2E4  4B 4D C4 2C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B3E2E8  7C 7C 07 34 */	extsh r28, r3
/* 80B3E2EC  A8 7D 08 F2 */	lha r3, 0x8f2(r29)
/* 80B3E2F0  7C 1C 18 00 */	cmpw r28, r3
/* 80B3E2F4  40 82 00 0C */	bne lbl_80B3E300
/* 80B3E2F8  38 00 00 01 */	li r0, 1
/* 80B3E2FC  48 00 01 94 */	b lbl_80B3E490
lbl_80B3E300:
/* 80B3E300  80 9D 09 6C */	lwz r4, 0x96c(r29)
/* 80B3E304  2C 04 00 00 */	cmpwi r4, 0
/* 80B3E308  40 82 00 CC */	bne lbl_80B3E3D4
/* 80B3E30C  7C 03 E0 50 */	subf r0, r3, r28
/* 80B3E310  7C 00 07 34 */	extsh r0, r0
/* 80B3E314  7C 03 E0 00 */	cmpw r3, r28
/* 80B3E318  40 82 00 10 */	bne lbl_80B3E328
/* 80B3E31C  38 04 00 01 */	addi r0, r4, 1
/* 80B3E320  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80B3E324  48 00 00 84 */	b lbl_80B3E3A8
lbl_80B3E328:
/* 80B3E328  C0 5E 05 8C */	lfs f2, 0x58c(r30)
/* 80B3E32C  C8 3E 05 98 */	lfd f1, 0x598(r30)
/* 80B3E330  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B3E334  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B3E338  3C 00 43 30 */	lis r0, 0x4330
/* 80B3E33C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B3E340  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80B3E344  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B3E348  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B3E34C  FC 00 02 10 */	fabs f0, f0
/* 80B3E350  FC 00 00 18 */	frsp f0, f0
/* 80B3E354  FC 00 00 1E */	fctiwz f0, f0
/* 80B3E358  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80B3E35C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80B3E360  2C 00 00 28 */	cmpwi r0, 0x28
/* 80B3E364  40 81 00 44 */	ble lbl_80B3E3A8
/* 80B3E368  7F A3 EB 78 */	mr r3, r29
/* 80B3E36C  38 80 00 05 */	li r4, 5
/* 80B3E370  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3E374  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3E378  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3E37C  7D 89 03 A6 */	mtctr r12
/* 80B3E380  4E 80 04 21 */	bctrl 
/* 80B3E384  7F A3 EB 78 */	mr r3, r29
/* 80B3E388  38 80 00 06 */	li r4, 6
/* 80B3E38C  80 BD 0B D8 */	lwz r5, 0xbd8(r29)
/* 80B3E390  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80B3E394  38 A0 00 00 */	li r5, 0
/* 80B3E398  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3E39C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B3E3A0  7D 89 03 A6 */	mtctr r12
/* 80B3E3A4  4E 80 04 21 */	bctrl 
lbl_80B3E3A8:
/* 80B3E3A8  B3 9D 09 96 */	sth r28, 0x996(r29)
/* 80B3E3AC  38 00 00 00 */	li r0, 0
/* 80B3E3B0  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80B3E3B4  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80B3E3B8  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80B3E3BC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B3E3C0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80B3E3C4  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80B3E3C8  38 03 00 01 */	addi r0, r3, 1
/* 80B3E3CC  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80B3E3D0  48 00 00 68 */	b lbl_80B3E438
lbl_80B3E3D4:
/* 80B3E3D4  2C 04 00 01 */	cmpwi r4, 1
/* 80B3E3D8  40 82 00 60 */	bne lbl_80B3E438
/* 80B3E3DC  7F A3 EB 78 */	mr r3, r29
/* 80B3E3E0  A8 9D 09 96 */	lha r4, 0x996(r29)
/* 80B3E3E4  C0 3E 05 90 */	lfs f1, 0x590(r30)
/* 80B3E3E8  38 A0 00 00 */	li r5, 0
/* 80B3E3EC  4B 61 5B 08 */	b turn__8daNpcF_cFsfi
/* 80B3E3F0  2C 03 00 00 */	cmpwi r3, 0
/* 80B3E3F4  41 82 00 2C */	beq lbl_80B3E420
/* 80B3E3F8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B3E3FC  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80B3E400  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B3E404  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80B3E408  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B3E40C  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 80B3E410  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80B3E414  38 03 00 01 */	addi r0, r3, 1
/* 80B3E418  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80B3E41C  48 00 00 1C */	b lbl_80B3E438
lbl_80B3E420:
/* 80B3E420  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80B3E424  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 80B3E428  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B3E42C  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80B3E430  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B3E434  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
lbl_80B3E438:
/* 80B3E438  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80B3E43C  2C 00 00 01 */	cmpwi r0, 1
/* 80B3E440  40 81 00 4C */	ble lbl_80B3E48C
/* 80B3E444  7F A3 EB 78 */	mr r3, r29
/* 80B3E448  38 80 00 05 */	li r4, 5
/* 80B3E44C  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3E450  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3E454  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3E458  7D 89 03 A6 */	mtctr r12
/* 80B3E45C  4E 80 04 21 */	bctrl 
/* 80B3E460  7F A3 EB 78 */	mr r3, r29
/* 80B3E464  38 80 00 00 */	li r4, 0
/* 80B3E468  80 BD 0B D8 */	lwz r5, 0xbd8(r29)
/* 80B3E46C  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80B3E470  38 A0 00 00 */	li r5, 0
/* 80B3E474  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3E478  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B3E47C  7D 89 03 A6 */	mtctr r12
/* 80B3E480  4E 80 04 21 */	bctrl 
/* 80B3E484  38 00 00 00 */	li r0, 0
/* 80B3E488  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80B3E48C:
/* 80B3E48C  38 00 00 00 */	li r0, 0
lbl_80B3E490:
/* 80B3E490  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B3E494  41 82 00 D4 */	beq lbl_80B3E568
/* 80B3E498  7F A3 EB 78 */	mr r3, r29
/* 80B3E49C  38 80 00 00 */	li r4, 0
/* 80B3E4A0  38 A0 00 01 */	li r5, 1
/* 80B3E4A4  38 C0 00 00 */	li r6, 0
/* 80B3E4A8  4B 61 58 DC */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B3E4AC  2C 03 00 00 */	cmpwi r3, 0
/* 80B3E4B0  41 82 00 B8 */	beq lbl_80B3E568
/* 80B3E4B4  38 A0 00 03 */	li r5, 3
/* 80B3E4B8  90 BD 0E 7C */	stw r5, 0xe7c(r29)
/* 80B3E4BC  3C 60 80 B4 */	lis r3, lit_10254@ha
/* 80B3E4C0  38 83 2C CC */	addi r4, r3, lit_10254@l
/* 80B3E4C4  80 64 00 00 */	lwz r3, 0(r4)
/* 80B3E4C8  80 04 00 04 */	lwz r0, 4(r4)
/* 80B3E4CC  90 61 00 10 */	stw r3, 0x10(r1)
/* 80B3E4D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B3E4D4  80 04 00 08 */	lwz r0, 8(r4)
/* 80B3E4D8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B3E4DC  B0 BD 0E 96 */	sth r5, 0xe96(r29)
/* 80B3E4E0  38 7D 0D CC */	addi r3, r29, 0xdcc
/* 80B3E4E4  4B 82 3B 34 */	b __ptmf_test
/* 80B3E4E8  2C 03 00 00 */	cmpwi r3, 0
/* 80B3E4EC  41 82 00 18 */	beq lbl_80B3E504
/* 80B3E4F0  7F A3 EB 78 */	mr r3, r29
/* 80B3E4F4  38 80 00 00 */	li r4, 0
/* 80B3E4F8  39 9D 0D CC */	addi r12, r29, 0xdcc
/* 80B3E4FC  4B 82 3B 88 */	b __ptmf_scall
/* 80B3E500  60 00 00 00 */	nop 
lbl_80B3E504:
/* 80B3E504  38 00 00 00 */	li r0, 0
/* 80B3E508  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B3E50C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80B3E510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B3E514  90 7D 0D CC */	stw r3, 0xdcc(r29)
/* 80B3E518  90 1D 0D D0 */	stw r0, 0xdd0(r29)
/* 80B3E51C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80B3E520  90 1D 0D D4 */	stw r0, 0xdd4(r29)
/* 80B3E524  38 7D 0D CC */	addi r3, r29, 0xdcc
/* 80B3E528  4B 82 3A F0 */	b __ptmf_test
/* 80B3E52C  2C 03 00 00 */	cmpwi r3, 0
/* 80B3E530  41 82 00 18 */	beq lbl_80B3E548
/* 80B3E534  7F A3 EB 78 */	mr r3, r29
/* 80B3E538  38 80 00 00 */	li r4, 0
/* 80B3E53C  39 9D 0D CC */	addi r12, r29, 0xdcc
/* 80B3E540  4B 82 3B 44 */	b __ptmf_scall
/* 80B3E544  60 00 00 00 */	nop 
lbl_80B3E548:
/* 80B3E548  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80B3E54C  4B 50 3F 1C */	b reset__14dEvt_control_cFv
/* 80B3E550  38 00 00 00 */	li r0, 0
/* 80B3E554  B0 1D 09 E6 */	sth r0, 0x9e6(r29)
/* 80B3E558  38 00 FF FF */	li r0, -1
/* 80B3E55C  B0 1D 09 D4 */	sth r0, 0x9d4(r29)
/* 80B3E560  38 60 00 01 */	li r3, 1
/* 80B3E564  48 00 00 08 */	b lbl_80B3E56C
lbl_80B3E568:
/* 80B3E568  38 60 00 00 */	li r3, 0
lbl_80B3E56C:
/* 80B3E56C  39 61 00 50 */	addi r11, r1, 0x50
/* 80B3E570  4B 82 3C AC */	b _restgpr_26
/* 80B3E574  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B3E578  7C 08 03 A6 */	mtlr r0
/* 80B3E57C  38 21 00 50 */	addi r1, r1, 0x50
/* 80B3E580  4E 80 00 20 */	blr 
