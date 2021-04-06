lbl_809C7ACC:
/* 809C7ACC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809C7AD0  7C 08 02 A6 */	mflr r0
/* 809C7AD4  90 01 00 44 */	stw r0, 0x44(r1)
/* 809C7AD8  39 61 00 40 */	addi r11, r1, 0x40
/* 809C7ADC  4B 99 A6 FD */	bl _savegpr_28
/* 809C7AE0  7C 7E 1B 78 */	mr r30, r3
/* 809C7AE4  3C 80 80 9D */	lis r4, m__17daNpc_grA_Param_c@ha /* 0x809C9D98@ha */
/* 809C7AE8  3B E4 9D 98 */	addi r31, r4, m__17daNpc_grA_Param_c@l /* 0x809C9D98@l */
/* 809C7AEC  A0 03 14 72 */	lhz r0, 0x1472(r3)
/* 809C7AF0  2C 00 00 02 */	cmpwi r0, 2
/* 809C7AF4  41 82 00 C4 */	beq lbl_809C7BB8
/* 809C7AF8  40 80 04 10 */	bge lbl_809C7F08
/* 809C7AFC  2C 00 00 00 */	cmpwi r0, 0
/* 809C7B00  41 82 00 0C */	beq lbl_809C7B0C
/* 809C7B04  48 00 04 04 */	b lbl_809C7F08
/* 809C7B08  48 00 04 00 */	b lbl_809C7F08
lbl_809C7B0C:
/* 809C7B0C  88 1E 16 90 */	lbz r0, 0x1690(r30)
/* 809C7B10  28 00 00 02 */	cmplwi r0, 2
/* 809C7B14  40 82 00 40 */	bne lbl_809C7B54
/* 809C7B18  38 80 00 16 */	li r4, 0x16
/* 809C7B1C  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C7B20  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809C7B24  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C7B28  7D 89 03 A6 */	mtctr r12
/* 809C7B2C  4E 80 04 21 */	bctrl 
/* 809C7B30  7F C3 F3 78 */	mr r3, r30
/* 809C7B34  38 80 00 09 */	li r4, 9
/* 809C7B38  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C7B3C  38 A0 00 00 */	li r5, 0
/* 809C7B40  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809C7B44  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C7B48  7D 89 03 A6 */	mtctr r12
/* 809C7B4C  4E 80 04 21 */	bctrl 
/* 809C7B50  48 00 00 3C */	b lbl_809C7B8C
lbl_809C7B54:
/* 809C7B54  38 80 00 16 */	li r4, 0x16
/* 809C7B58  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C7B5C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809C7B60  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C7B64  7D 89 03 A6 */	mtctr r12
/* 809C7B68  4E 80 04 21 */	bctrl 
/* 809C7B6C  7F C3 F3 78 */	mr r3, r30
/* 809C7B70  38 80 00 02 */	li r4, 2
/* 809C7B74  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C7B78  38 A0 00 00 */	li r5, 0
/* 809C7B7C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809C7B80  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C7B84  7D 89 03 A6 */	mtctr r12
/* 809C7B88  4E 80 04 21 */	bctrl 
lbl_809C7B8C:
/* 809C7B8C  7F C3 F3 78 */	mr r3, r30
/* 809C7B90  38 80 00 00 */	li r4, 0
/* 809C7B94  4B FF B4 DD */	bl setLookMode__11daNpc_grA_cFi
/* 809C7B98  38 00 00 00 */	li r0, 0
/* 809C7B9C  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 809C7BA0  38 00 00 28 */	li r0, 0x28
/* 809C7BA4  90 1E 14 6C */	stw r0, 0x146c(r30)
/* 809C7BA8  38 00 00 02 */	li r0, 2
/* 809C7BAC  B0 1E 14 72 */	sth r0, 0x1472(r30)
/* 809C7BB0  38 00 00 01 */	li r0, 1
/* 809C7BB4  98 1E 09 EA */	stb r0, 0x9ea(r30)
lbl_809C7BB8:
/* 809C7BB8  88 1E 14 88 */	lbz r0, 0x1488(r30)
/* 809C7BBC  28 00 00 01 */	cmplwi r0, 1
/* 809C7BC0  40 82 00 68 */	bne lbl_809C7C28
/* 809C7BC4  3C 60 80 9C */	lis r3, s_subOnsenTaru__FPvPv@ha /* 0x809BFC98@ha */
/* 809C7BC8  38 63 FC 98 */	addi r3, r3, s_subOnsenTaru__FPvPv@l /* 0x809BFC98@l */
/* 809C7BCC  7F C4 F3 78 */	mr r4, r30
/* 809C7BD0  4B 65 97 69 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 809C7BD4  7C 7C 1B 79 */	or. r28, r3, r3
/* 809C7BD8  41 82 00 50 */	beq lbl_809C7C28
/* 809C7BDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809C7BE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809C7BE4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809C7BE8  7F 84 E3 78 */	mr r4, r28
/* 809C7BEC  38 A0 00 01 */	li r5, 1
/* 809C7BF0  38 C0 00 00 */	li r6, 0
/* 809C7BF4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809C7BF8  81 8C 01 04 */	lwz r12, 0x104(r12)
/* 809C7BFC  7D 89 03 A6 */	mtctr r12
/* 809C7C00  4E 80 04 21 */	bctrl 
/* 809C7C04  2C 03 00 00 */	cmpwi r3, 0
/* 809C7C08  41 82 03 00 */	beq lbl_809C7F08
/* 809C7C0C  38 00 00 01 */	li r0, 1
/* 809C7C10  98 1C 09 36 */	stb r0, 0x936(r28)
/* 809C7C14  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 809C7C18  7F 84 E3 78 */	mr r4, r28
/* 809C7C1C  4B 78 8A A1 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809C7C20  38 00 00 00 */	li r0, 0
/* 809C7C24  98 1E 14 88 */	stb r0, 0x1488(r30)
lbl_809C7C28:
/* 809C7C28  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 809C7C2C  4B 78 8A C1 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809C7C30  28 03 00 00 */	cmplwi r3, 0
/* 809C7C34  41 82 01 E8 */	beq lbl_809C7E1C
/* 809C7C38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809C7C3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809C7C40  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 809C7C44  28 00 00 00 */	cmplwi r0, 0
/* 809C7C48  40 82 01 D4 */	bne lbl_809C7E1C
/* 809C7C4C  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 809C7C50  4B 78 8A 9D */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809C7C54  7C 7C 1B 78 */	mr r28, r3
/* 809C7C58  A8 03 00 08 */	lha r0, 8(r3)
/* 809C7C5C  2C 00 01 6C */	cmpwi r0, 0x16c
/* 809C7C60  40 82 01 BC */	bne lbl_809C7E1C
/* 809C7C64  88 1C 09 3D */	lbz r0, 0x93d(r28)
/* 809C7C68  28 00 00 00 */	cmplwi r0, 0
/* 809C7C6C  40 82 00 28 */	bne lbl_809C7C94
/* 809C7C70  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 809C7C74  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 809C7C78  38 80 07 FD */	li r4, 0x7fd
/* 809C7C7C  38 A0 00 96 */	li r5, 0x96
/* 809C7C80  38 C0 00 00 */	li r6, 0
/* 809C7C84  4B 85 44 5D */	bl setFloatingMessage__13dMeter2Info_cFUssb
/* 809C7C88  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 809C7C8C  4B 78 8A 25 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 809C7C90  48 00 01 8C */	b lbl_809C7E1C
lbl_809C7C94:
/* 809C7C94  88 1E 16 90 */	lbz r0, 0x1690(r30)
/* 809C7C98  28 00 00 00 */	cmplwi r0, 0
/* 809C7C9C  40 82 01 80 */	bne lbl_809C7E1C
/* 809C7CA0  38 00 00 00 */	li r0, 0
/* 809C7CA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 809C7CA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809C7CAC  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809C7CB0  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 809C7CB4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809C7CB8  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 809C7CBC  7D 89 03 A6 */	mtctr r12
/* 809C7CC0  4E 80 04 21 */	bctrl 
/* 809C7CC4  38 81 00 0C */	addi r4, r1, 0xc
/* 809C7CC8  4B 65 1C F5 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 809C7CCC  2C 03 00 01 */	cmpwi r3, 1
/* 809C7CD0  40 82 01 4C */	bne lbl_809C7E1C
/* 809C7CD4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 809C7CD8  7C 1C 00 40 */	cmplw r28, r0
/* 809C7CDC  40 82 01 40 */	bne lbl_809C7E1C
/* 809C7CE0  38 00 00 00 */	li r0, 0
/* 809C7CE4  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 809C7CE8  38 61 00 1C */	addi r3, r1, 0x1c
/* 809C7CEC  38 9E 05 50 */	addi r4, r30, 0x550
/* 809C7CF0  80 BD 5D AC */	lwz r5, 0x5dac(r29)
/* 809C7CF4  38 A5 05 50 */	addi r5, r5, 0x550
/* 809C7CF8  4B 89 EE 3D */	bl __mi__4cXyzCFRC3Vec
/* 809C7CFC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809C7D00  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809C7D04  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 809C7D08  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809C7D0C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 809C7D10  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809C7D14  38 61 00 10 */	addi r3, r1, 0x10
/* 809C7D18  4B 97 F4 21 */	bl PSVECSquareMag
/* 809C7D1C  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 809C7D20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C7D24  40 81 00 58 */	ble lbl_809C7D7C
/* 809C7D28  FC 00 08 34 */	frsqrte f0, f1
/* 809C7D2C  C8 9F 00 C0 */	lfd f4, 0xc0(r31)
/* 809C7D30  FC 44 00 32 */	fmul f2, f4, f0
/* 809C7D34  C8 7F 00 C8 */	lfd f3, 0xc8(r31)
/* 809C7D38  FC 00 00 32 */	fmul f0, f0, f0
/* 809C7D3C  FC 01 00 32 */	fmul f0, f1, f0
/* 809C7D40  FC 03 00 28 */	fsub f0, f3, f0
/* 809C7D44  FC 02 00 32 */	fmul f0, f2, f0
/* 809C7D48  FC 44 00 32 */	fmul f2, f4, f0
/* 809C7D4C  FC 00 00 32 */	fmul f0, f0, f0
/* 809C7D50  FC 01 00 32 */	fmul f0, f1, f0
/* 809C7D54  FC 03 00 28 */	fsub f0, f3, f0
/* 809C7D58  FC 02 00 32 */	fmul f0, f2, f0
/* 809C7D5C  FC 44 00 32 */	fmul f2, f4, f0
/* 809C7D60  FC 00 00 32 */	fmul f0, f0, f0
/* 809C7D64  FC 01 00 32 */	fmul f0, f1, f0
/* 809C7D68  FC 03 00 28 */	fsub f0, f3, f0
/* 809C7D6C  FC 02 00 32 */	fmul f0, f2, f0
/* 809C7D70  FC 21 00 32 */	fmul f1, f1, f0
/* 809C7D74  FC 20 08 18 */	frsp f1, f1
/* 809C7D78  48 00 00 88 */	b lbl_809C7E00
lbl_809C7D7C:
/* 809C7D7C  C8 1F 00 D0 */	lfd f0, 0xd0(r31)
/* 809C7D80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C7D84  40 80 00 10 */	bge lbl_809C7D94
/* 809C7D88  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809C7D8C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809C7D90  48 00 00 70 */	b lbl_809C7E00
lbl_809C7D94:
/* 809C7D94  D0 21 00 08 */	stfs f1, 8(r1)
/* 809C7D98  80 81 00 08 */	lwz r4, 8(r1)
/* 809C7D9C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809C7DA0  3C 00 7F 80 */	lis r0, 0x7f80
/* 809C7DA4  7C 03 00 00 */	cmpw r3, r0
/* 809C7DA8  41 82 00 14 */	beq lbl_809C7DBC
/* 809C7DAC  40 80 00 40 */	bge lbl_809C7DEC
/* 809C7DB0  2C 03 00 00 */	cmpwi r3, 0
/* 809C7DB4  41 82 00 20 */	beq lbl_809C7DD4
/* 809C7DB8  48 00 00 34 */	b lbl_809C7DEC
lbl_809C7DBC:
/* 809C7DBC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809C7DC0  41 82 00 0C */	beq lbl_809C7DCC
/* 809C7DC4  38 00 00 01 */	li r0, 1
/* 809C7DC8  48 00 00 28 */	b lbl_809C7DF0
lbl_809C7DCC:
/* 809C7DCC  38 00 00 02 */	li r0, 2
/* 809C7DD0  48 00 00 20 */	b lbl_809C7DF0
lbl_809C7DD4:
/* 809C7DD4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809C7DD8  41 82 00 0C */	beq lbl_809C7DE4
/* 809C7DDC  38 00 00 05 */	li r0, 5
/* 809C7DE0  48 00 00 10 */	b lbl_809C7DF0
lbl_809C7DE4:
/* 809C7DE4  38 00 00 03 */	li r0, 3
/* 809C7DE8  48 00 00 08 */	b lbl_809C7DF0
lbl_809C7DEC:
/* 809C7DEC  38 00 00 04 */	li r0, 4
lbl_809C7DF0:
/* 809C7DF0  2C 00 00 01 */	cmpwi r0, 1
/* 809C7DF4  40 82 00 0C */	bne lbl_809C7E00
/* 809C7DF8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809C7DFC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_809C7E00:
/* 809C7E00  C0 1F 07 0C */	lfs f0, 0x70c(r31)
/* 809C7E04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C7E08  4C 40 13 82 */	cror 2, 0, 2
/* 809C7E0C  40 82 00 10 */	bne lbl_809C7E1C
/* 809C7E10  38 00 00 09 */	li r0, 9
/* 809C7E14  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 809C7E18  48 00 00 F0 */	b lbl_809C7F08
lbl_809C7E1C:
/* 809C7E1C  38 7E 0C 98 */	addi r3, r30, 0xc98
/* 809C7E20  4B 6B C6 41 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 809C7E24  28 03 00 00 */	cmplwi r3, 0
/* 809C7E28  41 82 00 48 */	beq lbl_809C7E70
/* 809C7E2C  38 7E 0D 34 */	addi r3, r30, 0xd34
/* 809C7E30  4B 6B B8 59 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 809C7E34  A8 03 00 08 */	lha r0, 8(r3)
/* 809C7E38  2C 00 01 6C */	cmpwi r0, 0x16c
/* 809C7E3C  40 82 00 34 */	bne lbl_809C7E70
/* 809C7E40  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 809C7E44  60 00 40 00 */	ori r0, r0, 0x4000
/* 809C7E48  90 03 04 9C */	stw r0, 0x49c(r3)
/* 809C7E4C  88 03 09 3D */	lbz r0, 0x93d(r3)
/* 809C7E50  28 00 00 00 */	cmplwi r0, 0
/* 809C7E54  41 82 00 10 */	beq lbl_809C7E64
/* 809C7E58  38 00 00 07 */	li r0, 7
/* 809C7E5C  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 809C7E60  48 00 00 A8 */	b lbl_809C7F08
lbl_809C7E64:
/* 809C7E64  38 00 00 08 */	li r0, 8
/* 809C7E68  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 809C7E6C  48 00 00 9C */	b lbl_809C7F08
lbl_809C7E70:
/* 809C7E70  80 1E 09 54 */	lwz r0, 0x954(r30)
/* 809C7E74  2C 00 00 00 */	cmpwi r0, 0
/* 809C7E78  40 82 00 90 */	bne lbl_809C7F08
/* 809C7E7C  88 1E 16 90 */	lbz r0, 0x1690(r30)
/* 809C7E80  28 00 00 02 */	cmplwi r0, 2
/* 809C7E84  40 82 00 14 */	bne lbl_809C7E98
/* 809C7E88  7F C3 F3 78 */	mr r3, r30
/* 809C7E8C  38 80 00 00 */	li r4, 0
/* 809C7E90  4B FF B1 E1 */	bl setLookMode__11daNpc_grA_cFi
/* 809C7E94  48 00 00 74 */	b lbl_809C7F08
lbl_809C7E98:
/* 809C7E98  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 809C7E9C  4B 78 88 51 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809C7EA0  28 03 00 00 */	cmplwi r3, 0
/* 809C7EA4  41 82 00 20 */	beq lbl_809C7EC4
/* 809C7EA8  7F C3 F3 78 */	mr r3, r30
/* 809C7EAC  4B FF B5 79 */	bl chkFindPlayer__11daNpc_grA_cFv
/* 809C7EB0  2C 03 00 00 */	cmpwi r3, 0
/* 809C7EB4  40 82 00 28 */	bne lbl_809C7EDC
/* 809C7EB8  38 00 00 00 */	li r0, 0
/* 809C7EBC  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 809C7EC0  48 00 00 1C */	b lbl_809C7EDC
lbl_809C7EC4:
/* 809C7EC4  7F C3 F3 78 */	mr r3, r30
/* 809C7EC8  4B FF B5 5D */	bl chkFindPlayer__11daNpc_grA_cFv
/* 809C7ECC  2C 03 00 00 */	cmpwi r3, 0
/* 809C7ED0  41 82 00 0C */	beq lbl_809C7EDC
/* 809C7ED4  38 00 00 00 */	li r0, 0
/* 809C7ED8  90 1E 09 6C */	stw r0, 0x96c(r30)
lbl_809C7EDC:
/* 809C7EDC  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 809C7EE0  4B 78 88 0D */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809C7EE4  28 03 00 00 */	cmplwi r3, 0
/* 809C7EE8  41 82 00 14 */	beq lbl_809C7EFC
/* 809C7EEC  7F C3 F3 78 */	mr r3, r30
/* 809C7EF0  38 80 00 02 */	li r4, 2
/* 809C7EF4  4B FF B1 7D */	bl setLookMode__11daNpc_grA_cFi
/* 809C7EF8  48 00 00 10 */	b lbl_809C7F08
lbl_809C7EFC:
/* 809C7EFC  7F C3 F3 78 */	mr r3, r30
/* 809C7F00  38 80 00 00 */	li r4, 0
/* 809C7F04  4B FF B1 6D */	bl setLookMode__11daNpc_grA_cFi
lbl_809C7F08:
/* 809C7F08  38 60 00 01 */	li r3, 1
/* 809C7F0C  39 61 00 40 */	addi r11, r1, 0x40
/* 809C7F10  4B 99 A3 15 */	bl _restgpr_28
/* 809C7F14  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809C7F18  7C 08 03 A6 */	mtlr r0
/* 809C7F1C  38 21 00 40 */	addi r1, r1, 0x40
/* 809C7F20  4E 80 00 20 */	blr 
