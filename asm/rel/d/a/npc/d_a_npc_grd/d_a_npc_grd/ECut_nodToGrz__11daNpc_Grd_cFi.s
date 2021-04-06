lbl_809D2C9C:
/* 809D2C9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809D2CA0  7C 08 02 A6 */	mflr r0
/* 809D2CA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D2CA8  39 61 00 20 */	addi r11, r1, 0x20
/* 809D2CAC  4B 98 F5 25 */	bl _savegpr_26
/* 809D2CB0  7C 7D 1B 78 */	mr r29, r3
/* 809D2CB4  7C 9A 23 78 */	mr r26, r4
/* 809D2CB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809D2CBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809D2CC0  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 809D2CC4  3B E0 00 00 */	li r31, 0
/* 809D2CC8  3B C0 FF FF */	li r30, -1
/* 809D2CCC  3B 60 00 00 */	li r27, 0
/* 809D2CD0  7F 83 E3 78 */	mr r3, r28
/* 809D2CD4  3C A0 80 9D */	lis r5, d_a_npc_grd__stringBase0@ha /* 0x809D3BF4@ha */
/* 809D2CD8  38 A5 3B F4 */	addi r5, r5, d_a_npc_grd__stringBase0@l /* 0x809D3BF4@l */
/* 809D2CDC  38 A5 00 15 */	addi r5, r5, 0x15
/* 809D2CE0  38 C0 00 03 */	li r6, 3
/* 809D2CE4  4B 67 54 09 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809D2CE8  28 03 00 00 */	cmplwi r3, 0
/* 809D2CEC  41 82 00 08 */	beq lbl_809D2CF4
/* 809D2CF0  83 C3 00 00 */	lwz r30, 0(r3)
lbl_809D2CF4:
/* 809D2CF4  7F 83 E3 78 */	mr r3, r28
/* 809D2CF8  7F 44 D3 78 */	mr r4, r26
/* 809D2CFC  3C A0 80 9D */	lis r5, d_a_npc_grd__stringBase0@ha /* 0x809D3BF4@ha */
/* 809D2D00  38 A5 3B F4 */	addi r5, r5, d_a_npc_grd__stringBase0@l /* 0x809D3BF4@l */
/* 809D2D04  38 A5 00 19 */	addi r5, r5, 0x19
/* 809D2D08  38 C0 00 03 */	li r6, 3
/* 809D2D0C  4B 67 53 E1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809D2D10  28 03 00 00 */	cmplwi r3, 0
/* 809D2D14  41 82 00 08 */	beq lbl_809D2D1C
/* 809D2D18  83 63 00 00 */	lwz r27, 0(r3)
lbl_809D2D1C:
/* 809D2D1C  7F 83 E3 78 */	mr r3, r28
/* 809D2D20  7F 44 D3 78 */	mr r4, r26
/* 809D2D24  4B 67 50 29 */	bl getIsAddvance__16dEvent_manager_cFi
/* 809D2D28  2C 03 00 00 */	cmpwi r3, 0
/* 809D2D2C  41 82 00 FC */	beq lbl_809D2E28
/* 809D2D30  2C 1E 00 14 */	cmpwi r30, 0x14
/* 809D2D34  41 82 00 3C */	beq lbl_809D2D70
/* 809D2D38  40 80 00 20 */	bge lbl_809D2D58
/* 809D2D3C  2C 1E 00 0A */	cmpwi r30, 0xa
/* 809D2D40  41 82 00 60 */	beq lbl_809D2DA0
/* 809D2D44  40 80 00 E4 */	bge lbl_809D2E28
/* 809D2D48  2C 1E 00 00 */	cmpwi r30, 0
/* 809D2D4C  41 82 00 24 */	beq lbl_809D2D70
/* 809D2D50  48 00 00 D8 */	b lbl_809D2E28
/* 809D2D54  48 00 00 D4 */	b lbl_809D2E28
lbl_809D2D58:
/* 809D2D58  2C 1E 00 63 */	cmpwi r30, 0x63
/* 809D2D5C  41 82 00 70 */	beq lbl_809D2DCC
/* 809D2D60  40 80 00 C8 */	bge lbl_809D2E28
/* 809D2D64  2C 1E 00 1E */	cmpwi r30, 0x1e
/* 809D2D68  41 82 00 64 */	beq lbl_809D2DCC
/* 809D2D6C  48 00 00 BC */	b lbl_809D2E28
lbl_809D2D70:
/* 809D2D70  3C 60 80 9D */	lis r3, s_sub2__FPvPv@ha /* 0x809D2C50@ha */
/* 809D2D74  38 63 2C 50 */	addi r3, r3, s_sub2__FPvPv@l /* 0x809D2C50@l */
/* 809D2D78  7F A4 EB 78 */	mr r4, r29
/* 809D2D7C  4B 64 E5 BD */	bl fpcEx_Search__FPFPvPv_PvPv
/* 809D2D80  7C 64 1B 78 */	mr r4, r3
/* 809D2D84  38 7D 0C 88 */	addi r3, r29, 0xc88
/* 809D2D88  4B 77 D9 35 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809D2D8C  7F A3 EB 78 */	mr r3, r29
/* 809D2D90  38 80 00 00 */	li r4, 0
/* 809D2D94  4B FF F6 DD */	bl setLookMode__11daNpc_Grd_cFi
/* 809D2D98  93 7D 09 60 */	stw r27, 0x960(r29)
/* 809D2D9C  48 00 00 8C */	b lbl_809D2E28
lbl_809D2DA0:
/* 809D2DA0  3C 60 80 9D */	lis r3, s_sub1__FPvPv@ha /* 0x809D2C04@ha */
/* 809D2DA4  38 63 2C 04 */	addi r3, r3, s_sub1__FPvPv@l /* 0x809D2C04@l */
/* 809D2DA8  7F A4 EB 78 */	mr r4, r29
/* 809D2DAC  4B 64 E5 8D */	bl fpcEx_Search__FPFPvPv_PvPv
/* 809D2DB0  7C 64 1B 78 */	mr r4, r3
/* 809D2DB4  38 7D 0C 88 */	addi r3, r29, 0xc88
/* 809D2DB8  4B 77 D9 05 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809D2DBC  7F A3 EB 78 */	mr r3, r29
/* 809D2DC0  38 80 00 05 */	li r4, 5
/* 809D2DC4  4B FF F6 AD */	bl setLookMode__11daNpc_Grd_cFi
/* 809D2DC8  48 00 00 60 */	b lbl_809D2E28
lbl_809D2DCC:
/* 809D2DCC  7F A3 EB 78 */	mr r3, r29
/* 809D2DD0  38 80 00 03 */	li r4, 3
/* 809D2DD4  3C A0 80 9D */	lis r5, lit_4451@ha /* 0x809D3A84@ha */
/* 809D2DD8  C0 25 3A 84 */	lfs f1, lit_4451@l(r5)  /* 0x809D3A84@l */
/* 809D2DDC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809D2DE0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809D2DE4  7D 89 03 A6 */	mtctr r12
/* 809D2DE8  4E 80 04 21 */	bctrl 
/* 809D2DEC  7F A3 EB 78 */	mr r3, r29
/* 809D2DF0  38 80 00 00 */	li r4, 0
/* 809D2DF4  3C A0 80 9D */	lis r5, lit_4451@ha /* 0x809D3A84@ha */
/* 809D2DF8  C0 25 3A 84 */	lfs f1, lit_4451@l(r5)  /* 0x809D3A84@l */
/* 809D2DFC  38 A0 00 01 */	li r5, 1
/* 809D2E00  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809D2E04  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809D2E08  7D 89 03 A6 */	mtctr r12
/* 809D2E0C  4E 80 04 21 */	bctrl 
/* 809D2E10  7F A3 EB 78 */	mr r3, r29
/* 809D2E14  38 80 00 01 */	li r4, 1
/* 809D2E18  4B FF F6 59 */	bl setLookMode__11daNpc_Grd_cFi
/* 809D2E1C  7F A3 EB 78 */	mr r3, r29
/* 809D2E20  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 809D2E24  4B 78 14 2D */	bl setAngle__8daNpcF_cFs
lbl_809D2E28:
/* 809D2E28  2C 1E 00 14 */	cmpwi r30, 0x14
/* 809D2E2C  41 82 00 44 */	beq lbl_809D2E70
/* 809D2E30  40 80 00 28 */	bge lbl_809D2E58
/* 809D2E34  2C 1E 00 0A */	cmpwi r30, 0xa
/* 809D2E38  41 82 01 34 */	beq lbl_809D2F6C
/* 809D2E3C  40 80 00 10 */	bge lbl_809D2E4C
/* 809D2E40  2C 1E 00 00 */	cmpwi r30, 0
/* 809D2E44  41 82 00 2C */	beq lbl_809D2E70
/* 809D2E48  48 00 01 F0 */	b lbl_809D3038
lbl_809D2E4C:
/* 809D2E4C  2C 1E 00 0C */	cmpwi r30, 0xc
/* 809D2E50  40 80 01 E8 */	bge lbl_809D3038
/* 809D2E54  48 00 01 DC */	b lbl_809D3030
lbl_809D2E58:
/* 809D2E58  2C 1E 00 63 */	cmpwi r30, 0x63
/* 809D2E5C  41 82 01 D4 */	beq lbl_809D3030
/* 809D2E60  40 80 01 D8 */	bge lbl_809D3038
/* 809D2E64  2C 1E 00 1E */	cmpwi r30, 0x1e
/* 809D2E68  41 82 01 C8 */	beq lbl_809D3030
/* 809D2E6C  48 00 01 CC */	b lbl_809D3038
lbl_809D2E70:
/* 809D2E70  38 7D 09 60 */	addi r3, r29, 0x960
/* 809D2E74  48 00 0A 7D */	bl func_809D38F0
/* 809D2E78  2C 03 00 00 */	cmpwi r3, 0
/* 809D2E7C  40 82 01 C0 */	bne lbl_809D303C
/* 809D2E80  38 7D 0C 88 */	addi r3, r29, 0xc88
/* 809D2E84  4B 77 D8 69 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809D2E88  7C 7C 1B 78 */	mr r28, r3
/* 809D2E8C  2C 1E 00 14 */	cmpwi r30, 0x14
/* 809D2E90  40 82 00 10 */	bne lbl_809D2EA0
/* 809D2E94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809D2E98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809D2E9C  83 83 5D AC */	lwz r28, 0x5dac(r3)
lbl_809D2EA0:
/* 809D2EA0  7F A3 EB 78 */	mr r3, r29
/* 809D2EA4  38 80 00 05 */	li r4, 5
/* 809D2EA8  4B FF F5 C9 */	bl setLookMode__11daNpc_Grd_cFi
/* 809D2EAC  2C 1E 00 14 */	cmpwi r30, 0x14
/* 809D2EB0  40 82 00 10 */	bne lbl_809D2EC0
/* 809D2EB4  7F A3 EB 78 */	mr r3, r29
/* 809D2EB8  38 80 00 02 */	li r4, 2
/* 809D2EBC  4B FF F5 B5 */	bl setLookMode__11daNpc_Grd_cFi
lbl_809D2EC0:
/* 809D2EC0  7F A3 EB 78 */	mr r3, r29
/* 809D2EC4  7F 84 E3 78 */	mr r4, r28
/* 809D2EC8  4B 64 78 49 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809D2ECC  7C 7B 1B 78 */	mr r27, r3
/* 809D2ED0  7F 63 07 34 */	extsh r3, r27
/* 809D2ED4  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 809D2ED8  7C 03 00 00 */	cmpw r3, r0
/* 809D2EDC  40 82 00 14 */	bne lbl_809D2EF0
/* 809D2EE0  38 00 00 00 */	li r0, 0
/* 809D2EE4  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 809D2EE8  3B E0 00 01 */	li r31, 1
/* 809D2EEC  48 00 00 70 */	b lbl_809D2F5C
lbl_809D2EF0:
/* 809D2EF0  7F A3 EB 78 */	mr r3, r29
/* 809D2EF4  7F 64 DB 78 */	mr r4, r27
/* 809D2EF8  38 A0 00 03 */	li r5, 3
/* 809D2EFC  38 C0 00 05 */	li r6, 5
/* 809D2F00  38 E0 00 0F */	li r7, 0xf
/* 809D2F04  4B 78 11 A1 */	bl step__8daNpcF_cFsiii
/* 809D2F08  2C 03 00 00 */	cmpwi r3, 0
/* 809D2F0C  41 82 00 50 */	beq lbl_809D2F5C
/* 809D2F10  38 00 00 00 */	li r0, 0
/* 809D2F14  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 809D2F18  7F A3 EB 78 */	mr r3, r29
/* 809D2F1C  38 80 00 00 */	li r4, 0
/* 809D2F20  3C A0 80 9D */	lis r5, lit_4710@ha /* 0x809D3A94@ha */
/* 809D2F24  C0 25 3A 94 */	lfs f1, lit_4710@l(r5)  /* 0x809D3A94@l */
/* 809D2F28  38 A0 00 00 */	li r5, 0
/* 809D2F2C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809D2F30  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809D2F34  7D 89 03 A6 */	mtctr r12
/* 809D2F38  4E 80 04 21 */	bctrl 
/* 809D2F3C  7F A3 EB 78 */	mr r3, r29
/* 809D2F40  38 80 00 03 */	li r4, 3
/* 809D2F44  3C A0 80 9D */	lis r5, lit_4710@ha /* 0x809D3A94@ha */
/* 809D2F48  C0 25 3A 94 */	lfs f1, lit_4710@l(r5)  /* 0x809D3A94@l */
/* 809D2F4C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809D2F50  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809D2F54  7D 89 03 A6 */	mtctr r12
/* 809D2F58  4E 80 04 21 */	bctrl 
lbl_809D2F5C:
/* 809D2F5C  2C 1E 00 14 */	cmpwi r30, 0x14
/* 809D2F60  40 82 00 DC */	bne lbl_809D303C
/* 809D2F64  B3 7D 04 E6 */	sth r27, 0x4e6(r29)
/* 809D2F68  48 00 00 D4 */	b lbl_809D303C
lbl_809D2F6C:
/* 809D2F6C  38 7D 0C 88 */	addi r3, r29, 0xc88
/* 809D2F70  4B 77 D7 7D */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809D2F74  7C 64 1B 78 */	mr r4, r3
/* 809D2F78  7F A3 EB 78 */	mr r3, r29
/* 809D2F7C  4B 64 77 95 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809D2F80  7C 7C 1B 78 */	mr r28, r3
/* 809D2F84  7F 83 07 34 */	extsh r3, r28
/* 809D2F88  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 809D2F8C  7C 03 00 00 */	cmpw r3, r0
/* 809D2F90  40 82 00 2C */	bne lbl_809D2FBC
/* 809D2F94  38 00 00 00 */	li r0, 0
/* 809D2F98  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 809D2F9C  A8 1D 09 E0 */	lha r0, 0x9e0(r29)
/* 809D2FA0  2C 00 00 04 */	cmpwi r0, 4
/* 809D2FA4  40 82 00 84 */	bne lbl_809D3028
/* 809D2FA8  A8 1D 09 DA */	lha r0, 0x9da(r29)
/* 809D2FAC  2C 00 00 00 */	cmpwi r0, 0
/* 809D2FB0  40 81 00 78 */	ble lbl_809D3028
/* 809D2FB4  3B E0 00 01 */	li r31, 1
/* 809D2FB8  48 00 00 70 */	b lbl_809D3028
lbl_809D2FBC:
/* 809D2FBC  7F A3 EB 78 */	mr r3, r29
/* 809D2FC0  7F 84 E3 78 */	mr r4, r28
/* 809D2FC4  38 A0 00 03 */	li r5, 3
/* 809D2FC8  38 C0 00 05 */	li r6, 5
/* 809D2FCC  38 E0 00 0F */	li r7, 0xf
/* 809D2FD0  4B 78 10 D5 */	bl step__8daNpcF_cFsiii
/* 809D2FD4  2C 03 00 00 */	cmpwi r3, 0
/* 809D2FD8  41 82 00 50 */	beq lbl_809D3028
/* 809D2FDC  38 00 00 00 */	li r0, 0
/* 809D2FE0  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 809D2FE4  7F A3 EB 78 */	mr r3, r29
/* 809D2FE8  38 80 00 03 */	li r4, 3
/* 809D2FEC  3C A0 80 9D */	lis r5, lit_4710@ha /* 0x809D3A94@ha */
/* 809D2FF0  C0 25 3A 94 */	lfs f1, lit_4710@l(r5)  /* 0x809D3A94@l */
/* 809D2FF4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809D2FF8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809D2FFC  7D 89 03 A6 */	mtctr r12
/* 809D3000  4E 80 04 21 */	bctrl 
/* 809D3004  7F A3 EB 78 */	mr r3, r29
/* 809D3008  38 80 00 04 */	li r4, 4
/* 809D300C  3C A0 80 9D */	lis r5, lit_4710@ha /* 0x809D3A94@ha */
/* 809D3010  C0 25 3A 94 */	lfs f1, lit_4710@l(r5)  /* 0x809D3A94@l */
/* 809D3014  38 A0 00 00 */	li r5, 0
/* 809D3018  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809D301C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809D3020  7D 89 03 A6 */	mtctr r12
/* 809D3024  4E 80 04 21 */	bctrl 
lbl_809D3028:
/* 809D3028  B3 9D 04 E6 */	sth r28, 0x4e6(r29)
/* 809D302C  48 00 00 10 */	b lbl_809D303C
lbl_809D3030:
/* 809D3030  3B E0 00 01 */	li r31, 1
/* 809D3034  48 00 00 08 */	b lbl_809D303C
lbl_809D3038:
/* 809D3038  3B E0 00 01 */	li r31, 1
lbl_809D303C:
/* 809D303C  7F E3 FB 78 */	mr r3, r31
/* 809D3040  39 61 00 20 */	addi r11, r1, 0x20
/* 809D3044  4B 98 F1 D9 */	bl _restgpr_26
/* 809D3048  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D304C  7C 08 03 A6 */	mtlr r0
/* 809D3050  38 21 00 20 */	addi r1, r1, 0x20
/* 809D3054  4E 80 00 20 */	blr 
