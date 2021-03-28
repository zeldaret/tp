lbl_80974A28:
/* 80974A28  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80974A2C  7C 08 02 A6 */	mflr r0
/* 80974A30  90 01 00 54 */	stw r0, 0x54(r1)
/* 80974A34  39 61 00 50 */	addi r11, r1, 0x50
/* 80974A38  4B 9E D7 A0 */	b _savegpr_28
/* 80974A3C  7C 7D 1B 78 */	mr r29, r3
/* 80974A40  3C 80 80 98 */	lis r4, cNullVec__6Z2Calc@ha
/* 80974A44  3B C4 87 A4 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80974A48  3C 80 80 98 */	lis r4, m__17daNpcBouS_Param_c@ha
/* 80974A4C  3B E4 84 10 */	addi r31, r4, m__17daNpcBouS_Param_c@l
/* 80974A50  A0 03 0D FC */	lhz r0, 0xdfc(r3)
/* 80974A54  2C 00 00 02 */	cmpwi r0, 2
/* 80974A58  41 82 00 6C */	beq lbl_80974AC4
/* 80974A5C  40 80 06 44 */	bge lbl_809750A0
/* 80974A60  2C 00 00 00 */	cmpwi r0, 0
/* 80974A64  41 82 00 0C */	beq lbl_80974A70
/* 80974A68  48 00 06 38 */	b lbl_809750A0
/* 80974A6C  48 00 06 34 */	b lbl_809750A0
lbl_80974A70:
/* 80974A70  38 80 00 05 */	li r4, 5
/* 80974A74  C0 3F 02 E4 */	lfs f1, 0x2e4(r31)
/* 80974A78  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80974A7C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80974A80  7D 89 03 A6 */	mtctr r12
/* 80974A84  4E 80 04 21 */	bctrl 
/* 80974A88  7F A3 EB 78 */	mr r3, r29
/* 80974A8C  38 80 00 06 */	li r4, 6
/* 80974A90  C0 3F 02 E4 */	lfs f1, 0x2e4(r31)
/* 80974A94  38 A0 00 00 */	li r5, 0
/* 80974A98  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80974A9C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80974AA0  7D 89 03 A6 */	mtctr r12
/* 80974AA4  4E 80 04 21 */	bctrl 
/* 80974AA8  38 00 00 00 */	li r0, 0
/* 80974AAC  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80974AB0  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80974AB4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80974AB8  38 00 00 02 */	li r0, 2
/* 80974ABC  B0 1D 0D FC */	sth r0, 0xdfc(r29)
/* 80974AC0  48 00 05 E0 */	b lbl_809750A0
lbl_80974AC4:
/* 80974AC4  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 80974AC8  4B 7D BC 24 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80974ACC  28 03 00 00 */	cmplwi r3, 0
/* 80974AD0  41 82 00 94 */	beq lbl_80974B64
/* 80974AD4  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 80974AD8  4B 7D BC 14 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80974ADC  28 03 00 00 */	cmplwi r3, 0
/* 80974AE0  40 82 00 28 */	bne lbl_80974B08
/* 80974AE4  7F A3 EB 78 */	mr r3, r29
/* 80974AE8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80974AEC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80974AF0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80974AF4  7F A5 EB 78 */	mr r5, r29
/* 80974AF8  88 DD 05 47 */	lbz r6, 0x547(r29)
/* 80974AFC  4B 7D F0 E0 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80974B00  7C 7C 1B 78 */	mr r28, r3
/* 80974B04  48 00 00 24 */	b lbl_80974B28
lbl_80974B08:
/* 80974B08  7F A3 EB 78 */	mr r3, r29
/* 80974B0C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80974B10  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80974B14  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80974B18  7F A5 EB 78 */	mr r5, r29
/* 80974B1C  88 DD 05 45 */	lbz r6, 0x545(r29)
/* 80974B20  4B 7D F0 BC */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80974B24  7C 7C 1B 78 */	mr r28, r3
lbl_80974B28:
/* 80974B28  2C 1C 00 00 */	cmpwi r28, 0
/* 80974B2C  41 82 00 1C */	beq lbl_80974B48
/* 80974B30  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 80974B34  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80974B38  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80974B3C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80974B40  4B 7D BB 7C */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80974B44  48 00 00 0C */	b lbl_80974B50
lbl_80974B48:
/* 80974B48  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 80974B4C  4B 7D BB 94 */	b remove__18daNpcF_ActorMngr_cFv
lbl_80974B50:
/* 80974B50  2C 1C 00 00 */	cmpwi r28, 0
/* 80974B54  40 82 00 9C */	bne lbl_80974BF0
/* 80974B58  38 00 00 00 */	li r0, 0
/* 80974B5C  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80974B60  48 00 00 90 */	b lbl_80974BF0
lbl_80974B64:
/* 80974B64  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 80974B68  4B 7D BB 84 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80974B6C  28 03 00 00 */	cmplwi r3, 0
/* 80974B70  40 82 00 28 */	bne lbl_80974B98
/* 80974B74  7F A3 EB 78 */	mr r3, r29
/* 80974B78  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80974B7C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80974B80  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80974B84  7F A5 EB 78 */	mr r5, r29
/* 80974B88  88 DD 05 47 */	lbz r6, 0x547(r29)
/* 80974B8C  4B 7D F0 50 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80974B90  7C 7C 1B 78 */	mr r28, r3
/* 80974B94  48 00 00 24 */	b lbl_80974BB8
lbl_80974B98:
/* 80974B98  7F A3 EB 78 */	mr r3, r29
/* 80974B9C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80974BA0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80974BA4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80974BA8  7F A5 EB 78 */	mr r5, r29
/* 80974BAC  88 DD 05 45 */	lbz r6, 0x545(r29)
/* 80974BB0  4B 7D F0 2C */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80974BB4  7C 7C 1B 78 */	mr r28, r3
lbl_80974BB8:
/* 80974BB8  2C 1C 00 00 */	cmpwi r28, 0
/* 80974BBC  41 82 00 1C */	beq lbl_80974BD8
/* 80974BC0  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 80974BC4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80974BC8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80974BCC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80974BD0  4B 7D BA EC */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80974BD4  48 00 00 0C */	b lbl_80974BE0
lbl_80974BD8:
/* 80974BD8  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 80974BDC  4B 7D BB 04 */	b remove__18daNpcF_ActorMngr_cFv
lbl_80974BE0:
/* 80974BE0  2C 1C 00 00 */	cmpwi r28, 0
/* 80974BE4  41 82 00 0C */	beq lbl_80974BF0
/* 80974BE8  38 00 00 00 */	li r0, 0
/* 80974BEC  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80974BF0:
/* 80974BF0  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 80974BF4  4B 7D BA F8 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80974BF8  28 03 00 00 */	cmplwi r3, 0
/* 80974BFC  41 82 00 1C */	beq lbl_80974C18
/* 80974C00  A8 1D 0D F8 */	lha r0, 0xdf8(r29)
/* 80974C04  2C 00 00 02 */	cmpwi r0, 2
/* 80974C08  41 82 01 B8 */	beq lbl_80974DC0
/* 80974C0C  38 00 00 02 */	li r0, 2
/* 80974C10  B0 1D 0D F8 */	sth r0, 0xdf8(r29)
/* 80974C14  48 00 01 AC */	b lbl_80974DC0
lbl_80974C18:
/* 80974C18  A8 1D 0D F8 */	lha r0, 0xdf8(r29)
/* 80974C1C  2C 00 00 00 */	cmpwi r0, 0
/* 80974C20  41 82 00 0C */	beq lbl_80974C2C
/* 80974C24  38 00 00 00 */	li r0, 0
/* 80974C28  B0 1D 0D F8 */	sth r0, 0xdf8(r29)
lbl_80974C2C:
/* 80974C2C  AB 9D 04 B6 */	lha r28, 0x4b6(r29)
/* 80974C30  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80974C34  7C 1C 00 00 */	cmpw r28, r0
/* 80974C38  41 82 01 88 */	beq lbl_80974DC0
/* 80974C3C  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80974C40  2C 03 00 00 */	cmpwi r3, 0
/* 80974C44  40 82 00 D0 */	bne lbl_80974D14
/* 80974C48  C0 5F 02 E8 */	lfs f2, 0x2e8(r31)
/* 80974C4C  7C 00 E0 50 */	subf r0, r0, r28
/* 80974C50  7C 00 07 34 */	extsh r0, r0
/* 80974C54  C8 3F 02 F0 */	lfd f1, 0x2f0(r31)
/* 80974C58  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80974C5C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80974C60  3C 00 43 30 */	lis r0, 0x4330
/* 80974C64  90 01 00 30 */	stw r0, 0x30(r1)
/* 80974C68  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80974C6C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80974C70  EC 02 00 32 */	fmuls f0, f2, f0
/* 80974C74  FC 00 02 10 */	fabs f0, f0
/* 80974C78  FC 00 00 18 */	frsp f0, f0
/* 80974C7C  FC 00 00 1E */	fctiwz f0, f0
/* 80974C80  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80974C84  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80974C88  2C 00 00 28 */	cmpwi r0, 0x28
/* 80974C8C  40 81 00 40 */	ble lbl_80974CCC
/* 80974C90  7F A3 EB 78 */	mr r3, r29
/* 80974C94  38 80 00 05 */	li r4, 5
/* 80974C98  C0 3F 02 E4 */	lfs f1, 0x2e4(r31)
/* 80974C9C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80974CA0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80974CA4  7D 89 03 A6 */	mtctr r12
/* 80974CA8  4E 80 04 21 */	bctrl 
/* 80974CAC  7F A3 EB 78 */	mr r3, r29
/* 80974CB0  38 80 00 13 */	li r4, 0x13
/* 80974CB4  C0 3F 02 E4 */	lfs f1, 0x2e4(r31)
/* 80974CB8  38 A0 00 00 */	li r5, 0
/* 80974CBC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80974CC0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80974CC4  7D 89 03 A6 */	mtctr r12
/* 80974CC8  4E 80 04 21 */	bctrl 
lbl_80974CCC:
/* 80974CCC  B3 9D 09 96 */	sth r28, 0x996(r29)
/* 80974CD0  38 00 00 00 */	li r0, 0
/* 80974CD4  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80974CD8  A8 7D 08 F2 */	lha r3, 0x8f2(r29)
/* 80974CDC  A8 1D 09 96 */	lha r0, 0x996(r29)
/* 80974CE0  7C 03 00 00 */	cmpw r3, r0
/* 80974CE4  40 82 00 10 */	bne lbl_80974CF4
/* 80974CE8  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80974CEC  38 03 00 01 */	addi r0, r3, 1
/* 80974CF0  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80974CF4:
/* 80974CF4  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80974CF8  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80974CFC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80974D00  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80974D04  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80974D08  38 03 00 01 */	addi r0, r3, 1
/* 80974D0C  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80974D10  48 00 00 60 */	b lbl_80974D70
lbl_80974D14:
/* 80974D14  2C 03 00 01 */	cmpwi r3, 1
/* 80974D18  40 82 00 58 */	bne lbl_80974D70
/* 80974D1C  7F A3 EB 78 */	mr r3, r29
/* 80974D20  A8 9D 09 96 */	lha r4, 0x996(r29)
/* 80974D24  C0 3F 02 EC */	lfs f1, 0x2ec(r31)
/* 80974D28  38 A0 00 00 */	li r5, 0
/* 80974D2C  4B 7D F1 C8 */	b turn__8daNpcF_cFsfi
/* 80974D30  2C 03 00 00 */	cmpwi r3, 0
/* 80974D34  41 82 00 2C */	beq lbl_80974D60
/* 80974D38  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80974D3C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80974D40  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80974D44  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80974D48  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80974D4C  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 80974D50  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80974D54  38 03 00 01 */	addi r0, r3, 1
/* 80974D58  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80974D5C  48 00 00 14 */	b lbl_80974D70
lbl_80974D60:
/* 80974D60  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80974D64  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80974D68  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80974D6C  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
lbl_80974D70:
/* 80974D70  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80974D74  2C 00 00 01 */	cmpwi r0, 1
/* 80974D78  40 81 00 48 */	ble lbl_80974DC0
/* 80974D7C  7F A3 EB 78 */	mr r3, r29
/* 80974D80  38 80 00 05 */	li r4, 5
/* 80974D84  C0 3F 02 E4 */	lfs f1, 0x2e4(r31)
/* 80974D88  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80974D8C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80974D90  7D 89 03 A6 */	mtctr r12
/* 80974D94  4E 80 04 21 */	bctrl 
/* 80974D98  7F A3 EB 78 */	mr r3, r29
/* 80974D9C  38 80 00 06 */	li r4, 6
/* 80974DA0  C0 3F 02 E4 */	lfs f1, 0x2e4(r31)
/* 80974DA4  38 A0 00 00 */	li r5, 0
/* 80974DA8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80974DAC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80974DB0  7D 89 03 A6 */	mtctr r12
/* 80974DB4  4E 80 04 21 */	bctrl 
/* 80974DB8  38 00 00 00 */	li r0, 0
/* 80974DBC  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80974DC0:
/* 80974DC0  38 60 00 45 */	li r3, 0x45
/* 80974DC4  38 80 00 01 */	li r4, 1
/* 80974DC8  4B 72 31 18 */	b checkItemGet__FUci
/* 80974DCC  2C 03 00 00 */	cmpwi r3, 0
/* 80974DD0  40 82 00 28 */	bne lbl_80974DF8
/* 80974DD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80974DD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80974DDC  38 63 09 58 */	addi r3, r3, 0x958
/* 80974DE0  38 80 00 02 */	li r4, 2
/* 80974DE4  4B 6B FA 04 */	b isTbox__12dSv_memBit_cCFi
/* 80974DE8  2C 03 00 00 */	cmpwi r3, 0
/* 80974DEC  41 82 00 0C */	beq lbl_80974DF8
/* 80974DF0  38 00 00 01 */	li r0, 1
/* 80974DF4  98 1D 0D FE */	stb r0, 0xdfe(r29)
lbl_80974DF8:
/* 80974DF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80974DFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80974E00  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80974E04  28 00 00 00 */	cmplwi r0, 0
/* 80974E08  41 82 02 4C */	beq lbl_80975054
/* 80974E0C  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80974E10  28 00 00 01 */	cmplwi r0, 1
/* 80974E14  40 82 01 98 */	bne lbl_80974FAC
/* 80974E18  38 00 00 00 */	li r0, 0
/* 80974E1C  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80974E20  28 04 00 01 */	cmplwi r4, 1
/* 80974E24  41 82 00 0C */	beq lbl_80974E30
/* 80974E28  28 04 00 02 */	cmplwi r4, 2
/* 80974E2C  40 82 00 08 */	bne lbl_80974E34
lbl_80974E30:
/* 80974E30  38 00 00 01 */	li r0, 1
lbl_80974E34:
/* 80974E34  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80974E38  41 82 00 14 */	beq lbl_80974E4C
/* 80974E3C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80974E40  4B 6D 39 B0 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80974E44  2C 03 00 00 */	cmpwi r3, 0
/* 80974E48  41 82 02 58 */	beq lbl_809750A0
lbl_80974E4C:
/* 80974E4C  38 60 00 E7 */	li r3, 0xe7
/* 80974E50  4B 7E 07 E4 */	b daNpcF_chkEvtBit__FUl
/* 80974E54  2C 03 00 00 */	cmpwi r3, 0
/* 80974E58  41 82 00 90 */	beq lbl_80974EE8
/* 80974E5C  80 7E 02 20 */	lwz r3, 0x220(r30)
/* 80974E60  80 1E 02 24 */	lwz r0, 0x224(r30)
/* 80974E64  90 61 00 20 */	stw r3, 0x20(r1)
/* 80974E68  90 01 00 24 */	stw r0, 0x24(r1)
/* 80974E6C  80 1E 02 28 */	lwz r0, 0x228(r30)
/* 80974E70  90 01 00 28 */	stw r0, 0x28(r1)
/* 80974E74  38 00 00 03 */	li r0, 3
/* 80974E78  B0 1D 0D FC */	sth r0, 0xdfc(r29)
/* 80974E7C  38 7D 0D C0 */	addi r3, r29, 0xdc0
/* 80974E80  4B 9E D1 98 */	b __ptmf_test
/* 80974E84  2C 03 00 00 */	cmpwi r3, 0
/* 80974E88  41 82 00 18 */	beq lbl_80974EA0
/* 80974E8C  7F A3 EB 78 */	mr r3, r29
/* 80974E90  38 80 00 00 */	li r4, 0
/* 80974E94  39 9D 0D C0 */	addi r12, r29, 0xdc0
/* 80974E98  4B 9E D1 EC */	b __ptmf_scall
/* 80974E9C  60 00 00 00 */	nop 
lbl_80974EA0:
/* 80974EA0  38 00 00 00 */	li r0, 0
/* 80974EA4  B0 1D 0D FC */	sth r0, 0xdfc(r29)
/* 80974EA8  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80974EAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80974EB0  90 7D 0D C0 */	stw r3, 0xdc0(r29)
/* 80974EB4  90 1D 0D C4 */	stw r0, 0xdc4(r29)
/* 80974EB8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80974EBC  90 1D 0D C8 */	stw r0, 0xdc8(r29)
/* 80974EC0  38 7D 0D C0 */	addi r3, r29, 0xdc0
/* 80974EC4  4B 9E D1 54 */	b __ptmf_test
/* 80974EC8  2C 03 00 00 */	cmpwi r3, 0
/* 80974ECC  41 82 01 D4 */	beq lbl_809750A0
/* 80974ED0  7F A3 EB 78 */	mr r3, r29
/* 80974ED4  38 80 00 00 */	li r4, 0
/* 80974ED8  39 9D 0D C0 */	addi r12, r29, 0xdc0
/* 80974EDC  4B 9E D1 A8 */	b __ptmf_scall
/* 80974EE0  60 00 00 00 */	nop 
/* 80974EE4  48 00 01 BC */	b lbl_809750A0
lbl_80974EE8:
/* 80974EE8  38 00 00 02 */	li r0, 2
/* 80974EEC  B0 1D 09 E6 */	sth r0, 0x9e6(r29)
/* 80974EF0  7F A3 EB 78 */	mr r3, r29
/* 80974EF4  3C 80 80 98 */	lis r4, stringBase0@ha
/* 80974EF8  38 84 87 58 */	addi r4, r4, stringBase0@l
/* 80974EFC  38 84 00 04 */	addi r4, r4, 4
/* 80974F00  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80974F04  54 00 10 3A */	slwi r0, r0, 2
/* 80974F08  38 BE 01 84 */	addi r5, r30, 0x184
/* 80974F0C  7C A5 00 2E */	lwzx r5, r5, r0
/* 80974F10  38 C0 00 01 */	li r6, 1
/* 80974F14  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80974F18  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80974F1C  4B 7D EA 38 */	b changeEvent__8daNpcF_cFPcPcUsUs
/* 80974F20  80 7E 02 2C */	lwz r3, 0x22c(r30)
/* 80974F24  80 1E 02 30 */	lwz r0, 0x230(r30)
/* 80974F28  90 61 00 14 */	stw r3, 0x14(r1)
/* 80974F2C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80974F30  80 1E 02 34 */	lwz r0, 0x234(r30)
/* 80974F34  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80974F38  38 00 00 03 */	li r0, 3
/* 80974F3C  B0 1D 0D FC */	sth r0, 0xdfc(r29)
/* 80974F40  38 7D 0D C0 */	addi r3, r29, 0xdc0
/* 80974F44  4B 9E D0 D4 */	b __ptmf_test
/* 80974F48  2C 03 00 00 */	cmpwi r3, 0
/* 80974F4C  41 82 00 18 */	beq lbl_80974F64
/* 80974F50  7F A3 EB 78 */	mr r3, r29
/* 80974F54  38 80 00 00 */	li r4, 0
/* 80974F58  39 9D 0D C0 */	addi r12, r29, 0xdc0
/* 80974F5C  4B 9E D1 28 */	b __ptmf_scall
/* 80974F60  60 00 00 00 */	nop 
lbl_80974F64:
/* 80974F64  38 00 00 00 */	li r0, 0
/* 80974F68  B0 1D 0D FC */	sth r0, 0xdfc(r29)
/* 80974F6C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80974F70  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80974F74  90 7D 0D C0 */	stw r3, 0xdc0(r29)
/* 80974F78  90 1D 0D C4 */	stw r0, 0xdc4(r29)
/* 80974F7C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80974F80  90 1D 0D C8 */	stw r0, 0xdc8(r29)
/* 80974F84  38 7D 0D C0 */	addi r3, r29, 0xdc0
/* 80974F88  4B 9E D0 90 */	b __ptmf_test
/* 80974F8C  2C 03 00 00 */	cmpwi r3, 0
/* 80974F90  41 82 01 10 */	beq lbl_809750A0
/* 80974F94  7F A3 EB 78 */	mr r3, r29
/* 80974F98  38 80 00 00 */	li r4, 0
/* 80974F9C  39 9D 0D C0 */	addi r12, r29, 0xdc0
/* 80974FA0  4B 9E D0 E4 */	b __ptmf_scall
/* 80974FA4  60 00 00 00 */	nop 
/* 80974FA8  48 00 00 F8 */	b lbl_809750A0
lbl_80974FAC:
/* 80974FAC  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80974FB0  80 9E 01 94 */	lwz r4, 0x194(r30)
/* 80974FB4  38 A0 00 00 */	li r5, 0
/* 80974FB8  38 C0 00 00 */	li r6, 0
/* 80974FBC  4B 6D 2B 60 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80974FC0  2C 03 FF FF */	cmpwi r3, -1
/* 80974FC4  41 82 00 DC */	beq lbl_809750A0
/* 80974FC8  80 7E 02 38 */	lwz r3, 0x238(r30)
/* 80974FCC  80 1E 02 3C */	lwz r0, 0x23c(r30)
/* 80974FD0  90 61 00 08 */	stw r3, 8(r1)
/* 80974FD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80974FD8  80 1E 02 40 */	lwz r0, 0x240(r30)
/* 80974FDC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80974FE0  38 00 00 03 */	li r0, 3
/* 80974FE4  B0 1D 0D FC */	sth r0, 0xdfc(r29)
/* 80974FE8  38 7D 0D C0 */	addi r3, r29, 0xdc0
/* 80974FEC  4B 9E D0 2C */	b __ptmf_test
/* 80974FF0  2C 03 00 00 */	cmpwi r3, 0
/* 80974FF4  41 82 00 18 */	beq lbl_8097500C
/* 80974FF8  7F A3 EB 78 */	mr r3, r29
/* 80974FFC  38 80 00 00 */	li r4, 0
/* 80975000  39 9D 0D C0 */	addi r12, r29, 0xdc0
/* 80975004  4B 9E D0 80 */	b __ptmf_scall
/* 80975008  60 00 00 00 */	nop 
lbl_8097500C:
/* 8097500C  38 00 00 00 */	li r0, 0
/* 80975010  B0 1D 0D FC */	sth r0, 0xdfc(r29)
/* 80975014  80 61 00 08 */	lwz r3, 8(r1)
/* 80975018  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8097501C  90 7D 0D C0 */	stw r3, 0xdc0(r29)
/* 80975020  90 1D 0D C4 */	stw r0, 0xdc4(r29)
/* 80975024  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80975028  90 1D 0D C8 */	stw r0, 0xdc8(r29)
/* 8097502C  38 7D 0D C0 */	addi r3, r29, 0xdc0
/* 80975030  4B 9E CF E8 */	b __ptmf_test
/* 80975034  2C 03 00 00 */	cmpwi r3, 0
/* 80975038  41 82 00 68 */	beq lbl_809750A0
/* 8097503C  7F A3 EB 78 */	mr r3, r29
/* 80975040  38 80 00 00 */	li r4, 0
/* 80975044  39 9D 0D C0 */	addi r12, r29, 0xdc0
/* 80975048  4B 9E D0 3C */	b __ptmf_scall
/* 8097504C  60 00 00 00 */	nop 
/* 80975050  48 00 00 50 */	b lbl_809750A0
lbl_80975054:
/* 80975054  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80975058  28 00 00 00 */	cmplwi r0, 0
/* 8097505C  41 82 00 14 */	beq lbl_80975070
/* 80975060  3C 60 80 98 */	lis r3, stringBase0@ha
/* 80975064  38 63 87 58 */	addi r3, r3, stringBase0@l
/* 80975068  38 03 00 04 */	addi r0, r3, 4
/* 8097506C  90 1D 01 00 */	stw r0, 0x100(r29)
lbl_80975070:
/* 80975070  7F A3 EB 78 */	mr r3, r29
/* 80975074  88 9D 0D FE */	lbz r4, 0xdfe(r29)
/* 80975078  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 8097507C  54 00 10 3A */	slwi r0, r0, 2
/* 80975080  38 BE 01 84 */	addi r5, r30, 0x184
/* 80975084  7C A5 00 2E */	lwzx r5, r5, r0
/* 80975088  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8097508C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80975090  38 E0 00 28 */	li r7, 0x28
/* 80975094  39 00 00 FF */	li r8, 0xff
/* 80975098  39 20 00 01 */	li r9, 1
/* 8097509C  4B 7D E7 E0 */	b orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_809750A0:
/* 809750A0  38 60 00 01 */	li r3, 1
/* 809750A4  39 61 00 50 */	addi r11, r1, 0x50
/* 809750A8  4B 9E D1 7C */	b _restgpr_28
/* 809750AC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 809750B0  7C 08 03 A6 */	mtlr r0
/* 809750B4  38 21 00 50 */	addi r1, r1, 0x50
/* 809750B8  4E 80 00 20 */	blr 
