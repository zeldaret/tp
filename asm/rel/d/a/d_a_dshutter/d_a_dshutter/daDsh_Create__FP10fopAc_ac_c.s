lbl_80467C7C:
/* 80467C7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80467C80  7C 08 02 A6 */	mflr r0
/* 80467C84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80467C88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80467C8C  93 C1 00 08 */	stw r30, 8(r1)
/* 80467C90  7C 7F 1B 78 */	mr r31, r3
/* 80467C94  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80467C98  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80467C9C  40 82 00 34 */	bne lbl_80467CD0
/* 80467CA0  7F E0 FB 79 */	or. r0, r31, r31
/* 80467CA4  41 82 00 20 */	beq lbl_80467CC4
/* 80467CA8  7C 1E 03 78 */	mr r30, r0
/* 80467CAC  4B C1 09 78 */	b __ct__16dBgS_MoveBgActorFv
/* 80467CB0  3C 60 80 47 */	lis r3, __vt__7daDsh_c@ha
/* 80467CB4  38 03 80 44 */	addi r0, r3, __vt__7daDsh_c@l
/* 80467CB8  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80467CBC  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80467CC0  4B BC 76 54 */	b __ct__19dComIfG_resLoader_cFv
lbl_80467CC4:
/* 80467CC4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80467CC8  60 00 00 08 */	ori r0, r0, 8
/* 80467CCC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80467CD0:
/* 80467CD0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80467CD4  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80467CD8  98 1F 05 BB */	stb r0, 0x5bb(r31)
/* 80467CDC  3C 60 80 47 */	lis r3, data_80468174@ha
/* 80467CE0  38 83 81 74 */	addi r4, r3, data_80468174@l
/* 80467CE4  88 04 00 00 */	lbz r0, 0(r4)
/* 80467CE8  7C 00 07 75 */	extsb. r0, r0
/* 80467CEC  40 82 00 28 */	bne lbl_80467D14
/* 80467CF0  88 1F 05 BB */	lbz r0, 0x5bb(r31)
/* 80467CF4  54 00 10 3A */	slwi r0, r0, 2
/* 80467CF8  3C 60 80 46 */	lis r3, l_arcName@ha
/* 80467CFC  38 63 7F 7C */	addi r3, r3, l_arcName@l
/* 80467D00  7C 03 00 2E */	lwzx r0, r3, r0
/* 80467D04  3C 60 80 46 */	lis r3, data_80467FE8@ha
/* 80467D08  90 03 7F E8 */	stw r0, data_80467FE8@l(r3)
/* 80467D0C  38 00 00 01 */	li r0, 1
/* 80467D10  98 04 00 00 */	stb r0, 0(r4)
lbl_80467D14:
/* 80467D14  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80467D18  3C 80 80 46 */	lis r4, data_80467FE8@ha
/* 80467D1C  38 84 7F E8 */	addi r4, r4, data_80467FE8@l
/* 80467D20  38 A0 00 00 */	li r5, 0
/* 80467D24  4B BC 76 90 */	b load__19dComIfG_resLoader_cFPPCcP7JKRHeap
/* 80467D28  7C 7E 1B 78 */	mr r30, r3
/* 80467D2C  2C 1E 00 04 */	cmpwi r30, 4
/* 80467D30  40 82 00 AC */	bne lbl_80467DDC
/* 80467D34  88 1F 05 BB */	lbz r0, 0x5bb(r31)
/* 80467D38  54 00 10 3A */	slwi r0, r0, 2
/* 80467D3C  7F E3 FB 78 */	mr r3, r31
/* 80467D40  3C 80 80 46 */	lis r4, l_arcName@ha
/* 80467D44  38 84 7F 7C */	addi r4, r4, l_arcName@l
/* 80467D48  7C 84 00 2E */	lwzx r4, r4, r0
/* 80467D4C  3C A0 80 46 */	lis r5, l_dzb@ha
/* 80467D50  38 A5 7F 10 */	addi r5, r5, l_dzb@l
/* 80467D54  7C A5 00 2E */	lwzx r5, r5, r0
/* 80467D58  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80467D5C  38 C6 5A 24 */	addi r6, r6, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80467D60  3C E0 80 46 */	lis r7, l_heap_size@ha
/* 80467D64  38 E7 7F 1C */	addi r7, r7, l_heap_size@l
/* 80467D68  7C E7 00 2E */	lwzx r7, r7, r0
/* 80467D6C  39 00 00 00 */	li r8, 0
/* 80467D70  4B C1 0A 4C */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80467D74  7C 7E 1B 78 */	mr r30, r3
/* 80467D78  2C 1E 00 05 */	cmpwi r30, 5
/* 80467D7C  40 82 00 0C */	bne lbl_80467D88
/* 80467D80  3B C0 00 05 */	li r30, 5
/* 80467D84  48 00 00 58 */	b lbl_80467DDC
lbl_80467D88:
/* 80467D88  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80467D8C  98 1F 05 BA */	stb r0, 0x5ba(r31)
/* 80467D90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80467D94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80467D98  88 9F 05 BA */	lbz r4, 0x5ba(r31)
/* 80467D9C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80467DA0  7C 05 07 74 */	extsb r5, r0
/* 80467DA4  4B BC D5 BC */	b isSwitch__10dSv_info_cCFii
/* 80467DA8  7C 60 1B 79 */	or. r0, r3, r3
/* 80467DAC  7F E3 FB 78 */	mr r3, r31
/* 80467DB0  3C 80 80 47 */	lis r4, l_openWaitAction@ha
/* 80467DB4  38 84 80 B0 */	addi r4, r4, l_openWaitAction@l
/* 80467DB8  41 82 00 0C */	beq lbl_80467DC4
/* 80467DBC  3C 80 80 47 */	lis r4, l_closeWaitAction@ha
/* 80467DC0  38 84 80 E0 */	addi r4, r4, l_closeWaitAction@l
lbl_80467DC4:
/* 80467DC4  4B FF F9 45 */	bl setAction__7daDsh_cFPQ27daDsh_c8action_c
/* 80467DC8  7F E3 FB 78 */	mr r3, r31
/* 80467DCC  4B FF F8 C9 */	bl setMtx__7daDsh_cFv
/* 80467DD0  80 7F 05 24 */	lwz r3, 0x524(r31)
/* 80467DD4  38 03 00 24 */	addi r0, r3, 0x24
/* 80467DD8  90 1F 05 04 */	stw r0, 0x504(r31)
lbl_80467DDC:
/* 80467DDC  7F C3 F3 78 */	mr r3, r30
/* 80467DE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80467DE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80467DE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80467DEC  7C 08 03 A6 */	mtlr r0
/* 80467DF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80467DF4  4E 80 00 20 */	blr 
