lbl_800D3ECC:
/* 800D3ECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D3ED0  7C 08 02 A6 */	mflr r0
/* 800D3ED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D3ED8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D3EDC  93 C1 00 08 */	stw r30, 8(r1)
/* 800D3EE0  7C 7E 1B 78 */	mr r30, r3
/* 800D3EE4  4B FE 60 6D */	bl checkGroundSpecialMode__9daAlink_cFv
/* 800D3EE8  2C 03 00 00 */	cmpwi r3, 0
/* 800D3EEC  41 82 00 0C */	beq lbl_800D3EF8
/* 800D3EF0  38 60 00 01 */	li r3, 1
/* 800D3EF4  48 00 01 5C */	b lbl_800D4050
lbl_800D3EF8:
/* 800D3EF8  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800D3EFC  80 1E 05 88 */	lwz r0, 0x588(r30)
/* 800D3F00  64 00 08 00 */	oris r0, r0, 0x800
/* 800D3F04  90 1E 05 88 */	stw r0, 0x588(r30)
/* 800D3F08  7F C3 F3 78 */	mr r3, r30
/* 800D3F0C  4B FF E1 F1 */	bl setComboReserb__9daAlink_cFv
/* 800D3F10  7F C3 F3 78 */	mr r3, r30
/* 800D3F14  4B FF E7 71 */	bl checkCutTurnCharge__9daAlink_cFv
/* 800D3F18  38 00 00 04 */	li r0, 4
/* 800D3F1C  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800D3F20  7F C3 F3 78 */	mr r3, r30
/* 800D3F24  4B FF ED 31 */	bl checkCutAtnActorChange__9daAlink_cFv
/* 800D3F28  7F E3 FB 78 */	mr r3, r31
/* 800D3F2C  48 08 A5 A1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800D3F30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D3F34  41 82 00 88 */	beq lbl_800D3FBC
/* 800D3F38  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 800D3F3C  28 00 00 52 */	cmplwi r0, 0x52
/* 800D3F40  40 82 00 1C */	bne lbl_800D3F5C
/* 800D3F44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800D3F48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800D3F4C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800D3F50  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 800D3F54  4B F7 42 29 */	bl cutEnd__16dEvent_manager_cFi
/* 800D3F58  48 00 00 F4 */	b lbl_800D404C
lbl_800D3F5C:
/* 800D3F5C  A8 1E 30 08 */	lha r0, 0x3008(r30)
/* 800D3F60  2C 00 00 00 */	cmpwi r0, 0
/* 800D3F64  40 81 00 38 */	ble lbl_800D3F9C
/* 800D3F68  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800D3F6C  C0 1E 34 84 */	lfs f0, 0x3484(r30)
/* 800D3F70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D3F74  40 81 00 18 */	ble lbl_800D3F8C
/* 800D3F78  7F C3 F3 78 */	mr r3, r30
/* 800D3F7C  38 80 00 03 */	li r4, 3
/* 800D3F80  4B FF E7 E1 */	bl checkCutCancelNextMode__9daAlink_cFi
/* 800D3F84  2C 03 00 00 */	cmpwi r3, 0
/* 800D3F88  40 82 00 C4 */	bne lbl_800D404C
lbl_800D3F8C:
/* 800D3F8C  A8 7E 30 08 */	lha r3, 0x3008(r30)
/* 800D3F90  38 03 FF FF */	addi r0, r3, -1
/* 800D3F94  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 800D3F98  48 00 00 B4 */	b lbl_800D404C
lbl_800D3F9C:
/* 800D3F9C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D3FA0  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800D3FA4  38 00 00 02 */	li r0, 2
/* 800D3FA8  98 1E 2F 98 */	stb r0, 0x2f98(r30)
/* 800D3FAC  7F C3 F3 78 */	mr r3, r30
/* 800D3FB0  38 80 00 00 */	li r4, 0
/* 800D3FB4  4B FE 61 1D */	bl checkNextAction__9daAlink_cFi
/* 800D3FB8  48 00 00 94 */	b lbl_800D404C
lbl_800D3FBC:
/* 800D3FBC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800D3FC0  C0 1E 34 84 */	lfs f0, 0x3484(r30)
/* 800D3FC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D3FC8  40 81 00 18 */	ble lbl_800D3FE0
/* 800D3FCC  7F C3 F3 78 */	mr r3, r30
/* 800D3FD0  38 80 00 03 */	li r4, 3
/* 800D3FD4  4B FF E7 8D */	bl checkCutCancelNextMode__9daAlink_cFi
/* 800D3FD8  2C 03 00 00 */	cmpwi r3, 0
/* 800D3FDC  40 82 00 70 */	bne lbl_800D404C
lbl_800D3FE0:
/* 800D3FE0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800D3FE4  C0 1E 34 84 */	lfs f0, 0x3484(r30)
/* 800D3FE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D3FEC  40 81 00 10 */	ble lbl_800D3FFC
/* 800D3FF0  7F C3 F3 78 */	mr r3, r30
/* 800D3FF4  38 80 00 01 */	li r4, 1
/* 800D3FF8  4B FF D4 39 */	bl resetCombo__9daAlink_cFi
lbl_800D3FFC:
/* 800D3FFC  7F C3 F3 78 */	mr r3, r30
/* 800D4000  A8 9E 30 10 */	lha r4, 0x3010(r30)
/* 800D4004  4B FD F7 31 */	bl setShapeAngleToAtnActor__9daAlink_cFi
/* 800D4008  7F C3 F3 78 */	mr r3, r30
/* 800D400C  4B FD F6 25 */	bl getShapeAngleYAtnActor__9daAlink_cFv
/* 800D4010  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 800D4014  48 19 CE 11 */	bl cLib_distanceAngleS__Fss
/* 800D4018  2C 03 08 00 */	cmpwi r3, 0x800
/* 800D401C  40 80 00 0C */	bge lbl_800D4028
/* 800D4020  38 00 00 01 */	li r0, 1
/* 800D4024  B0 1E 30 10 */	sth r0, 0x3010(r30)
lbl_800D4028:
/* 800D4028  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800D402C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800D4030  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800D4034  C0 02 93 34 */	lfs f0, lit_7710(r2)
/* 800D4038  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D403C  4C 41 13 82 */	cror 2, 1, 2
/* 800D4040  40 82 00 0C */	bne lbl_800D404C
/* 800D4044  38 00 00 00 */	li r0, 0
/* 800D4048  98 1E 2F 92 */	stb r0, 0x2f92(r30)
lbl_800D404C:
/* 800D404C  38 60 00 01 */	li r3, 1
lbl_800D4050:
/* 800D4050  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D4054  83 C1 00 08 */	lwz r30, 8(r1)
/* 800D4058  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D405C  7C 08 03 A6 */	mtlr r0
/* 800D4060  38 21 00 10 */	addi r1, r1, 0x10
/* 800D4064  4E 80 00 20 */	blr 
