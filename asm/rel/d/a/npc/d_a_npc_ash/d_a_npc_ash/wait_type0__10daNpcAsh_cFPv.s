lbl_80959C40:
/* 80959C40  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80959C44  7C 08 02 A6 */	mflr r0
/* 80959C48  90 01 00 64 */	stw r0, 0x64(r1)
/* 80959C4C  39 61 00 60 */	addi r11, r1, 0x60
/* 80959C50  4B A0 85 7D */	bl _savegpr_25
/* 80959C54  7C 7B 1B 78 */	mr r27, r3
/* 80959C58  3C 80 80 96 */	lis r4, cNullVec__6Z2Calc@ha /* 0x8095D990@ha */
/* 80959C5C  3B A4 D9 90 */	addi r29, r4, cNullVec__6Z2Calc@l /* 0x8095D990@l */
/* 80959C60  3C 80 80 96 */	lis r4, m__16daNpcAsh_Param_c@ha /* 0x8095D640@ha */
/* 80959C64  3B C4 D6 40 */	addi r30, r4, m__16daNpcAsh_Param_c@l /* 0x8095D640@l */
/* 80959C68  A0 03 0F 5C */	lhz r0, 0xf5c(r3)
/* 80959C6C  2C 00 00 02 */	cmpwi r0, 2
/* 80959C70  41 82 00 D0 */	beq lbl_80959D40
/* 80959C74  40 80 09 EC */	bge lbl_8095A660
/* 80959C78  2C 00 00 00 */	cmpwi r0, 0
/* 80959C7C  41 82 00 0C */	beq lbl_80959C88
/* 80959C80  48 00 09 E0 */	b lbl_8095A660
/* 80959C84  48 00 09 DC */	b lbl_8095A660
lbl_80959C88:
/* 80959C88  38 80 00 07 */	li r4, 7
/* 80959C8C  C0 3E 02 44 */	lfs f1, 0x244(r30)
/* 80959C90  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80959C94  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80959C98  7D 89 03 A6 */	mtctr r12
/* 80959C9C  4E 80 04 21 */	bctrl 
/* 80959CA0  3B 40 00 00 */	li r26, 0
/* 80959CA4  38 60 01 0C */	li r3, 0x10c
/* 80959CA8  4B 7F B9 8D */	bl daNpcF_chkEvtBit__FUl
/* 80959CAC  2C 03 00 00 */	cmpwi r3, 0
/* 80959CB0  40 82 00 14 */	bne lbl_80959CC4
/* 80959CB4  38 60 01 08 */	li r3, 0x108
/* 80959CB8  4B 7F B9 7D */	bl daNpcF_chkEvtBit__FUl
/* 80959CBC  2C 03 00 00 */	cmpwi r3, 0
/* 80959CC0  40 82 00 08 */	bne lbl_80959CC8
lbl_80959CC4:
/* 80959CC4  3B 40 00 01 */	li r26, 1
lbl_80959CC8:
/* 80959CC8  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80959CCC  41 82 00 28 */	beq lbl_80959CF4
/* 80959CD0  7F 63 DB 78 */	mr r3, r27
/* 80959CD4  38 80 00 00 */	li r4, 0
/* 80959CD8  C0 3E 02 44 */	lfs f1, 0x244(r30)
/* 80959CDC  38 A0 00 00 */	li r5, 0
/* 80959CE0  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80959CE4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80959CE8  7D 89 03 A6 */	mtctr r12
/* 80959CEC  4E 80 04 21 */	bctrl 
/* 80959CF0  48 00 00 34 */	b lbl_80959D24
lbl_80959CF4:
/* 80959CF4  A8 7B 08 F2 */	lha r3, 0x8f2(r27)
/* 80959CF8  A8 1B 04 B6 */	lha r0, 0x4b6(r27)
/* 80959CFC  7C 03 00 00 */	cmpw r3, r0
/* 80959D00  40 82 00 24 */	bne lbl_80959D24
/* 80959D04  7F 63 DB 78 */	mr r3, r27
/* 80959D08  38 80 00 01 */	li r4, 1
/* 80959D0C  C0 3E 02 44 */	lfs f1, 0x244(r30)
/* 80959D10  38 A0 00 00 */	li r5, 0
/* 80959D14  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80959D18  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80959D1C  7D 89 03 A6 */	mtctr r12
/* 80959D20  4E 80 04 21 */	bctrl 
lbl_80959D24:
/* 80959D24  38 00 00 00 */	li r0, 0
/* 80959D28  90 1B 09 6C */	stw r0, 0x96c(r27)
/* 80959D2C  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80959D30  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80959D34  38 00 00 02 */	li r0, 2
/* 80959D38  B0 1B 0F 5C */	sth r0, 0xf5c(r27)
/* 80959D3C  48 00 09 24 */	b lbl_8095A660
lbl_80959D40:
/* 80959D40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80959D44  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80959D48  3B 9F 4E 00 */	addi r28, r31, 0x4e00
/* 80959D4C  7F 83 E3 78 */	mr r3, r28
/* 80959D50  3C 80 80 96 */	lis r4, d_a_npc_ash__stringBase0@ha /* 0x8095D910@ha */
/* 80959D54  38 84 D9 10 */	addi r4, r4, d_a_npc_ash__stringBase0@l /* 0x8095D910@l */
/* 80959D58  38 84 00 6C */	addi r4, r4, 0x6c
/* 80959D5C  4B A0 EC 39 */	bl strcmp
/* 80959D60  2C 03 00 00 */	cmpwi r3, 0
/* 80959D64  40 82 00 30 */	bne lbl_80959D94
/* 80959D68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80959D6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80959D70  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80959D74  2C 00 00 05 */	cmpwi r0, 5
/* 80959D78  40 82 00 1C */	bne lbl_80959D94
/* 80959D7C  38 60 00 00 */	li r3, 0
/* 80959D80  4B 6D 2B FD */	bl getLayerNo__14dComIfG_play_cFi
/* 80959D84  2C 03 00 02 */	cmpwi r3, 2
/* 80959D88  40 82 00 0C */	bne lbl_80959D94
/* 80959D8C  38 00 00 01 */	li r0, 1
/* 80959D90  48 00 00 08 */	b lbl_80959D98
lbl_80959D94:
/* 80959D94  38 00 00 00 */	li r0, 0
lbl_80959D98:
/* 80959D98  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80959D9C  41 82 00 2C */	beq lbl_80959DC8
/* 80959DA0  A8 1B 0F 5A */	lha r0, 0xf5a(r27)
/* 80959DA4  2C 00 00 00 */	cmpwi r0, 0
/* 80959DA8  40 82 00 10 */	bne lbl_80959DB8
/* 80959DAC  80 1B 0C B0 */	lwz r0, 0xcb0(r27)
/* 80959DB0  28 00 00 00 */	cmplwi r0, 0
/* 80959DB4  41 82 04 78 */	beq lbl_8095A22C
lbl_80959DB8:
/* 80959DB8  38 00 00 00 */	li r0, 0
/* 80959DBC  B0 1B 0F 5A */	sth r0, 0xf5a(r27)
/* 80959DC0  90 1B 0C B0 */	stw r0, 0xcb0(r27)
/* 80959DC4  48 00 04 68 */	b lbl_8095A22C
lbl_80959DC8:
/* 80959DC8  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80959DCC  4B 7F 69 21 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80959DD0  28 03 00 00 */	cmplwi r3, 0
/* 80959DD4  41 82 00 B0 */	beq lbl_80959E84
/* 80959DD8  7F 63 DB 78 */	mr r3, r27
/* 80959DDC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80959DE0  3B 44 61 C0 */	addi r26, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80959DE4  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80959DE8  38 BE 00 00 */	addi r5, r30, 0
/* 80959DEC  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 80959DF0  4B 7F 9C 01 */	bl chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 80959DF4  2C 03 00 00 */	cmpwi r3, 0
/* 80959DF8  40 82 00 14 */	bne lbl_80959E0C
/* 80959DFC  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80959E00  4B 7F 68 E1 */	bl remove__18daNpcF_ActorMngr_cFv
/* 80959E04  3B 20 00 00 */	li r25, 0
/* 80959E08  48 00 00 68 */	b lbl_80959E70
lbl_80959E0C:
/* 80959E0C  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80959E10  4B 7F 68 DD */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80959E14  28 03 00 00 */	cmplwi r3, 0
/* 80959E18  40 82 00 20 */	bne lbl_80959E38
/* 80959E1C  7F 63 DB 78 */	mr r3, r27
/* 80959E20  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80959E24  7F 65 DB 78 */	mr r5, r27
/* 80959E28  88 DB 05 47 */	lbz r6, 0x547(r27)
/* 80959E2C  4B 7F 9D B1 */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80959E30  7C 79 1B 78 */	mr r25, r3
/* 80959E34  48 00 00 1C */	b lbl_80959E50
lbl_80959E38:
/* 80959E38  7F 63 DB 78 */	mr r3, r27
/* 80959E3C  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80959E40  7F 65 DB 78 */	mr r5, r27
/* 80959E44  88 DB 05 45 */	lbz r6, 0x545(r27)
/* 80959E48  4B 7F 9D 95 */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80959E4C  7C 79 1B 78 */	mr r25, r3
lbl_80959E50:
/* 80959E50  2C 19 00 00 */	cmpwi r25, 0
/* 80959E54  41 82 00 14 */	beq lbl_80959E68
/* 80959E58  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80959E5C  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80959E60  4B 7F 68 5D */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80959E64  48 00 00 0C */	b lbl_80959E70
lbl_80959E68:
/* 80959E68  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80959E6C  4B 7F 68 75 */	bl remove__18daNpcF_ActorMngr_cFv
lbl_80959E70:
/* 80959E70  2C 19 00 00 */	cmpwi r25, 0
/* 80959E74  40 82 00 B8 */	bne lbl_80959F2C
/* 80959E78  38 00 00 00 */	li r0, 0
/* 80959E7C  90 1B 09 6C */	stw r0, 0x96c(r27)
/* 80959E80  48 00 00 AC */	b lbl_80959F2C
lbl_80959E84:
/* 80959E84  7F 63 DB 78 */	mr r3, r27
/* 80959E88  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80959E8C  3B 44 61 C0 */	addi r26, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80959E90  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80959E94  38 BE 00 00 */	addi r5, r30, 0
/* 80959E98  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 80959E9C  4B 7F 9B 55 */	bl chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 80959EA0  2C 03 00 00 */	cmpwi r3, 0
/* 80959EA4  40 82 00 14 */	bne lbl_80959EB8
/* 80959EA8  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80959EAC  4B 7F 68 35 */	bl remove__18daNpcF_ActorMngr_cFv
/* 80959EB0  3B 20 00 00 */	li r25, 0
/* 80959EB4  48 00 00 68 */	b lbl_80959F1C
lbl_80959EB8:
/* 80959EB8  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80959EBC  4B 7F 68 31 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80959EC0  28 03 00 00 */	cmplwi r3, 0
/* 80959EC4  40 82 00 20 */	bne lbl_80959EE4
/* 80959EC8  7F 63 DB 78 */	mr r3, r27
/* 80959ECC  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80959ED0  7F 65 DB 78 */	mr r5, r27
/* 80959ED4  88 DB 05 47 */	lbz r6, 0x547(r27)
/* 80959ED8  4B 7F 9D 05 */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80959EDC  7C 79 1B 78 */	mr r25, r3
/* 80959EE0  48 00 00 1C */	b lbl_80959EFC
lbl_80959EE4:
/* 80959EE4  7F 63 DB 78 */	mr r3, r27
/* 80959EE8  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80959EEC  7F 65 DB 78 */	mr r5, r27
/* 80959EF0  88 DB 05 45 */	lbz r6, 0x545(r27)
/* 80959EF4  4B 7F 9C E9 */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80959EF8  7C 79 1B 78 */	mr r25, r3
lbl_80959EFC:
/* 80959EFC  2C 19 00 00 */	cmpwi r25, 0
/* 80959F00  41 82 00 14 */	beq lbl_80959F14
/* 80959F04  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80959F08  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80959F0C  4B 7F 67 B1 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80959F10  48 00 00 0C */	b lbl_80959F1C
lbl_80959F14:
/* 80959F14  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80959F18  4B 7F 67 C9 */	bl remove__18daNpcF_ActorMngr_cFv
lbl_80959F1C:
/* 80959F1C  2C 19 00 00 */	cmpwi r25, 0
/* 80959F20  41 82 00 0C */	beq lbl_80959F2C
/* 80959F24  38 00 00 00 */	li r0, 0
/* 80959F28  90 1B 09 6C */	stw r0, 0x96c(r27)
lbl_80959F2C:
/* 80959F2C  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80959F30  4B 7F 67 BD */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80959F34  28 03 00 00 */	cmplwi r3, 0
/* 80959F38  41 82 00 30 */	beq lbl_80959F68
/* 80959F3C  A8 1B 0F 5A */	lha r0, 0xf5a(r27)
/* 80959F40  2C 00 00 02 */	cmpwi r0, 2
/* 80959F44  40 82 00 10 */	bne lbl_80959F54
/* 80959F48  80 1B 0C B0 */	lwz r0, 0xcb0(r27)
/* 80959F4C  28 00 00 00 */	cmplwi r0, 0
/* 80959F50  41 82 02 DC */	beq lbl_8095A22C
lbl_80959F54:
/* 80959F54  38 00 00 02 */	li r0, 2
/* 80959F58  B0 1B 0F 5A */	sth r0, 0xf5a(r27)
/* 80959F5C  38 00 00 00 */	li r0, 0
/* 80959F60  90 1B 0C B0 */	stw r0, 0xcb0(r27)
/* 80959F64  48 00 02 C8 */	b lbl_8095A22C
lbl_80959F68:
/* 80959F68  3B 40 00 00 */	li r26, 0
/* 80959F6C  38 60 01 0C */	li r3, 0x10c
/* 80959F70  4B 7F B6 C5 */	bl daNpcF_chkEvtBit__FUl
/* 80959F74  2C 03 00 00 */	cmpwi r3, 0
/* 80959F78  40 82 00 14 */	bne lbl_80959F8C
/* 80959F7C  38 60 01 08 */	li r3, 0x108
/* 80959F80  4B 7F B6 B5 */	bl daNpcF_chkEvtBit__FUl
/* 80959F84  2C 03 00 00 */	cmpwi r3, 0
/* 80959F88  40 82 00 08 */	bne lbl_80959F90
lbl_80959F8C:
/* 80959F8C  3B 40 00 01 */	li r26, 1
lbl_80959F90:
/* 80959F90  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80959F94  40 82 00 30 */	bne lbl_80959FC4
/* 80959F98  A8 1B 0F 5A */	lha r0, 0xf5a(r27)
/* 80959F9C  2C 00 00 04 */	cmpwi r0, 4
/* 80959FA0  40 82 00 10 */	bne lbl_80959FB0
/* 80959FA4  80 1B 0C B0 */	lwz r0, 0xcb0(r27)
/* 80959FA8  28 00 00 00 */	cmplwi r0, 0
/* 80959FAC  41 82 00 3C */	beq lbl_80959FE8
lbl_80959FB0:
/* 80959FB0  38 00 00 04 */	li r0, 4
/* 80959FB4  B0 1B 0F 5A */	sth r0, 0xf5a(r27)
/* 80959FB8  38 00 00 00 */	li r0, 0
/* 80959FBC  90 1B 0C B0 */	stw r0, 0xcb0(r27)
/* 80959FC0  48 00 00 28 */	b lbl_80959FE8
lbl_80959FC4:
/* 80959FC4  A8 1B 0F 5A */	lha r0, 0xf5a(r27)
/* 80959FC8  2C 00 00 00 */	cmpwi r0, 0
/* 80959FCC  40 82 00 10 */	bne lbl_80959FDC
/* 80959FD0  80 1B 0C B0 */	lwz r0, 0xcb0(r27)
/* 80959FD4  28 00 00 00 */	cmplwi r0, 0
/* 80959FD8  41 82 00 10 */	beq lbl_80959FE8
lbl_80959FDC:
/* 80959FDC  38 00 00 00 */	li r0, 0
/* 80959FE0  B0 1B 0F 5A */	sth r0, 0xf5a(r27)
/* 80959FE4  90 1B 0C B0 */	stw r0, 0xcb0(r27)
lbl_80959FE8:
/* 80959FE8  AB 3B 04 B6 */	lha r25, 0x4b6(r27)
/* 80959FEC  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 80959FF0  7C 19 00 00 */	cmpw r25, r0
/* 80959FF4  41 82 01 DC */	beq lbl_8095A1D0
/* 80959FF8  80 7B 09 6C */	lwz r3, 0x96c(r27)
/* 80959FFC  2C 03 00 00 */	cmpwi r3, 0
/* 8095A000  40 82 00 D0 */	bne lbl_8095A0D0
/* 8095A004  C0 5E 02 48 */	lfs f2, 0x248(r30)
/* 8095A008  7C 00 C8 50 */	subf r0, r0, r25
/* 8095A00C  7C 00 07 34 */	extsh r0, r0
/* 8095A010  C8 3E 02 50 */	lfd f1, 0x250(r30)
/* 8095A014  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8095A018  90 01 00 34 */	stw r0, 0x34(r1)
/* 8095A01C  3C 00 43 30 */	lis r0, 0x4330
/* 8095A020  90 01 00 30 */	stw r0, 0x30(r1)
/* 8095A024  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8095A028  EC 00 08 28 */	fsubs f0, f0, f1
/* 8095A02C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8095A030  FC 00 02 10 */	fabs f0, f0
/* 8095A034  FC 00 00 18 */	frsp f0, f0
/* 8095A038  FC 00 00 1E */	fctiwz f0, f0
/* 8095A03C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8095A040  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8095A044  2C 00 00 28 */	cmpwi r0, 0x28
/* 8095A048  40 81 00 40 */	ble lbl_8095A088
/* 8095A04C  7F 63 DB 78 */	mr r3, r27
/* 8095A050  38 80 00 07 */	li r4, 7
/* 8095A054  C0 3E 02 44 */	lfs f1, 0x244(r30)
/* 8095A058  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 8095A05C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8095A060  7D 89 03 A6 */	mtctr r12
/* 8095A064  4E 80 04 21 */	bctrl 
/* 8095A068  7F 63 DB 78 */	mr r3, r27
/* 8095A06C  38 80 00 09 */	li r4, 9
/* 8095A070  C0 3E 02 44 */	lfs f1, 0x244(r30)
/* 8095A074  38 A0 00 00 */	li r5, 0
/* 8095A078  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 8095A07C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8095A080  7D 89 03 A6 */	mtctr r12
/* 8095A084  4E 80 04 21 */	bctrl 
lbl_8095A088:
/* 8095A088  B3 3B 09 96 */	sth r25, 0x996(r27)
/* 8095A08C  38 00 00 00 */	li r0, 0
/* 8095A090  90 1B 09 68 */	stw r0, 0x968(r27)
/* 8095A094  A8 7B 08 F2 */	lha r3, 0x8f2(r27)
/* 8095A098  A8 1B 09 96 */	lha r0, 0x996(r27)
/* 8095A09C  7C 03 00 00 */	cmpw r3, r0
/* 8095A0A0  40 82 00 10 */	bne lbl_8095A0B0
/* 8095A0A4  80 7B 09 6C */	lwz r3, 0x96c(r27)
/* 8095A0A8  38 03 00 01 */	addi r0, r3, 1
/* 8095A0AC  90 1B 09 6C */	stw r0, 0x96c(r27)
lbl_8095A0B0:
/* 8095A0B0  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 8095A0B4  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 8095A0B8  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8095A0BC  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 8095A0C0  80 7B 09 6C */	lwz r3, 0x96c(r27)
/* 8095A0C4  38 03 00 01 */	addi r0, r3, 1
/* 8095A0C8  90 1B 09 6C */	stw r0, 0x96c(r27)
/* 8095A0CC  48 00 00 60 */	b lbl_8095A12C
lbl_8095A0D0:
/* 8095A0D0  2C 03 00 01 */	cmpwi r3, 1
/* 8095A0D4  40 82 00 58 */	bne lbl_8095A12C
/* 8095A0D8  7F 63 DB 78 */	mr r3, r27
/* 8095A0DC  A8 9B 09 96 */	lha r4, 0x996(r27)
/* 8095A0E0  C0 3E 02 4C */	lfs f1, 0x24c(r30)
/* 8095A0E4  38 A0 00 00 */	li r5, 0
/* 8095A0E8  4B 7F 9E 0D */	bl turn__8daNpcF_cFsfi
/* 8095A0EC  2C 03 00 00 */	cmpwi r3, 0
/* 8095A0F0  41 82 00 2C */	beq lbl_8095A11C
/* 8095A0F4  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8095A0F8  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 8095A0FC  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8095A100  B0 1B 08 F2 */	sth r0, 0x8f2(r27)
/* 8095A104  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8095A108  B0 1B 08 F8 */	sth r0, 0x8f8(r27)
/* 8095A10C  80 7B 09 6C */	lwz r3, 0x96c(r27)
/* 8095A110  38 03 00 01 */	addi r0, r3, 1
/* 8095A114  90 1B 09 6C */	stw r0, 0x96c(r27)
/* 8095A118  48 00 00 14 */	b lbl_8095A12C
lbl_8095A11C:
/* 8095A11C  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8095A120  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 8095A124  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8095A128  B0 1B 08 F2 */	sth r0, 0x8f2(r27)
lbl_8095A12C:
/* 8095A12C  80 1B 09 6C */	lwz r0, 0x96c(r27)
/* 8095A130  2C 00 00 01 */	cmpwi r0, 1
/* 8095A134  40 81 00 9C */	ble lbl_8095A1D0
/* 8095A138  7F 63 DB 78 */	mr r3, r27
/* 8095A13C  38 80 00 07 */	li r4, 7
/* 8095A140  C0 3E 02 44 */	lfs f1, 0x244(r30)
/* 8095A144  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 8095A148  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8095A14C  7D 89 03 A6 */	mtctr r12
/* 8095A150  4E 80 04 21 */	bctrl 
/* 8095A154  3B 40 00 00 */	li r26, 0
/* 8095A158  38 60 01 0C */	li r3, 0x10c
/* 8095A15C  4B 7F B4 D9 */	bl daNpcF_chkEvtBit__FUl
/* 8095A160  2C 03 00 00 */	cmpwi r3, 0
/* 8095A164  40 82 00 14 */	bne lbl_8095A178
/* 8095A168  38 60 01 08 */	li r3, 0x108
/* 8095A16C  4B 7F B4 C9 */	bl daNpcF_chkEvtBit__FUl
/* 8095A170  2C 03 00 00 */	cmpwi r3, 0
/* 8095A174  40 82 00 08 */	bne lbl_8095A17C
lbl_8095A178:
/* 8095A178  3B 40 00 01 */	li r26, 1
lbl_8095A17C:
/* 8095A17C  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 8095A180  41 82 00 28 */	beq lbl_8095A1A8
/* 8095A184  7F 63 DB 78 */	mr r3, r27
/* 8095A188  38 80 00 00 */	li r4, 0
/* 8095A18C  C0 3E 02 44 */	lfs f1, 0x244(r30)
/* 8095A190  38 A0 00 00 */	li r5, 0
/* 8095A194  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 8095A198  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8095A19C  7D 89 03 A6 */	mtctr r12
/* 8095A1A0  4E 80 04 21 */	bctrl 
/* 8095A1A4  48 00 00 24 */	b lbl_8095A1C8
lbl_8095A1A8:
/* 8095A1A8  7F 63 DB 78 */	mr r3, r27
/* 8095A1AC  38 80 00 01 */	li r4, 1
/* 8095A1B0  C0 3E 02 44 */	lfs f1, 0x244(r30)
/* 8095A1B4  38 A0 00 00 */	li r5, 0
/* 8095A1B8  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 8095A1BC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8095A1C0  7D 89 03 A6 */	mtctr r12
/* 8095A1C4  4E 80 04 21 */	bctrl 
lbl_8095A1C8:
/* 8095A1C8  38 00 00 00 */	li r0, 0
/* 8095A1CC  90 1B 09 6C */	stw r0, 0x96c(r27)
lbl_8095A1D0:
/* 8095A1D0  38 7B 0C A8 */	addi r3, r27, 0xca8
/* 8095A1D4  4B 7F 65 19 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 8095A1D8  7C 79 1B 79 */	or. r25, r3, r3
/* 8095A1DC  41 82 00 50 */	beq lbl_8095A22C
/* 8095A1E0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8095A1E4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8095A1E8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8095A1EC  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 8095A1F0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8095A1F4  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 8095A1F8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8095A1FC  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 8095A200  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8095A204  38 81 00 20 */	addi r4, r1, 0x20
/* 8095A208  48 00 33 6D */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz
/* 8095A20C  2C 03 00 00 */	cmpwi r3, 0
/* 8095A210  41 82 00 1C */	beq lbl_8095A22C
/* 8095A214  38 60 00 0B */	li r3, 0xb
/* 8095A218  4B 7F B5 1D */	bl daNpcF_offTmpBit__FUl
/* 8095A21C  38 00 00 02 */	li r0, 2
/* 8095A220  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 8095A224  7F 23 CB 78 */	mr r3, r25
/* 8095A228  4B 6B FA 55 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_8095A22C:
/* 8095A22C  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 8095A230  AB 3B 04 B6 */	lha r25, 0x4b6(r27)
/* 8095A234  7C 00 C8 00 */	cmpw r0, r25
/* 8095A238  41 82 01 C0 */	beq lbl_8095A3F8
/* 8095A23C  80 7B 09 6C */	lwz r3, 0x96c(r27)
/* 8095A240  2C 03 00 00 */	cmpwi r3, 0
/* 8095A244  40 82 00 D0 */	bne lbl_8095A314
/* 8095A248  C0 5E 02 48 */	lfs f2, 0x248(r30)
/* 8095A24C  7C 00 C8 50 */	subf r0, r0, r25
/* 8095A250  7C 00 07 34 */	extsh r0, r0
/* 8095A254  C8 3E 02 50 */	lfd f1, 0x250(r30)
/* 8095A258  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8095A25C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8095A260  3C 00 43 30 */	lis r0, 0x4330
/* 8095A264  90 01 00 38 */	stw r0, 0x38(r1)
/* 8095A268  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8095A26C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8095A270  EC 02 00 32 */	fmuls f0, f2, f0
/* 8095A274  FC 00 02 10 */	fabs f0, f0
/* 8095A278  FC 00 00 18 */	frsp f0, f0
/* 8095A27C  FC 00 00 1E */	fctiwz f0, f0
/* 8095A280  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8095A284  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8095A288  2C 00 00 28 */	cmpwi r0, 0x28
/* 8095A28C  40 81 00 40 */	ble lbl_8095A2CC
/* 8095A290  7F 63 DB 78 */	mr r3, r27
/* 8095A294  38 80 00 07 */	li r4, 7
/* 8095A298  C0 3E 02 44 */	lfs f1, 0x244(r30)
/* 8095A29C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 8095A2A0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8095A2A4  7D 89 03 A6 */	mtctr r12
/* 8095A2A8  4E 80 04 21 */	bctrl 
/* 8095A2AC  7F 63 DB 78 */	mr r3, r27
/* 8095A2B0  38 80 00 09 */	li r4, 9
/* 8095A2B4  C0 3E 02 44 */	lfs f1, 0x244(r30)
/* 8095A2B8  38 A0 00 00 */	li r5, 0
/* 8095A2BC  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 8095A2C0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8095A2C4  7D 89 03 A6 */	mtctr r12
/* 8095A2C8  4E 80 04 21 */	bctrl 
lbl_8095A2CC:
/* 8095A2CC  B3 3B 09 96 */	sth r25, 0x996(r27)
/* 8095A2D0  38 00 00 00 */	li r0, 0
/* 8095A2D4  90 1B 09 68 */	stw r0, 0x968(r27)
/* 8095A2D8  A8 7B 08 F2 */	lha r3, 0x8f2(r27)
/* 8095A2DC  A8 1B 09 96 */	lha r0, 0x996(r27)
/* 8095A2E0  7C 03 00 00 */	cmpw r3, r0
/* 8095A2E4  40 82 00 10 */	bne lbl_8095A2F4
/* 8095A2E8  80 7B 09 6C */	lwz r3, 0x96c(r27)
/* 8095A2EC  38 03 00 01 */	addi r0, r3, 1
/* 8095A2F0  90 1B 09 6C */	stw r0, 0x96c(r27)
lbl_8095A2F4:
/* 8095A2F4  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 8095A2F8  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 8095A2FC  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8095A300  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 8095A304  80 7B 09 6C */	lwz r3, 0x96c(r27)
/* 8095A308  38 03 00 01 */	addi r0, r3, 1
/* 8095A30C  90 1B 09 6C */	stw r0, 0x96c(r27)
/* 8095A310  48 00 00 60 */	b lbl_8095A370
lbl_8095A314:
/* 8095A314  2C 03 00 01 */	cmpwi r3, 1
/* 8095A318  40 82 00 58 */	bne lbl_8095A370
/* 8095A31C  7F 63 DB 78 */	mr r3, r27
/* 8095A320  A8 9B 09 96 */	lha r4, 0x996(r27)
/* 8095A324  C0 3E 02 4C */	lfs f1, 0x24c(r30)
/* 8095A328  38 A0 00 00 */	li r5, 0
/* 8095A32C  4B 7F 9B C9 */	bl turn__8daNpcF_cFsfi
/* 8095A330  2C 03 00 00 */	cmpwi r3, 0
/* 8095A334  41 82 00 2C */	beq lbl_8095A360
/* 8095A338  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8095A33C  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 8095A340  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8095A344  B0 1B 08 F2 */	sth r0, 0x8f2(r27)
/* 8095A348  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8095A34C  B0 1B 08 F8 */	sth r0, 0x8f8(r27)
/* 8095A350  80 7B 09 6C */	lwz r3, 0x96c(r27)
/* 8095A354  38 03 00 01 */	addi r0, r3, 1
/* 8095A358  90 1B 09 6C */	stw r0, 0x96c(r27)
/* 8095A35C  48 00 00 14 */	b lbl_8095A370
lbl_8095A360:
/* 8095A360  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8095A364  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 8095A368  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8095A36C  B0 1B 08 F2 */	sth r0, 0x8f2(r27)
lbl_8095A370:
/* 8095A370  80 1B 09 6C */	lwz r0, 0x96c(r27)
/* 8095A374  2C 00 00 01 */	cmpwi r0, 1
/* 8095A378  40 81 00 80 */	ble lbl_8095A3F8
/* 8095A37C  3B 40 00 00 */	li r26, 0
/* 8095A380  38 60 01 0C */	li r3, 0x10c
/* 8095A384  4B 7F B2 B1 */	bl daNpcF_chkEvtBit__FUl
/* 8095A388  2C 03 00 00 */	cmpwi r3, 0
/* 8095A38C  40 82 00 14 */	bne lbl_8095A3A0
/* 8095A390  38 60 01 08 */	li r3, 0x108
/* 8095A394  4B 7F B2 A1 */	bl daNpcF_chkEvtBit__FUl
/* 8095A398  2C 03 00 00 */	cmpwi r3, 0
/* 8095A39C  40 82 00 08 */	bne lbl_8095A3A4
lbl_8095A3A0:
/* 8095A3A0  3B 40 00 01 */	li r26, 1
lbl_8095A3A4:
/* 8095A3A4  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 8095A3A8  41 82 00 28 */	beq lbl_8095A3D0
/* 8095A3AC  7F 63 DB 78 */	mr r3, r27
/* 8095A3B0  38 80 00 00 */	li r4, 0
/* 8095A3B4  C0 3E 02 44 */	lfs f1, 0x244(r30)
/* 8095A3B8  38 A0 00 00 */	li r5, 0
/* 8095A3BC  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 8095A3C0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8095A3C4  7D 89 03 A6 */	mtctr r12
/* 8095A3C8  4E 80 04 21 */	bctrl 
/* 8095A3CC  48 00 00 24 */	b lbl_8095A3F0
lbl_8095A3D0:
/* 8095A3D0  7F 63 DB 78 */	mr r3, r27
/* 8095A3D4  38 80 00 01 */	li r4, 1
/* 8095A3D8  C0 3E 02 44 */	lfs f1, 0x244(r30)
/* 8095A3DC  38 A0 00 00 */	li r5, 0
/* 8095A3E0  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 8095A3E4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8095A3E8  7D 89 03 A6 */	mtctr r12
/* 8095A3EC  4E 80 04 21 */	bctrl 
lbl_8095A3F0:
/* 8095A3F0  38 00 00 00 */	li r0, 0
/* 8095A3F4  90 1B 09 6C */	stw r0, 0x96c(r27)
lbl_8095A3F8:
/* 8095A3F8  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 8095A3FC  28 00 00 00 */	cmplwi r0, 0
/* 8095A400  41 82 02 08 */	beq lbl_8095A608
/* 8095A404  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 8095A408  28 00 00 01 */	cmplwi r0, 1
/* 8095A40C  40 82 01 54 */	bne lbl_8095A560
/* 8095A410  38 00 00 00 */	li r0, 0
/* 8095A414  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8095A418  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8095A41C  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 8095A420  28 03 00 01 */	cmplwi r3, 1
/* 8095A424  41 82 00 0C */	beq lbl_8095A430
/* 8095A428  28 03 00 02 */	cmplwi r3, 2
/* 8095A42C  40 82 00 08 */	bne lbl_8095A434
lbl_8095A430:
/* 8095A430  38 00 00 01 */	li r0, 1
lbl_8095A434:
/* 8095A434  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8095A438  41 82 00 14 */	beq lbl_8095A44C
/* 8095A43C  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 8095A440  4B 6E E3 B1 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 8095A444  2C 03 00 00 */	cmpwi r3, 0
/* 8095A448  41 82 02 18 */	beq lbl_8095A660
lbl_8095A44C:
/* 8095A44C  7F 83 E3 78 */	mr r3, r28
/* 8095A450  3C 80 80 96 */	lis r4, d_a_npc_ash__stringBase0@ha /* 0x8095D910@ha */
/* 8095A454  38 84 D9 10 */	addi r4, r4, d_a_npc_ash__stringBase0@l /* 0x8095D910@l */
/* 8095A458  38 84 00 6C */	addi r4, r4, 0x6c
/* 8095A45C  4B A0 E5 39 */	bl strcmp
/* 8095A460  2C 03 00 00 */	cmpwi r3, 0
/* 8095A464  40 82 00 30 */	bne lbl_8095A494
/* 8095A468  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8095A46C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8095A470  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 8095A474  2C 00 00 05 */	cmpwi r0, 5
/* 8095A478  40 82 00 1C */	bne lbl_8095A494
/* 8095A47C  38 60 00 00 */	li r3, 0
/* 8095A480  4B 6D 24 FD */	bl getLayerNo__14dComIfG_play_cFi
/* 8095A484  2C 03 00 02 */	cmpwi r3, 2
/* 8095A488  40 82 00 0C */	bne lbl_8095A494
/* 8095A48C  38 00 00 01 */	li r0, 1
/* 8095A490  48 00 00 08 */	b lbl_8095A498
lbl_8095A494:
/* 8095A494  38 00 00 00 */	li r0, 0
lbl_8095A498:
/* 8095A498  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8095A49C  41 82 00 38 */	beq lbl_8095A4D4
/* 8095A4A0  38 00 00 03 */	li r0, 3
/* 8095A4A4  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 8095A4A8  7F 63 DB 78 */	mr r3, r27
/* 8095A4AC  80 9D 01 30 */	lwz r4, 0x130(r29)
/* 8095A4B0  A0 1B 09 E6 */	lhz r0, 0x9e6(r27)
/* 8095A4B4  54 00 10 3A */	slwi r0, r0, 2
/* 8095A4B8  38 BD 01 3C */	addi r5, r29, 0x13c
/* 8095A4BC  7C A5 00 2E */	lwzx r5, r5, r0
/* 8095A4C0  38 C0 00 01 */	li r6, 1
/* 8095A4C4  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 8095A4C8  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 8095A4CC  4B 7F 94 89 */	bl changeEvent__8daNpcF_cFPcPcUsUs
/* 8095A4D0  48 00 01 90 */	b lbl_8095A660
lbl_8095A4D4:
/* 8095A4D4  80 7D 02 14 */	lwz r3, 0x214(r29)
/* 8095A4D8  80 1D 02 18 */	lwz r0, 0x218(r29)
/* 8095A4DC  90 61 00 14 */	stw r3, 0x14(r1)
/* 8095A4E0  90 01 00 18 */	stw r0, 0x18(r1)
/* 8095A4E4  80 1D 02 1C */	lwz r0, 0x21c(r29)
/* 8095A4E8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8095A4EC  38 00 00 03 */	li r0, 3
/* 8095A4F0  B0 1B 0F 5C */	sth r0, 0xf5c(r27)
/* 8095A4F4  38 7B 0F 30 */	addi r3, r27, 0xf30
/* 8095A4F8  4B A0 7B 21 */	bl __ptmf_test
/* 8095A4FC  2C 03 00 00 */	cmpwi r3, 0
/* 8095A500  41 82 00 18 */	beq lbl_8095A518
/* 8095A504  7F 63 DB 78 */	mr r3, r27
/* 8095A508  38 80 00 00 */	li r4, 0
/* 8095A50C  39 9B 0F 30 */	addi r12, r27, 0xf30
/* 8095A510  4B A0 7B 75 */	bl __ptmf_scall
/* 8095A514  60 00 00 00 */	nop 
lbl_8095A518:
/* 8095A518  38 00 00 00 */	li r0, 0
/* 8095A51C  B0 1B 0F 5C */	sth r0, 0xf5c(r27)
/* 8095A520  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8095A524  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8095A528  90 7B 0F 30 */	stw r3, 0xf30(r27)
/* 8095A52C  90 1B 0F 34 */	stw r0, 0xf34(r27)
/* 8095A530  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8095A534  90 1B 0F 38 */	stw r0, 0xf38(r27)
/* 8095A538  38 7B 0F 30 */	addi r3, r27, 0xf30
/* 8095A53C  4B A0 7A DD */	bl __ptmf_test
/* 8095A540  2C 03 00 00 */	cmpwi r3, 0
/* 8095A544  41 82 01 1C */	beq lbl_8095A660
/* 8095A548  7F 63 DB 78 */	mr r3, r27
/* 8095A54C  38 80 00 00 */	li r4, 0
/* 8095A550  39 9B 0F 30 */	addi r12, r27, 0xf30
/* 8095A554  4B A0 7B 31 */	bl __ptmf_scall
/* 8095A558  60 00 00 00 */	nop 
/* 8095A55C  48 00 01 04 */	b lbl_8095A660
lbl_8095A560:
/* 8095A560  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 8095A564  80 9D 01 54 */	lwz r4, 0x154(r29)
/* 8095A568  38 A0 00 00 */	li r5, 0
/* 8095A56C  38 C0 00 00 */	li r6, 0
/* 8095A570  4B 6E D5 AD */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8095A574  2C 03 FF FF */	cmpwi r3, -1
/* 8095A578  41 82 00 E8 */	beq lbl_8095A660
/* 8095A57C  80 7D 02 20 */	lwz r3, 0x220(r29)
/* 8095A580  80 1D 02 24 */	lwz r0, 0x224(r29)
/* 8095A584  90 61 00 08 */	stw r3, 8(r1)
/* 8095A588  90 01 00 0C */	stw r0, 0xc(r1)
/* 8095A58C  80 1D 02 28 */	lwz r0, 0x228(r29)
/* 8095A590  90 01 00 10 */	stw r0, 0x10(r1)
/* 8095A594  38 00 00 03 */	li r0, 3
/* 8095A598  B0 1B 0F 5C */	sth r0, 0xf5c(r27)
/* 8095A59C  38 7B 0F 30 */	addi r3, r27, 0xf30
/* 8095A5A0  4B A0 7A 79 */	bl __ptmf_test
/* 8095A5A4  2C 03 00 00 */	cmpwi r3, 0
/* 8095A5A8  41 82 00 18 */	beq lbl_8095A5C0
/* 8095A5AC  7F 63 DB 78 */	mr r3, r27
/* 8095A5B0  38 80 00 00 */	li r4, 0
/* 8095A5B4  39 9B 0F 30 */	addi r12, r27, 0xf30
/* 8095A5B8  4B A0 7A CD */	bl __ptmf_scall
/* 8095A5BC  60 00 00 00 */	nop 
lbl_8095A5C0:
/* 8095A5C0  38 00 00 00 */	li r0, 0
/* 8095A5C4  B0 1B 0F 5C */	sth r0, 0xf5c(r27)
/* 8095A5C8  80 61 00 08 */	lwz r3, 8(r1)
/* 8095A5CC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8095A5D0  90 7B 0F 30 */	stw r3, 0xf30(r27)
/* 8095A5D4  90 1B 0F 34 */	stw r0, 0xf34(r27)
/* 8095A5D8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8095A5DC  90 1B 0F 38 */	stw r0, 0xf38(r27)
/* 8095A5E0  38 7B 0F 30 */	addi r3, r27, 0xf30
/* 8095A5E4  4B A0 7A 35 */	bl __ptmf_test
/* 8095A5E8  2C 03 00 00 */	cmpwi r3, 0
/* 8095A5EC  41 82 00 74 */	beq lbl_8095A660
/* 8095A5F0  7F 63 DB 78 */	mr r3, r27
/* 8095A5F4  38 80 00 00 */	li r4, 0
/* 8095A5F8  39 9B 0F 30 */	addi r12, r27, 0xf30
/* 8095A5FC  4B A0 7A 89 */	bl __ptmf_scall
/* 8095A600  60 00 00 00 */	nop 
/* 8095A604  48 00 00 5C */	b lbl_8095A660
lbl_8095A608:
/* 8095A608  A0 1B 09 E6 */	lhz r0, 0x9e6(r27)
/* 8095A60C  28 00 00 00 */	cmplwi r0, 0
/* 8095A610  41 82 00 10 */	beq lbl_8095A620
/* 8095A614  3C 60 80 96 */	lis r3, d_a_npc_ash__stringBase0@ha /* 0x8095D910@ha */
/* 8095A618  38 03 D9 10 */	addi r0, r3, d_a_npc_ash__stringBase0@l /* 0x8095D910@l */
/* 8095A61C  90 1B 01 00 */	stw r0, 0x100(r27)
lbl_8095A620:
/* 8095A620  A0 1B 09 E6 */	lhz r0, 0x9e6(r27)
/* 8095A624  28 00 00 00 */	cmplwi r0, 0
/* 8095A628  41 82 00 14 */	beq lbl_8095A63C
/* 8095A62C  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 8095A630  38 7D 01 3C */	addi r3, r29, 0x13c
/* 8095A634  7C A3 00 2E */	lwzx r5, r3, r0
/* 8095A638  48 00 00 08 */	b lbl_8095A640
lbl_8095A63C:
/* 8095A63C  38 A0 00 00 */	li r5, 0
lbl_8095A640:
/* 8095A640  7F 63 DB 78 */	mr r3, r27
/* 8095A644  88 9B 0F 5E */	lbz r4, 0xf5e(r27)
/* 8095A648  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8095A64C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8095A650  38 E0 00 28 */	li r7, 0x28
/* 8095A654  39 00 00 FF */	li r8, 0xff
/* 8095A658  39 20 00 01 */	li r9, 1
/* 8095A65C  4B 7F 92 21 */	bl orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_8095A660:
/* 8095A660  38 60 00 01 */	li r3, 1
/* 8095A664  39 61 00 60 */	addi r11, r1, 0x60
/* 8095A668  4B A0 7B B1 */	bl _restgpr_25
/* 8095A66C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8095A670  7C 08 03 A6 */	mtlr r0
/* 8095A674  38 21 00 60 */	addi r1, r1, 0x60
/* 8095A678  4E 80 00 20 */	blr 
