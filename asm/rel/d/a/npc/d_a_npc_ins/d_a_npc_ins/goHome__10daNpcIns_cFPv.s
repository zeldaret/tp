lbl_80A10CD8:
/* 80A10CD8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A10CDC  7C 08 02 A6 */	mflr r0
/* 80A10CE0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A10CE4  39 61 00 70 */	addi r11, r1, 0x70
/* 80A10CE8  4B 95 14 ED */	bl _savegpr_27
/* 80A10CEC  7C 7D 1B 78 */	mr r29, r3
/* 80A10CF0  3C 80 80 A1 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80A1419C@ha */
/* 80A10CF4  3B C4 41 9C */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80A1419C@l */
/* 80A10CF8  3C 80 80 A1 */	lis r4, l_insectParams@ha /* 0x80A13DAC@ha */
/* 80A10CFC  3B E4 3D AC */	addi r31, r4, l_insectParams@l /* 0x80A13DAC@l */
/* 80A10D00  A0 03 0E 1E */	lhz r0, 0xe1e(r3)
/* 80A10D04  2C 00 00 02 */	cmpwi r0, 2
/* 80A10D08  41 82 01 D4 */	beq lbl_80A10EDC
/* 80A10D0C  40 80 06 08 */	bge lbl_80A11314
/* 80A10D10  2C 00 00 00 */	cmpwi r0, 0
/* 80A10D14  41 82 00 0C */	beq lbl_80A10D20
/* 80A10D18  48 00 05 FC */	b lbl_80A11314
/* 80A10D1C  48 00 05 F8 */	b lbl_80A11314
lbl_80A10D20:
/* 80A10D20  80 9D 0E 08 */	lwz r4, 0xe08(r29)
/* 80A10D24  38 A1 00 20 */	addi r5, r1, 0x20
/* 80A10D28  48 00 17 59 */	bl getTargetPoint__10daNpcIns_cFiP3Vec
/* 80A10D2C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80A10D30  38 81 00 20 */	addi r4, r1, 0x20
/* 80A10D34  4B 85 FE D1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80A10D38  7C 7C 1B 78 */	mr r28, r3
/* 80A10D3C  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80A10D40  2C 00 00 00 */	cmpwi r0, 0
/* 80A10D44  40 82 00 D4 */	bne lbl_80A10E18
/* 80A10D48  C0 5F 03 70 */	lfs f2, 0x370(r31)
/* 80A10D4C  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80A10D50  7C 00 E0 50 */	subf r0, r0, r28
/* 80A10D54  7C 00 07 34 */	extsh r0, r0
/* 80A10D58  C8 3F 03 78 */	lfd f1, 0x378(r31)
/* 80A10D5C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A10D60  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A10D64  3C 00 43 30 */	lis r0, 0x4330
/* 80A10D68  90 01 00 40 */	stw r0, 0x40(r1)
/* 80A10D6C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80A10D70  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A10D74  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A10D78  FC 00 02 10 */	fabs f0, f0
/* 80A10D7C  FC 00 00 18 */	frsp f0, f0
/* 80A10D80  FC 00 00 1E */	fctiwz f0, f0
/* 80A10D84  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80A10D88  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80A10D8C  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A10D90  40 81 00 40 */	ble lbl_80A10DD0
/* 80A10D94  7F A3 EB 78 */	mr r3, r29
/* 80A10D98  38 80 00 09 */	li r4, 9
/* 80A10D9C  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A10DA0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A10DA4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A10DA8  7D 89 03 A6 */	mtctr r12
/* 80A10DAC  4E 80 04 21 */	bctrl 
/* 80A10DB0  7F A3 EB 78 */	mr r3, r29
/* 80A10DB4  38 80 00 0B */	li r4, 0xb
/* 80A10DB8  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A10DBC  38 A0 00 00 */	li r5, 0
/* 80A10DC0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A10DC4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A10DC8  7D 89 03 A6 */	mtctr r12
/* 80A10DCC  4E 80 04 21 */	bctrl 
lbl_80A10DD0:
/* 80A10DD0  B3 9D 09 96 */	sth r28, 0x996(r29)
/* 80A10DD4  38 00 00 00 */	li r0, 0
/* 80A10DD8  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80A10DDC  A8 7D 08 F2 */	lha r3, 0x8f2(r29)
/* 80A10DE0  A8 1D 09 96 */	lha r0, 0x996(r29)
/* 80A10DE4  7C 03 00 00 */	cmpw r3, r0
/* 80A10DE8  40 82 00 10 */	bne lbl_80A10DF8
/* 80A10DEC  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A10DF0  38 03 00 01 */	addi r0, r3, 1
/* 80A10DF4  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80A10DF8:
/* 80A10DF8  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80A10DFC  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80A10E00  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A10E04  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A10E08  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A10E0C  38 03 00 01 */	addi r0, r3, 1
/* 80A10E10  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A10E14  48 00 00 60 */	b lbl_80A10E74
lbl_80A10E18:
/* 80A10E18  2C 00 00 01 */	cmpwi r0, 1
/* 80A10E1C  40 82 00 58 */	bne lbl_80A10E74
/* 80A10E20  7F A3 EB 78 */	mr r3, r29
/* 80A10E24  A8 9D 09 96 */	lha r4, 0x996(r29)
/* 80A10E28  C0 3F 03 74 */	lfs f1, 0x374(r31)
/* 80A10E2C  38 A0 00 00 */	li r5, 0
/* 80A10E30  4B 74 30 C5 */	bl turn__8daNpcF_cFsfi
/* 80A10E34  2C 03 00 00 */	cmpwi r3, 0
/* 80A10E38  41 82 00 2C */	beq lbl_80A10E64
/* 80A10E3C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A10E40  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A10E44  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A10E48  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80A10E4C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A10E50  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 80A10E54  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A10E58  38 03 00 01 */	addi r0, r3, 1
/* 80A10E5C  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A10E60  48 00 00 14 */	b lbl_80A10E74
lbl_80A10E64:
/* 80A10E64  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A10E68  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A10E6C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A10E70  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
lbl_80A10E74:
/* 80A10E74  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80A10E78  2C 00 00 01 */	cmpwi r0, 1
/* 80A10E7C  40 81 04 98 */	ble lbl_80A11314
/* 80A10E80  7F A3 EB 78 */	mr r3, r29
/* 80A10E84  38 80 00 09 */	li r4, 9
/* 80A10E88  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A10E8C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A10E90  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A10E94  7D 89 03 A6 */	mtctr r12
/* 80A10E98  4E 80 04 21 */	bctrl 
/* 80A10E9C  7F A3 EB 78 */	mr r3, r29
/* 80A10EA0  38 80 00 07 */	li r4, 7
/* 80A10EA4  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A10EA8  38 A0 00 00 */	li r5, 0
/* 80A10EAC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A10EB0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A10EB4  7D 89 03 A6 */	mtctr r12
/* 80A10EB8  4E 80 04 21 */	bctrl 
/* 80A10EBC  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80A10EC0  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80A10EC4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A10EC8  38 00 00 27 */	li r0, 0x27
/* 80A10ECC  B0 1D 0E 18 */	sth r0, 0xe18(r29)
/* 80A10ED0  38 00 00 02 */	li r0, 2
/* 80A10ED4  B0 1D 0E 1E */	sth r0, 0xe1e(r29)
/* 80A10ED8  48 00 04 3C */	b lbl_80A11314
lbl_80A10EDC:
/* 80A10EDC  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80A10EE0  4B 73 F8 0D */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A10EE4  28 03 00 00 */	cmplwi r3, 0
/* 80A10EE8  41 82 00 B0 */	beq lbl_80A10F98
/* 80A10EEC  7F A3 EB 78 */	mr r3, r29
/* 80A10EF0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A10EF4  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A10EF8  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A10EFC  38 BF 00 C0 */	addi r5, r31, 0xc0
/* 80A10F00  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 80A10F04  4B 74 2A ED */	bl chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 80A10F08  2C 03 00 00 */	cmpwi r3, 0
/* 80A10F0C  40 82 00 14 */	bne lbl_80A10F20
/* 80A10F10  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80A10F14  4B 73 F7 CD */	bl remove__18daNpcF_ActorMngr_cFv
/* 80A10F18  3B 60 00 00 */	li r27, 0
/* 80A10F1C  48 00 00 68 */	b lbl_80A10F84
lbl_80A10F20:
/* 80A10F20  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80A10F24  4B 73 F7 C9 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A10F28  28 03 00 00 */	cmplwi r3, 0
/* 80A10F2C  40 82 00 20 */	bne lbl_80A10F4C
/* 80A10F30  7F A3 EB 78 */	mr r3, r29
/* 80A10F34  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A10F38  7F A5 EB 78 */	mr r5, r29
/* 80A10F3C  88 DD 05 47 */	lbz r6, 0x547(r29)
/* 80A10F40  4B 74 2C 9D */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80A10F44  7C 7B 1B 78 */	mr r27, r3
/* 80A10F48  48 00 00 1C */	b lbl_80A10F64
lbl_80A10F4C:
/* 80A10F4C  7F A3 EB 78 */	mr r3, r29
/* 80A10F50  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A10F54  7F A5 EB 78 */	mr r5, r29
/* 80A10F58  88 DD 05 45 */	lbz r6, 0x545(r29)
/* 80A10F5C  4B 74 2C 81 */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80A10F60  7C 7B 1B 78 */	mr r27, r3
lbl_80A10F64:
/* 80A10F64  2C 1B 00 00 */	cmpwi r27, 0
/* 80A10F68  41 82 00 14 */	beq lbl_80A10F7C
/* 80A10F6C  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80A10F70  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A10F74  4B 73 F7 49 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80A10F78  48 00 00 0C */	b lbl_80A10F84
lbl_80A10F7C:
/* 80A10F7C  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80A10F80  4B 73 F7 61 */	bl remove__18daNpcF_ActorMngr_cFv
lbl_80A10F84:
/* 80A10F84  2C 1B 00 00 */	cmpwi r27, 0
/* 80A10F88  40 82 00 B8 */	bne lbl_80A11040
/* 80A10F8C  38 00 00 00 */	li r0, 0
/* 80A10F90  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A10F94  48 00 00 AC */	b lbl_80A11040
lbl_80A10F98:
/* 80A10F98  7F A3 EB 78 */	mr r3, r29
/* 80A10F9C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A10FA0  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A10FA4  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A10FA8  38 BF 00 C0 */	addi r5, r31, 0xc0
/* 80A10FAC  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 80A10FB0  4B 74 2A 41 */	bl chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 80A10FB4  2C 03 00 00 */	cmpwi r3, 0
/* 80A10FB8  40 82 00 14 */	bne lbl_80A10FCC
/* 80A10FBC  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80A10FC0  4B 73 F7 21 */	bl remove__18daNpcF_ActorMngr_cFv
/* 80A10FC4  3B 60 00 00 */	li r27, 0
/* 80A10FC8  48 00 00 68 */	b lbl_80A11030
lbl_80A10FCC:
/* 80A10FCC  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80A10FD0  4B 73 F7 1D */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A10FD4  28 03 00 00 */	cmplwi r3, 0
/* 80A10FD8  40 82 00 20 */	bne lbl_80A10FF8
/* 80A10FDC  7F A3 EB 78 */	mr r3, r29
/* 80A10FE0  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A10FE4  7F A5 EB 78 */	mr r5, r29
/* 80A10FE8  88 DD 05 47 */	lbz r6, 0x547(r29)
/* 80A10FEC  4B 74 2B F1 */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80A10FF0  7C 7B 1B 78 */	mr r27, r3
/* 80A10FF4  48 00 00 1C */	b lbl_80A11010
lbl_80A10FF8:
/* 80A10FF8  7F A3 EB 78 */	mr r3, r29
/* 80A10FFC  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A11000  7F A5 EB 78 */	mr r5, r29
/* 80A11004  88 DD 05 45 */	lbz r6, 0x545(r29)
/* 80A11008  4B 74 2B D5 */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80A1100C  7C 7B 1B 78 */	mr r27, r3
lbl_80A11010:
/* 80A11010  2C 1B 00 00 */	cmpwi r27, 0
/* 80A11014  41 82 00 14 */	beq lbl_80A11028
/* 80A11018  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80A1101C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A11020  4B 73 F6 9D */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80A11024  48 00 00 0C */	b lbl_80A11030
lbl_80A11028:
/* 80A11028  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80A1102C  4B 73 F6 B5 */	bl remove__18daNpcF_ActorMngr_cFv
lbl_80A11030:
/* 80A11030  2C 1B 00 00 */	cmpwi r27, 0
/* 80A11034  41 82 00 0C */	beq lbl_80A11040
/* 80A11038  38 00 00 00 */	li r0, 0
/* 80A1103C  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80A11040:
/* 80A11040  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80A11044  4B 73 F6 A9 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A11048  28 03 00 00 */	cmplwi r3, 0
/* 80A1104C  41 82 00 1C */	beq lbl_80A11068
/* 80A11050  A8 1D 0E 1A */	lha r0, 0xe1a(r29)
/* 80A11054  2C 00 00 02 */	cmpwi r0, 2
/* 80A11058  41 82 00 24 */	beq lbl_80A1107C
/* 80A1105C  38 00 00 02 */	li r0, 2
/* 80A11060  B0 1D 0E 1A */	sth r0, 0xe1a(r29)
/* 80A11064  48 00 00 18 */	b lbl_80A1107C
lbl_80A11068:
/* 80A11068  A8 1D 0E 1A */	lha r0, 0xe1a(r29)
/* 80A1106C  2C 00 00 00 */	cmpwi r0, 0
/* 80A11070  41 82 00 0C */	beq lbl_80A1107C
/* 80A11074  38 00 00 00 */	li r0, 0
/* 80A11078  B0 1D 0E 1A */	sth r0, 0xe1a(r29)
lbl_80A1107C:
/* 80A1107C  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80A11080  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80A11084  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A11088  7F A3 EB 78 */	mr r3, r29
/* 80A1108C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A11090  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80A11094  48 00 10 89 */	bl checkPoint__10daNpcIns_cFR4cXyzf
/* 80A11098  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A1109C  41 82 00 1C */	beq lbl_80A110B8
/* 80A110A0  7F A3 EB 78 */	mr r3, r29
/* 80A110A4  48 00 12 2D */	bl setNextPoint__10daNpcIns_cFv
/* 80A110A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A110AC  41 82 00 0C */	beq lbl_80A110B8
/* 80A110B0  7F A3 EB 78 */	mr r3, r29
/* 80A110B4  4B 60 8B C9 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80A110B8:
/* 80A110B8  7F A3 EB 78 */	mr r3, r29
/* 80A110BC  48 00 14 15 */	bl pathMoveF__10daNpcIns_cFv
/* 80A110C0  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80A110C4  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 80A110C8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A110CC  41 82 00 64 */	beq lbl_80A11130
/* 80A110D0  3C 60 80 A1 */	lis r3, __vt__8cM3dGPla@ha /* 0x80A14500@ha */
/* 80A110D4  38 03 45 00 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80A14500@l */
/* 80A110D8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A110DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A110E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A110E4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80A110E8  38 9D 06 C0 */	addi r4, r29, 0x6c0
/* 80A110EC  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80A110F0  4B 66 36 55 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80A110F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A110F8  41 82 00 18 */	beq lbl_80A11110
/* 80A110FC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80A11100  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80A11104  4B 60 CA D5 */	bl fopAcM_getPolygonAngle__FPC8cM3dGPlas
/* 80A11108  7C 60 07 34 */	extsh r0, r3
/* 80A1110C  48 00 00 08 */	b lbl_80A11114
lbl_80A11110:
/* 80A11110  38 00 00 00 */	li r0, 0
lbl_80A11114:
/* 80A11114  7C 00 07 35 */	extsh. r0, r0
/* 80A11118  41 82 00 0C */	beq lbl_80A11124
/* 80A1111C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A11120  D0 1D 0E 10 */	stfs f0, 0xe10(r29)
lbl_80A11124:
/* 80A11124  3C 60 80 A1 */	lis r3, __vt__8cM3dGPla@ha /* 0x80A14500@ha */
/* 80A11128  38 03 45 00 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80A14500@l */
/* 80A1112C  90 01 00 3C */	stw r0, 0x3c(r1)
lbl_80A11130:
/* 80A11130  38 7D 0E 10 */	addi r3, r29, 0xe10
/* 80A11134  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80A11138  C0 5F 03 80 */	lfs f2, 0x380(r31)
/* 80A1113C  C0 7F 03 84 */	lfs f3, 0x384(r31)
/* 80A11140  4B 85 E8 FD */	bl cLib_addCalc2__FPffff
/* 80A11144  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A11148  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A1114C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A11150  28 00 00 00 */	cmplwi r0, 0
/* 80A11154  41 82 01 74 */	beq lbl_80A112C8
/* 80A11158  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80A1115C  28 00 00 01 */	cmplwi r0, 1
/* 80A11160  40 82 00 A8 */	bne lbl_80A11208
/* 80A11164  80 7E 02 3C */	lwz r3, 0x23c(r30)
/* 80A11168  80 1E 02 40 */	lwz r0, 0x240(r30)
/* 80A1116C  90 61 00 08 */	stw r3, 8(r1)
/* 80A11170  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A11174  80 1E 02 44 */	lwz r0, 0x244(r30)
/* 80A11178  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A1117C  38 00 00 03 */	li r0, 3
/* 80A11180  B0 1D 0E 1E */	sth r0, 0xe1e(r29)
/* 80A11184  38 7D 0D C8 */	addi r3, r29, 0xdc8
/* 80A11188  4B 95 0E 91 */	bl __ptmf_test
/* 80A1118C  2C 03 00 00 */	cmpwi r3, 0
/* 80A11190  41 82 00 18 */	beq lbl_80A111A8
/* 80A11194  7F A3 EB 78 */	mr r3, r29
/* 80A11198  38 80 00 00 */	li r4, 0
/* 80A1119C  39 9D 0D C8 */	addi r12, r29, 0xdc8
/* 80A111A0  4B 95 0E E5 */	bl __ptmf_scall
/* 80A111A4  60 00 00 00 */	nop 
lbl_80A111A8:
/* 80A111A8  80 7D 0D C8 */	lwz r3, 0xdc8(r29)
/* 80A111AC  80 1D 0D CC */	lwz r0, 0xdcc(r29)
/* 80A111B0  90 7D 0D D4 */	stw r3, 0xdd4(r29)
/* 80A111B4  90 1D 0D D8 */	stw r0, 0xdd8(r29)
/* 80A111B8  80 1D 0D D0 */	lwz r0, 0xdd0(r29)
/* 80A111BC  90 1D 0D DC */	stw r0, 0xddc(r29)
/* 80A111C0  38 00 00 00 */	li r0, 0
/* 80A111C4  B0 1D 0E 1E */	sth r0, 0xe1e(r29)
/* 80A111C8  80 61 00 08 */	lwz r3, 8(r1)
/* 80A111CC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A111D0  90 7D 0D C8 */	stw r3, 0xdc8(r29)
/* 80A111D4  90 1D 0D CC */	stw r0, 0xdcc(r29)
/* 80A111D8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80A111DC  90 1D 0D D0 */	stw r0, 0xdd0(r29)
/* 80A111E0  38 7D 0D C8 */	addi r3, r29, 0xdc8
/* 80A111E4  4B 95 0E 35 */	bl __ptmf_test
/* 80A111E8  2C 03 00 00 */	cmpwi r3, 0
/* 80A111EC  41 82 01 28 */	beq lbl_80A11314
/* 80A111F0  7F A3 EB 78 */	mr r3, r29
/* 80A111F4  38 80 00 00 */	li r4, 0
/* 80A111F8  39 9D 0D C8 */	addi r12, r29, 0xdc8
/* 80A111FC  4B 95 0E 89 */	bl __ptmf_scall
/* 80A11200  60 00 00 00 */	nop 
/* 80A11204  48 00 01 10 */	b lbl_80A11314
lbl_80A11208:
/* 80A11208  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A1120C  80 9E 01 F8 */	lwz r4, 0x1f8(r30)
/* 80A11210  38 A0 00 00 */	li r5, 0
/* 80A11214  38 C0 00 00 */	li r6, 0
/* 80A11218  4B 63 69 05 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80A1121C  2C 03 FF FF */	cmpwi r3, -1
/* 80A11220  41 82 00 F4 */	beq lbl_80A11314
/* 80A11224  80 7E 02 48 */	lwz r3, 0x248(r30)
/* 80A11228  80 1E 02 4C */	lwz r0, 0x24c(r30)
/* 80A1122C  90 61 00 14 */	stw r3, 0x14(r1)
/* 80A11230  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A11234  80 1E 02 50 */	lwz r0, 0x250(r30)
/* 80A11238  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A1123C  38 00 00 03 */	li r0, 3
/* 80A11240  B0 1D 0E 1E */	sth r0, 0xe1e(r29)
/* 80A11244  38 7D 0D C8 */	addi r3, r29, 0xdc8
/* 80A11248  4B 95 0D D1 */	bl __ptmf_test
/* 80A1124C  2C 03 00 00 */	cmpwi r3, 0
/* 80A11250  41 82 00 18 */	beq lbl_80A11268
/* 80A11254  7F A3 EB 78 */	mr r3, r29
/* 80A11258  38 80 00 00 */	li r4, 0
/* 80A1125C  39 9D 0D C8 */	addi r12, r29, 0xdc8
/* 80A11260  4B 95 0E 25 */	bl __ptmf_scall
/* 80A11264  60 00 00 00 */	nop 
lbl_80A11268:
/* 80A11268  80 7D 0D C8 */	lwz r3, 0xdc8(r29)
/* 80A1126C  80 1D 0D CC */	lwz r0, 0xdcc(r29)
/* 80A11270  90 7D 0D D4 */	stw r3, 0xdd4(r29)
/* 80A11274  90 1D 0D D8 */	stw r0, 0xdd8(r29)
/* 80A11278  80 1D 0D D0 */	lwz r0, 0xdd0(r29)
/* 80A1127C  90 1D 0D DC */	stw r0, 0xddc(r29)
/* 80A11280  38 00 00 00 */	li r0, 0
/* 80A11284  B0 1D 0E 1E */	sth r0, 0xe1e(r29)
/* 80A11288  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80A1128C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80A11290  90 7D 0D C8 */	stw r3, 0xdc8(r29)
/* 80A11294  90 1D 0D CC */	stw r0, 0xdcc(r29)
/* 80A11298  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A1129C  90 1D 0D D0 */	stw r0, 0xdd0(r29)
/* 80A112A0  38 7D 0D C8 */	addi r3, r29, 0xdc8
/* 80A112A4  4B 95 0D 75 */	bl __ptmf_test
/* 80A112A8  2C 03 00 00 */	cmpwi r3, 0
/* 80A112AC  41 82 00 68 */	beq lbl_80A11314
/* 80A112B0  7F A3 EB 78 */	mr r3, r29
/* 80A112B4  38 80 00 00 */	li r4, 0
/* 80A112B8  39 9D 0D C8 */	addi r12, r29, 0xdc8
/* 80A112BC  4B 95 0D C9 */	bl __ptmf_scall
/* 80A112C0  60 00 00 00 */	nop 
/* 80A112C4  48 00 00 50 */	b lbl_80A11314
lbl_80A112C8:
/* 80A112C8  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80A112CC  28 00 00 00 */	cmplwi r0, 0
/* 80A112D0  41 82 00 14 */	beq lbl_80A112E4
/* 80A112D4  3C 60 80 A1 */	lis r3, d_a_npc_ins__stringBase0@ha /* 0x80A14168@ha */
/* 80A112D8  38 63 41 68 */	addi r3, r3, d_a_npc_ins__stringBase0@l /* 0x80A14168@l */
/* 80A112DC  38 03 00 0E */	addi r0, r3, 0xe
/* 80A112E0  90 1D 01 00 */	stw r0, 0x100(r29)
lbl_80A112E4:
/* 80A112E4  7F A3 EB 78 */	mr r3, r29
/* 80A112E8  88 9D 0E 20 */	lbz r4, 0xe20(r29)
/* 80A112EC  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80A112F0  54 00 10 3A */	slwi r0, r0, 2
/* 80A112F4  38 BE 01 F4 */	addi r5, r30, 0x1f4
/* 80A112F8  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A112FC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80A11300  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80A11304  38 E0 00 28 */	li r7, 0x28
/* 80A11308  39 00 00 FF */	li r8, 0xff
/* 80A1130C  39 20 00 01 */	li r9, 1
/* 80A11310  4B 74 25 6D */	bl orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_80A11314:
/* 80A11314  38 60 00 00 */	li r3, 0
/* 80A11318  39 61 00 70 */	addi r11, r1, 0x70
/* 80A1131C  4B 95 0F 05 */	bl _restgpr_27
/* 80A11320  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A11324  7C 08 03 A6 */	mtlr r0
/* 80A11328  38 21 00 70 */	addi r1, r1, 0x70
/* 80A1132C  4E 80 00 20 */	blr 
