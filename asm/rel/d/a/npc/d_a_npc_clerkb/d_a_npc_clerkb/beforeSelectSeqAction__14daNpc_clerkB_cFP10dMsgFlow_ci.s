lbl_80996CCC:
/* 80996CCC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80996CD0  7C 08 02 A6 */	mflr r0
/* 80996CD4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80996CD8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80996CDC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80996CE0  39 61 00 30 */	addi r11, r1, 0x30
/* 80996CE4  4B 9C B4 F1 */	bl _savegpr_27
/* 80996CE8  7C 7E 1B 78 */	mr r30, r3
/* 80996CEC  7C 9B 23 78 */	mr r27, r4
/* 80996CF0  7C BD 2B 78 */	mr r29, r5
/* 80996CF4  3C 60 80 9A */	lis r3, m__20daNpc_clerkB_Param_c@ha /* 0x80999978@ha */
/* 80996CF8  3B E3 99 78 */	addi r31, r3, m__20daNpc_clerkB_Param_c@l /* 0x80999978@l */
/* 80996CFC  3B 80 00 00 */	li r28, 0
/* 80996D00  38 60 00 00 */	li r3, 0
/* 80996D04  98 7E 11 0E */	stb r3, 0x110e(r30)
/* 80996D08  88 9E 11 0D */	lbz r4, 0x110d(r30)
/* 80996D0C  28 04 00 02 */	cmplwi r4, 2
/* 80996D10  41 82 01 F0 */	beq lbl_80996F00
/* 80996D14  3B BF 00 00 */	addi r29, r31, 0
/* 80996D18  C0 3D 00 8C */	lfs f1, 0x8c(r29)
/* 80996D1C  A8 1D 00 90 */	lha r0, 0x90(r29)
/* 80996D20  C8 5F 00 E0 */	lfd f2, 0xe0(r31)
/* 80996D24  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80996D28  90 01 00 0C */	stw r0, 0xc(r1)
/* 80996D2C  3C 00 43 30 */	lis r0, 0x4330
/* 80996D30  90 01 00 08 */	stw r0, 8(r1)
/* 80996D34  C8 01 00 08 */	lfd f0, 8(r1)
/* 80996D38  EC 00 10 28 */	fsubs f0, f0, f2
/* 80996D3C  EC 41 00 24 */	fdivs f2, f1, f0
/* 80996D40  2C 04 00 01 */	cmpwi r4, 1
/* 80996D44  41 82 00 90 */	beq lbl_80996DD4
/* 80996D48  40 80 01 B0 */	bge lbl_80996EF8
/* 80996D4C  2C 04 00 00 */	cmpwi r4, 0
/* 80996D50  40 80 00 08 */	bge lbl_80996D58
/* 80996D54  48 00 01 A4 */	b lbl_80996EF8
lbl_80996D58:
/* 80996D58  98 7E 11 0F */	stb r3, 0x110f(r30)
/* 80996D5C  98 7E 11 0C */	stb r3, 0x110c(r30)
/* 80996D60  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80996D64  2C 00 00 08 */	cmpwi r0, 8
/* 80996D68  41 82 00 24 */	beq lbl_80996D8C
/* 80996D6C  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80996D70  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80996D74  4B 7A EB 25 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80996D78  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80996D7C  38 00 00 08 */	li r0, 8
/* 80996D80  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80996D84  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80996D88  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80996D8C:
/* 80996D8C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80996D90  2C 00 00 06 */	cmpwi r0, 6
/* 80996D94  41 82 00 24 */	beq lbl_80996DB8
/* 80996D98  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80996D9C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80996DA0  4B 7A EA F9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80996DA4  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80996DA8  38 00 00 06 */	li r0, 6
/* 80996DAC  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80996DB0  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80996DB4  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80996DB8:
/* 80996DB8  38 60 00 13 */	li r3, 0x13
/* 80996DBC  4B 8A 14 41 */	bl setStatus__12dMsgObject_cFUs
/* 80996DC0  38 00 00 14 */	li r0, 0x14
/* 80996DC4  90 1E 11 04 */	stw r0, 0x1104(r30)
/* 80996DC8  38 00 00 01 */	li r0, 1
/* 80996DCC  98 1E 11 0D */	stb r0, 0x110d(r30)
/* 80996DD0  48 00 01 28 */	b lbl_80996EF8
lbl_80996DD4:
/* 80996DD4  C3 FE 11 08 */	lfs f31, 0x1108(r30)
/* 80996DD8  38 7E 11 08 */	addi r3, r30, 0x1108
/* 80996DDC  4B 8D 99 65 */	bl cLib_chaseF__FPfff
/* 80996DE0  80 1E 11 04 */	lwz r0, 0x1104(r30)
/* 80996DE4  2C 00 00 00 */	cmpwi r0, 0
/* 80996DE8  41 82 00 18 */	beq lbl_80996E00
/* 80996DEC  38 7E 11 04 */	addi r3, r30, 0x1104
/* 80996DF0  48 00 28 0D */	bl func_809995FC
/* 80996DF4  2C 03 00 00 */	cmpwi r3, 0
/* 80996DF8  40 82 00 08 */	bne lbl_80996E00
/* 80996DFC  3B 80 00 01 */	li r28, 1
lbl_80996E00:
/* 80996E00  C0 3D 00 8C */	lfs f1, 0x8c(r29)
/* 80996E04  C0 1E 11 08 */	lfs f0, 0x1108(r30)
/* 80996E08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80996E0C  4C 40 13 82 */	cror 2, 0, 2
/* 80996E10  40 82 00 18 */	bne lbl_80996E28
/* 80996E14  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80996E18  40 80 00 10 */	bge lbl_80996E28
/* 80996E1C  3B 80 00 01 */	li r28, 1
/* 80996E20  38 00 00 00 */	li r0, 0
/* 80996E24  90 1E 11 04 */	stw r0, 0x1104(r30)
lbl_80996E28:
/* 80996E28  2C 1C 00 00 */	cmpwi r28, 0
/* 80996E2C  41 82 00 24 */	beq lbl_80996E50
/* 80996E30  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80996E34  D0 3E 0F 38 */	stfs f1, 0xf38(r30)
/* 80996E38  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80996E3C  D0 1E 0F 3C */	stfs f0, 0xf3c(r30)
/* 80996E40  D0 3E 0F 40 */	stfs f1, 0xf40(r30)
/* 80996E44  D0 1E 0F 44 */	stfs f0, 0xf44(r30)
/* 80996E48  38 00 00 01 */	li r0, 1
/* 80996E4C  98 1E 11 0C */	stb r0, 0x110c(r30)
lbl_80996E50:
/* 80996E50  C0 3D 00 8C */	lfs f1, 0x8c(r29)
/* 80996E54  C0 1E 11 08 */	lfs f0, 0x1108(r30)
/* 80996E58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80996E5C  4C 40 13 82 */	cror 2, 0, 2
/* 80996E60  40 82 00 98 */	bne lbl_80996EF8
/* 80996E64  88 1E 11 0C */	lbz r0, 0x110c(r30)
/* 80996E68  28 00 00 00 */	cmplwi r0, 0
/* 80996E6C  41 82 00 8C */	beq lbl_80996EF8
/* 80996E70  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80996E74  2C 00 00 08 */	cmpwi r0, 8
/* 80996E78  40 82 00 28 */	bne lbl_80996EA0
/* 80996E7C  80 1E 0B 84 */	lwz r0, 0xb84(r30)
/* 80996E80  2C 00 00 00 */	cmpwi r0, 0
/* 80996E84  40 81 00 74 */	ble lbl_80996EF8
/* 80996E88  88 1E 0F 52 */	lbz r0, 0xf52(r30)
/* 80996E8C  28 00 00 00 */	cmplwi r0, 0
/* 80996E90  41 82 00 68 */	beq lbl_80996EF8
/* 80996E94  38 00 00 02 */	li r0, 2
/* 80996E98  98 1E 11 0D */	stb r0, 0x110d(r30)
/* 80996E9C  48 00 00 5C */	b lbl_80996EF8
lbl_80996EA0:
/* 80996EA0  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80996EA4  2C 00 00 08 */	cmpwi r0, 8
/* 80996EA8  41 82 00 24 */	beq lbl_80996ECC
/* 80996EAC  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80996EB0  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80996EB4  4B 7A E9 E5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80996EB8  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80996EBC  38 00 00 08 */	li r0, 8
/* 80996EC0  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80996EC4  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80996EC8  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80996ECC:
/* 80996ECC  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80996ED0  2C 00 00 08 */	cmpwi r0, 8
/* 80996ED4  41 82 00 24 */	beq lbl_80996EF8
/* 80996ED8  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80996EDC  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80996EE0  4B 7A E9 B9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80996EE4  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80996EE8  38 00 00 08 */	li r0, 8
/* 80996EEC  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80996EF0  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80996EF4  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80996EF8:
/* 80996EF8  38 60 00 00 */	li r3, 0
/* 80996EFC  48 00 00 60 */	b lbl_80996F5C
lbl_80996F00:
/* 80996F00  88 1E 11 0F */	lbz r0, 0x110f(r30)
/* 80996F04  28 00 00 00 */	cmplwi r0, 0
/* 80996F08  40 82 00 50 */	bne lbl_80996F58
/* 80996F0C  4B 8A 13 21 */	bl getStatus__12dMsgObject_cFv
/* 80996F10  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80996F14  20 60 00 01 */	subfic r3, r0, 1
/* 80996F18  30 03 FF FF */	addic r0, r3, -1
/* 80996F1C  7C 00 19 10 */	subfe r0, r0, r3
/* 80996F20  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80996F24  40 82 00 2C */	bne lbl_80996F50
/* 80996F28  7F 63 DB 78 */	mr r3, r27
/* 80996F2C  7F C4 F3 78 */	mr r4, r30
/* 80996F30  7F A5 EB 78 */	mr r5, r29
/* 80996F34  38 C0 00 00 */	li r6, 0
/* 80996F38  38 E0 00 00 */	li r7, 0
/* 80996F3C  4B 8B 30 55 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80996F40  38 00 00 01 */	li r0, 1
/* 80996F44  98 1E 11 0F */	stb r0, 0x110f(r30)
/* 80996F48  38 60 00 01 */	li r3, 1
/* 80996F4C  48 00 00 10 */	b lbl_80996F5C
lbl_80996F50:
/* 80996F50  38 60 00 00 */	li r3, 0
/* 80996F54  48 00 00 08 */	b lbl_80996F5C
lbl_80996F58:
/* 80996F58  38 60 00 01 */	li r3, 1
lbl_80996F5C:
/* 80996F5C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80996F60  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80996F64  39 61 00 30 */	addi r11, r1, 0x30
/* 80996F68  4B 9C B2 B9 */	bl _restgpr_27
/* 80996F6C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80996F70  7C 08 03 A6 */	mtlr r0
/* 80996F74  38 21 00 40 */	addi r1, r1, 0x40
/* 80996F78  4E 80 00 20 */	blr 
