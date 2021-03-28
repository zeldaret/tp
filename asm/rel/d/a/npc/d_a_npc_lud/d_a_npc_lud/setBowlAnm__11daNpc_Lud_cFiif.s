lbl_80A6CC2C:
/* 80A6CC2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A6CC30  7C 08 02 A6 */	mflr r0
/* 80A6CC34  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A6CC38  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80A6CC3C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80A6CC40  39 61 00 20 */	addi r11, r1, 0x20
/* 80A6CC44  4B 8F 55 98 */	b _savegpr_29
/* 80A6CC48  7C 7D 1B 78 */	mr r29, r3
/* 80A6CC4C  7C BE 2B 78 */	mr r30, r5
/* 80A6CC50  FF E0 08 90 */	fmr f31, f1
/* 80A6CC54  3C A0 80 A7 */	lis r5, m__17daNpc_Lud_Param_c@ha
/* 80A6CC58  3B E5 FD 7C */	addi r31, r5, m__17daNpc_Lud_Param_c@l
/* 80A6CC5C  38 C0 00 00 */	li r6, 0
/* 80A6CC60  80 03 0E 40 */	lwz r0, 0xe40(r3)
/* 80A6CC64  28 00 00 00 */	cmplwi r0, 0
/* 80A6CC68  41 82 00 70 */	beq lbl_80A6CCD8
/* 80A6CC6C  54 80 18 38 */	slwi r0, r4, 3
/* 80A6CC70  3C 80 80 A7 */	lis r4, bowlAnmData@ha
/* 80A6CC74  38 84 08 B8 */	addi r4, r4, bowlAnmData@l
/* 80A6CC78  7C A4 00 2E */	lwzx r5, r4, r0
/* 80A6CC7C  2C 05 00 00 */	cmpwi r5, 0
/* 80A6CC80  40 81 00 24 */	ble lbl_80A6CCA4
/* 80A6CC84  7C 84 02 14 */	add r4, r4, r0
/* 80A6CC88  80 04 00 04 */	lwz r0, 4(r4)
/* 80A6CC8C  54 00 10 3A */	slwi r0, r0, 2
/* 80A6CC90  3C 80 80 A7 */	lis r4, l_resNameList@ha
/* 80A6CC94  38 84 00 44 */	addi r4, r4, l_resNameList@l
/* 80A6CC98  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A6CC9C  4B 6D B3 F8 */	b getTrnsfrmKeyAnmP__8daNpcT_cFPCci
/* 80A6CCA0  7C 66 1B 78 */	mr r6, r3
lbl_80A6CCA4:
/* 80A6CCA4  28 06 00 00 */	cmplwi r6, 0
/* 80A6CCA8  41 82 00 30 */	beq lbl_80A6CCD8
/* 80A6CCAC  80 7D 0E 40 */	lwz r3, 0xe40(r29)
/* 80A6CCB0  80 03 00 08 */	lwz r0, 8(r3)
/* 80A6CCB4  7C 06 00 40 */	cmplw r6, r0
/* 80A6CCB8  41 82 00 20 */	beq lbl_80A6CCD8
/* 80A6CCBC  7C C4 33 78 */	mr r4, r6
/* 80A6CCC0  7F C5 F3 78 */	mr r5, r30
/* 80A6CCC4  FC 20 F8 90 */	fmr f1, f31
/* 80A6CCC8  C0 5F 00 D4 */	lfs f2, 0xd4(r31)
/* 80A6CCCC  C0 7F 00 C8 */	lfs f3, 0xc8(r31)
/* 80A6CCD0  C0 9F 00 E4 */	lfs f4, 0xe4(r31)
/* 80A6CCD4  4B 5A 41 9C */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
lbl_80A6CCD8:
/* 80A6CCD8  38 60 00 01 */	li r3, 1
/* 80A6CCDC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80A6CCE0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80A6CCE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A6CCE8  4B 8F 55 40 */	b _restgpr_29
/* 80A6CCEC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A6CCF0  7C 08 03 A6 */	mtlr r0
/* 80A6CCF4  38 21 00 30 */	addi r1, r1, 0x30
/* 80A6CCF8  4E 80 00 20 */	blr 
