lbl_80D03DAC:
/* 80D03DAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D03DB0  7C 08 02 A6 */	mflr r0
/* 80D03DB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D03DB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D03DBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80D03DC0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D03DC4  7C 9F 23 78 */	mr r31, r4
/* 80D03DC8  41 82 01 98 */	beq lbl_80D03F60
/* 80D03DCC  3C 60 80 D0 */	lis r3, __vt__10daSyRock_c@ha
/* 80D03DD0  38 63 41 F8 */	addi r3, r3, __vt__10daSyRock_c@l
/* 80D03DD4  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80D03DD8  38 03 00 28 */	addi r0, r3, 0x28
/* 80D03DDC  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80D03DE0  34 1E 07 BC */	addic. r0, r30, 0x7bc
/* 80D03DE4  41 82 00 2C */	beq lbl_80D03E10
/* 80D03DE8  3C 60 80 D0 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80D03DEC  38 63 41 A4 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80D03DF0  90 7E 07 CC */	stw r3, 0x7cc(r30)
/* 80D03DF4  38 03 00 0C */	addi r0, r3, 0xc
/* 80D03DF8  90 1E 07 D0 */	stw r0, 0x7d0(r30)
/* 80D03DFC  38 03 00 18 */	addi r0, r3, 0x18
/* 80D03E00  90 1E 07 E0 */	stw r0, 0x7e0(r30)
/* 80D03E04  38 7E 07 BC */	addi r3, r30, 0x7bc
/* 80D03E08  38 80 00 00 */	li r4, 0
/* 80D03E0C  4B 37 21 88 */	b __dt__9dBgS_AcchFv
lbl_80D03E10:
/* 80D03E10  34 1E 07 7C */	addic. r0, r30, 0x77c
/* 80D03E14  41 82 00 28 */	beq lbl_80D03E3C
/* 80D03E18  3C 60 80 D0 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80D03E1C  38 03 41 98 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80D03E20  90 1E 07 88 */	stw r0, 0x788(r30)
/* 80D03E24  38 7E 07 90 */	addi r3, r30, 0x790
/* 80D03E28  38 80 FF FF */	li r4, -1
/* 80D03E2C  4B 56 B0 EC */	b __dt__8cM3dGCirFv
/* 80D03E30  38 7E 07 7C */	addi r3, r30, 0x77c
/* 80D03E34  38 80 00 00 */	li r4, 0
/* 80D03E38  4B 56 42 78 */	b __dt__13cBgS_PolyInfoFv
lbl_80D03E3C:
/* 80D03E3C  34 1E 06 08 */	addic. r0, r30, 0x608
/* 80D03E40  41 82 00 84 */	beq lbl_80D03EC4
/* 80D03E44  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80D03E48  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80D03E4C  90 7E 06 44 */	stw r3, 0x644(r30)
/* 80D03E50  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D03E54  90 1E 07 28 */	stw r0, 0x728(r30)
/* 80D03E58  38 03 00 84 */	addi r0, r3, 0x84
/* 80D03E5C  90 1E 07 40 */	stw r0, 0x740(r30)
/* 80D03E60  34 1E 07 0C */	addic. r0, r30, 0x70c
/* 80D03E64  41 82 00 54 */	beq lbl_80D03EB8
/* 80D03E68  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80D03E6C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80D03E70  90 7E 07 28 */	stw r3, 0x728(r30)
/* 80D03E74  38 03 00 58 */	addi r0, r3, 0x58
/* 80D03E78  90 1E 07 40 */	stw r0, 0x740(r30)
/* 80D03E7C  34 1E 07 2C */	addic. r0, r30, 0x72c
/* 80D03E80  41 82 00 10 */	beq lbl_80D03E90
/* 80D03E84  3C 60 80 D0 */	lis r3, __vt__8cM3dGCyl@ha
/* 80D03E88  38 03 41 C8 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80D03E8C  90 1E 07 40 */	stw r0, 0x740(r30)
lbl_80D03E90:
/* 80D03E90  34 1E 07 0C */	addic. r0, r30, 0x70c
/* 80D03E94  41 82 00 24 */	beq lbl_80D03EB8
/* 80D03E98  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D03E9C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D03EA0  90 1E 07 28 */	stw r0, 0x728(r30)
/* 80D03EA4  34 1E 07 0C */	addic. r0, r30, 0x70c
/* 80D03EA8  41 82 00 10 */	beq lbl_80D03EB8
/* 80D03EAC  3C 60 80 D0 */	lis r3, __vt__8cM3dGAab@ha
/* 80D03EB0  38 03 41 D4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D03EB4  90 1E 07 24 */	stw r0, 0x724(r30)
lbl_80D03EB8:
/* 80D03EB8  38 7E 06 08 */	addi r3, r30, 0x608
/* 80D03EBC  38 80 00 00 */	li r4, 0
/* 80D03EC0  4B 38 02 24 */	b __dt__12dCcD_GObjInfFv
lbl_80D03EC4:
/* 80D03EC4  34 1E 05 CC */	addic. r0, r30, 0x5cc
/* 80D03EC8  41 82 00 54 */	beq lbl_80D03F1C
/* 80D03ECC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D03ED0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D03ED4  90 7E 05 E4 */	stw r3, 0x5e4(r30)
/* 80D03ED8  38 03 00 20 */	addi r0, r3, 0x20
/* 80D03EDC  90 1E 05 E8 */	stw r0, 0x5e8(r30)
/* 80D03EE0  34 1E 05 E8 */	addic. r0, r30, 0x5e8
/* 80D03EE4  41 82 00 24 */	beq lbl_80D03F08
/* 80D03EE8  3C 60 80 D0 */	lis r3, __vt__10dCcD_GStts@ha
/* 80D03EEC  38 03 41 8C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80D03EF0  90 1E 05 E8 */	stw r0, 0x5e8(r30)
/* 80D03EF4  34 1E 05 E8 */	addic. r0, r30, 0x5e8
/* 80D03EF8  41 82 00 10 */	beq lbl_80D03F08
/* 80D03EFC  3C 60 80 D0 */	lis r3, __vt__10cCcD_GStts@ha
/* 80D03F00  38 03 41 80 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80D03F04  90 1E 05 E8 */	stw r0, 0x5e8(r30)
lbl_80D03F08:
/* 80D03F08  34 1E 05 CC */	addic. r0, r30, 0x5cc
/* 80D03F0C  41 82 00 10 */	beq lbl_80D03F1C
/* 80D03F10  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D03F14  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D03F18  90 1E 05 E4 */	stw r0, 0x5e4(r30)
lbl_80D03F1C:
/* 80D03F1C  34 1E 05 A8 */	addic. r0, r30, 0x5a8
/* 80D03F20  41 82 00 10 */	beq lbl_80D03F30
/* 80D03F24  3C 60 80 D0 */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80D03F28  38 03 41 E0 */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80D03F2C  90 1E 05 A8 */	stw r0, 0x5a8(r30)
lbl_80D03F30:
/* 80D03F30  28 1E 00 00 */	cmplwi r30, 0
/* 80D03F34  41 82 00 1C */	beq lbl_80D03F50
/* 80D03F38  3C 60 80 3B */	lis r3, __vt__16dBgS_MoveBgActor@ha
/* 80D03F3C  38 03 B9 A0 */	addi r0, r3, __vt__16dBgS_MoveBgActor@l
/* 80D03F40  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80D03F44  7F C3 F3 78 */	mr r3, r30
/* 80D03F48  38 80 00 00 */	li r4, 0
/* 80D03F4C  4B 31 4D 40 */	b __dt__10fopAc_ac_cFv
lbl_80D03F50:
/* 80D03F50  7F E0 07 35 */	extsh. r0, r31
/* 80D03F54  40 81 00 0C */	ble lbl_80D03F60
/* 80D03F58  7F C3 F3 78 */	mr r3, r30
/* 80D03F5C  4B 5C AD E0 */	b __dl__FPv
lbl_80D03F60:
/* 80D03F60  7F C3 F3 78 */	mr r3, r30
/* 80D03F64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D03F68  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D03F6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D03F70  7C 08 03 A6 */	mtlr r0
/* 80D03F74  38 21 00 10 */	addi r1, r1, 0x10
/* 80D03F78  4E 80 00 20 */	blr 
