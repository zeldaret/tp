lbl_80836E20:
/* 80836E20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80836E24  7C 08 02 A6 */	mflr r0
/* 80836E28  90 01 00 34 */	stw r0, 0x34(r1)
/* 80836E2C  39 61 00 30 */	addi r11, r1, 0x30
/* 80836E30  4B B2 B3 A1 */	bl _savegpr_26
/* 80836E34  7C 7E 1B 78 */	mr r30, r3
/* 80836E38  3C 60 80 83 */	lis r3, M_attr__10daFmtMng_c@ha /* 0x808378A8@ha */
/* 80836E3C  3B E3 78 A8 */	addi r31, r3, M_attr__10daFmtMng_c@l /* 0x808378A8@l */
/* 80836E40  4B 97 1C F9 */	bl dKy_get_dayofweek__Fv
/* 80836E44  80 1E 05 94 */	lwz r0, 0x594(r30)
/* 80836E48  7C 00 18 00 */	cmpw r0, r3
/* 80836E4C  40 82 01 14 */	bne lbl_80836F60
/* 80836E50  4B 97 57 2D */	bl dKy_darkworld_check__Fv
/* 80836E54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80836E58  41 82 00 10 */	beq lbl_80836E68
/* 80836E5C  4B 96 8C D5 */	bl dKy_getDarktime_minute__Fv
/* 80836E60  7C 7D 1B 78 */	mr r29, r3
/* 80836E64  48 00 00 0C */	b lbl_80836E70
lbl_80836E68:
/* 80836E68  4B 96 8B D5 */	bl dKy_getdaytime_minute__Fv
/* 80836E6C  7C 7D 1B 78 */	mr r29, r3
lbl_80836E70:
/* 80836E70  4B 97 57 0D */	bl dKy_darkworld_check__Fv
/* 80836E74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80836E78  41 82 00 0C */	beq lbl_80836E84
/* 80836E7C  4B 96 8C 79 */	bl dKy_getDarktime_hour__Fv
/* 80836E80  48 00 00 08 */	b lbl_80836E88
lbl_80836E84:
/* 80836E84  4B 96 8B 8D */	bl dKy_getdaytime_hour__Fv
lbl_80836E88:
/* 80836E88  80 9E 05 9C */	lwz r4, 0x59c(r30)
/* 80836E8C  1C 03 00 3C */	mulli r0, r3, 0x3c
/* 80836E90  7C 1D 02 14 */	add r0, r29, r0
/* 80836E94  7C 04 00 00 */	cmpw r4, r0
/* 80836E98  40 80 00 C8 */	bge lbl_80836F60
/* 80836E9C  83 7E 05 6C */	lwz r27, 0x56c(r30)
/* 80836EA0  38 00 00 00 */	li r0, 0
/* 80836EA4  90 01 00 08 */	stw r0, 8(r1)
/* 80836EA8  3B 40 00 00 */	li r26, 0
/* 80836EAC  48 00 00 68 */	b lbl_80836F14
lbl_80836EB0:
/* 80836EB0  80 7B 00 00 */	lwz r3, 0(r27)
/* 80836EB4  38 81 00 08 */	addi r4, r1, 8
/* 80836EB8  4B 7E 2B 05 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80836EBC  83 81 00 08 */	lwz r28, 8(r1)
/* 80836EC0  28 1C 00 00 */	cmplwi r28, 0
/* 80836EC4  41 82 00 48 */	beq lbl_80836F0C
/* 80836EC8  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80836ECC  4B A3 0A 89 */	bl cM_rndF__Ff
/* 80836ED0  FC 00 08 1E */	fctiwz f0, f1
/* 80836ED4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80836ED8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80836EDC  7F 83 E3 78 */	mr r3, r28
/* 80836EE0  38 80 00 02 */	li r4, 2
/* 80836EE4  80 BC 0A CC */	lwz r5, 0xacc(r28)
/* 80836EE8  4B 92 12 09 */	bl getAnmP__10daNpcCd2_cFii
/* 80836EEC  7C 64 1B 78 */	mr r4, r3
/* 80836EF0  7F 83 E3 78 */	mr r3, r28
/* 80836EF4  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80836EF8  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80836EFC  38 A0 00 02 */	li r5, 2
/* 80836F00  7F A6 EB 78 */	mr r6, r29
/* 80836F04  38 E0 FF FF */	li r7, -1
/* 80836F08  4B 92 1F F9 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
lbl_80836F0C:
/* 80836F0C  3B 5A 00 01 */	addi r26, r26, 1
/* 80836F10  3B 7B 00 20 */	addi r27, r27, 0x20
lbl_80836F14:
/* 80836F14  80 7E 05 88 */	lwz r3, 0x588(r30)
/* 80836F18  80 1E 05 84 */	lwz r0, 0x584(r30)
/* 80836F1C  7C 03 01 D6 */	mullw r0, r3, r0
/* 80836F20  7C 1A 00 00 */	cmpw r26, r0
/* 80836F24  41 80 FF 8C */	blt lbl_80836EB0
/* 80836F28  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 80836F2C  90 1E 05 7C */	stw r0, 0x57c(r30)
/* 80836F30  38 00 00 01 */	li r0, 1
/* 80836F34  90 1E 05 78 */	stw r0, 0x578(r30)
/* 80836F38  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 80836F3C  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80836F40  3C 60 80 83 */	lis r3, ActionTable__10daFmtMng_c@ha /* 0x808379C4@ha */
/* 80836F44  38 03 79 C4 */	addi r0, r3, ActionTable__10daFmtMng_c@l /* 0x808379C4@l */
/* 80836F48  7C 00 22 14 */	add r0, r0, r4
/* 80836F4C  90 1E 05 74 */	stw r0, 0x574(r30)
/* 80836F50  7F C3 F3 78 */	mr r3, r30
/* 80836F54  81 9E 05 74 */	lwz r12, 0x574(r30)
/* 80836F58  4B B2 B1 2D */	bl __ptmf_scall
/* 80836F5C  60 00 00 00 */	nop 
lbl_80836F60:
/* 80836F60  39 61 00 30 */	addi r11, r1, 0x30
/* 80836F64  4B B2 B2 B9 */	bl _restgpr_26
/* 80836F68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80836F6C  7C 08 03 A6 */	mtlr r0
/* 80836F70  38 21 00 30 */	addi r1, r1, 0x30
/* 80836F74  4E 80 00 20 */	blr 
