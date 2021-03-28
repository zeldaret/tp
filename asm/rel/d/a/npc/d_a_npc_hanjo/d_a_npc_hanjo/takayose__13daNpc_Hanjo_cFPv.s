lbl_809FE2E0:
/* 809FE2E0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809FE2E4  7C 08 02 A6 */	mflr r0
/* 809FE2E8  90 01 00 44 */	stw r0, 0x44(r1)
/* 809FE2EC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 809FE2F0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 809FE2F4  39 61 00 30 */	addi r11, r1, 0x30
/* 809FE2F8  4B 96 3E E0 */	b _savegpr_28
/* 809FE2FC  7C 7E 1B 78 */	mr r30, r3
/* 809FE300  3C 60 80 A0 */	lis r3, m__19daNpc_Hanjo_Param_c@ha
/* 809FE304  3B E3 06 00 */	addi r31, r3, m__19daNpc_Hanjo_Param_c@l
/* 809FE308  38 7F 00 00 */	addi r3, r31, 0
/* 809FE30C  A8 03 00 AE */	lha r0, 0xae(r3)
/* 809FE310  C8 3F 01 48 */	lfd f1, 0x148(r31)
/* 809FE314  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809FE318  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809FE31C  3C 00 43 30 */	lis r0, 0x4330
/* 809FE320  90 01 00 18 */	stw r0, 0x18(r1)
/* 809FE324  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 809FE328  EF E0 08 28 */	fsubs f31, f0, f1
/* 809FE32C  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 809FE330  2C 00 00 02 */	cmpwi r0, 2
/* 809FE334  41 82 01 EC */	beq lbl_809FE520
/* 809FE338  40 80 07 90 */	bge lbl_809FEAC8
/* 809FE33C  2C 00 00 00 */	cmpwi r0, 0
/* 809FE340  40 80 00 0C */	bge lbl_809FE34C
/* 809FE344  48 00 07 84 */	b lbl_809FEAC8
/* 809FE348  48 00 07 80 */	b lbl_809FEAC8
lbl_809FE34C:
/* 809FE34C  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 809FE350  2C 00 00 00 */	cmpwi r0, 0
/* 809FE354  40 82 01 CC */	bne lbl_809FE520
/* 809FE358  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 809FE35C  28 00 00 01 */	cmplwi r0, 1
/* 809FE360  40 82 01 3C */	bne lbl_809FE49C
/* 809FE364  38 60 00 CF */	li r3, 0xcf
/* 809FE368  4B 74 E7 44 */	b daNpcT_chkEvtBit__FUl
/* 809FE36C  2C 03 00 00 */	cmpwi r3, 0
/* 809FE370  41 82 00 68 */	beq lbl_809FE3D8
/* 809FE374  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 809FE378  2C 00 00 00 */	cmpwi r0, 0
/* 809FE37C  41 82 00 24 */	beq lbl_809FE3A0
/* 809FE380  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 809FE384  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 809FE388  4B 74 75 10 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FE38C  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 809FE390  38 00 00 00 */	li r0, 0
/* 809FE394  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 809FE398  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FE39C  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_809FE3A0:
/* 809FE3A0  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809FE3A4  2C 00 00 0D */	cmpwi r0, 0xd
/* 809FE3A8  41 82 00 24 */	beq lbl_809FE3CC
/* 809FE3AC  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809FE3B0  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809FE3B4  4B 74 74 E4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FE3B8  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809FE3BC  38 00 00 0D */	li r0, 0xd
/* 809FE3C0  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809FE3C4  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FE3C8  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_809FE3CC:
/* 809FE3CC  38 00 00 00 */	li r0, 0
/* 809FE3D0  90 1E 17 14 */	stw r0, 0x1714(r30)
/* 809FE3D4  48 00 01 20 */	b lbl_809FE4F4
lbl_809FE3D8:
/* 809FE3D8  80 1E 17 14 */	lwz r0, 0x1714(r30)
/* 809FE3DC  2C 00 00 00 */	cmpwi r0, 0
/* 809FE3E0  41 82 00 60 */	beq lbl_809FE440
/* 809FE3E4  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 809FE3E8  2C 00 00 00 */	cmpwi r0, 0
/* 809FE3EC  41 82 00 24 */	beq lbl_809FE410
/* 809FE3F0  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 809FE3F4  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 809FE3F8  4B 74 74 A0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FE3FC  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 809FE400  38 00 00 00 */	li r0, 0
/* 809FE404  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 809FE408  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FE40C  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_809FE410:
/* 809FE410  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809FE414  2C 00 00 00 */	cmpwi r0, 0
/* 809FE418  41 82 00 DC */	beq lbl_809FE4F4
/* 809FE41C  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809FE420  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809FE424  4B 74 74 74 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FE428  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809FE42C  38 00 00 00 */	li r0, 0
/* 809FE430  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809FE434  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FE438  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 809FE43C  48 00 00 B8 */	b lbl_809FE4F4
lbl_809FE440:
/* 809FE440  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 809FE444  2C 00 00 07 */	cmpwi r0, 7
/* 809FE448  41 82 00 24 */	beq lbl_809FE46C
/* 809FE44C  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 809FE450  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 809FE454  4B 74 74 44 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FE458  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 809FE45C  38 00 00 07 */	li r0, 7
/* 809FE460  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 809FE464  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FE468  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_809FE46C:
/* 809FE46C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809FE470  2C 00 00 02 */	cmpwi r0, 2
/* 809FE474  41 82 00 80 */	beq lbl_809FE4F4
/* 809FE478  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809FE47C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809FE480  4B 74 74 18 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FE484  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809FE488  38 00 00 02 */	li r0, 2
/* 809FE48C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809FE490  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FE494  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 809FE498  48 00 00 5C */	b lbl_809FE4F4
lbl_809FE49C:
/* 809FE49C  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 809FE4A0  2C 00 00 00 */	cmpwi r0, 0
/* 809FE4A4  41 82 00 24 */	beq lbl_809FE4C8
/* 809FE4A8  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 809FE4AC  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 809FE4B0  4B 74 73 E8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FE4B4  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 809FE4B8  38 00 00 00 */	li r0, 0
/* 809FE4BC  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 809FE4C0  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FE4C4  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_809FE4C8:
/* 809FE4C8  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809FE4CC  2C 00 00 00 */	cmpwi r0, 0
/* 809FE4D0  41 82 00 24 */	beq lbl_809FE4F4
/* 809FE4D4  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809FE4D8  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809FE4DC  4B 74 73 BC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FE4E0  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809FE4E4  38 00 00 00 */	li r0, 0
/* 809FE4E8  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809FE4EC  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FE4F0  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_809FE4F4:
/* 809FE4F4  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 809FE4F8  EC 20 07 F2 */	fmuls f1, f0, f31
/* 809FE4FC  C0 1F 01 EC */	lfs f0, 0x1ec(r31)
/* 809FE500  EC 40 07 F2 */	fmuls f2, f0, f31
/* 809FE504  48 00 19 85 */	bl func_809FFE88
/* 809FE508  FC 00 08 1E */	fctiwz f0, f1
/* 809FE50C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 809FE510  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 809FE514  90 1E 17 10 */	stw r0, 0x1710(r30)
/* 809FE518  38 00 00 02 */	li r0, 2
/* 809FE51C  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_809FE520:
/* 809FE520  38 00 00 00 */	li r0, 0
/* 809FE524  98 1E 0E 2D */	stb r0, 0xe2d(r30)
/* 809FE528  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809FE52C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 809FE530  88 1D 4F AD */	lbz r0, 0x4fad(r29)
/* 809FE534  28 00 00 00 */	cmplwi r0, 0
/* 809FE538  41 82 00 3C */	beq lbl_809FE574
/* 809FE53C  38 7D 4F F8 */	addi r3, r29, 0x4ff8
/* 809FE540  4B 64 9E A8 */	b getRunEventName__16dEvent_manager_cFv
/* 809FE544  7C 64 1B 78 */	mr r4, r3
/* 809FE548  3C 60 80 A0 */	lis r3, struct_80A007F8+0x0@ha
/* 809FE54C  38 63 07 F8 */	addi r3, r3, struct_80A007F8+0x0@l
/* 809FE550  38 63 01 39 */	addi r3, r3, 0x139
/* 809FE554  4B 96 A4 40 */	b strcmp
/* 809FE558  2C 03 00 00 */	cmpwi r3, 0
/* 809FE55C  40 82 00 18 */	bne lbl_809FE574
/* 809FE560  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 809FE564  7F C4 F3 78 */	mr r4, r30
/* 809FE568  4B 64 51 24 */	b setPtT__14dEvt_control_cFPv
/* 809FE56C  38 00 00 01 */	li r0, 1
/* 809FE570  98 1E 0E 2D */	stb r0, 0xe2d(r30)
lbl_809FE574:
/* 809FE574  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 809FE578  28 00 00 01 */	cmplwi r0, 1
/* 809FE57C  40 82 00 8C */	bne lbl_809FE608
/* 809FE580  38 60 00 CF */	li r3, 0xcf
/* 809FE584  4B 74 E5 28 */	b daNpcT_chkEvtBit__FUl
/* 809FE588  2C 03 00 00 */	cmpwi r3, 0
/* 809FE58C  40 82 00 7C */	bne lbl_809FE608
/* 809FE590  38 7E 10 D8 */	addi r3, r30, 0x10d8
/* 809FE594  4B 74 71 74 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 809FE598  28 03 00 00 */	cmplwi r3, 0
/* 809FE59C  41 82 00 6C */	beq lbl_809FE608
/* 809FE5A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809FE5A4  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 809FE5A8  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 809FE5AC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809FE5B0  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 809FE5B4  7D 89 03 A6 */	mtctr r12
/* 809FE5B8  4E 80 04 21 */	bctrl 
/* 809FE5BC  28 03 00 00 */	cmplwi r3, 0
/* 809FE5C0  40 82 00 48 */	bne lbl_809FE608
/* 809FE5C4  38 7E 10 E0 */	addi r3, r30, 0x10e0
/* 809FE5C8  4B 74 71 40 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 809FE5CC  28 03 00 00 */	cmplwi r3, 0
/* 809FE5D0  41 82 00 38 */	beq lbl_809FE608
/* 809FE5D4  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 809FE5D8  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 809FE5DC  D0 01 00 08 */	stfs f0, 8(r1)
/* 809FE5E0  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 809FE5E4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809FE5E8  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 809FE5EC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809FE5F0  38 81 00 08 */	addi r4, r1, 8
/* 809FE5F4  48 00 1F 99 */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz
/* 809FE5F8  2C 03 00 00 */	cmpwi r3, 0
/* 809FE5FC  41 82 00 0C */	beq lbl_809FE608
/* 809FE600  38 00 00 09 */	li r0, 9
/* 809FE604  B0 1E 0E 30 */	sth r0, 0xe30(r30)
lbl_809FE608:
/* 809FE608  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809FE60C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809FE610  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809FE614  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809FE618  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809FE61C  41 82 00 78 */	beq lbl_809FE694
/* 809FE620  38 7E 0F 88 */	addi r3, r30, 0xf88
/* 809FE624  4B 68 60 34 */	b ChkCoHit__12dCcD_GObjInfFv
/* 809FE628  28 03 00 00 */	cmplwi r3, 0
/* 809FE62C  41 82 00 68 */	beq lbl_809FE694
/* 809FE630  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809FE634  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 809FE638  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 809FE63C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809FE640  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 809FE644  7D 89 03 A6 */	mtctr r12
/* 809FE648  4E 80 04 21 */	bctrl 
/* 809FE64C  28 03 00 00 */	cmplwi r3, 0
/* 809FE650  41 82 00 3C */	beq lbl_809FE68C
/* 809FE654  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 809FE658  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809FE65C  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 809FE660  7D 89 03 A6 */	mtctr r12
/* 809FE664  4E 80 04 21 */	bctrl 
/* 809FE668  2C 03 00 00 */	cmpwi r3, 0
/* 809FE66C  40 82 00 20 */	bne lbl_809FE68C
/* 809FE670  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 809FE674  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809FE678  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 809FE67C  7D 89 03 A6 */	mtctr r12
/* 809FE680  4E 80 04 21 */	bctrl 
/* 809FE684  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809FE688  41 82 00 0C */	beq lbl_809FE694
lbl_809FE68C:
/* 809FE68C  38 00 00 0A */	li r0, 0xa
/* 809FE690  B0 1E 0E 30 */	sth r0, 0xe30(r30)
lbl_809FE694:
/* 809FE694  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 809FE698  2C 00 00 00 */	cmpwi r0, 0
/* 809FE69C  40 82 04 2C */	bne lbl_809FEAC8
/* 809FE6A0  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 809FE6A4  28 00 00 01 */	cmplwi r0, 1
/* 809FE6A8  40 82 00 0C */	bne lbl_809FE6B4
/* 809FE6AC  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 809FE6B0  4B 74 70 4C */	b remove__18daNpcT_ActorMngr_cFv
lbl_809FE6B4:
/* 809FE6B4  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 809FE6B8  4B 74 70 50 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 809FE6BC  28 03 00 00 */	cmplwi r3, 0
/* 809FE6C0  41 82 00 C0 */	beq lbl_809FE780
/* 809FE6C4  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809FE6C8  2C 00 00 01 */	cmpwi r0, 1
/* 809FE6CC  41 82 00 28 */	beq lbl_809FE6F4
/* 809FE6D0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809FE6D4  4B 74 70 28 */	b remove__18daNpcT_ActorMngr_cFv
/* 809FE6D8  38 00 00 00 */	li r0, 0
/* 809FE6DC  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809FE6E0  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809FE6E4  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809FE6E8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809FE6EC  38 00 00 01 */	li r0, 1
/* 809FE6F0  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_809FE6F4:
/* 809FE6F4  38 00 00 00 */	li r0, 0
/* 809FE6F8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809FE6FC  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 809FE700  4B 74 70 08 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 809FE704  7C 64 1B 78 */	mr r4, r3
/* 809FE708  7F C3 F3 78 */	mr r3, r30
/* 809FE70C  C0 3E 0D F8 */	lfs f1, 0xdf8(r30)
/* 809FE710  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 809FE714  4B 74 C4 BC */	b chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 809FE718  2C 03 00 00 */	cmpwi r3, 0
/* 809FE71C  40 82 00 38 */	bne lbl_809FE754
/* 809FE720  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809FE724  2C 00 00 00 */	cmpwi r0, 0
/* 809FE728  41 82 00 24 */	beq lbl_809FE74C
/* 809FE72C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809FE730  4B 74 6F CC */	b remove__18daNpcT_ActorMngr_cFv
/* 809FE734  38 00 00 00 */	li r0, 0
/* 809FE738  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809FE73C  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809FE740  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809FE744  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809FE748  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_809FE74C:
/* 809FE74C  38 00 00 00 */	li r0, 0
/* 809FE750  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_809FE754:
/* 809FE754  7F C3 F3 78 */	mr r3, r30
/* 809FE758  4B 74 CB E0 */	b srchPlayerActor__8daNpcT_cFv
/* 809FE75C  2C 03 00 00 */	cmpwi r3, 0
/* 809FE760  40 82 03 68 */	bne lbl_809FEAC8
/* 809FE764  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 809FE768  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 809FE76C  7C 03 00 00 */	cmpw r3, r0
/* 809FE770  40 82 03 58 */	bne lbl_809FEAC8
/* 809FE774  38 00 00 01 */	li r0, 1
/* 809FE778  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 809FE77C  48 00 03 4C */	b lbl_809FEAC8
lbl_809FE780:
/* 809FE780  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809FE784  2C 00 00 00 */	cmpwi r0, 0
/* 809FE788  41 82 00 24 */	beq lbl_809FE7AC
/* 809FE78C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809FE790  4B 74 6F 6C */	b remove__18daNpcT_ActorMngr_cFv
/* 809FE794  38 00 00 00 */	li r0, 0
/* 809FE798  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809FE79C  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809FE7A0  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809FE7A4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809FE7A8  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_809FE7AC:
/* 809FE7AC  38 00 00 00 */	li r0, 0
/* 809FE7B0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809FE7B4  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 809FE7B8  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 809FE7BC  7C 04 00 00 */	cmpw r4, r0
/* 809FE7C0  41 82 00 58 */	beq lbl_809FE818
/* 809FE7C4  88 1E 0E 34 */	lbz r0, 0xe34(r30)
/* 809FE7C8  28 00 00 00 */	cmplwi r0, 0
/* 809FE7CC  41 82 00 30 */	beq lbl_809FE7FC
/* 809FE7D0  7F C3 F3 78 */	mr r3, r30
/* 809FE7D4  38 A0 00 07 */	li r5, 7
/* 809FE7D8  38 C0 00 0E */	li r6, 0xe
/* 809FE7DC  38 E0 00 0F */	li r7, 0xf
/* 809FE7E0  39 00 00 00 */	li r8, 0
/* 809FE7E4  4B 74 CE 64 */	b step__8daNpcT_cFsiiii
/* 809FE7E8  2C 03 00 00 */	cmpwi r3, 0
/* 809FE7EC  41 82 00 20 */	beq lbl_809FE80C
/* 809FE7F0  38 00 00 01 */	li r0, 1
/* 809FE7F4  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 809FE7F8  48 00 00 14 */	b lbl_809FE80C
lbl_809FE7FC:
/* 809FE7FC  7F C3 F3 78 */	mr r3, r30
/* 809FE800  4B 74 C2 18 */	b setAngle__8daNpcT_cFs
/* 809FE804  38 00 00 01 */	li r0, 1
/* 809FE808  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_809FE80C:
/* 809FE80C  38 00 00 00 */	li r0, 0
/* 809FE810  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 809FE814  48 00 02 B4 */	b lbl_809FEAC8
lbl_809FE818:
/* 809FE818  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 809FE81C  28 00 00 01 */	cmplwi r0, 1
/* 809FE820  40 82 02 A0 */	bne lbl_809FEAC0
/* 809FE824  38 60 00 CF */	li r3, 0xcf
/* 809FE828  4B 74 E2 84 */	b daNpcT_chkEvtBit__FUl
/* 809FE82C  2C 03 00 00 */	cmpwi r3, 0
/* 809FE830  41 82 02 4C */	beq lbl_809FEA7C
/* 809FE834  8B BE 17 22 */	lbz r29, 0x1722(r30)
/* 809FE838  38 7E 10 D8 */	addi r3, r30, 0x10d8
/* 809FE83C  4B 74 6E CC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 809FE840  7C 7C 1B 79 */	or. r28, r3, r3
/* 809FE844  41 82 02 7C */	beq lbl_809FEAC0
/* 809FE848  7F C3 F3 78 */	mr r3, r30
/* 809FE84C  4B FF D9 71 */	bl commandToHawk__13daNpc_Hanjo_cFv
/* 809FE850  98 7E 17 22 */	stb r3, 0x1722(r30)
/* 809FE854  88 1E 17 22 */	lbz r0, 0x1722(r30)
/* 809FE858  28 00 00 00 */	cmplwi r0, 0
/* 809FE85C  41 82 00 A4 */	beq lbl_809FE900
/* 809FE860  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809FE864  2C 00 00 01 */	cmpwi r0, 1
/* 809FE868  41 82 00 28 */	beq lbl_809FE890
/* 809FE86C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809FE870  4B 74 6E 8C */	b remove__18daNpcT_ActorMngr_cFv
/* 809FE874  38 00 00 00 */	li r0, 0
/* 809FE878  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809FE87C  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809FE880  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809FE884  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809FE888  38 00 00 01 */	li r0, 1
/* 809FE88C  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_809FE890:
/* 809FE890  38 00 00 00 */	li r0, 0
/* 809FE894  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809FE898  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809FE89C  2C 00 00 0B */	cmpwi r0, 0xb
/* 809FE8A0  41 82 02 20 */	beq lbl_809FEAC0
/* 809FE8A4  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 809FE8A8  2C 00 00 07 */	cmpwi r0, 7
/* 809FE8AC  41 82 00 24 */	beq lbl_809FE8D0
/* 809FE8B0  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 809FE8B4  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 809FE8B8  4B 74 6F E0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FE8BC  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 809FE8C0  38 00 00 07 */	li r0, 7
/* 809FE8C4  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 809FE8C8  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FE8CC  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_809FE8D0:
/* 809FE8D0  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809FE8D4  2C 00 00 0B */	cmpwi r0, 0xb
/* 809FE8D8  41 82 01 E8 */	beq lbl_809FEAC0
/* 809FE8DC  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809FE8E0  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809FE8E4  4B 74 6F B4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FE8E8  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809FE8EC  38 00 00 0B */	li r0, 0xb
/* 809FE8F0  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809FE8F4  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FE8F8  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 809FE8FC  48 00 01 C4 */	b lbl_809FEAC0
lbl_809FE900:
/* 809FE900  28 1D 00 00 */	cmplwi r29, 0
/* 809FE904  41 82 00 18 */	beq lbl_809FE91C
/* 809FE908  38 00 00 00 */	li r0, 0
/* 809FE90C  90 1E 17 14 */	stw r0, 0x1714(r30)
/* 809FE910  38 00 00 01 */	li r0, 1
/* 809FE914  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 809FE918  48 00 01 A8 */	b lbl_809FEAC0
lbl_809FE91C:
/* 809FE91C  80 1E 17 14 */	lwz r0, 0x1714(r30)
/* 809FE920  2C 00 00 00 */	cmpwi r0, 0
/* 809FE924  41 82 00 68 */	beq lbl_809FE98C
/* 809FE928  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809FE92C  2C 00 00 00 */	cmpwi r0, 0
/* 809FE930  41 82 00 24 */	beq lbl_809FE954
/* 809FE934  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809FE938  4B 74 6D C4 */	b remove__18daNpcT_ActorMngr_cFv
/* 809FE93C  38 00 00 00 */	li r0, 0
/* 809FE940  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809FE944  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809FE948  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809FE94C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809FE950  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_809FE954:
/* 809FE954  38 00 00 00 */	li r0, 0
/* 809FE958  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809FE95C  80 1E 0B 84 */	lwz r0, 0xb84(r30)
/* 809FE960  2C 00 00 00 */	cmpwi r0, 0
/* 809FE964  40 81 01 5C */	ble lbl_809FEAC0
/* 809FE968  80 7E 17 14 */	lwz r3, 0x1714(r30)
/* 809FE96C  38 03 00 01 */	addi r0, r3, 1
/* 809FE970  90 1E 17 14 */	stw r0, 0x1714(r30)
/* 809FE974  80 1E 17 14 */	lwz r0, 0x1714(r30)
/* 809FE978  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 809FE97C  90 1E 17 14 */	stw r0, 0x1714(r30)
/* 809FE980  38 00 00 01 */	li r0, 1
/* 809FE984  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 809FE988  48 00 01 38 */	b lbl_809FEAC0
lbl_809FE98C:
/* 809FE98C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809FE990  4B 74 6D 78 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 809FE994  7C 63 E0 50 */	subf r3, r3, r28
/* 809FE998  30 03 FF FF */	addic r0, r3, -1
/* 809FE99C  7C 00 19 10 */	subfe r0, r0, r3
/* 809FE9A0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809FE9A4  40 82 00 10 */	bne lbl_809FE9B4
/* 809FE9A8  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809FE9AC  2C 00 00 02 */	cmpwi r0, 2
/* 809FE9B0  41 82 00 30 */	beq lbl_809FE9E0
lbl_809FE9B4:
/* 809FE9B4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809FE9B8  4B 74 6D 44 */	b remove__18daNpcT_ActorMngr_cFv
/* 809FE9BC  38 00 00 00 */	li r0, 0
/* 809FE9C0  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809FE9C4  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809FE9C8  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809FE9CC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809FE9D0  38 00 00 02 */	li r0, 2
/* 809FE9D4  90 1E 0C E0 */	stw r0, 0xce0(r30)
/* 809FE9D8  38 00 00 01 */	li r0, 1
/* 809FE9DC  48 00 00 08 */	b lbl_809FE9E4
lbl_809FE9E0:
/* 809FE9E0  38 00 00 00 */	li r0, 0
lbl_809FE9E4:
/* 809FE9E4  2C 00 00 00 */	cmpwi r0, 0
/* 809FE9E8  41 82 00 28 */	beq lbl_809FEA10
/* 809FE9EC  7F 83 E3 78 */	mr r3, r28
/* 809FE9F0  4B 61 A2 F0 */	b fopAc_IsActor__FPv
/* 809FE9F4  2C 03 00 00 */	cmpwi r3, 0
/* 809FE9F8  41 82 00 18 */	beq lbl_809FEA10
/* 809FE9FC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809FEA00  7F 84 E3 78 */	mr r4, r28
/* 809FEA04  4B 74 6C DC */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 809FEA08  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809FEA0C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
lbl_809FEA10:
/* 809FEA10  38 00 00 00 */	li r0, 0
/* 809FEA14  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809FEA18  88 1C 06 AD */	lbz r0, 0x6ad(r28)
/* 809FEA1C  28 00 00 00 */	cmplwi r0, 0
/* 809FEA20  41 82 00 A0 */	beq lbl_809FEAC0
/* 809FEA24  38 7E 17 10 */	addi r3, r30, 0x1710
/* 809FEA28  48 00 14 45 */	bl func_809FFE6C
/* 809FEA2C  2C 03 00 00 */	cmpwi r3, 0
/* 809FEA30  40 82 00 90 */	bne lbl_809FEAC0
/* 809FEA34  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809FEA38  2C 00 00 09 */	cmpwi r0, 9
/* 809FEA3C  41 82 00 24 */	beq lbl_809FEA60
/* 809FEA40  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809FEA44  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809FEA48  4B 74 6E 50 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FEA4C  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809FEA50  38 00 00 09 */	li r0, 9
/* 809FEA54  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809FEA58  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FEA5C  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_809FEA60:
/* 809FEA60  80 7E 17 14 */	lwz r3, 0x1714(r30)
/* 809FEA64  38 03 00 01 */	addi r0, r3, 1
/* 809FEA68  90 1E 17 14 */	stw r0, 0x1714(r30)
/* 809FEA6C  80 1E 17 14 */	lwz r0, 0x1714(r30)
/* 809FEA70  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 809FEA74  90 1E 17 14 */	stw r0, 0x1714(r30)
/* 809FEA78  48 00 00 48 */	b lbl_809FEAC0
lbl_809FEA7C:
/* 809FEA7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809FEA80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809FEA84  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 809FEA88  28 00 00 00 */	cmplwi r0, 0
/* 809FEA8C  40 82 00 34 */	bne lbl_809FEAC0
/* 809FEA90  38 7E 17 10 */	addi r3, r30, 0x1710
/* 809FEA94  48 00 13 D9 */	bl func_809FFE6C
/* 809FEA98  2C 03 00 00 */	cmpwi r3, 0
/* 809FEA9C  40 82 00 24 */	bne lbl_809FEAC0
/* 809FEAA0  80 7E 17 14 */	lwz r3, 0x1714(r30)
/* 809FEAA4  38 03 00 01 */	addi r0, r3, 1
/* 809FEAA8  90 1E 17 14 */	stw r0, 0x1714(r30)
/* 809FEAAC  80 1E 17 14 */	lwz r0, 0x1714(r30)
/* 809FEAB0  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 809FEAB4  90 1E 17 14 */	stw r0, 0x1714(r30)
/* 809FEAB8  38 00 00 01 */	li r0, 1
/* 809FEABC  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_809FEAC0:
/* 809FEAC0  7F C3 F3 78 */	mr r3, r30
/* 809FEAC4  4B 74 C8 74 */	b srchPlayerActor__8daNpcT_cFv
lbl_809FEAC8:
/* 809FEAC8  38 60 00 01 */	li r3, 1
/* 809FEACC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 809FEAD0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 809FEAD4  39 61 00 30 */	addi r11, r1, 0x30
/* 809FEAD8  4B 96 37 4C */	b _restgpr_28
/* 809FEADC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809FEAE0  7C 08 03 A6 */	mtlr r0
/* 809FEAE4  38 21 00 40 */	addi r1, r1, 0x40
/* 809FEAE8  4E 80 00 20 */	blr 
