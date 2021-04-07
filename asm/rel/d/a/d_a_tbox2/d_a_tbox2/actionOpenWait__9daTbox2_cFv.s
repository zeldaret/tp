lbl_80497A18:
/* 80497A18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80497A1C  7C 08 02 A6 */	mflr r0
/* 80497A20  90 01 00 24 */	stw r0, 0x24(r1)
/* 80497A24  39 61 00 20 */	addi r11, r1, 0x20
/* 80497A28  4B EC A7 B1 */	bl _savegpr_28
/* 80497A2C  7C 7E 1B 78 */	mr r30, r3
/* 80497A30  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 80497A34  83 E4 10 18 */	lwz r31, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 80497A38  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80497A3C  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80497A40  83 9D 5D AC */	lwz r28, 0x5dac(r29)
/* 80497A44  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80497A48  28 00 00 03 */	cmplwi r0, 3
/* 80497A4C  40 82 00 D4 */	bne lbl_80497B20
/* 80497A50  A0 1D 4F A0 */	lhz r0, 0x4fa0(r29)
/* 80497A54  60 00 00 04 */	ori r0, r0, 4
/* 80497A58  B0 1D 4F A0 */	sth r0, 0x4fa0(r29)
/* 80497A5C  88 1E 0A BC */	lbz r0, 0xabc(r30)
/* 80497A60  28 00 00 00 */	cmplwi r0, 0
/* 80497A64  41 82 00 60 */	beq lbl_80497AC4
/* 80497A68  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 80497A6C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80497A70  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80497A74  41 82 00 50 */	beq lbl_80497AC4
/* 80497A78  7F E3 FB 78 */	mr r3, r31
/* 80497A7C  39 9F 09 D4 */	addi r12, r31, 0x9d4
/* 80497A80  4B EC A6 05 */	bl __ptmf_scall
/* 80497A84  60 00 00 00 */	nop 
/* 80497A88  2C 03 00 00 */	cmpwi r3, 0
/* 80497A8C  40 82 00 38 */	bne lbl_80497AC4
/* 80497A90  38 7D 4F F8 */	addi r3, r29, 0x4ff8
/* 80497A94  3C 80 80 4A */	lis r4, l_staff_name@ha /* 0x80498280@ha */
/* 80497A98  38 84 82 80 */	addi r4, r4, l_staff_name@l /* 0x80498280@l */
/* 80497A9C  80 84 00 00 */	lwz r4, 0(r4)
/* 80497AA0  38 A0 00 00 */	li r5, 0
/* 80497AA4  38 C0 00 00 */	li r6, 0
/* 80497AA8  4B BB 00 75 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80497AAC  90 7E 0A C4 */	stw r3, 0xac4(r30)
/* 80497AB0  7F C3 F3 78 */	mr r3, r30
/* 80497AB4  4B FF F7 99 */	bl demoProc__9daTbox2_cFv
/* 80497AB8  7F C3 F3 78 */	mr r3, r30
/* 80497ABC  4B FF FE 1D */	bl init_actionNotOpenDemo__9daTbox2_cFv
/* 80497AC0  48 00 00 F8 */	b lbl_80497BB8
lbl_80497AC4:
/* 80497AC4  7F 83 E3 78 */	mr r3, r28
/* 80497AC8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80497ACC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80497AD0  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80497AD4  81 8C 02 14 */	lwz r12, 0x214(r12)
/* 80497AD8  7D 89 03 A6 */	mtctr r12
/* 80497ADC  4E 80 04 21 */	bctrl 
/* 80497AE0  98 7E 07 18 */	stb r3, 0x718(r30)
/* 80497AE4  7F C3 F3 78 */	mr r3, r30
/* 80497AE8  48 00 00 E9 */	bl setGetDemoItem__9daTbox2_cFv
/* 80497AEC  38 7D 4F F8 */	addi r3, r29, 0x4ff8
/* 80497AF0  3C 80 80 4A */	lis r4, l_staff_name@ha /* 0x80498280@ha */
/* 80497AF4  38 84 82 80 */	addi r4, r4, l_staff_name@l /* 0x80498280@l */
/* 80497AF8  80 84 00 00 */	lwz r4, 0(r4)
/* 80497AFC  38 A0 00 00 */	li r5, 0
/* 80497B00  38 C0 00 00 */	li r6, 0
/* 80497B04  4B BB 00 19 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80497B08  90 7E 0A C4 */	stw r3, 0xac4(r30)
/* 80497B0C  7F C3 F3 78 */	mr r3, r30
/* 80497B10  4B FF F7 3D */	bl demoProc__9daTbox2_cFv
/* 80497B14  7F C3 F3 78 */	mr r3, r30
/* 80497B18  4B FF FE 35 */	bl init_actionOpenDemo__9daTbox2_cFv
/* 80497B1C  48 00 00 9C */	b lbl_80497BB8
lbl_80497B20:
/* 80497B20  48 00 01 41 */	bl boxCheck__9daTbox2_cFv
/* 80497B24  2C 03 00 00 */	cmpwi r3, 0
/* 80497B28  41 82 00 90 */	beq lbl_80497BB8
/* 80497B2C  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 80497B30  60 00 00 04 */	ori r0, r0, 4
/* 80497B34  B0 1E 00 FA */	sth r0, 0xfa(r30)
/* 80497B38  88 1E 0A BC */	lbz r0, 0xabc(r30)
/* 80497B3C  28 00 00 00 */	cmplwi r0, 0
/* 80497B40  40 82 00 1C */	bne lbl_80497B5C
/* 80497B44  38 7E 00 F4 */	addi r3, r30, 0xf4
/* 80497B48  3C 80 80 4A */	lis r4, d_a_tbox2__stringBase0@ha /* 0x804981E0@ha */
/* 80497B4C  38 84 81 E0 */	addi r4, r4, d_a_tbox2__stringBase0@l /* 0x804981E0@l */
/* 80497B50  38 84 00 2B */	addi r4, r4, 0x2b
/* 80497B54  4B BA B8 D5 */	bl setEventName__11dEvt_info_cFPc
/* 80497B58  48 00 00 60 */	b lbl_80497BB8
lbl_80497B5C:
/* 80497B5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80497B60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80497B64  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80497B68  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80497B6C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80497B70  41 82 00 34 */	beq lbl_80497BA4
/* 80497B74  7F E3 FB 78 */	mr r3, r31
/* 80497B78  39 9F 09 D4 */	addi r12, r31, 0x9d4
/* 80497B7C  4B EC A5 09 */	bl __ptmf_scall
/* 80497B80  60 00 00 00 */	nop 
/* 80497B84  2C 03 00 00 */	cmpwi r3, 0
/* 80497B88  40 82 00 1C */	bne lbl_80497BA4
/* 80497B8C  38 7E 00 F4 */	addi r3, r30, 0xf4
/* 80497B90  3C 80 80 4A */	lis r4, d_a_tbox2__stringBase0@ha /* 0x804981E0@ha */
/* 80497B94  38 84 81 E0 */	addi r4, r4, d_a_tbox2__stringBase0@l /* 0x804981E0@l */
/* 80497B98  38 84 00 43 */	addi r4, r4, 0x43
/* 80497B9C  4B BA B8 8D */	bl setEventName__11dEvt_info_cFPc
/* 80497BA0  48 00 00 18 */	b lbl_80497BB8
lbl_80497BA4:
/* 80497BA4  38 7E 00 F4 */	addi r3, r30, 0xf4
/* 80497BA8  3C 80 80 4A */	lis r4, d_a_tbox2__stringBase0@ha /* 0x804981E0@ha */
/* 80497BAC  38 84 81 E0 */	addi r4, r4, d_a_tbox2__stringBase0@l /* 0x804981E0@l */
/* 80497BB0  38 84 00 5C */	addi r4, r4, 0x5c
/* 80497BB4  4B BA B8 75 */	bl setEventName__11dEvt_info_cFPc
lbl_80497BB8:
/* 80497BB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80497BBC  4B EC A6 69 */	bl _restgpr_28
/* 80497BC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80497BC4  7C 08 03 A6 */	mtlr r0
/* 80497BC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80497BCC  4E 80 00 20 */	blr 
