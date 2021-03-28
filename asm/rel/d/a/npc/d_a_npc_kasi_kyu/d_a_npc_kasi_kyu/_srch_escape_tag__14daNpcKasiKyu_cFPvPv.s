lbl_80A23CF8:
/* 80A23CF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A23CFC  7C 08 02 A6 */	mflr r0
/* 80A23D00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A23D04  39 61 00 20 */	addi r11, r1, 0x20
/* 80A23D08  4B 93 E4 D4 */	b _savegpr_29
/* 80A23D0C  7C 7D 1B 78 */	mr r29, r3
/* 80A23D10  7C 9E 23 78 */	mr r30, r4
/* 80A23D14  3C 80 80 A2 */	lis r4, lit_1109@ha
/* 80A23D18  3B E4 60 10 */	addi r31, r4, lit_1109@l
/* 80A23D1C  4B 5F 4F C4 */	b fopAc_IsActor__FPv
/* 80A23D20  2C 03 00 00 */	cmpwi r3, 0
/* 80A23D24  40 82 00 0C */	bne lbl_80A23D30
/* 80A23D28  38 60 00 00 */	li r3, 0
/* 80A23D2C  48 00 00 84 */	b lbl_80A23DB0
lbl_80A23D30:
/* 80A23D30  A8 1D 00 08 */	lha r0, 8(r29)
/* 80A23D34  2C 00 02 8A */	cmpwi r0, 0x28a
/* 80A23D38  41 82 00 0C */	beq lbl_80A23D44
/* 80A23D3C  38 60 00 00 */	li r3, 0
/* 80A23D40  48 00 00 70 */	b lbl_80A23DB0
lbl_80A23D44:
/* 80A23D44  7F C3 F3 78 */	mr r3, r30
/* 80A23D48  7F A4 EB 78 */	mr r4, r29
/* 80A23D4C  4B 5F 69 C4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A23D50  7C 64 1B 78 */	mr r4, r3
/* 80A23D54  A8 7F 00 58 */	lha r3, 0x58(r31)
/* 80A23D58  4B 84 D0 CC */	b cLib_distanceAngleS__Fss
/* 80A23D5C  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 80A23D60  28 00 00 00 */	cmplwi r0, 0
/* 80A23D64  40 82 00 20 */	bne lbl_80A23D84
/* 80A23D68  7F C3 F3 78 */	mr r3, r30
/* 80A23D6C  7F A4 EB 78 */	mr r4, r29
/* 80A23D70  4B 5F 6D 24 */	b fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A23D74  D0 3F 00 54 */	stfs f1, 0x54(r31)
/* 80A23D78  93 BF 00 50 */	stw r29, 0x50(r31)
/* 80A23D7C  38 60 00 00 */	li r3, 0
/* 80A23D80  48 00 00 30 */	b lbl_80A23DB0
lbl_80A23D84:
/* 80A23D84  2C 03 40 00 */	cmpwi r3, 0x4000
/* 80A23D88  40 81 00 24 */	ble lbl_80A23DAC
/* 80A23D8C  7F C3 F3 78 */	mr r3, r30
/* 80A23D90  7F A4 EB 78 */	mr r4, r29
/* 80A23D94  4B 5F 6D 00 */	b fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A23D98  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80A23D9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A23DA0  40 80 00 0C */	bge lbl_80A23DAC
/* 80A23DA4  D0 3F 00 54 */	stfs f1, 0x54(r31)
/* 80A23DA8  93 BF 00 50 */	stw r29, 0x50(r31)
lbl_80A23DAC:
/* 80A23DAC  38 60 00 00 */	li r3, 0
lbl_80A23DB0:
/* 80A23DB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A23DB4  4B 93 E4 74 */	b _restgpr_29
/* 80A23DB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A23DBC  7C 08 03 A6 */	mtlr r0
/* 80A23DC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80A23DC4  4E 80 00 20 */	blr 
