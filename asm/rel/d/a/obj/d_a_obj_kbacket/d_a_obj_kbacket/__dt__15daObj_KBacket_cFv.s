lbl_80585E4C:
/* 80585E4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585E50  7C 08 02 A6 */	mflr r0
/* 80585E54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585E58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80585E5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80585E60  7C 7E 1B 79 */	or. r30, r3, r3
/* 80585E64  7C 9F 23 78 */	mr r31, r4
/* 80585E68  41 82 01 C4 */	beq lbl_8058602C
/* 80585E6C  3C 60 80 58 */	lis r3, __vt__15daObj_KBacket_c@ha
/* 80585E70  38 03 7F C0 */	addi r0, r3, __vt__15daObj_KBacket_c@l
/* 80585E74  90 1E 0A 50 */	stw r0, 0xa50(r30)
/* 80585E78  38 7E 05 6C */	addi r3, r30, 0x56c
/* 80585E7C  3C 80 80 58 */	lis r4, l_bmdData@ha
/* 80585E80  38 84 7E 98 */	addi r4, r4, l_bmdData@l
/* 80585E84  88 1E 09 D0 */	lbz r0, 0x9d0(r30)
/* 80585E88  54 00 18 38 */	slwi r0, r0, 3
/* 80585E8C  7C 84 02 14 */	add r4, r4, r0
/* 80585E90  80 04 00 04 */	lwz r0, 4(r4)
/* 80585E94  54 00 10 3A */	slwi r0, r0, 2
/* 80585E98  3C 80 80 58 */	lis r4, l_resNameList@ha
/* 80585E9C  38 84 7E A8 */	addi r4, r4, l_resNameList@l
/* 80585EA0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80585EA4  4B AA 71 64 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80585EA8  38 7E 09 60 */	addi r3, r30, 0x960
/* 80585EAC  38 80 FF FF */	li r4, -1
/* 80585EB0  4B AF 1E 2C */	b __dt__11dBgS_LinChkFv
/* 80585EB4  34 1E 09 44 */	addic. r0, r30, 0x944
/* 80585EB8  41 82 00 10 */	beq lbl_80585EC8
/* 80585EBC  3C 60 80 58 */	lis r3, __vt__8cM3dGLin@ha
/* 80585EC0  38 03 7F B4 */	addi r0, r3, __vt__8cM3dGLin@l
/* 80585EC4  90 1E 09 5C */	stw r0, 0x95c(r30)
lbl_80585EC8:
/* 80585EC8  34 1E 08 08 */	addic. r0, r30, 0x808
/* 80585ECC  41 82 00 84 */	beq lbl_80585F50
/* 80585ED0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80585ED4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80585ED8  90 7E 08 44 */	stw r3, 0x844(r30)
/* 80585EDC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80585EE0  90 1E 09 28 */	stw r0, 0x928(r30)
/* 80585EE4  38 03 00 84 */	addi r0, r3, 0x84
/* 80585EE8  90 1E 09 40 */	stw r0, 0x940(r30)
/* 80585EEC  34 1E 09 0C */	addic. r0, r30, 0x90c
/* 80585EF0  41 82 00 54 */	beq lbl_80585F44
/* 80585EF4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80585EF8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80585EFC  90 7E 09 28 */	stw r3, 0x928(r30)
/* 80585F00  38 03 00 58 */	addi r0, r3, 0x58
/* 80585F04  90 1E 09 40 */	stw r0, 0x940(r30)
/* 80585F08  34 1E 09 2C */	addic. r0, r30, 0x92c
/* 80585F0C  41 82 00 10 */	beq lbl_80585F1C
/* 80585F10  3C 60 80 58 */	lis r3, __vt__8cM3dGCyl@ha
/* 80585F14  38 03 7F A8 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80585F18  90 1E 09 40 */	stw r0, 0x940(r30)
lbl_80585F1C:
/* 80585F1C  34 1E 09 0C */	addic. r0, r30, 0x90c
/* 80585F20  41 82 00 24 */	beq lbl_80585F44
/* 80585F24  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80585F28  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80585F2C  90 1E 09 28 */	stw r0, 0x928(r30)
/* 80585F30  34 1E 09 0C */	addic. r0, r30, 0x90c
/* 80585F34  41 82 00 10 */	beq lbl_80585F44
/* 80585F38  3C 60 80 58 */	lis r3, __vt__8cM3dGAab@ha
/* 80585F3C  38 03 7F 9C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80585F40  90 1E 09 24 */	stw r0, 0x924(r30)
lbl_80585F44:
/* 80585F44  38 7E 08 08 */	addi r3, r30, 0x808
/* 80585F48  38 80 00 00 */	li r4, 0
/* 80585F4C  4B AF E1 98 */	b __dt__12dCcD_GObjInfFv
lbl_80585F50:
/* 80585F50  38 7E 07 CC */	addi r3, r30, 0x7cc
/* 80585F54  38 80 FF FF */	li r4, -1
/* 80585F58  4B CE 1D 3C */	b __dt__11cBgS_GndChkFv
/* 80585F5C  34 1E 07 8C */	addic. r0, r30, 0x78c
/* 80585F60  41 82 00 28 */	beq lbl_80585F88
/* 80585F64  3C 60 80 58 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80585F68  38 03 7F 90 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80585F6C  90 1E 07 98 */	stw r0, 0x798(r30)
/* 80585F70  38 7E 07 A0 */	addi r3, r30, 0x7a0
/* 80585F74  38 80 FF FF */	li r4, -1
/* 80585F78  4B CE 8F A0 */	b __dt__8cM3dGCirFv
/* 80585F7C  38 7E 07 8C */	addi r3, r30, 0x78c
/* 80585F80  38 80 00 00 */	li r4, 0
/* 80585F84  4B CE 21 2C */	b __dt__13cBgS_PolyInfoFv
lbl_80585F88:
/* 80585F88  34 1E 07 50 */	addic. r0, r30, 0x750
/* 80585F8C  41 82 00 54 */	beq lbl_80585FE0
/* 80585F90  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80585F94  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80585F98  90 7E 07 68 */	stw r3, 0x768(r30)
/* 80585F9C  38 03 00 20 */	addi r0, r3, 0x20
/* 80585FA0  90 1E 07 6C */	stw r0, 0x76c(r30)
/* 80585FA4  34 1E 07 6C */	addic. r0, r30, 0x76c
/* 80585FA8  41 82 00 24 */	beq lbl_80585FCC
/* 80585FAC  3C 60 80 58 */	lis r3, __vt__10dCcD_GStts@ha
/* 80585FB0  38 03 7F 84 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80585FB4  90 1E 07 6C */	stw r0, 0x76c(r30)
/* 80585FB8  34 1E 07 6C */	addic. r0, r30, 0x76c
/* 80585FBC  41 82 00 10 */	beq lbl_80585FCC
/* 80585FC0  3C 60 80 58 */	lis r3, __vt__10cCcD_GStts@ha
/* 80585FC4  38 03 7F 78 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80585FC8  90 1E 07 6C */	stw r0, 0x76c(r30)
lbl_80585FCC:
/* 80585FCC  34 1E 07 50 */	addic. r0, r30, 0x750
/* 80585FD0  41 82 00 10 */	beq lbl_80585FE0
/* 80585FD4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80585FD8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80585FDC  90 1E 07 68 */	stw r0, 0x768(r30)
lbl_80585FE0:
/* 80585FE0  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80585FE4  41 82 00 2C */	beq lbl_80586010
/* 80585FE8  3C 60 80 58 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80585FEC  38 63 7F 54 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80585FF0  90 7E 05 88 */	stw r3, 0x588(r30)
/* 80585FF4  38 03 00 0C */	addi r0, r3, 0xc
/* 80585FF8  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 80585FFC  38 03 00 18 */	addi r0, r3, 0x18
/* 80586000  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80586004  38 7E 05 78 */	addi r3, r30, 0x578
/* 80586008  38 80 00 00 */	li r4, 0
/* 8058600C  4B AE FF 88 */	b __dt__9dBgS_AcchFv
lbl_80586010:
/* 80586010  7F C3 F3 78 */	mr r3, r30
/* 80586014  38 80 00 00 */	li r4, 0
/* 80586018  4B A9 2C 74 */	b __dt__10fopAc_ac_cFv
/* 8058601C  7F E0 07 35 */	extsh. r0, r31
/* 80586020  40 81 00 0C */	ble lbl_8058602C
/* 80586024  7F C3 F3 78 */	mr r3, r30
/* 80586028  4B D4 8D 14 */	b __dl__FPv
lbl_8058602C:
/* 8058602C  7F C3 F3 78 */	mr r3, r30
/* 80586030  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80586034  83 C1 00 08 */	lwz r30, 8(r1)
/* 80586038  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058603C  7C 08 03 A6 */	mtlr r0
/* 80586040  38 21 00 10 */	addi r1, r1, 0x10
/* 80586044  4E 80 00 20 */	blr 
