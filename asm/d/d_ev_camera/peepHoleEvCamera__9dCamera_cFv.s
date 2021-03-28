lbl_80095E7C:
/* 80095E7C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80095E80  7C 08 02 A6 */	mflr r0
/* 80095E84  90 01 00 94 */	stw r0, 0x94(r1)
/* 80095E88  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 80095E8C  93 C1 00 88 */	stw r30, 0x88(r1)
/* 80095E90  7C 7E 1B 78 */	mr r30, r3
/* 80095E94  80 03 01 74 */	lwz r0, 0x174(r3)
/* 80095E98  28 00 00 00 */	cmplwi r0, 0
/* 80095E9C  40 82 01 18 */	bne lbl_80095FB4
/* 80095EA0  38 61 00 44 */	addi r3, r1, 0x44
/* 80095EA4  7F C4 F3 78 */	mr r4, r30
/* 80095EA8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80095EAC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80095EB0  80 A5 5D B4 */	lwz r5, 0x5db4(r5)
/* 80095EB4  48 00 18 A9 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 80095EB8  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 80095EBC  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 80095EC0  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 80095EC4  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80095EC8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80095ECC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80095ED0  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 80095ED4  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80095ED8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80095EDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80095EE0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80095EE4  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80095EE8  80 9F 4F 90 */	lwz r4, 0x4f90(r31)
/* 80095EEC  4B FA D4 01 */	bl convPId__14dEvt_control_cFUi
/* 80095EF0  7C 65 1B 79 */	or. r5, r3, r3
/* 80095EF4  41 82 00 B4 */	beq lbl_80095FA8
/* 80095EF8  38 61 00 38 */	addi r3, r1, 0x38
/* 80095EFC  7F C4 F3 78 */	mr r4, r30
/* 80095F00  48 00 18 5D */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 80095F04  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80095F08  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80095F0C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80095F10  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80095F14  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80095F18  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80095F1C  38 61 00 74 */	addi r3, r1, 0x74
/* 80095F20  38 81 00 5C */	addi r4, r1, 0x5c
/* 80095F24  4B FF 24 C9 */	bl xyzHorizontalDistance__8dCamMathFR4cXyzR4cXyz
/* 80095F28  C0 02 8F E4 */	lfs f0, lit_8218(r2)
/* 80095F2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80095F30  40 81 00 78 */	ble lbl_80095FA8
/* 80095F34  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80095F38  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80095F3C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80095F40  38 81 00 74 */	addi r4, r1, 0x74
/* 80095F44  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80095F48  48 1D 0B ED */	bl __mi__4cXyzCFRC3Vec
/* 80095F4C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80095F50  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80095F54  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80095F58  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80095F5C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80095F60  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80095F64  38 61 00 20 */	addi r3, r1, 0x20
/* 80095F68  38 81 00 50 */	addi r4, r1, 0x50
/* 80095F6C  48 1D 0F 89 */	bl normalize__4cXyzFv
/* 80095F70  38 61 00 14 */	addi r3, r1, 0x14
/* 80095F74  38 81 00 50 */	addi r4, r1, 0x50
/* 80095F78  C0 22 8F E4 */	lfs f1, lit_8218(r2)
/* 80095F7C  48 1D 0C 09 */	bl __ml__4cXyzCFf
/* 80095F80  38 61 00 08 */	addi r3, r1, 8
/* 80095F84  38 81 00 5C */	addi r4, r1, 0x5c
/* 80095F88  38 A1 00 14 */	addi r5, r1, 0x14
/* 80095F8C  48 1D 0B 59 */	bl __pl__4cXyzCFRC3Vec
/* 80095F90  C0 01 00 08 */	lfs f0, 8(r1)
/* 80095F94  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80095F98  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80095F9C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80095FA0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80095FA4  D0 01 00 70 */	stfs f0, 0x70(r1)
lbl_80095FA8:
/* 80095FA8  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80095FAC  38 81 00 68 */	addi r4, r1, 0x68
/* 80095FB0  4B FB 24 15 */	bl setGoal__16dEvent_manager_cFP4cXyz
lbl_80095FB4:
/* 80095FB4  38 60 00 01 */	li r3, 1
/* 80095FB8  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 80095FBC  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 80095FC0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80095FC4  7C 08 03 A6 */	mtlr r0
/* 80095FC8  38 21 00 90 */	addi r1, r1, 0x90
/* 80095FCC  4E 80 00 20 */	blr 
