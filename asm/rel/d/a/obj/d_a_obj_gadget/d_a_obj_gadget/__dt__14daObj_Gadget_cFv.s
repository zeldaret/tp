lbl_80BF2D2C:
/* 80BF2D2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF2D30  7C 08 02 A6 */	mflr r0
/* 80BF2D34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF2D38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF2D3C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BF2D40  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BF2D44  7C 9F 23 78 */	mr r31, r4
/* 80BF2D48  41 82 01 C4 */	beq lbl_80BF2F0C
/* 80BF2D4C  3C 60 80 BF */	lis r3, __vt__14daObj_Gadget_c@ha
/* 80BF2D50  38 03 4B 78 */	addi r0, r3, __vt__14daObj_Gadget_c@l
/* 80BF2D54  90 1E 0A 48 */	stw r0, 0xa48(r30)
/* 80BF2D58  38 7E 05 6C */	addi r3, r30, 0x56c
/* 80BF2D5C  3C 80 80 BF */	lis r4, l_bmdData@ha
/* 80BF2D60  38 84 4A 4C */	addi r4, r4, l_bmdData@l
/* 80BF2D64  88 1E 09 D0 */	lbz r0, 0x9d0(r30)
/* 80BF2D68  54 00 18 38 */	slwi r0, r0, 3
/* 80BF2D6C  7C 84 02 14 */	add r4, r4, r0
/* 80BF2D70  80 04 00 04 */	lwz r0, 4(r4)
/* 80BF2D74  54 00 10 3A */	slwi r0, r0, 2
/* 80BF2D78  3C 80 80 BF */	lis r4, l_resNameList@ha
/* 80BF2D7C  38 84 4A 5C */	addi r4, r4, l_resNameList@l
/* 80BF2D80  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BF2D84  4B 43 A2 84 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BF2D88  38 7E 09 60 */	addi r3, r30, 0x960
/* 80BF2D8C  38 80 FF FF */	li r4, -1
/* 80BF2D90  4B 48 4F 4C */	b __dt__11dBgS_LinChkFv
/* 80BF2D94  34 1E 09 44 */	addic. r0, r30, 0x944
/* 80BF2D98  41 82 00 10 */	beq lbl_80BF2DA8
/* 80BF2D9C  3C 60 80 BF */	lis r3, __vt__8cM3dGLin@ha
/* 80BF2DA0  38 03 4B 6C */	addi r0, r3, __vt__8cM3dGLin@l
/* 80BF2DA4  90 1E 09 5C */	stw r0, 0x95c(r30)
lbl_80BF2DA8:
/* 80BF2DA8  34 1E 08 08 */	addic. r0, r30, 0x808
/* 80BF2DAC  41 82 00 84 */	beq lbl_80BF2E30
/* 80BF2DB0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80BF2DB4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80BF2DB8  90 7E 08 44 */	stw r3, 0x844(r30)
/* 80BF2DBC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BF2DC0  90 1E 09 28 */	stw r0, 0x928(r30)
/* 80BF2DC4  38 03 00 84 */	addi r0, r3, 0x84
/* 80BF2DC8  90 1E 09 40 */	stw r0, 0x940(r30)
/* 80BF2DCC  34 1E 09 0C */	addic. r0, r30, 0x90c
/* 80BF2DD0  41 82 00 54 */	beq lbl_80BF2E24
/* 80BF2DD4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80BF2DD8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80BF2DDC  90 7E 09 28 */	stw r3, 0x928(r30)
/* 80BF2DE0  38 03 00 58 */	addi r0, r3, 0x58
/* 80BF2DE4  90 1E 09 40 */	stw r0, 0x940(r30)
/* 80BF2DE8  34 1E 09 2C */	addic. r0, r30, 0x92c
/* 80BF2DEC  41 82 00 10 */	beq lbl_80BF2DFC
/* 80BF2DF0  3C 60 80 BF */	lis r3, __vt__8cM3dGCyl@ha
/* 80BF2DF4  38 03 4B 60 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80BF2DF8  90 1E 09 40 */	stw r0, 0x940(r30)
lbl_80BF2DFC:
/* 80BF2DFC  34 1E 09 0C */	addic. r0, r30, 0x90c
/* 80BF2E00  41 82 00 24 */	beq lbl_80BF2E24
/* 80BF2E04  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BF2E08  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BF2E0C  90 1E 09 28 */	stw r0, 0x928(r30)
/* 80BF2E10  34 1E 09 0C */	addic. r0, r30, 0x90c
/* 80BF2E14  41 82 00 10 */	beq lbl_80BF2E24
/* 80BF2E18  3C 60 80 BF */	lis r3, __vt__8cM3dGAab@ha
/* 80BF2E1C  38 03 4B 54 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BF2E20  90 1E 09 24 */	stw r0, 0x924(r30)
lbl_80BF2E24:
/* 80BF2E24  38 7E 08 08 */	addi r3, r30, 0x808
/* 80BF2E28  38 80 00 00 */	li r4, 0
/* 80BF2E2C  4B 49 12 B8 */	b __dt__12dCcD_GObjInfFv
lbl_80BF2E30:
/* 80BF2E30  38 7E 07 CC */	addi r3, r30, 0x7cc
/* 80BF2E34  38 80 FF FF */	li r4, -1
/* 80BF2E38  4B 67 4E 5C */	b __dt__11cBgS_GndChkFv
/* 80BF2E3C  34 1E 07 8C */	addic. r0, r30, 0x78c
/* 80BF2E40  41 82 00 28 */	beq lbl_80BF2E68
/* 80BF2E44  3C 60 80 BF */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80BF2E48  38 03 4B 48 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80BF2E4C  90 1E 07 98 */	stw r0, 0x798(r30)
/* 80BF2E50  38 7E 07 A0 */	addi r3, r30, 0x7a0
/* 80BF2E54  38 80 FF FF */	li r4, -1
/* 80BF2E58  4B 67 C0 C0 */	b __dt__8cM3dGCirFv
/* 80BF2E5C  38 7E 07 8C */	addi r3, r30, 0x78c
/* 80BF2E60  38 80 00 00 */	li r4, 0
/* 80BF2E64  4B 67 52 4C */	b __dt__13cBgS_PolyInfoFv
lbl_80BF2E68:
/* 80BF2E68  34 1E 07 50 */	addic. r0, r30, 0x750
/* 80BF2E6C  41 82 00 54 */	beq lbl_80BF2EC0
/* 80BF2E70  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80BF2E74  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80BF2E78  90 7E 07 68 */	stw r3, 0x768(r30)
/* 80BF2E7C  38 03 00 20 */	addi r0, r3, 0x20
/* 80BF2E80  90 1E 07 6C */	stw r0, 0x76c(r30)
/* 80BF2E84  34 1E 07 6C */	addic. r0, r30, 0x76c
/* 80BF2E88  41 82 00 24 */	beq lbl_80BF2EAC
/* 80BF2E8C  3C 60 80 BF */	lis r3, __vt__10dCcD_GStts@ha
/* 80BF2E90  38 03 4B 3C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80BF2E94  90 1E 07 6C */	stw r0, 0x76c(r30)
/* 80BF2E98  34 1E 07 6C */	addic. r0, r30, 0x76c
/* 80BF2E9C  41 82 00 10 */	beq lbl_80BF2EAC
/* 80BF2EA0  3C 60 80 BF */	lis r3, __vt__10cCcD_GStts@ha
/* 80BF2EA4  38 03 4B 30 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80BF2EA8  90 1E 07 6C */	stw r0, 0x76c(r30)
lbl_80BF2EAC:
/* 80BF2EAC  34 1E 07 50 */	addic. r0, r30, 0x750
/* 80BF2EB0  41 82 00 10 */	beq lbl_80BF2EC0
/* 80BF2EB4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80BF2EB8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80BF2EBC  90 1E 07 68 */	stw r0, 0x768(r30)
lbl_80BF2EC0:
/* 80BF2EC0  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80BF2EC4  41 82 00 2C */	beq lbl_80BF2EF0
/* 80BF2EC8  3C 60 80 BF */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80BF2ECC  38 63 4B 0C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80BF2ED0  90 7E 05 88 */	stw r3, 0x588(r30)
/* 80BF2ED4  38 03 00 0C */	addi r0, r3, 0xc
/* 80BF2ED8  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 80BF2EDC  38 03 00 18 */	addi r0, r3, 0x18
/* 80BF2EE0  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80BF2EE4  38 7E 05 78 */	addi r3, r30, 0x578
/* 80BF2EE8  38 80 00 00 */	li r4, 0
/* 80BF2EEC  4B 48 30 A8 */	b __dt__9dBgS_AcchFv
lbl_80BF2EF0:
/* 80BF2EF0  7F C3 F3 78 */	mr r3, r30
/* 80BF2EF4  38 80 00 00 */	li r4, 0
/* 80BF2EF8  4B 42 5D 94 */	b __dt__10fopAc_ac_cFv
/* 80BF2EFC  7F E0 07 35 */	extsh. r0, r31
/* 80BF2F00  40 81 00 0C */	ble lbl_80BF2F0C
/* 80BF2F04  7F C3 F3 78 */	mr r3, r30
/* 80BF2F08  4B 6D BE 34 */	b __dl__FPv
lbl_80BF2F0C:
/* 80BF2F0C  7F C3 F3 78 */	mr r3, r30
/* 80BF2F10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF2F14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BF2F18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF2F1C  7C 08 03 A6 */	mtlr r0
/* 80BF2F20  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF2F24  4E 80 00 20 */	blr 
