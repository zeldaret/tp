lbl_80CA3C0C:
/* 80CA3C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA3C10  7C 08 02 A6 */	mflr r0
/* 80CA3C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA3C18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA3C1C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CA3C20  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CA3C24  7C 9F 23 78 */	mr r31, r4
/* 80CA3C28  41 82 01 14 */	beq lbl_80CA3D3C
/* 80CA3C2C  3C 80 80 CA */	lis r4, __vt__13daObj_Nougu_c@ha /* 0x80CA4AF4@ha */
/* 80CA3C30  38 04 4A F4 */	addi r0, r4, __vt__13daObj_Nougu_c@l /* 0x80CA4AF4@l */
/* 80CA3C34  90 1E 0E 2C */	stw r0, 0xe2c(r30)
/* 80CA3C38  48 00 0A A1 */	bl getResName__13daObj_Nougu_cFv
/* 80CA3C3C  7C 64 1B 78 */	mr r4, r3
/* 80CA3C40  38 7E 05 6C */	addi r3, r30, 0x56c
/* 80CA3C44  4B 38 93 C5 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CA3C48  38 7E 08 08 */	addi r3, r30, 0x808
/* 80CA3C4C  3C 80 80 CA */	lis r4, __dt__8dCcD_SphFv@ha /* 0x80CA3D58@ha */
/* 80CA3C50  38 84 3D 58 */	addi r4, r4, __dt__8dCcD_SphFv@l /* 0x80CA3D58@l */
/* 80CA3C54  38 A0 01 38 */	li r5, 0x138
/* 80CA3C58  38 C0 00 05 */	li r6, 5
/* 80CA3C5C  4B 6B E0 8D */	bl __destroy_arr
/* 80CA3C60  38 7E 07 CC */	addi r3, r30, 0x7cc
/* 80CA3C64  38 80 FF FF */	li r4, -1
/* 80CA3C68  4B 5C 40 2D */	bl __dt__11cBgS_GndChkFv
/* 80CA3C6C  34 1E 07 8C */	addic. r0, r30, 0x78c
/* 80CA3C70  41 82 00 28 */	beq lbl_80CA3C98
/* 80CA3C74  3C 60 80 CA */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80CA4AE8@ha */
/* 80CA3C78  38 03 4A E8 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80CA4AE8@l */
/* 80CA3C7C  90 1E 07 98 */	stw r0, 0x798(r30)
/* 80CA3C80  38 7E 07 A0 */	addi r3, r30, 0x7a0
/* 80CA3C84  38 80 FF FF */	li r4, -1
/* 80CA3C88  4B 5C B2 91 */	bl __dt__8cM3dGCirFv
/* 80CA3C8C  38 7E 07 8C */	addi r3, r30, 0x78c
/* 80CA3C90  38 80 00 00 */	li r4, 0
/* 80CA3C94  4B 5C 44 1D */	bl __dt__13cBgS_PolyInfoFv
lbl_80CA3C98:
/* 80CA3C98  34 1E 07 50 */	addic. r0, r30, 0x750
/* 80CA3C9C  41 82 00 54 */	beq lbl_80CA3CF0
/* 80CA3CA0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80CA3CA4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80CA3CA8  90 7E 07 68 */	stw r3, 0x768(r30)
/* 80CA3CAC  38 03 00 20 */	addi r0, r3, 0x20
/* 80CA3CB0  90 1E 07 6C */	stw r0, 0x76c(r30)
/* 80CA3CB4  34 1E 07 6C */	addic. r0, r30, 0x76c
/* 80CA3CB8  41 82 00 24 */	beq lbl_80CA3CDC
/* 80CA3CBC  3C 60 80 CA */	lis r3, __vt__10dCcD_GStts@ha /* 0x80CA4ADC@ha */
/* 80CA3CC0  38 03 4A DC */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80CA4ADC@l */
/* 80CA3CC4  90 1E 07 6C */	stw r0, 0x76c(r30)
/* 80CA3CC8  34 1E 07 6C */	addic. r0, r30, 0x76c
/* 80CA3CCC  41 82 00 10 */	beq lbl_80CA3CDC
/* 80CA3CD0  3C 60 80 CA */	lis r3, __vt__10cCcD_GStts@ha /* 0x80CA4AD0@ha */
/* 80CA3CD4  38 03 4A D0 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80CA4AD0@l */
/* 80CA3CD8  90 1E 07 6C */	stw r0, 0x76c(r30)
lbl_80CA3CDC:
/* 80CA3CDC  34 1E 07 50 */	addic. r0, r30, 0x750
/* 80CA3CE0  41 82 00 10 */	beq lbl_80CA3CF0
/* 80CA3CE4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80CA3CE8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80CA3CEC  90 1E 07 68 */	stw r0, 0x768(r30)
lbl_80CA3CF0:
/* 80CA3CF0  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80CA3CF4  41 82 00 2C */	beq lbl_80CA3D20
/* 80CA3CF8  3C 60 80 CA */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80CA4AAC@ha */
/* 80CA3CFC  38 63 4A AC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80CA4AAC@l */
/* 80CA3D00  90 7E 05 88 */	stw r3, 0x588(r30)
/* 80CA3D04  38 03 00 0C */	addi r0, r3, 0xc
/* 80CA3D08  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 80CA3D0C  38 03 00 18 */	addi r0, r3, 0x18
/* 80CA3D10  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80CA3D14  38 7E 05 78 */	addi r3, r30, 0x578
/* 80CA3D18  38 80 00 00 */	li r4, 0
/* 80CA3D1C  4B 3D 22 79 */	bl __dt__9dBgS_AcchFv
lbl_80CA3D20:
/* 80CA3D20  7F C3 F3 78 */	mr r3, r30
/* 80CA3D24  38 80 00 00 */	li r4, 0
/* 80CA3D28  4B 37 4F 65 */	bl __dt__10fopAc_ac_cFv
/* 80CA3D2C  7F E0 07 35 */	extsh. r0, r31
/* 80CA3D30  40 81 00 0C */	ble lbl_80CA3D3C
/* 80CA3D34  7F C3 F3 78 */	mr r3, r30
/* 80CA3D38  4B 62 B0 05 */	bl __dl__FPv
lbl_80CA3D3C:
/* 80CA3D3C  7F C3 F3 78 */	mr r3, r30
/* 80CA3D40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA3D44  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CA3D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA3D4C  7C 08 03 A6 */	mtlr r0
/* 80CA3D50  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA3D54  4E 80 00 20 */	blr 
