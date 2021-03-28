lbl_80B1A30C:
/* 80B1A30C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B1A310  7C 08 02 A6 */	mflr r0
/* 80B1A314  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B1A318  39 61 00 40 */	addi r11, r1, 0x40
/* 80B1A31C  4B 84 7E B0 */	b _savegpr_25
/* 80B1A320  7C 7A 1B 78 */	mr r26, r3
/* 80B1A324  3C 80 80 B2 */	lis r4, m__16daNpcTks_Param_c@ha
/* 80B1A328  3B A4 DD 58 */	addi r29, r4, m__16daNpcTks_Param_c@l
/* 80B1A32C  A0 03 13 88 */	lhz r0, 0x1388(r3)
/* 80B1A330  2C 00 00 02 */	cmpwi r0, 2
/* 80B1A334  41 82 01 CC */	beq lbl_80B1A500
/* 80B1A338  40 80 05 38 */	bge lbl_80B1A870
/* 80B1A33C  2C 00 00 00 */	cmpwi r0, 0
/* 80B1A340  41 82 00 0C */	beq lbl_80B1A34C
/* 80B1A344  48 00 05 2C */	b lbl_80B1A870
/* 80B1A348  48 00 05 28 */	b lbl_80B1A870
lbl_80B1A34C:
/* 80B1A34C  80 1A 05 5C */	lwz r0, 0x55c(r26)
/* 80B1A350  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80B1A354  90 1A 05 5C */	stw r0, 0x55c(r26)
/* 80B1A358  38 80 00 01 */	li r4, 1
/* 80B1A35C  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1A360  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B1A364  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B1A368  7D 89 03 A6 */	mtctr r12
/* 80B1A36C  4E 80 04 21 */	bctrl 
/* 80B1A370  7F 43 D3 78 */	mr r3, r26
/* 80B1A374  38 80 00 02 */	li r4, 2
/* 80B1A378  C0 3D 00 C4 */	lfs f1, 0xc4(r29)
/* 80B1A37C  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1A380  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B1A384  7D 89 03 A6 */	mtctr r12
/* 80B1A388  4E 80 04 21 */	bctrl 
/* 80B1A38C  A8 1A 13 86 */	lha r0, 0x1386(r26)
/* 80B1A390  2C 00 00 03 */	cmpwi r0, 3
/* 80B1A394  40 82 00 10 */	bne lbl_80B1A3A4
/* 80B1A398  80 1A 12 08 */	lwz r0, 0x1208(r26)
/* 80B1A39C  28 00 00 00 */	cmplwi r0, 0
/* 80B1A3A0  41 82 00 14 */	beq lbl_80B1A3B4
lbl_80B1A3A4:
/* 80B1A3A4  38 00 00 03 */	li r0, 3
/* 80B1A3A8  B0 1A 13 86 */	sth r0, 0x1386(r26)
/* 80B1A3AC  38 00 00 00 */	li r0, 0
/* 80B1A3B0  90 1A 12 08 */	stw r0, 0x1208(r26)
lbl_80B1A3B4:
/* 80B1A3B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B1A3B8  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80B1A3BC  3B 9B 4E 00 */	addi r28, r27, 0x4e00
/* 80B1A3C0  7F 83 E3 78 */	mr r3, r28
/* 80B1A3C4  3C 80 80 B2 */	lis r4, stringBase0@ha
/* 80B1A3C8  38 84 E0 48 */	addi r4, r4, stringBase0@l
/* 80B1A3CC  38 84 00 29 */	addi r4, r4, 0x29
/* 80B1A3D0  4B 84 E5 C4 */	b strcmp
/* 80B1A3D4  2C 03 00 00 */	cmpwi r3, 0
/* 80B1A3D8  40 82 00 38 */	bne lbl_80B1A410
/* 80B1A3DC  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B1A3E0  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80B1A3E4  C0 1D 02 68 */	lfs f0, 0x268(r29)
/* 80B1A3E8  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80B1A3EC  C0 1D 02 6C */	lfs f0, 0x26c(r29)
/* 80B1A3F0  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80B1A3F4  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80B1A3F8  D0 1A 04 BC */	stfs f0, 0x4bc(r26)
/* 80B1A3FC  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80B1A400  D0 1A 04 C0 */	stfs f0, 0x4c0(r26)
/* 80B1A404  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80B1A408  D0 1A 04 C4 */	stfs f0, 0x4c4(r26)
/* 80B1A40C  48 00 00 50 */	b lbl_80B1A45C
lbl_80B1A410:
/* 80B1A410  7F 83 E3 78 */	mr r3, r28
/* 80B1A414  3C 80 80 B2 */	lis r4, stringBase0@ha
/* 80B1A418  38 84 E0 48 */	addi r4, r4, stringBase0@l
/* 80B1A41C  38 84 00 30 */	addi r4, r4, 0x30
/* 80B1A420  4B 84 E5 74 */	b strcmp
/* 80B1A424  2C 03 00 00 */	cmpwi r3, 0
/* 80B1A428  40 82 00 34 */	bne lbl_80B1A45C
/* 80B1A42C  C0 1D 02 70 */	lfs f0, 0x270(r29)
/* 80B1A430  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80B1A434  C0 1D 01 D0 */	lfs f0, 0x1d0(r29)
/* 80B1A438  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80B1A43C  C0 1D 02 74 */	lfs f0, 0x274(r29)
/* 80B1A440  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80B1A444  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80B1A448  D0 1A 04 BC */	stfs f0, 0x4bc(r26)
/* 80B1A44C  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80B1A450  D0 1A 04 C0 */	stfs f0, 0x4c0(r26)
/* 80B1A454  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80B1A458  D0 1A 04 C4 */	stfs f0, 0x4c4(r26)
lbl_80B1A45C:
/* 80B1A45C  38 7A 13 70 */	addi r3, r26, 0x1370
/* 80B1A460  48 00 2F 09 */	bl func_80B1D368
/* 80B1A464  2C 03 00 00 */	cmpwi r3, 0
/* 80B1A468  41 81 04 08 */	bgt lbl_80B1A870
/* 80B1A46C  88 1B 4F AD */	lbz r0, 0x4fad(r27)
/* 80B1A470  28 00 00 00 */	cmplwi r0, 0
/* 80B1A474  41 82 00 40 */	beq lbl_80B1A4B4
/* 80B1A478  A0 1A 00 F8 */	lhz r0, 0xf8(r26)
/* 80B1A47C  28 00 00 01 */	cmplwi r0, 1
/* 80B1A480  41 82 00 34 */	beq lbl_80B1A4B4
/* 80B1A484  38 7B 4F F8 */	addi r3, r27, 0x4ff8
/* 80B1A488  3C 80 80 B2 */	lis r4, l_myName@ha
/* 80B1A48C  38 84 E2 0C */	addi r4, r4, l_myName@l
/* 80B1A490  80 84 00 00 */	lwz r4, 0(r4)
/* 80B1A494  38 A0 00 00 */	li r5, 0
/* 80B1A498  38 C0 00 00 */	li r6, 0
/* 80B1A49C  4B 52 D6 80 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B1A4A0  2C 03 FF FF */	cmpwi r3, -1
/* 80B1A4A4  41 82 03 CC */	beq lbl_80B1A870
/* 80B1A4A8  38 00 00 02 */	li r0, 2
/* 80B1A4AC  B0 1A 13 88 */	sth r0, 0x1388(r26)
/* 80B1A4B0  48 00 00 50 */	b lbl_80B1A500
lbl_80B1A4B4:
/* 80B1A4B4  3C 60 80 B2 */	lis r3, l_arcName@ha
/* 80B1A4B8  80 03 E2 08 */	lwz r0, l_arcName@l(r3)
/* 80B1A4BC  90 1A 01 00 */	stw r0, 0x100(r26)
/* 80B1A4C0  38 7B 4F F8 */	addi r3, r27, 0x4ff8
/* 80B1A4C4  7F 44 D3 78 */	mr r4, r26
/* 80B1A4C8  3C A0 80 B2 */	lis r5, stringBase0@ha
/* 80B1A4CC  38 A5 E0 48 */	addi r5, r5, stringBase0@l
/* 80B1A4D0  38 A5 00 77 */	addi r5, r5, 0x77
/* 80B1A4D4  38 C0 00 FF */	li r6, 0xff
/* 80B1A4D8  4B 52 D2 80 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80B1A4DC  B0 7A 09 D4 */	sth r3, 0x9d4(r26)
/* 80B1A4E0  7F 43 D3 78 */	mr r3, r26
/* 80B1A4E4  A8 9A 09 D4 */	lha r4, 0x9d4(r26)
/* 80B1A4E8  38 A0 00 FF */	li r5, 0xff
/* 80B1A4EC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80B1A4F0  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80B1A4F4  38 E0 00 04 */	li r7, 4
/* 80B1A4F8  39 00 00 01 */	li r8, 1
/* 80B1A4FC  4B 50 11 80 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
lbl_80B1A500:
/* 80B1A500  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B1A504  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80B1A508  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 80B1A50C  28 00 00 00 */	cmplwi r0, 0
/* 80B1A510  41 82 03 60 */	beq lbl_80B1A870
/* 80B1A514  A0 1A 00 F8 */	lhz r0, 0xf8(r26)
/* 80B1A518  28 00 00 01 */	cmplwi r0, 1
/* 80B1A51C  41 82 03 54 */	beq lbl_80B1A870
/* 80B1A520  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80B1A524  7F 83 E3 78 */	mr r3, r28
/* 80B1A528  3C 80 80 B2 */	lis r4, l_myName@ha
/* 80B1A52C  38 84 E2 0C */	addi r4, r4, l_myName@l
/* 80B1A530  80 84 00 00 */	lwz r4, 0(r4)
/* 80B1A534  38 A0 00 00 */	li r5, 0
/* 80B1A538  38 C0 00 00 */	li r6, 0
/* 80B1A53C  4B 52 D5 E0 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B1A540  7C 7B 1B 78 */	mr r27, r3
/* 80B1A544  2C 1B FF FF */	cmpwi r27, -1
/* 80B1A548  41 82 03 28 */	beq lbl_80B1A870
/* 80B1A54C  7F 83 E3 78 */	mr r3, r28
/* 80B1A550  7F 64 DB 78 */	mr r4, r27
/* 80B1A554  4B 52 DA 08 */	b getMyNowCutName__16dEvent_manager_cFi
/* 80B1A558  7C 7F 1B 78 */	mr r31, r3
/* 80B1A55C  7F 83 E3 78 */	mr r3, r28
/* 80B1A560  7F 64 DB 78 */	mr r4, r27
/* 80B1A564  4B 52 D7 E8 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B1A568  2C 03 00 00 */	cmpwi r3, 0
/* 80B1A56C  41 82 00 D4 */	beq lbl_80B1A640
/* 80B1A570  80 9F 00 00 */	lwz r4, 0(r31)
/* 80B1A574  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80B1A578  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80B1A57C  7C 04 00 00 */	cmpw r4, r0
/* 80B1A580  41 82 00 3C */	beq lbl_80B1A5BC
/* 80B1A584  40 80 00 14 */	bge lbl_80B1A598
/* 80B1A588  38 03 30 31 */	addi r0, r3, 0x3031
/* 80B1A58C  7C 04 00 00 */	cmpw r4, r0
/* 80B1A590  40 80 00 18 */	bge lbl_80B1A5A8
/* 80B1A594  48 00 00 AC */	b lbl_80B1A640
lbl_80B1A598:
/* 80B1A598  38 03 30 34 */	addi r0, r3, 0x3034
/* 80B1A59C  7C 04 00 00 */	cmpw r4, r0
/* 80B1A5A0  40 80 00 A0 */	bge lbl_80B1A640
/* 80B1A5A4  48 00 00 54 */	b lbl_80B1A5F8
lbl_80B1A5A8:
/* 80B1A5A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B1A5AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B1A5B0  38 00 FF FF */	li r0, -1
/* 80B1A5B4  98 03 00 98 */	stb r0, 0x98(r3)
/* 80B1A5B8  48 00 00 88 */	b lbl_80B1A640
lbl_80B1A5BC:
/* 80B1A5BC  7F 43 D3 78 */	mr r3, r26
/* 80B1A5C0  38 80 00 03 */	li r4, 3
/* 80B1A5C4  38 A0 00 00 */	li r5, 0
/* 80B1A5C8  4B 63 97 54 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B1A5CC  38 00 00 00 */	li r0, 0
/* 80B1A5D0  90 1A 09 50 */	stw r0, 0x950(r26)
/* 80B1A5D4  7F 43 D3 78 */	mr r3, r26
/* 80B1A5D8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B1A5DC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B1A5E0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B1A5E4  4B 50 01 2C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B1A5E8  7C 64 1B 78 */	mr r4, r3
/* 80B1A5EC  7F 43 D3 78 */	mr r3, r26
/* 80B1A5F0  4B 63 9C 60 */	b setAngle__8daNpcF_cFs
/* 80B1A5F4  48 00 00 4C */	b lbl_80B1A640
lbl_80B1A5F8:
/* 80B1A5F8  80 1A 12 3C */	lwz r0, 0x123c(r26)
/* 80B1A5FC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B1A600  90 1A 12 3C */	stw r0, 0x123c(r26)
/* 80B1A604  7F 43 D3 78 */	mr r3, r26
/* 80B1A608  38 80 00 04 */	li r4, 4
/* 80B1A60C  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1A610  38 A0 00 00 */	li r5, 0
/* 80B1A614  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1A618  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B1A61C  7D 89 03 A6 */	mtctr r12
/* 80B1A620  4E 80 04 21 */	bctrl 
/* 80B1A624  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B1A628  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80B1A62C  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80B1A630  C0 1D 00 B0 */	lfs f0, 0xb0(r29)
/* 80B1A634  D0 1A 04 EC */	stfs f0, 0x4ec(r26)
/* 80B1A638  D0 1A 04 F0 */	stfs f0, 0x4f0(r26)
/* 80B1A63C  D0 1A 04 F4 */	stfs f0, 0x4f4(r26)
lbl_80B1A640:
/* 80B1A640  83 3A 09 50 */	lwz r25, 0x950(r26)
/* 80B1A644  7F 43 D3 78 */	mr r3, r26
/* 80B1A648  38 81 00 10 */	addi r4, r1, 0x10
/* 80B1A64C  38 A1 00 0C */	addi r5, r1, 0xc
/* 80B1A650  7F 46 D3 78 */	mr r6, r26
/* 80B1A654  38 E0 00 01 */	li r7, 1
/* 80B1A658  4B 63 90 C0 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80B1A65C  2C 03 00 00 */	cmpwi r3, 0
/* 80B1A660  41 82 00 44 */	beq lbl_80B1A6A4
/* 80B1A664  7F 43 D3 78 */	mr r3, r26
/* 80B1A668  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80B1A66C  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1A670  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1A674  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B1A678  7D 89 03 A6 */	mtctr r12
/* 80B1A67C  4E 80 04 21 */	bctrl 
/* 80B1A680  7F 43 D3 78 */	mr r3, r26
/* 80B1A684  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B1A688  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1A68C  38 A0 00 00 */	li r5, 0
/* 80B1A690  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1A694  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B1A698  7D 89 03 A6 */	mtctr r12
/* 80B1A69C  4E 80 04 21 */	bctrl 
/* 80B1A6A0  48 00 00 34 */	b lbl_80B1A6D4
lbl_80B1A6A4:
/* 80B1A6A4  2C 19 00 00 */	cmpwi r25, 0
/* 80B1A6A8  41 82 00 2C */	beq lbl_80B1A6D4
/* 80B1A6AC  80 1A 09 50 */	lwz r0, 0x950(r26)
/* 80B1A6B0  2C 00 00 00 */	cmpwi r0, 0
/* 80B1A6B4  40 82 00 20 */	bne lbl_80B1A6D4
/* 80B1A6B8  7F 43 D3 78 */	mr r3, r26
/* 80B1A6BC  38 80 00 01 */	li r4, 1
/* 80B1A6C0  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1A6C4  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1A6C8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B1A6CC  7D 89 03 A6 */	mtctr r12
/* 80B1A6D0  4E 80 04 21 */	bctrl 
lbl_80B1A6D4:
/* 80B1A6D4  80 9F 00 00 */	lwz r4, 0(r31)
/* 80B1A6D8  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80B1A6DC  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80B1A6E0  7C 04 00 00 */	cmpw r4, r0
/* 80B1A6E4  41 82 00 38 */	beq lbl_80B1A71C
/* 80B1A6E8  40 80 00 14 */	bge lbl_80B1A6FC
/* 80B1A6EC  38 03 30 31 */	addi r0, r3, 0x3031
/* 80B1A6F0  7C 04 00 00 */	cmpw r4, r0
/* 80B1A6F4  40 80 00 18 */	bge lbl_80B1A70C
/* 80B1A6F8  48 00 01 2C */	b lbl_80B1A824
lbl_80B1A6FC:
/* 80B1A6FC  38 03 30 34 */	addi r0, r3, 0x3034
/* 80B1A700  7C 04 00 00 */	cmpw r4, r0
/* 80B1A704  40 80 01 20 */	bge lbl_80B1A824
/* 80B1A708  48 00 00 40 */	b lbl_80B1A748
lbl_80B1A70C:
/* 80B1A70C  7F 83 E3 78 */	mr r3, r28
/* 80B1A710  7F 64 DB 78 */	mr r4, r27
/* 80B1A714  4B 52 DA 68 */	b cutEnd__16dEvent_manager_cFi
/* 80B1A718  48 00 01 0C */	b lbl_80B1A824
lbl_80B1A71C:
/* 80B1A71C  7F 43 D3 78 */	mr r3, r26
/* 80B1A720  38 80 00 00 */	li r4, 0
/* 80B1A724  38 A0 00 01 */	li r5, 1
/* 80B1A728  38 C0 00 00 */	li r6, 0
/* 80B1A72C  4B 63 96 58 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B1A730  2C 03 00 00 */	cmpwi r3, 0
/* 80B1A734  41 82 00 F0 */	beq lbl_80B1A824
/* 80B1A738  7F 83 E3 78 */	mr r3, r28
/* 80B1A73C  7F 64 DB 78 */	mr r4, r27
/* 80B1A740  4B 52 DA 3C */	b cutEnd__16dEvent_manager_cFi
/* 80B1A744  48 00 00 E0 */	b lbl_80B1A824
lbl_80B1A748:
/* 80B1A748  A8 1A 09 DA */	lha r0, 0x9da(r26)
/* 80B1A74C  2C 00 00 00 */	cmpwi r0, 0
/* 80B1A750  40 82 00 74 */	bne lbl_80B1A7C4
/* 80B1A754  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 80B1A758  38 63 00 0C */	addi r3, r3, 0xc
/* 80B1A75C  C0 3D 02 30 */	lfs f1, 0x230(r29)
/* 80B1A760  4B 80 DC CC */	b checkPass__12J3DFrameCtrlFf
/* 80B1A764  2C 03 00 00 */	cmpwi r3, 0
/* 80B1A768  41 82 00 5C */	beq lbl_80B1A7C4
/* 80B1A76C  C0 1D 02 54 */	lfs f0, 0x254(r29)
/* 80B1A770  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80B1A774  C0 1D 02 78 */	lfs f0, 0x278(r29)
/* 80B1A778  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80B1A77C  C0 3D 02 5C */	lfs f1, 0x25c(r29)
/* 80B1A780  C0 1A 05 2C */	lfs f0, 0x52c(r26)
/* 80B1A784  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B1A788  FC 00 00 1E */	fctiwz f0, f0
/* 80B1A78C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B1A790  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B1A794  90 1A 13 70 */	stw r0, 0x1370(r26)
/* 80B1A798  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005002F@ha */
/* 80B1A79C  38 03 00 2F */	addi r0, r3, 0x002F /* 0x0005002F@l */
/* 80B1A7A0  90 01 00 08 */	stw r0, 8(r1)
/* 80B1A7A4  38 7A 0B 48 */	addi r3, r26, 0xb48
/* 80B1A7A8  38 81 00 08 */	addi r4, r1, 8
/* 80B1A7AC  38 A0 00 00 */	li r5, 0
/* 80B1A7B0  38 C0 FF FF */	li r6, -1
/* 80B1A7B4  81 9A 0B 48 */	lwz r12, 0xb48(r26)
/* 80B1A7B8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B1A7BC  7D 89 03 A6 */	mtctr r12
/* 80B1A7C0  4E 80 04 21 */	bctrl 
lbl_80B1A7C4:
/* 80B1A7C4  C0 7A 05 2C */	lfs f3, 0x52c(r26)
/* 80B1A7C8  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B1A7CC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80B1A7D0  40 81 00 54 */	ble lbl_80B1A824
/* 80B1A7D4  38 7A 04 EC */	addi r3, r26, 0x4ec
/* 80B1A7D8  C0 3D 02 60 */	lfs f1, 0x260(r29)
/* 80B1A7DC  C0 5D 02 64 */	lfs f2, 0x264(r29)
/* 80B1A7E0  C0 1D 02 5C */	lfs f0, 0x25c(r29)
/* 80B1A7E4  EC 00 18 24 */	fdivs f0, f0, f3
/* 80B1A7E8  EC 42 00 24 */	fdivs f2, f2, f0
/* 80B1A7EC  4B 75 5F 54 */	b cLib_chaseF__FPfff
/* 80B1A7F0  C0 1A 04 EC */	lfs f0, 0x4ec(r26)
/* 80B1A7F4  D0 1A 04 F0 */	stfs f0, 0x4f0(r26)
/* 80B1A7F8  D0 1A 04 F4 */	stfs f0, 0x4f4(r26)
/* 80B1A7FC  38 7A 13 70 */	addi r3, r26, 0x1370
/* 80B1A800  48 00 2B 69 */	bl func_80B1D368
/* 80B1A804  2C 03 00 00 */	cmpwi r3, 0
/* 80B1A808  40 82 00 1C */	bne lbl_80B1A824
/* 80B1A80C  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B1A810  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80B1A814  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80B1A818  7F 83 E3 78 */	mr r3, r28
/* 80B1A81C  7F 64 DB 78 */	mr r4, r27
/* 80B1A820  4B 52 D9 5C */	b cutEnd__16dEvent_manager_cFi
lbl_80B1A824:
/* 80B1A824  A0 1A 00 F8 */	lhz r0, 0xf8(r26)
/* 80B1A828  28 00 00 02 */	cmplwi r0, 2
/* 80B1A82C  40 82 00 44 */	bne lbl_80B1A870
/* 80B1A830  A8 9A 09 D4 */	lha r4, 0x9d4(r26)
/* 80B1A834  2C 04 FF FF */	cmpwi r4, -1
/* 80B1A838  41 82 00 38 */	beq lbl_80B1A870
/* 80B1A83C  7F 83 E3 78 */	mr r3, r28
/* 80B1A840  4B 52 D2 38 */	b endCheck__16dEvent_manager_cFs
/* 80B1A844  2C 03 00 00 */	cmpwi r3, 0
/* 80B1A848  41 82 00 28 */	beq lbl_80B1A870
/* 80B1A84C  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80B1A850  4B 52 7C 18 */	b reset__14dEvt_control_cFv
/* 80B1A854  38 00 FF FF */	li r0, -1
/* 80B1A858  B0 1A 09 D4 */	sth r0, 0x9d4(r26)
/* 80B1A85C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80B1A860  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80B1A864  4B 70 21 A0 */	b warpInProc__13dMeter2Info_cFv
/* 80B1A868  7F 43 D3 78 */	mr r3, r26
/* 80B1A86C  4B 4F F4 10 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80B1A870:
/* 80B1A870  39 61 00 40 */	addi r11, r1, 0x40
/* 80B1A874  4B 84 79 A4 */	b _restgpr_25
/* 80B1A878  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B1A87C  7C 08 03 A6 */	mtlr r0
/* 80B1A880  38 21 00 40 */	addi r1, r1, 0x40
/* 80B1A884  4E 80 00 20 */	blr 
