lbl_80B1B6A0:
/* 80B1B6A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B1B6A4  7C 08 02 A6 */	mflr r0
/* 80B1B6A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B1B6AC  39 61 00 40 */	addi r11, r1, 0x40
/* 80B1B6B0  4B 84 6B 1D */	bl _savegpr_25
/* 80B1B6B4  7C 7A 1B 78 */	mr r26, r3
/* 80B1B6B8  3C 80 80 B2 */	lis r4, m__16daNpcTks_Param_c@ha /* 0x80B1DD58@ha */
/* 80B1B6BC  3B A4 DD 58 */	addi r29, r4, m__16daNpcTks_Param_c@l /* 0x80B1DD58@l */
/* 80B1B6C0  A0 03 13 88 */	lhz r0, 0x1388(r3)
/* 80B1B6C4  2C 00 00 02 */	cmpwi r0, 2
/* 80B1B6C8  41 82 01 EC */	beq lbl_80B1B8B4
/* 80B1B6CC  40 80 06 80 */	bge lbl_80B1BD4C
/* 80B1B6D0  2C 00 00 00 */	cmpwi r0, 0
/* 80B1B6D4  41 82 00 0C */	beq lbl_80B1B6E0
/* 80B1B6D8  48 00 06 74 */	b lbl_80B1BD4C
/* 80B1B6DC  48 00 06 70 */	b lbl_80B1BD4C
lbl_80B1B6E0:
/* 80B1B6E0  80 1A 05 5C */	lwz r0, 0x55c(r26)
/* 80B1B6E4  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80B1B6E8  90 1A 05 5C */	stw r0, 0x55c(r26)
/* 80B1B6EC  38 80 00 01 */	li r4, 1
/* 80B1B6F0  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1B6F4  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B1B6F8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B1B6FC  7D 89 03 A6 */	mtctr r12
/* 80B1B700  4E 80 04 21 */	bctrl 
/* 80B1B704  7F 43 D3 78 */	mr r3, r26
/* 80B1B708  38 80 00 00 */	li r4, 0
/* 80B1B70C  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1B710  38 A0 00 00 */	li r5, 0
/* 80B1B714  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1B718  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B1B71C  7D 89 03 A6 */	mtctr r12
/* 80B1B720  4E 80 04 21 */	bctrl 
/* 80B1B724  A8 1A 13 86 */	lha r0, 0x1386(r26)
/* 80B1B728  2C 00 00 02 */	cmpwi r0, 2
/* 80B1B72C  40 82 00 10 */	bne lbl_80B1B73C
/* 80B1B730  80 1A 12 08 */	lwz r0, 0x1208(r26)
/* 80B1B734  28 00 00 00 */	cmplwi r0, 0
/* 80B1B738  41 82 00 14 */	beq lbl_80B1B74C
lbl_80B1B73C:
/* 80B1B73C  38 00 00 02 */	li r0, 2
/* 80B1B740  B0 1A 13 86 */	sth r0, 0x1386(r26)
/* 80B1B744  38 00 00 00 */	li r0, 0
/* 80B1B748  90 1A 12 08 */	stw r0, 0x1208(r26)
lbl_80B1B74C:
/* 80B1B74C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B1B750  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B1B754  3B 9B 4E 00 */	addi r28, r27, 0x4e00
/* 80B1B758  7F 83 E3 78 */	mr r3, r28
/* 80B1B75C  3C 80 80 B2 */	lis r4, d_a_npc_tks__stringBase0@ha /* 0x80B1E048@ha */
/* 80B1B760  38 84 E0 48 */	addi r4, r4, d_a_npc_tks__stringBase0@l /* 0x80B1E048@l */
/* 80B1B764  38 84 00 84 */	addi r4, r4, 0x84
/* 80B1B768  4B 84 D2 2D */	bl strcmp
/* 80B1B76C  2C 03 00 00 */	cmpwi r3, 0
/* 80B1B770  40 82 00 2C */	bne lbl_80B1B79C
/* 80B1B774  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B1B778  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80B1B77C  C0 1D 02 B8 */	lfs f0, 0x2b8(r29)
/* 80B1B780  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80B1B784  C0 1D 02 BC */	lfs f0, 0x2bc(r29)
/* 80B1B788  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80B1B78C  7F 43 D3 78 */	mr r3, r26
/* 80B1B790  38 80 00 00 */	li r4, 0
/* 80B1B794  4B 63 8A BD */	bl setAngle__8daNpcF_cFs
/* 80B1B798  48 00 00 44 */	b lbl_80B1B7DC
lbl_80B1B79C:
/* 80B1B79C  7F 83 E3 78 */	mr r3, r28
/* 80B1B7A0  3C 80 80 B2 */	lis r4, d_a_npc_tks__stringBase0@ha /* 0x80B1E048@ha */
/* 80B1B7A4  38 84 E0 48 */	addi r4, r4, d_a_npc_tks__stringBase0@l /* 0x80B1E048@l */
/* 80B1B7A8  38 84 00 30 */	addi r4, r4, 0x30
/* 80B1B7AC  4B 84 D1 E9 */	bl strcmp
/* 80B1B7B0  2C 03 00 00 */	cmpwi r3, 0
/* 80B1B7B4  40 82 00 28 */	bne lbl_80B1B7DC
/* 80B1B7B8  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B1B7BC  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80B1B7C0  C0 1D 02 A4 */	lfs f0, 0x2a4(r29)
/* 80B1B7C4  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80B1B7C8  C0 1D 02 C0 */	lfs f0, 0x2c0(r29)
/* 80B1B7CC  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80B1B7D0  7F 43 D3 78 */	mr r3, r26
/* 80B1B7D4  38 80 00 00 */	li r4, 0
/* 80B1B7D8  4B 63 8A 79 */	bl setAngle__8daNpcF_cFs
lbl_80B1B7DC:
/* 80B1B7DC  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80B1B7E0  D0 1A 04 BC */	stfs f0, 0x4bc(r26)
/* 80B1B7E4  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80B1B7E8  D0 1A 04 C0 */	stfs f0, 0x4c0(r26)
/* 80B1B7EC  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80B1B7F0  D0 1A 04 C4 */	stfs f0, 0x4c4(r26)
/* 80B1B7F4  38 7A 13 70 */	addi r3, r26, 0x1370
/* 80B1B7F8  48 00 1B 71 */	bl func_80B1D368
/* 80B1B7FC  2C 03 00 00 */	cmpwi r3, 0
/* 80B1B800  41 81 05 4C */	bgt lbl_80B1BD4C
/* 80B1B804  88 1B 4F AD */	lbz r0, 0x4fad(r27)
/* 80B1B808  28 00 00 00 */	cmplwi r0, 0
/* 80B1B80C  41 82 00 40 */	beq lbl_80B1B84C
/* 80B1B810  A0 1A 00 F8 */	lhz r0, 0xf8(r26)
/* 80B1B814  28 00 00 01 */	cmplwi r0, 1
/* 80B1B818  41 82 00 34 */	beq lbl_80B1B84C
/* 80B1B81C  38 7B 4F F8 */	addi r3, r27, 0x4ff8
/* 80B1B820  3C 80 80 B2 */	lis r4, l_myName@ha /* 0x80B1E20C@ha */
/* 80B1B824  38 84 E2 0C */	addi r4, r4, l_myName@l /* 0x80B1E20C@l */
/* 80B1B828  80 84 00 00 */	lwz r4, 0(r4)
/* 80B1B82C  38 A0 00 00 */	li r5, 0
/* 80B1B830  38 C0 00 00 */	li r6, 0
/* 80B1B834  4B 52 C2 E9 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B1B838  2C 03 FF FF */	cmpwi r3, -1
/* 80B1B83C  41 82 05 10 */	beq lbl_80B1BD4C
/* 80B1B840  38 00 00 02 */	li r0, 2
/* 80B1B844  B0 1A 13 88 */	sth r0, 0x1388(r26)
/* 80B1B848  48 00 05 04 */	b lbl_80B1BD4C
lbl_80B1B84C:
/* 80B1B84C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B1B850  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B1B854  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B1B858  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80B1B85C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80B1B860  41 82 04 EC */	beq lbl_80B1BD4C
/* 80B1B864  3C 60 80 B2 */	lis r3, l_arcName@ha /* 0x80B1E208@ha */
/* 80B1B868  80 03 E2 08 */	lwz r0, l_arcName@l(r3)  /* 0x80B1E208@l */
/* 80B1B86C  90 1A 01 00 */	stw r0, 0x100(r26)
/* 80B1B870  38 7B 4F F8 */	addi r3, r27, 0x4ff8
/* 80B1B874  7F 44 D3 78 */	mr r4, r26
/* 80B1B878  3C A0 80 B2 */	lis r5, d_a_npc_tks__stringBase0@ha /* 0x80B1E048@ha */
/* 80B1B87C  38 A5 E0 48 */	addi r5, r5, d_a_npc_tks__stringBase0@l /* 0x80B1E048@l */
/* 80B1B880  38 A5 00 77 */	addi r5, r5, 0x77
/* 80B1B884  38 C0 00 FF */	li r6, 0xff
/* 80B1B888  4B 52 BE D1 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80B1B88C  B0 7A 09 D4 */	sth r3, 0x9d4(r26)
/* 80B1B890  7F 43 D3 78 */	mr r3, r26
/* 80B1B894  A8 9A 09 D4 */	lha r4, 0x9d4(r26)
/* 80B1B898  38 A0 00 FF */	li r5, 0xff
/* 80B1B89C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80B1B8A0  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80B1B8A4  38 E0 00 04 */	li r7, 4
/* 80B1B8A8  39 00 00 01 */	li r8, 1
/* 80B1B8AC  4B 4F FD D1 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80B1B8B0  48 00 04 9C */	b lbl_80B1BD4C
lbl_80B1B8B4:
/* 80B1B8B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B1B8B8  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B1B8BC  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 80B1B8C0  28 00 00 00 */	cmplwi r0, 0
/* 80B1B8C4  41 82 04 88 */	beq lbl_80B1BD4C
/* 80B1B8C8  A0 1A 00 F8 */	lhz r0, 0xf8(r26)
/* 80B1B8CC  28 00 00 01 */	cmplwi r0, 1
/* 80B1B8D0  41 82 04 7C */	beq lbl_80B1BD4C
/* 80B1B8D4  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80B1B8D8  7F 83 E3 78 */	mr r3, r28
/* 80B1B8DC  3C 80 80 B2 */	lis r4, l_myName@ha /* 0x80B1E20C@ha */
/* 80B1B8E0  38 84 E2 0C */	addi r4, r4, l_myName@l /* 0x80B1E20C@l */
/* 80B1B8E4  80 84 00 00 */	lwz r4, 0(r4)
/* 80B1B8E8  38 A0 00 00 */	li r5, 0
/* 80B1B8EC  38 C0 00 00 */	li r6, 0
/* 80B1B8F0  4B 52 C2 2D */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B1B8F4  7C 7B 1B 78 */	mr r27, r3
/* 80B1B8F8  2C 1B FF FF */	cmpwi r27, -1
/* 80B1B8FC  41 82 04 50 */	beq lbl_80B1BD4C
/* 80B1B900  7F 83 E3 78 */	mr r3, r28
/* 80B1B904  7F 64 DB 78 */	mr r4, r27
/* 80B1B908  4B 52 C6 55 */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80B1B90C  7C 7F 1B 78 */	mr r31, r3
/* 80B1B910  7F 83 E3 78 */	mr r3, r28
/* 80B1B914  7F 64 DB 78 */	mr r4, r27
/* 80B1B918  4B 52 C4 35 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B1B91C  2C 03 00 00 */	cmpwi r3, 0
/* 80B1B920  41 82 00 E0 */	beq lbl_80B1BA00
/* 80B1B924  80 9F 00 00 */	lwz r4, 0(r31)
/* 80B1B928  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80B1B92C  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80B1B930  7C 04 00 00 */	cmpw r4, r0
/* 80B1B934  41 82 00 3C */	beq lbl_80B1B970
/* 80B1B938  40 80 00 14 */	bge lbl_80B1B94C
/* 80B1B93C  38 03 30 31 */	addi r0, r3, 0x3031
/* 80B1B940  7C 04 00 00 */	cmpw r4, r0
/* 80B1B944  40 80 00 18 */	bge lbl_80B1B95C
/* 80B1B948  48 00 00 B8 */	b lbl_80B1BA00
lbl_80B1B94C:
/* 80B1B94C  38 03 30 34 */	addi r0, r3, 0x3034
/* 80B1B950  7C 04 00 00 */	cmpw r4, r0
/* 80B1B954  40 80 00 AC */	bge lbl_80B1BA00
/* 80B1B958  48 00 00 60 */	b lbl_80B1B9B8
lbl_80B1B95C:
/* 80B1B95C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B1B960  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B1B964  38 00 FF FF */	li r0, -1
/* 80B1B968  98 03 00 98 */	stb r0, 0x98(r3)
/* 80B1B96C  48 00 00 94 */	b lbl_80B1BA00
lbl_80B1B970:
/* 80B1B970  7F 43 D3 78 */	mr r3, r26
/* 80B1B974  38 80 00 03 */	li r4, 3
/* 80B1B978  38 A0 00 00 */	li r5, 0
/* 80B1B97C  4B 63 83 A1 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B1B980  38 00 00 00 */	li r0, 0
/* 80B1B984  90 1A 09 50 */	stw r0, 0x950(r26)
/* 80B1B988  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80B1B98C  A8 1A 13 86 */	lha r0, 0x1386(r26)
/* 80B1B990  2C 00 00 03 */	cmpwi r0, 3
/* 80B1B994  40 82 00 10 */	bne lbl_80B1B9A4
/* 80B1B998  80 1A 12 08 */	lwz r0, 0x1208(r26)
/* 80B1B99C  28 00 00 00 */	cmplwi r0, 0
/* 80B1B9A0  41 82 00 60 */	beq lbl_80B1BA00
lbl_80B1B9A4:
/* 80B1B9A4  38 00 00 03 */	li r0, 3
/* 80B1B9A8  B0 1A 13 86 */	sth r0, 0x1386(r26)
/* 80B1B9AC  38 00 00 00 */	li r0, 0
/* 80B1B9B0  90 1A 12 08 */	stw r0, 0x1208(r26)
/* 80B1B9B4  48 00 00 4C */	b lbl_80B1BA00
lbl_80B1B9B8:
/* 80B1B9B8  80 1A 12 3C */	lwz r0, 0x123c(r26)
/* 80B1B9BC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B1B9C0  90 1A 12 3C */	stw r0, 0x123c(r26)
/* 80B1B9C4  7F 43 D3 78 */	mr r3, r26
/* 80B1B9C8  38 80 00 04 */	li r4, 4
/* 80B1B9CC  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1B9D0  38 A0 00 00 */	li r5, 0
/* 80B1B9D4  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1B9D8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B1B9DC  7D 89 03 A6 */	mtctr r12
/* 80B1B9E0  4E 80 04 21 */	bctrl 
/* 80B1B9E4  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B1B9E8  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80B1B9EC  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80B1B9F0  C0 1D 00 B0 */	lfs f0, 0xb0(r29)
/* 80B1B9F4  D0 1A 04 EC */	stfs f0, 0x4ec(r26)
/* 80B1B9F8  D0 1A 04 F0 */	stfs f0, 0x4f0(r26)
/* 80B1B9FC  D0 1A 04 F4 */	stfs f0, 0x4f4(r26)
lbl_80B1BA00:
/* 80B1BA00  83 3A 09 50 */	lwz r25, 0x950(r26)
/* 80B1BA04  7F 43 D3 78 */	mr r3, r26
/* 80B1BA08  38 81 00 10 */	addi r4, r1, 0x10
/* 80B1BA0C  38 A1 00 0C */	addi r5, r1, 0xc
/* 80B1BA10  7F 46 D3 78 */	mr r6, r26
/* 80B1BA14  38 E0 00 01 */	li r7, 1
/* 80B1BA18  4B 63 7D 01 */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80B1BA1C  2C 03 00 00 */	cmpwi r3, 0
/* 80B1BA20  41 82 00 44 */	beq lbl_80B1BA64
/* 80B1BA24  7F 43 D3 78 */	mr r3, r26
/* 80B1BA28  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80B1BA2C  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1BA30  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1BA34  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B1BA38  7D 89 03 A6 */	mtctr r12
/* 80B1BA3C  4E 80 04 21 */	bctrl 
/* 80B1BA40  7F 43 D3 78 */	mr r3, r26
/* 80B1BA44  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B1BA48  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1BA4C  38 A0 00 00 */	li r5, 0
/* 80B1BA50  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1BA54  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B1BA58  7D 89 03 A6 */	mtctr r12
/* 80B1BA5C  4E 80 04 21 */	bctrl 
/* 80B1BA60  48 00 00 34 */	b lbl_80B1BA94
lbl_80B1BA64:
/* 80B1BA64  2C 19 00 00 */	cmpwi r25, 0
/* 80B1BA68  41 82 00 2C */	beq lbl_80B1BA94
/* 80B1BA6C  80 1A 09 50 */	lwz r0, 0x950(r26)
/* 80B1BA70  2C 00 00 00 */	cmpwi r0, 0
/* 80B1BA74  40 82 00 20 */	bne lbl_80B1BA94
/* 80B1BA78  7F 43 D3 78 */	mr r3, r26
/* 80B1BA7C  38 80 00 01 */	li r4, 1
/* 80B1BA80  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1BA84  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1BA88  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B1BA8C  7D 89 03 A6 */	mtctr r12
/* 80B1BA90  4E 80 04 21 */	bctrl 
lbl_80B1BA94:
/* 80B1BA94  80 9F 00 00 */	lwz r4, 0(r31)
/* 80B1BA98  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80B1BA9C  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80B1BAA0  7C 04 00 00 */	cmpw r4, r0
/* 80B1BAA4  41 82 00 38 */	beq lbl_80B1BADC
/* 80B1BAA8  40 80 00 14 */	bge lbl_80B1BABC
/* 80B1BAAC  38 03 30 31 */	addi r0, r3, 0x3031
/* 80B1BAB0  7C 04 00 00 */	cmpw r4, r0
/* 80B1BAB4  40 80 00 18 */	bge lbl_80B1BACC
/* 80B1BAB8  48 00 02 48 */	b lbl_80B1BD00
lbl_80B1BABC:
/* 80B1BABC  38 03 30 34 */	addi r0, r3, 0x3034
/* 80B1BAC0  7C 04 00 00 */	cmpw r4, r0
/* 80B1BAC4  40 80 02 3C */	bge lbl_80B1BD00
/* 80B1BAC8  48 00 01 38 */	b lbl_80B1BC00
lbl_80B1BACC:
/* 80B1BACC  7F 83 E3 78 */	mr r3, r28
/* 80B1BAD0  7F 64 DB 78 */	mr r4, r27
/* 80B1BAD4  4B 52 C6 A9 */	bl cutEnd__16dEvent_manager_cFi
/* 80B1BAD8  48 00 02 28 */	b lbl_80B1BD00
lbl_80B1BADC:
/* 80B1BADC  7F 43 D3 78 */	mr r3, r26
/* 80B1BAE0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B1BAE4  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B1BAE8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B1BAEC  4B 4F EC 25 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B1BAF0  A8 9A 08 F2 */	lha r4, 0x8f2(r26)
/* 80B1BAF4  7C 60 07 34 */	extsh r0, r3
/* 80B1BAF8  7C 04 00 00 */	cmpw r4, r0
/* 80B1BAFC  40 82 00 30 */	bne lbl_80B1BB2C
/* 80B1BB00  7F 43 D3 78 */	mr r3, r26
/* 80B1BB04  38 80 00 00 */	li r4, 0
/* 80B1BB08  38 A0 00 01 */	li r5, 1
/* 80B1BB0C  38 C0 00 00 */	li r6, 0
/* 80B1BB10  4B 63 82 75 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B1BB14  2C 03 00 00 */	cmpwi r3, 0
/* 80B1BB18  41 82 01 E8 */	beq lbl_80B1BD00
/* 80B1BB1C  7F 83 E3 78 */	mr r3, r28
/* 80B1BB20  7F 64 DB 78 */	mr r4, r27
/* 80B1BB24  4B 52 C6 59 */	bl cutEnd__16dEvent_manager_cFi
/* 80B1BB28  48 00 01 D8 */	b lbl_80B1BD00
lbl_80B1BB2C:
/* 80B1BB2C  7F 43 D3 78 */	mr r3, r26
/* 80B1BB30  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B1BB34  4B 4F EB DD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B1BB38  80 1A 09 6C */	lwz r0, 0x96c(r26)
/* 80B1BB3C  2C 00 00 00 */	cmpwi r0, 0
/* 80B1BB40  40 82 00 4C */	bne lbl_80B1BB8C
/* 80B1BB44  B0 7A 09 96 */	sth r3, 0x996(r26)
/* 80B1BB48  38 00 00 00 */	li r0, 0
/* 80B1BB4C  90 1A 09 68 */	stw r0, 0x968(r26)
/* 80B1BB50  A8 7A 08 F2 */	lha r3, 0x8f2(r26)
/* 80B1BB54  A8 1A 09 96 */	lha r0, 0x996(r26)
/* 80B1BB58  7C 03 00 00 */	cmpw r3, r0
/* 80B1BB5C  40 82 00 10 */	bne lbl_80B1BB6C
/* 80B1BB60  80 7A 09 6C */	lwz r3, 0x96c(r26)
/* 80B1BB64  38 03 00 01 */	addi r0, r3, 1
/* 80B1BB68  90 1A 09 6C */	stw r0, 0x96c(r26)
lbl_80B1BB6C:
/* 80B1BB6C  A8 1A 08 F2 */	lha r0, 0x8f2(r26)
/* 80B1BB70  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 80B1BB74  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1BB78  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80B1BB7C  80 7A 09 6C */	lwz r3, 0x96c(r26)
/* 80B1BB80  38 03 00 01 */	addi r0, r3, 1
/* 80B1BB84  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80B1BB88  48 00 00 60 */	b lbl_80B1BBE8
lbl_80B1BB8C:
/* 80B1BB8C  2C 00 00 01 */	cmpwi r0, 1
/* 80B1BB90  40 82 00 58 */	bne lbl_80B1BBE8
/* 80B1BB94  7F 43 D3 78 */	mr r3, r26
/* 80B1BB98  A8 9A 09 96 */	lha r4, 0x996(r26)
/* 80B1BB9C  C0 3D 01 E4 */	lfs f1, 0x1e4(r29)
/* 80B1BBA0  38 A0 00 00 */	li r5, 0
/* 80B1BBA4  4B 63 83 51 */	bl turn__8daNpcF_cFsfi
/* 80B1BBA8  2C 03 00 00 */	cmpwi r3, 0
/* 80B1BBAC  41 82 00 2C */	beq lbl_80B1BBD8
/* 80B1BBB0  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1BBB4  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80B1BBB8  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1BBBC  B0 1A 08 F2 */	sth r0, 0x8f2(r26)
/* 80B1BBC0  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1BBC4  B0 1A 08 F8 */	sth r0, 0x8f8(r26)
/* 80B1BBC8  80 7A 09 6C */	lwz r3, 0x96c(r26)
/* 80B1BBCC  38 03 00 01 */	addi r0, r3, 1
/* 80B1BBD0  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80B1BBD4  48 00 00 14 */	b lbl_80B1BBE8
lbl_80B1BBD8:
/* 80B1BBD8  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1BBDC  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80B1BBE0  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1BBE4  B0 1A 08 F2 */	sth r0, 0x8f2(r26)
lbl_80B1BBE8:
/* 80B1BBE8  80 1A 09 6C */	lwz r0, 0x96c(r26)
/* 80B1BBEC  2C 00 00 01 */	cmpwi r0, 1
/* 80B1BBF0  40 81 01 10 */	ble lbl_80B1BD00
/* 80B1BBF4  38 00 00 00 */	li r0, 0
/* 80B1BBF8  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80B1BBFC  48 00 01 04 */	b lbl_80B1BD00
lbl_80B1BC00:
/* 80B1BC00  A8 1A 09 DA */	lha r0, 0x9da(r26)
/* 80B1BC04  2C 00 00 00 */	cmpwi r0, 0
/* 80B1BC08  40 82 00 9C */	bne lbl_80B1BCA4
/* 80B1BC0C  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 80B1BC10  38 63 00 0C */	addi r3, r3, 0xc
/* 80B1BC14  C0 3D 02 30 */	lfs f1, 0x230(r29)
/* 80B1BC18  4B 80 C8 15 */	bl checkPass__12J3DFrameCtrlFf
/* 80B1BC1C  2C 03 00 00 */	cmpwi r3, 0
/* 80B1BC20  41 82 00 84 */	beq lbl_80B1BCA4
/* 80B1BC24  C0 1D 02 58 */	lfs f0, 0x258(r29)
/* 80B1BC28  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80B1BC2C  C0 3D 02 C4 */	lfs f1, 0x2c4(r29)
/* 80B1BC30  C0 1A 04 FC */	lfs f0, 0x4fc(r26)
/* 80B1BC34  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B1BC38  C0 1A 05 30 */	lfs f0, 0x530(r26)
/* 80B1BC3C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B1BC40  D0 1A 13 6C */	stfs f0, 0x136c(r26)
/* 80B1BC44  C0 1A 13 6C */	lfs f0, 0x136c(r26)
/* 80B1BC48  FC 00 00 1E */	fctiwz f0, f0
/* 80B1BC4C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B1BC50  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B1BC54  90 1A 13 70 */	stw r0, 0x1370(r26)
/* 80B1BC58  7F 43 D3 78 */	mr r3, r26
/* 80B1BC5C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B1BC60  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B1BC64  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B1BC68  4B 4F EC FD */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B1BC6C  C0 1A 13 6C */	lfs f0, 0x136c(r26)
/* 80B1BC70  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B1BC74  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80B1BC78  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005002F@ha */
/* 80B1BC7C  38 03 00 2F */	addi r0, r3, 0x002F /* 0x0005002F@l */
/* 80B1BC80  90 01 00 08 */	stw r0, 8(r1)
/* 80B1BC84  38 7A 0B 48 */	addi r3, r26, 0xb48
/* 80B1BC88  38 81 00 08 */	addi r4, r1, 8
/* 80B1BC8C  38 A0 00 00 */	li r5, 0
/* 80B1BC90  38 C0 FF FF */	li r6, -1
/* 80B1BC94  81 9A 0B 48 */	lwz r12, 0xb48(r26)
/* 80B1BC98  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B1BC9C  7D 89 03 A6 */	mtctr r12
/* 80B1BCA0  4E 80 04 21 */	bctrl 
lbl_80B1BCA4:
/* 80B1BCA4  C0 3A 05 2C */	lfs f1, 0x52c(r26)
/* 80B1BCA8  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B1BCAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B1BCB0  40 81 00 50 */	ble lbl_80B1BD00
/* 80B1BCB4  38 7A 04 EC */	addi r3, r26, 0x4ec
/* 80B1BCB8  C0 3D 02 60 */	lfs f1, 0x260(r29)
/* 80B1BCBC  C0 5D 02 64 */	lfs f2, 0x264(r29)
/* 80B1BCC0  C0 1A 13 6C */	lfs f0, 0x136c(r26)
/* 80B1BCC4  EC 42 00 24 */	fdivs f2, f2, f0
/* 80B1BCC8  4B 75 4A 79 */	bl cLib_chaseF__FPfff
/* 80B1BCCC  C0 1A 04 EC */	lfs f0, 0x4ec(r26)
/* 80B1BCD0  D0 1A 04 F0 */	stfs f0, 0x4f0(r26)
/* 80B1BCD4  D0 1A 04 F4 */	stfs f0, 0x4f4(r26)
/* 80B1BCD8  38 7A 13 70 */	addi r3, r26, 0x1370
/* 80B1BCDC  48 00 16 8D */	bl func_80B1D368
/* 80B1BCE0  2C 03 00 00 */	cmpwi r3, 0
/* 80B1BCE4  40 82 00 1C */	bne lbl_80B1BD00
/* 80B1BCE8  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B1BCEC  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80B1BCF0  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80B1BCF4  7F 83 E3 78 */	mr r3, r28
/* 80B1BCF8  7F 64 DB 78 */	mr r4, r27
/* 80B1BCFC  4B 52 C4 81 */	bl cutEnd__16dEvent_manager_cFi
lbl_80B1BD00:
/* 80B1BD00  A0 1A 00 F8 */	lhz r0, 0xf8(r26)
/* 80B1BD04  28 00 00 02 */	cmplwi r0, 2
/* 80B1BD08  40 82 00 44 */	bne lbl_80B1BD4C
/* 80B1BD0C  A8 9A 09 D4 */	lha r4, 0x9d4(r26)
/* 80B1BD10  2C 04 FF FF */	cmpwi r4, -1
/* 80B1BD14  41 82 00 38 */	beq lbl_80B1BD4C
/* 80B1BD18  7F 83 E3 78 */	mr r3, r28
/* 80B1BD1C  4B 52 BD 5D */	bl endCheck__16dEvent_manager_cFs
/* 80B1BD20  2C 03 00 00 */	cmpwi r3, 0
/* 80B1BD24  41 82 00 28 */	beq lbl_80B1BD4C
/* 80B1BD28  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80B1BD2C  4B 52 67 3D */	bl reset__14dEvt_control_cFv
/* 80B1BD30  38 00 FF FF */	li r0, -1
/* 80B1BD34  B0 1A 09 D4 */	sth r0, 0x9d4(r26)
/* 80B1BD38  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80B1BD3C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80B1BD40  4B 70 0C C5 */	bl warpInProc__13dMeter2Info_cFv
/* 80B1BD44  7F 43 D3 78 */	mr r3, r26
/* 80B1BD48  4B 4F DF 35 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80B1BD4C:
/* 80B1BD4C  39 61 00 40 */	addi r11, r1, 0x40
/* 80B1BD50  4B 84 64 C9 */	bl _restgpr_25
/* 80B1BD54  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B1BD58  7C 08 03 A6 */	mtlr r0
/* 80B1BD5C  38 21 00 40 */	addi r1, r1, 0x40
/* 80B1BD60  4E 80 00 20 */	blr 
