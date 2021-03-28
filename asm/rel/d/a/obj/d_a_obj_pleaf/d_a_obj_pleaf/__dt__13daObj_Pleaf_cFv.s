lbl_80CB0D4C:
/* 80CB0D4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB0D50  7C 08 02 A6 */	mflr r0
/* 80CB0D54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB0D58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB0D5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB0D60  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CB0D64  7C 9F 23 78 */	mr r31, r4
/* 80CB0D68  41 82 01 84 */	beq lbl_80CB0EEC
/* 80CB0D6C  3C 80 80 CB */	lis r4, __vt__13daObj_Pleaf_c@ha
/* 80CB0D70  38 04 19 50 */	addi r0, r4, __vt__13daObj_Pleaf_c@l
/* 80CB0D74  90 1E 09 4C */	stw r0, 0x94c(r30)
/* 80CB0D78  48 00 08 41 */	bl getResName__13daObj_Pleaf_cFv
/* 80CB0D7C  7C 64 1B 78 */	mr r4, r3
/* 80CB0D80  38 7E 05 6C */	addi r3, r30, 0x56c
/* 80CB0D84  4B 37 C2 84 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CB0D88  34 1E 08 08 */	addic. r0, r30, 0x808
/* 80CB0D8C  41 82 00 84 */	beq lbl_80CB0E10
/* 80CB0D90  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80CB0D94  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80CB0D98  90 7E 08 44 */	stw r3, 0x844(r30)
/* 80CB0D9C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CB0DA0  90 1E 09 28 */	stw r0, 0x928(r30)
/* 80CB0DA4  38 03 00 84 */	addi r0, r3, 0x84
/* 80CB0DA8  90 1E 09 3C */	stw r0, 0x93c(r30)
/* 80CB0DAC  34 1E 09 0C */	addic. r0, r30, 0x90c
/* 80CB0DB0  41 82 00 54 */	beq lbl_80CB0E04
/* 80CB0DB4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80CB0DB8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80CB0DBC  90 7E 09 28 */	stw r3, 0x928(r30)
/* 80CB0DC0  38 03 00 58 */	addi r0, r3, 0x58
/* 80CB0DC4  90 1E 09 3C */	stw r0, 0x93c(r30)
/* 80CB0DC8  34 1E 09 2C */	addic. r0, r30, 0x92c
/* 80CB0DCC  41 82 00 10 */	beq lbl_80CB0DDC
/* 80CB0DD0  3C 60 80 CB */	lis r3, __vt__8cM3dGSph@ha
/* 80CB0DD4  38 03 19 44 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80CB0DD8  90 1E 09 3C */	stw r0, 0x93c(r30)
lbl_80CB0DDC:
/* 80CB0DDC  34 1E 09 0C */	addic. r0, r30, 0x90c
/* 80CB0DE0  41 82 00 24 */	beq lbl_80CB0E04
/* 80CB0DE4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CB0DE8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CB0DEC  90 1E 09 28 */	stw r0, 0x928(r30)
/* 80CB0DF0  34 1E 09 0C */	addic. r0, r30, 0x90c
/* 80CB0DF4  41 82 00 10 */	beq lbl_80CB0E04
/* 80CB0DF8  3C 60 80 CB */	lis r3, __vt__8cM3dGAab@ha
/* 80CB0DFC  38 03 19 38 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CB0E00  90 1E 09 24 */	stw r0, 0x924(r30)
lbl_80CB0E04:
/* 80CB0E04  38 7E 08 08 */	addi r3, r30, 0x808
/* 80CB0E08  38 80 00 00 */	li r4, 0
/* 80CB0E0C  4B 3D 32 D8 */	b __dt__12dCcD_GObjInfFv
lbl_80CB0E10:
/* 80CB0E10  38 7E 07 CC */	addi r3, r30, 0x7cc
/* 80CB0E14  38 80 FF FF */	li r4, -1
/* 80CB0E18  4B 5B 6E 7C */	b __dt__11cBgS_GndChkFv
/* 80CB0E1C  34 1E 07 8C */	addic. r0, r30, 0x78c
/* 80CB0E20  41 82 00 28 */	beq lbl_80CB0E48
/* 80CB0E24  3C 60 80 CB */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80CB0E28  38 03 19 2C */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80CB0E2C  90 1E 07 98 */	stw r0, 0x798(r30)
/* 80CB0E30  38 7E 07 A0 */	addi r3, r30, 0x7a0
/* 80CB0E34  38 80 FF FF */	li r4, -1
/* 80CB0E38  4B 5B E0 E0 */	b __dt__8cM3dGCirFv
/* 80CB0E3C  38 7E 07 8C */	addi r3, r30, 0x78c
/* 80CB0E40  38 80 00 00 */	li r4, 0
/* 80CB0E44  4B 5B 72 6C */	b __dt__13cBgS_PolyInfoFv
lbl_80CB0E48:
/* 80CB0E48  34 1E 07 50 */	addic. r0, r30, 0x750
/* 80CB0E4C  41 82 00 54 */	beq lbl_80CB0EA0
/* 80CB0E50  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CB0E54  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CB0E58  90 7E 07 68 */	stw r3, 0x768(r30)
/* 80CB0E5C  38 03 00 20 */	addi r0, r3, 0x20
/* 80CB0E60  90 1E 07 6C */	stw r0, 0x76c(r30)
/* 80CB0E64  34 1E 07 6C */	addic. r0, r30, 0x76c
/* 80CB0E68  41 82 00 24 */	beq lbl_80CB0E8C
/* 80CB0E6C  3C 60 80 CB */	lis r3, __vt__10dCcD_GStts@ha
/* 80CB0E70  38 03 19 20 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80CB0E74  90 1E 07 6C */	stw r0, 0x76c(r30)
/* 80CB0E78  34 1E 07 6C */	addic. r0, r30, 0x76c
/* 80CB0E7C  41 82 00 10 */	beq lbl_80CB0E8C
/* 80CB0E80  3C 60 80 CB */	lis r3, __vt__10cCcD_GStts@ha
/* 80CB0E84  38 03 19 14 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80CB0E88  90 1E 07 6C */	stw r0, 0x76c(r30)
lbl_80CB0E8C:
/* 80CB0E8C  34 1E 07 50 */	addic. r0, r30, 0x750
/* 80CB0E90  41 82 00 10 */	beq lbl_80CB0EA0
/* 80CB0E94  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CB0E98  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CB0E9C  90 1E 07 68 */	stw r0, 0x768(r30)
lbl_80CB0EA0:
/* 80CB0EA0  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80CB0EA4  41 82 00 2C */	beq lbl_80CB0ED0
/* 80CB0EA8  3C 60 80 CB */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80CB0EAC  38 63 18 F0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80CB0EB0  90 7E 05 88 */	stw r3, 0x588(r30)
/* 80CB0EB4  38 03 00 0C */	addi r0, r3, 0xc
/* 80CB0EB8  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 80CB0EBC  38 03 00 18 */	addi r0, r3, 0x18
/* 80CB0EC0  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80CB0EC4  38 7E 05 78 */	addi r3, r30, 0x578
/* 80CB0EC8  38 80 00 00 */	li r4, 0
/* 80CB0ECC  4B 3C 50 C8 */	b __dt__9dBgS_AcchFv
lbl_80CB0ED0:
/* 80CB0ED0  7F C3 F3 78 */	mr r3, r30
/* 80CB0ED4  38 80 00 00 */	li r4, 0
/* 80CB0ED8  4B 36 7D B4 */	b __dt__10fopAc_ac_cFv
/* 80CB0EDC  7F E0 07 35 */	extsh. r0, r31
/* 80CB0EE0  40 81 00 0C */	ble lbl_80CB0EEC
/* 80CB0EE4  7F C3 F3 78 */	mr r3, r30
/* 80CB0EE8  4B 61 DE 54 */	b __dl__FPv
lbl_80CB0EEC:
/* 80CB0EEC  7F C3 F3 78 */	mr r3, r30
/* 80CB0EF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB0EF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB0EF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB0EFC  7C 08 03 A6 */	mtlr r0
/* 80CB0F00  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB0F04  4E 80 00 20 */	blr 
