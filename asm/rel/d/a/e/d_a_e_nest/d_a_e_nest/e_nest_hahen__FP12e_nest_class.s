lbl_80502D30:
/* 80502D30  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80502D34  7C 08 02 A6 */	mflr r0
/* 80502D38  90 01 00 64 */	stw r0, 0x64(r1)
/* 80502D3C  39 61 00 60 */	addi r11, r1, 0x60
/* 80502D40  4B E5 F4 90 */	b _savegpr_26
/* 80502D44  7C 7D 1B 78 */	mr r29, r3
/* 80502D48  3C 60 80 50 */	lis r3, lit_3999@ha
/* 80502D4C  3B C3 46 DC */	addi r30, r3, lit_3999@l
/* 80502D50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80502D54  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80502D58  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 80502D5C  A8 1D 05 80 */	lha r0, 0x580(r29)
/* 80502D60  2C 00 00 01 */	cmpwi r0, 1
/* 80502D64  41 82 00 30 */	beq lbl_80502D94
/* 80502D68  40 80 00 10 */	bge lbl_80502D78
/* 80502D6C  2C 00 00 00 */	cmpwi r0, 0
/* 80502D70  40 80 00 14 */	bge lbl_80502D84
/* 80502D74  48 00 02 90 */	b lbl_80503004
lbl_80502D78:
/* 80502D78  2C 00 00 03 */	cmpwi r0, 3
/* 80502D7C  40 80 02 88 */	bge lbl_80503004
/* 80502D80  48 00 02 70 */	b lbl_80502FF0
lbl_80502D84:
/* 80502D84  38 00 00 0A */	li r0, 0xa
/* 80502D88  B0 1D 05 82 */	sth r0, 0x582(r29)
/* 80502D8C  38 00 00 01 */	li r0, 1
/* 80502D90  B0 1D 05 80 */	sth r0, 0x580(r29)
lbl_80502D94:
/* 80502D94  A8 1D 05 82 */	lha r0, 0x582(r29)
/* 80502D98  2C 00 00 01 */	cmpwi r0, 1
/* 80502D9C  40 82 00 48 */	bne lbl_80502DE4
/* 80502DA0  88 1D 0A A0 */	lbz r0, 0xaa0(r29)
/* 80502DA4  28 00 00 00 */	cmplwi r0, 0
/* 80502DA8  41 82 00 3C */	beq lbl_80502DE4
/* 80502DAC  80 1D 0A A4 */	lwz r0, 0xaa4(r29)
/* 80502DB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80502DB4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80502DB8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80502DBC  38 81 00 14 */	addi r4, r1, 0x14
/* 80502DC0  4B B1 6A 38 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80502DC4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80502DC8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80502DCC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80502DD0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80502DD4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80502DD8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80502DDC  38 81 00 24 */	addi r4, r1, 0x24
/* 80502DE0  48 60 76 64 */	b setHawkSideCamera__10daNPC_TK_cF4cXyz
lbl_80502DE4:
/* 80502DE4  3B 60 00 00 */	li r27, 0
/* 80502DE8  3B 40 00 00 */	li r26, 0
lbl_80502DEC:
/* 80502DEC  7C 9D D2 14 */	add r4, r29, r26
/* 80502DF0  88 04 0B 6F */	lbz r0, 0xb6f(r4)
/* 80502DF4  28 00 00 00 */	cmplwi r0, 0
/* 80502DF8  41 82 01 E4 */	beq lbl_80502FDC
/* 80502DFC  C0 44 0B 24 */	lfs f2, 0xb24(r4)
/* 80502E00  C0 3D 05 94 */	lfs f1, 0x594(r29)
/* 80502E04  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80502E08  EC 01 00 28 */	fsubs f0, f1, f0
/* 80502E0C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80502E10  40 81 01 CC */	ble lbl_80502FDC
/* 80502E14  38 61 00 18 */	addi r3, r1, 0x18
/* 80502E18  38 84 0B 20 */	addi r4, r4, 0xb20
/* 80502E1C  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80502E20  4B D6 3D 14 */	b __mi__4cXyzCFRC3Vec
/* 80502E24  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80502E28  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80502E2C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80502E30  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80502E34  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80502E38  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80502E3C  38 61 00 3C */	addi r3, r1, 0x3c
/* 80502E40  4B E4 42 F8 */	b PSVECSquareMag
/* 80502E44  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80502E48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80502E4C  40 81 00 58 */	ble lbl_80502EA4
/* 80502E50  FC 00 08 34 */	frsqrte f0, f1
/* 80502E54  C8 9E 00 08 */	lfd f4, 8(r30)
/* 80502E58  FC 44 00 32 */	fmul f2, f4, f0
/* 80502E5C  C8 7E 00 10 */	lfd f3, 0x10(r30)
/* 80502E60  FC 00 00 32 */	fmul f0, f0, f0
/* 80502E64  FC 01 00 32 */	fmul f0, f1, f0
/* 80502E68  FC 03 00 28 */	fsub f0, f3, f0
/* 80502E6C  FC 02 00 32 */	fmul f0, f2, f0
/* 80502E70  FC 44 00 32 */	fmul f2, f4, f0
/* 80502E74  FC 00 00 32 */	fmul f0, f0, f0
/* 80502E78  FC 01 00 32 */	fmul f0, f1, f0
/* 80502E7C  FC 03 00 28 */	fsub f0, f3, f0
/* 80502E80  FC 02 00 32 */	fmul f0, f2, f0
/* 80502E84  FC 44 00 32 */	fmul f2, f4, f0
/* 80502E88  FC 00 00 32 */	fmul f0, f0, f0
/* 80502E8C  FC 01 00 32 */	fmul f0, f1, f0
/* 80502E90  FC 03 00 28 */	fsub f0, f3, f0
/* 80502E94  FC 02 00 32 */	fmul f0, f2, f0
/* 80502E98  FC 21 00 32 */	fmul f1, f1, f0
/* 80502E9C  FC 20 08 18 */	frsp f1, f1
/* 80502EA0  48 00 00 88 */	b lbl_80502F28
lbl_80502EA4:
/* 80502EA4  C8 1E 00 18 */	lfd f0, 0x18(r30)
/* 80502EA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80502EAC  40 80 00 10 */	bge lbl_80502EBC
/* 80502EB0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80502EB4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80502EB8  48 00 00 70 */	b lbl_80502F28
lbl_80502EBC:
/* 80502EBC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80502EC0  80 81 00 08 */	lwz r4, 8(r1)
/* 80502EC4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80502EC8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80502ECC  7C 03 00 00 */	cmpw r3, r0
/* 80502ED0  41 82 00 14 */	beq lbl_80502EE4
/* 80502ED4  40 80 00 40 */	bge lbl_80502F14
/* 80502ED8  2C 03 00 00 */	cmpwi r3, 0
/* 80502EDC  41 82 00 20 */	beq lbl_80502EFC
/* 80502EE0  48 00 00 34 */	b lbl_80502F14
lbl_80502EE4:
/* 80502EE4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80502EE8  41 82 00 0C */	beq lbl_80502EF4
/* 80502EEC  38 00 00 01 */	li r0, 1
/* 80502EF0  48 00 00 28 */	b lbl_80502F18
lbl_80502EF4:
/* 80502EF4  38 00 00 02 */	li r0, 2
/* 80502EF8  48 00 00 20 */	b lbl_80502F18
lbl_80502EFC:
/* 80502EFC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80502F00  41 82 00 0C */	beq lbl_80502F0C
/* 80502F04  38 00 00 05 */	li r0, 5
/* 80502F08  48 00 00 10 */	b lbl_80502F18
lbl_80502F0C:
/* 80502F0C  38 00 00 03 */	li r0, 3
/* 80502F10  48 00 00 08 */	b lbl_80502F18
lbl_80502F14:
/* 80502F14  38 00 00 04 */	li r0, 4
lbl_80502F18:
/* 80502F18  2C 00 00 01 */	cmpwi r0, 1
/* 80502F1C  40 82 00 0C */	bne lbl_80502F28
/* 80502F20  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80502F24  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80502F28:
/* 80502F28  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 80502F2C  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80502F30  40 80 00 AC */	bge lbl_80502FDC
/* 80502F34  7C 7D D2 14 */	add r3, r29, r26
/* 80502F38  C0 03 0B 20 */	lfs f0, 0xb20(r3)
/* 80502F3C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80502F40  C0 03 0B 24 */	lfs f0, 0xb24(r3)
/* 80502F44  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80502F48  C0 03 0B 28 */	lfs f0, 0xb28(r3)
/* 80502F4C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80502F50  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80502F54  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80502F58  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80502F5C  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80502F60  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80502F64  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80502F68  C0 1D 05 50 */	lfs f0, 0x550(r29)
/* 80502F6C  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80502F70  C0 1D 05 54 */	lfs f0, 0x554(r29)
/* 80502F74  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80502F78  C0 1D 05 58 */	lfs f0, 0x558(r29)
/* 80502F7C  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 80502F80  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80502F84  28 00 00 06 */	cmplwi r0, 6
/* 80502F88  40 82 00 18 */	bne lbl_80502FA0
/* 80502F8C  38 00 00 02 */	li r0, 2
/* 80502F90  B0 1D 05 80 */	sth r0, 0x580(r29)
/* 80502F94  38 00 00 3C */	li r0, 0x3c
/* 80502F98  B0 1D 05 82 */	sth r0, 0x582(r29)
/* 80502F9C  48 00 00 68 */	b lbl_80503004
lbl_80502FA0:
/* 80502FA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80502FA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80502FA8  38 63 5B 54 */	addi r3, r3, 0x5b54
/* 80502FAC  7F A4 EB 78 */	mr r4, r29
/* 80502FB0  38 A0 00 76 */	li r5, 0x76
/* 80502FB4  FC 20 10 90 */	fmr f1, f2
/* 80502FB8  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 80502FBC  C0 7E 00 C0 */	lfs f3, 0xc0(r30)
/* 80502FC0  38 C0 50 00 */	li r6, 0x5000
/* 80502FC4  38 E0 00 01 */	li r7, 1
/* 80502FC8  4B B7 0A 40 */	b request__11dAttCatch_cFP10fopAc_ac_cUcfffsi
/* 80502FCC  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 80502FD0  60 00 00 40 */	ori r0, r0, 0x40
/* 80502FD4  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 80502FD8  48 00 00 2C */	b lbl_80503004
lbl_80502FDC:
/* 80502FDC  3B 7B 00 01 */	addi r27, r27, 1
/* 80502FE0  2C 1B 00 05 */	cmpwi r27, 5
/* 80502FE4  3B 5A 00 58 */	addi r26, r26, 0x58
/* 80502FE8  41 80 FE 04 */	blt lbl_80502DEC
/* 80502FEC  48 00 00 18 */	b lbl_80503004
lbl_80502FF0:
/* 80502FF0  A8 1D 05 82 */	lha r0, 0x582(r29)
/* 80502FF4  2C 00 00 00 */	cmpwi r0, 0
/* 80502FF8  40 82 00 0C */	bne lbl_80503004
/* 80502FFC  38 00 00 01 */	li r0, 1
/* 80503000  B0 1D 05 80 */	sth r0, 0x580(r29)
lbl_80503004:
/* 80503004  7F A3 EB 78 */	mr r3, r29
/* 80503008  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8050300C  4B B1 77 D4 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80503010  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 80503014  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80503018  40 80 00 0C */	bge lbl_80503024
/* 8050301C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80503020  4B C5 C4 D0 */	b setLookPos__9daPy_py_cFP4cXyz
lbl_80503024:
/* 80503024  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80503028  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8050302C  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80503030  3C 80 80 50 */	lis r4, stringBase0@ha
/* 80503034  38 84 47 EC */	addi r4, r4, stringBase0@l
/* 80503038  4B E6 59 5C */	b strcmp
/* 8050303C  2C 03 00 00 */	cmpwi r3, 0
/* 80503040  40 82 00 4C */	bne lbl_8050308C
/* 80503044  A8 1D 05 86 */	lha r0, 0x586(r29)
/* 80503048  2C 00 00 46 */	cmpwi r0, 0x46
/* 8050304C  40 82 00 40 */	bne lbl_8050308C
/* 80503050  38 00 00 0D */	li r0, 0xd
/* 80503054  90 01 00 10 */	stw r0, 0x10(r1)
/* 80503058  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8050305C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80503060  80 63 00 00 */	lwz r3, 0(r3)
/* 80503064  38 81 00 10 */	addi r4, r1, 0x10
/* 80503068  38 A0 00 00 */	li r5, 0
/* 8050306C  38 C0 00 00 */	li r6, 0
/* 80503070  38 E0 00 00 */	li r7, 0
/* 80503074  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80503078  FC 40 08 90 */	fmr f2, f1
/* 8050307C  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80503080  FC 80 18 90 */	fmr f4, f3
/* 80503084  39 00 00 00 */	li r8, 0
/* 80503088  4B DA 88 FC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8050308C:
/* 8050308C  A8 1D 05 86 */	lha r0, 0x586(r29)
/* 80503090  2C 00 00 01 */	cmpwi r0, 1
/* 80503094  40 82 00 34 */	bne lbl_805030C8
/* 80503098  88 1D 0A A0 */	lbz r0, 0xaa0(r29)
/* 8050309C  28 00 00 00 */	cmplwi r0, 0
/* 805030A0  41 82 00 28 */	beq lbl_805030C8
/* 805030A4  80 1D 0A A4 */	lwz r0, 0xaa4(r29)
/* 805030A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805030AC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 805030B0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 805030B4  38 81 00 0C */	addi r4, r1, 0xc
/* 805030B8  4B B1 67 40 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 805030BC  28 03 00 00 */	cmplwi r3, 0
/* 805030C0  41 82 00 08 */	beq lbl_805030C8
/* 805030C4  48 60 74 A4 */	b endHawkCamera__10daNPC_TK_cFv
lbl_805030C8:
/* 805030C8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805030CC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805030D0  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 805030D4  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 805030D8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 805030DC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805030E0  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 805030E4  EC 01 00 2A */	fadds f0, f1, f0
/* 805030E8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805030EC  38 61 00 30 */	addi r3, r1, 0x30
/* 805030F0  4B B1 AB CC */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 805030F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805030F8  41 82 00 10 */	beq lbl_80503108
/* 805030FC  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80503100  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80503104  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
lbl_80503108:
/* 80503108  39 61 00 60 */	addi r11, r1, 0x60
/* 8050310C  4B E5 F1 10 */	b _restgpr_26
/* 80503110  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80503114  7C 08 03 A6 */	mtlr r0
/* 80503118  38 21 00 60 */	addi r1, r1, 0x60
/* 8050311C  4E 80 00 20 */	blr 
