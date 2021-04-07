lbl_804E28E4:
/* 804E28E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E28E8  7C 08 02 A6 */	mflr r0
/* 804E28EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E28F0  39 61 00 20 */	addi r11, r1, 0x20
/* 804E28F4  4B E7 F8 E9 */	bl _savegpr_29
/* 804E28F8  7C 7F 1B 78 */	mr r31, r3
/* 804E28FC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 804E2900  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804E2904  40 82 00 58 */	bne lbl_804E295C
/* 804E2908  7F E0 FB 79 */	or. r0, r31, r31
/* 804E290C  41 82 00 44 */	beq lbl_804E2950
/* 804E2910  7C 1E 03 78 */	mr r30, r0
/* 804E2914  4B B3 62 51 */	bl __ct__10fopAc_ac_cFv
/* 804E2918  3B BE 05 AC */	addi r29, r30, 0x5ac
/* 804E291C  7F A3 EB 78 */	mr r3, r29
/* 804E2920  4B B9 37 81 */	bl __ct__9dBgS_AcchFv
/* 804E2924  3C 60 80 4E */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x804E5074@ha */
/* 804E2928  38 63 50 74 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x804E5074@l */
/* 804E292C  90 7D 00 10 */	stw r3, 0x10(r29)
/* 804E2930  38 03 00 0C */	addi r0, r3, 0xc
/* 804E2934  90 1D 00 14 */	stw r0, 0x14(r29)
/* 804E2938  38 03 00 18 */	addi r0, r3, 0x18
/* 804E293C  90 1D 00 24 */	stw r0, 0x24(r29)
/* 804E2940  38 7D 00 14 */	addi r3, r29, 0x14
/* 804E2944  4B B9 65 25 */	bl SetObj__16dBgS_PolyPassChkFv
/* 804E2948  38 7E 07 84 */	addi r3, r30, 0x784
/* 804E294C  4B B9 35 61 */	bl __ct__12dBgS_AcchCirFv
lbl_804E2950:
/* 804E2950  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 804E2954  60 00 00 08 */	ori r0, r0, 8
/* 804E2958  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_804E295C:
/* 804E295C  7F E3 FB 78 */	mr r3, r31
/* 804E2960  4B FF F6 45 */	bl getArcName__11daBdoorL1_cFv
/* 804E2964  7C 64 1B 78 */	mr r4, r3
/* 804E2968  38 7F 05 68 */	addi r3, r31, 0x568
/* 804E296C  4B B4 A5 51 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 804E2970  2C 03 00 04 */	cmpwi r3, 4
/* 804E2974  41 82 00 08 */	beq lbl_804E297C
/* 804E2978  48 00 01 08 */	b lbl_804E2A80
lbl_804E297C:
/* 804E297C  7F E3 FB 78 */	mr r3, r31
/* 804E2980  4B FF F6 E1 */	bl getAnmArcName__11daBdoorL1_cFv
/* 804E2984  7C 64 1B 78 */	mr r4, r3
/* 804E2988  38 7F 05 78 */	addi r3, r31, 0x578
/* 804E298C  4B B4 A5 31 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 804E2990  2C 03 00 04 */	cmpwi r3, 4
/* 804E2994  41 82 00 08 */	beq lbl_804E299C
/* 804E2998  48 00 00 E8 */	b lbl_804E2A80
lbl_804E299C:
/* 804E299C  7F E3 FB 78 */	mr r3, r31
/* 804E29A0  4B FF F8 0D */	bl getAlwaysArcName__11daBdoorL1_cFv
/* 804E29A4  7C 64 1B 78 */	mr r4, r3
/* 804E29A8  38 7F 05 70 */	addi r3, r31, 0x570
/* 804E29AC  4B B4 A5 11 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 804E29B0  2C 03 00 04 */	cmpwi r3, 4
/* 804E29B4  41 82 00 08 */	beq lbl_804E29BC
/* 804E29B8  48 00 00 C8 */	b lbl_804E2A80
lbl_804E29BC:
/* 804E29BC  38 00 00 00 */	li r0, 0
/* 804E29C0  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 804E29C4  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 804E29C8  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 804E29CC  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 804E29D0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804E29D4  7C 1E 07 74 */	extsb r30, r0
/* 804E29D8  7F E3 FB 78 */	mr r3, r31
/* 804E29DC  4B B5 77 F5 */	bl getSwbit__13door_param2_cFP10fopAc_ac_c
/* 804E29E0  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 804E29E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E29E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E29EC  7F C5 F3 78 */	mr r5, r30
/* 804E29F0  4B B5 29 71 */	bl isSwitch__10dSv_info_cCFii
/* 804E29F4  2C 03 00 00 */	cmpwi r3, 0
/* 804E29F8  40 82 00 38 */	bne lbl_804E2A30
/* 804E29FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E2A00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E2A04  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 804E2A08  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 804E2A0C  7D 89 03 A6 */	mtctr r12
/* 804E2A10  4E 80 04 21 */	bctrl 
/* 804E2A14  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804E2A18  54 00 87 7E */	rlwinm r0, r0, 0x10, 0x1d, 0x1f
/* 804E2A1C  28 00 00 03 */	cmplwi r0, 3
/* 804E2A20  41 82 00 10 */	beq lbl_804E2A30
/* 804E2A24  7F E3 FB 78 */	mr r3, r31
/* 804E2A28  48 00 15 D1 */	bl createKey__11daBdoorL1_cFv
/* 804E2A2C  48 00 00 0C */	b lbl_804E2A38
lbl_804E2A30:
/* 804E2A30  38 00 FF FF */	li r0, -1
/* 804E2A34  90 1F 05 94 */	stw r0, 0x594(r31)
lbl_804E2A38:
/* 804E2A38  4B FF F3 61 */	bl getNowLevel__Fv
/* 804E2A3C  54 60 10 3A */	slwi r0, r3, 2
/* 804E2A40  3C 60 80 4E */	lis r3, l_heap_size@ha /* 0x804E4A24@ha */
/* 804E2A44  38 A3 4A 24 */	addi r5, r3, l_heap_size@l /* 0x804E4A24@l */
/* 804E2A48  7F E3 FB 78 */	mr r3, r31
/* 804E2A4C  3C 80 80 4E */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha /* 0x804E2238@ha */
/* 804E2A50  38 84 22 38 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l /* 0x804E2238@l */
/* 804E2A54  7C A5 00 2E */	lwzx r5, r5, r0
/* 804E2A58  4B B3 7A 59 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 804E2A5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804E2A60  40 82 00 0C */	bne lbl_804E2A6C
/* 804E2A64  38 60 00 05 */	li r3, 5
/* 804E2A68  48 00 00 18 */	b lbl_804E2A80
lbl_804E2A6C:
/* 804E2A6C  7F E3 FB 78 */	mr r3, r31
/* 804E2A70  4B FF FC E5 */	bl CreateInit__11daBdoorL1_cFv
/* 804E2A74  20 03 00 00 */	subfic r0, r3, 0
/* 804E2A78  7C 60 01 10 */	subfe r3, r0, r0
/* 804E2A7C  38 63 00 05 */	addi r3, r3, 5
lbl_804E2A80:
/* 804E2A80  39 61 00 20 */	addi r11, r1, 0x20
/* 804E2A84  4B E7 F7 A5 */	bl _restgpr_29
/* 804E2A88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E2A8C  7C 08 03 A6 */	mtlr r0
/* 804E2A90  38 21 00 20 */	addi r1, r1, 0x20
/* 804E2A94  4E 80 00 20 */	blr 
