lbl_80D21E28:
/* 80D21E28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D21E2C  7C 08 02 A6 */	mflr r0
/* 80D21E30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D21E34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D21E38  93 C1 00 08 */	stw r30, 8(r1)
/* 80D21E3C  7C 7F 1B 78 */	mr r31, r3
/* 80D21E40  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D21E44  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D21E48  40 82 00 9C */	bne lbl_80D21EE4
/* 80D21E4C  7F E0 FB 79 */	or. r0, r31, r31
/* 80D21E50  41 82 00 88 */	beq lbl_80D21ED8
/* 80D21E54  7C 1E 03 78 */	mr r30, r0
/* 80D21E58  4B 2F 6D 0C */	b __ct__10fopAc_ac_cFv
/* 80D21E5C  3C 60 80 D2 */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80D21E60  38 03 40 E4 */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80D21E64  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80D21E68  93 DE 05 6C */	stw r30, 0x56c(r30)
/* 80D21E6C  38 00 00 00 */	li r0, 0
/* 80D21E70  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80D21E74  3C 60 80 D2 */	lis r3, __vt__15daObjVolcBall_c@ha
/* 80D21E78  38 63 40 38 */	addi r3, r3, __vt__15daObjVolcBall_c@l
/* 80D21E7C  90 7E 05 78 */	stw r3, 0x578(r30)
/* 80D21E80  38 03 00 08 */	addi r0, r3, 8
/* 80D21E84  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80D21E88  38 7E 05 84 */	addi r3, r30, 0x584
/* 80D21E8C  4B 35 40 20 */	b __ct__12dBgS_AcchCirFv
/* 80D21E90  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D21E94  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D21E98  90 1E 05 DC */	stw r0, 0x5dc(r30)
/* 80D21E9C  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 80D21EA0  4B 36 18 C0 */	b __ct__10dCcD_GSttsFv
/* 80D21EA4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D21EA8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D21EAC  90 7E 05 DC */	stw r3, 0x5dc(r30)
/* 80D21EB0  38 03 00 20 */	addi r0, r3, 0x20
/* 80D21EB4  90 1E 05 E0 */	stw r0, 0x5e0(r30)
/* 80D21EB8  38 7E 06 0C */	addi r3, r30, 0x60c
/* 80D21EBC  3C 80 80 D2 */	lis r4, __ct__Q215daObjVolcBall_c7vball_sFv@ha
/* 80D21EC0  38 84 21 4C */	addi r4, r4, __ct__Q215daObjVolcBall_c7vball_sFv@l
/* 80D21EC4  3C A0 80 D2 */	lis r5, __dt__Q215daObjVolcBall_c7vball_sFv@ha
/* 80D21EC8  38 A5 1F A8 */	addi r5, r5, __dt__Q215daObjVolcBall_c7vball_sFv@l
/* 80D21ECC  38 C0 03 E0 */	li r6, 0x3e0
/* 80D21ED0  38 E0 00 09 */	li r7, 9
/* 80D21ED4  4B 63 FE 8C */	b __construct_array
lbl_80D21ED8:
/* 80D21ED8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D21EDC  60 00 00 08 */	ori r0, r0, 8
/* 80D21EE0  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D21EE4:
/* 80D21EE4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D21EE8  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80D21EEC  98 1F 06 00 */	stb r0, 0x600(r31)
/* 80D21EF0  88 1F 06 00 */	lbz r0, 0x600(r31)
/* 80D21EF4  28 00 00 01 */	cmplwi r0, 1
/* 80D21EF8  40 82 00 38 */	bne lbl_80D21F30
/* 80D21EFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D21F00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D21F04  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D21F08  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D21F0C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D21F10  7C 05 07 74 */	extsb r5, r0
/* 80D21F14  4B 31 34 4C */	b isSwitch__10dSv_info_cCFii
/* 80D21F18  2C 03 00 00 */	cmpwi r3, 0
/* 80D21F1C  41 82 00 0C */	beq lbl_80D21F28
/* 80D21F20  38 60 00 05 */	li r3, 5
/* 80D21F24  48 00 00 6C */	b lbl_80D21F90
lbl_80D21F28:
/* 80D21F28  38 00 00 01 */	li r0, 1
/* 80D21F2C  98 1F 29 26 */	stb r0, 0x2926(r31)
lbl_80D21F30:
/* 80D21F30  38 7F 05 7C */	addi r3, r31, 0x57c
/* 80D21F34  3C 80 80 D2 */	lis r4, l_arcName@ha
/* 80D21F38  38 84 3E AC */	addi r4, r4, l_arcName@l
/* 80D21F3C  80 84 00 00 */	lwz r4, 0(r4)
/* 80D21F40  4B 30 AF 7C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D21F44  7C 7E 1B 78 */	mr r30, r3
/* 80D21F48  2C 1E 00 04 */	cmpwi r30, 4
/* 80D21F4C  40 82 00 40 */	bne lbl_80D21F8C
/* 80D21F50  7F E3 FB 78 */	mr r3, r31
/* 80D21F54  3C 80 80 D2 */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha
/* 80D21F58  38 84 1B 30 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l
/* 80D21F5C  38 A0 49 00 */	li r5, 0x4900
/* 80D21F60  4B 2F 85 50 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D21F64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D21F68  40 82 00 0C */	bne lbl_80D21F74
/* 80D21F6C  38 60 00 05 */	li r3, 5
/* 80D21F70  48 00 00 20 */	b lbl_80D21F90
lbl_80D21F74:
/* 80D21F74  7F E3 FB 78 */	mr r3, r31
/* 80D21F78  4B FF FC C9 */	bl Create__15daObjVolcBall_cFv
/* 80D21F7C  2C 03 00 00 */	cmpwi r3, 0
/* 80D21F80  40 82 00 0C */	bne lbl_80D21F8C
/* 80D21F84  38 60 00 05 */	li r3, 5
/* 80D21F88  48 00 00 08 */	b lbl_80D21F90
lbl_80D21F8C:
/* 80D21F8C  7F C3 F3 78 */	mr r3, r30
lbl_80D21F90:
/* 80D21F90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D21F94  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D21F98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D21F9C  7C 08 03 A6 */	mtlr r0
/* 80D21FA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D21FA4  4E 80 00 20 */	blr 
