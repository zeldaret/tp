lbl_80044CB8:
/* 80044CB8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80044CBC  7C 08 02 A6 */	mflr r0
/* 80044CC0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80044CC4  39 61 00 40 */	addi r11, r1, 0x40
/* 80044CC8  48 31 D5 11 */	bl _savegpr_28
/* 80044CCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80044CD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80044CD4  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80044CD8  7F C3 F3 78 */	mr r3, r30
/* 80044CDC  3C 80 80 38 */	lis r4, d_event_d_event_data__stringBase0@ha
/* 80044CE0  38 84 9D D0 */	addi r4, r4, d_event_d_event_data__stringBase0@l
/* 80044CE4  38 84 00 76 */	addi r4, r4, 0x76
/* 80044CE8  38 A0 00 00 */	li r5, 0
/* 80044CEC  38 C0 00 00 */	li r6, 0
/* 80044CF0  48 00 2E 2D */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80044CF4  7C 7F 1B 78 */	mr r31, r3
/* 80044CF8  2C 1F FF FF */	cmpwi r31, -1
/* 80044CFC  41 82 01 D0 */	beq lbl_80044ECC
/* 80044D00  7F C3 F3 78 */	mr r3, r30
/* 80044D04  7F E4 FB 78 */	mr r4, r31
/* 80044D08  48 00 32 55 */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80044D0C  7C 7D 1B 78 */	mr r29, r3
/* 80044D10  7F C3 F3 78 */	mr r3, r30
/* 80044D14  7F E4 FB 78 */	mr r4, r31
/* 80044D18  48 00 30 35 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80044D1C  2C 03 00 00 */	cmpwi r3, 0
/* 80044D20  41 82 01 AC */	beq lbl_80044ECC
/* 80044D24  80 9D 00 00 */	lwz r4, 0(r29)
/* 80044D28  3C 60 57 41 */	lis r3, 0x5741 /* 0x57414954@ha */
/* 80044D2C  38 03 49 54 */	addi r0, r3, 0x4954 /* 0x57414954@l */
/* 80044D30  7C 04 00 00 */	cmpw r4, r0
/* 80044D34  41 82 01 98 */	beq lbl_80044ECC
/* 80044D38  40 80 01 94 */	bge lbl_80044ECC
/* 80044D3C  3C 60 43 52 */	lis r3, 0x4352 /* 0x43524541@ha */
/* 80044D40  38 03 45 41 */	addi r0, r3, 0x4541 /* 0x43524541@l */
/* 80044D44  7C 04 00 00 */	cmpw r4, r0
/* 80044D48  41 82 00 08 */	beq lbl_80044D50
/* 80044D4C  48 00 01 80 */	b lbl_80044ECC
lbl_80044D50:
/* 80044D50  7F C3 F3 78 */	mr r3, r30
/* 80044D54  7F E4 FB 78 */	mr r4, r31
/* 80044D58  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80044D5C  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80044D60  38 A5 00 7E */	addi r5, r5, 0x7e
/* 80044D64  38 C0 00 04 */	li r6, 4
/* 80044D68  48 00 33 85 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80044D6C  4B FE 00 55 */	bl dStage_searchName__FPCc
/* 80044D70  7C 7D 1B 78 */	mr r29, r3
/* 80044D74  7F C3 F3 78 */	mr r3, r30
/* 80044D78  7F E4 FB 78 */	mr r4, r31
/* 80044D7C  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80044D80  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80044D84  38 A5 00 87 */	addi r5, r5, 0x87
/* 80044D88  38 C0 00 03 */	li r6, 3
/* 80044D8C  48 00 33 61 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80044D90  28 03 00 00 */	cmplwi r3, 0
/* 80044D94  40 82 00 0C */	bne lbl_80044DA0
/* 80044D98  3B 80 FF FF */	li r28, -1
/* 80044D9C  48 00 00 08 */	b lbl_80044DA4
lbl_80044DA0:
/* 80044DA0  83 83 00 00 */	lwz r28, 0(r3)
lbl_80044DA4:
/* 80044DA4  7F C3 F3 78 */	mr r3, r30
/* 80044DA8  7F E4 FB 78 */	mr r4, r31
/* 80044DAC  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80044DB0  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80044DB4  38 A5 00 8B */	addi r5, r5, 0x8b
/* 80044DB8  38 C0 00 01 */	li r6, 1
/* 80044DBC  48 00 33 31 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80044DC0  28 03 00 00 */	cmplwi r3, 0
/* 80044DC4  40 82 00 2C */	bne lbl_80044DF0
/* 80044DC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80044DCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80044DD0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80044DD4  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80044DD8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80044DDC  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80044DE0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80044DE4  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80044DE8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80044DEC  48 00 00 1C */	b lbl_80044E08
lbl_80044DF0:
/* 80044DF0  C0 03 00 00 */	lfs f0, 0(r3)
/* 80044DF4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80044DF8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80044DFC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80044E00  C0 03 00 08 */	lfs f0, 8(r3)
/* 80044E04  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_80044E08:
/* 80044E08  7F C3 F3 78 */	mr r3, r30
/* 80044E0C  7F E4 FB 78 */	mr r4, r31
/* 80044E10  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80044E14  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80044E18  38 A5 00 8F */	addi r5, r5, 0x8f
/* 80044E1C  38 C0 00 03 */	li r6, 3
/* 80044E20  48 00 32 CD */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80044E24  28 03 00 00 */	cmplwi r3, 0
/* 80044E28  40 82 00 18 */	bne lbl_80044E40
/* 80044E2C  38 00 00 00 */	li r0, 0
/* 80044E30  B0 01 00 08 */	sth r0, 8(r1)
/* 80044E34  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80044E38  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80044E3C  48 00 00 1C */	b lbl_80044E58
lbl_80044E40:
/* 80044E40  80 A3 00 08 */	lwz r5, 8(r3)
/* 80044E44  80 83 00 04 */	lwz r4, 4(r3)
/* 80044E48  80 03 00 00 */	lwz r0, 0(r3)
/* 80044E4C  B0 01 00 08 */	sth r0, 8(r1)
/* 80044E50  B0 81 00 0A */	sth r4, 0xa(r1)
/* 80044E54  B0 A1 00 0C */	sth r5, 0xc(r1)
lbl_80044E58:
/* 80044E58  7F C3 F3 78 */	mr r3, r30
/* 80044E5C  7F E4 FB 78 */	mr r4, r31
/* 80044E60  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80044E64  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80044E68  38 A5 00 95 */	addi r5, r5, 0x95
/* 80044E6C  38 C0 00 01 */	li r6, 1
/* 80044E70  48 00 32 7D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80044E74  28 03 00 00 */	cmplwi r3, 0
/* 80044E78  40 82 00 18 */	bne lbl_80044E90
/* 80044E7C  C0 02 84 F0 */	lfs f0, lit_4668(r2)
/* 80044E80  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80044E84  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80044E88  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80044E8C  48 00 00 1C */	b lbl_80044EA8
lbl_80044E90:
/* 80044E90  C0 03 00 00 */	lfs f0, 0(r3)
/* 80044E94  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80044E98  C0 03 00 04 */	lfs f0, 4(r3)
/* 80044E9C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80044EA0  C0 03 00 08 */	lfs f0, 8(r3)
/* 80044EA4  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_80044EA8:
/* 80044EA8  A8 7D 00 08 */	lha r3, 8(r29)
/* 80044EAC  7F 84 E3 78 */	mr r4, r28
/* 80044EB0  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80044EB4  88 CD 87 E4 */	lbz r6, struct_80450D64+0x0(r13)
/* 80044EB8  7C C6 07 74 */	extsb r6, r6
/* 80044EBC  38 E1 00 08 */	addi r7, r1, 8
/* 80044EC0  39 01 00 10 */	addi r8, r1, 0x10
/* 80044EC4  89 3D 00 0A */	lbz r9, 0xa(r29)
/* 80044EC8  4B FD 4E D1 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
lbl_80044ECC:
/* 80044ECC  39 61 00 40 */	addi r11, r1, 0x40
/* 80044ED0  48 31 D3 55 */	bl _restgpr_28
/* 80044ED4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80044ED8  7C 08 03 A6 */	mtlr r0
/* 80044EDC  38 21 00 40 */	addi r1, r1, 0x40
/* 80044EE0  4E 80 00 20 */	blr 
