lbl_80604E5C:
/* 80604E5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80604E60  7C 08 02 A6 */	mflr r0
/* 80604E64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80604E68  39 61 00 20 */	addi r11, r1, 0x20
/* 80604E6C  4B D5 D3 70 */	b _savegpr_29
/* 80604E70  7C 7E 1B 78 */	mr r30, r3
/* 80604E74  3C 80 80 60 */	lis r4, lit_3646@ha
/* 80604E78  3B E4 53 C8 */	addi r31, r4, lit_3646@l
/* 80604E7C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80604E80  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80604E84  40 82 00 1C */	bne lbl_80604EA0
/* 80604E88  28 1E 00 00 */	cmplwi r30, 0
/* 80604E8C  41 82 00 08 */	beq lbl_80604E94
/* 80604E90  48 00 01 95 */	bl __ct__11b_gos_classFv
lbl_80604E94:
/* 80604E94  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80604E98  60 00 00 08 */	ori r0, r0, 8
/* 80604E9C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80604EA0:
/* 80604EA0  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80604EA4  3C 80 80 60 */	lis r4, stringBase0@ha
/* 80604EA8  38 84 54 14 */	addi r4, r4, stringBase0@l
/* 80604EAC  4B A2 80 10 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80604EB0  7C 7D 1B 78 */	mr r29, r3
/* 80604EB4  2C 1D 00 04 */	cmpwi r29, 4
/* 80604EB8  40 82 01 50 */	bne lbl_80605008
/* 80604EBC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80604EC0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80604EC4  90 1E 06 60 */	stw r0, 0x660(r30)
/* 80604EC8  7F C3 F3 78 */	mr r3, r30
/* 80604ECC  3C 80 80 60 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80604ED0  38 84 4D 64 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80604ED4  3C A0 00 05 */	lis r5, 0x0005 /* 0x0004B000@ha */
/* 80604ED8  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x0004B000@l */
/* 80604EDC  4B A1 55 D4 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80604EE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80604EE4  40 82 00 0C */	bne lbl_80604EF0
/* 80604EE8  38 60 00 05 */	li r3, 5
/* 80604EEC  48 00 01 20 */	b lbl_8060500C
lbl_80604EF0:
/* 80604EF0  3C 60 80 60 */	lis r3, data_8060560C@ha
/* 80604EF4  8C 03 56 0C */	lbzu r0, data_8060560C@l(r3)
/* 80604EF8  28 00 00 00 */	cmplwi r0, 0
/* 80604EFC  40 82 00 20 */	bne lbl_80604F1C
/* 80604F00  38 00 00 01 */	li r0, 1
/* 80604F04  98 1E 0C C8 */	stb r0, 0xcc8(r30)
/* 80604F08  98 03 00 00 */	stb r0, 0(r3)
/* 80604F0C  38 00 FF FF */	li r0, -1
/* 80604F10  3C 60 80 60 */	lis r3, l_HIO@ha
/* 80604F14  38 63 56 1C */	addi r3, r3, l_HIO@l
/* 80604F18  98 03 00 04 */	stb r0, 4(r3)
lbl_80604F1C:
/* 80604F1C  38 00 00 04 */	li r0, 4
/* 80604F20  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80604F24  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80604F28  80 63 00 04 */	lwz r3, 4(r3)
/* 80604F2C  38 03 00 24 */	addi r0, r3, 0x24
/* 80604F30  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80604F34  7F C3 F3 78 */	mr r3, r30
/* 80604F38  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80604F3C  FC 40 08 90 */	fmr f2, f1
/* 80604F40  FC 60 08 90 */	fmr f3, f1
/* 80604F44  4B A1 55 E4 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80604F48  7F C3 F3 78 */	mr r3, r30
/* 80604F4C  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80604F50  FC 40 08 90 */	fmr f2, f1
/* 80604F54  FC 60 08 90 */	fmr f3, f1
/* 80604F58  4B A1 55 E0 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80604F5C  38 00 03 E8 */	li r0, 0x3e8
/* 80604F60  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 80604F64  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 80604F68  38 00 00 00 */	li r0, 0
/* 80604F6C  90 01 00 08 */	stw r0, 8(r1)
/* 80604F70  38 7E 06 E4 */	addi r3, r30, 0x6e4
/* 80604F74  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80604F78  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80604F7C  7F C6 F3 78 */	mr r6, r30
/* 80604F80  38 E0 00 01 */	li r7, 1
/* 80604F84  39 1E 06 A4 */	addi r8, r30, 0x6a4
/* 80604F88  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80604F8C  39 40 00 00 */	li r10, 0
/* 80604F90  4B A7 12 B8 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80604F94  38 7E 06 A4 */	addi r3, r30, 0x6a4
/* 80604F98  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80604F9C  FC 40 08 90 */	fmr f2, f1
/* 80604FA0  4B A7 0F B8 */	b SetWall__12dBgS_AcchCirFff
/* 80604FA4  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 80604FA8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80604FAC  38 BE 05 38 */	addi r5, r30, 0x538
/* 80604FB0  38 C0 00 03 */	li r6, 3
/* 80604FB4  38 E0 00 01 */	li r7, 1
/* 80604FB8  4B CB C0 DC */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 80604FBC  38 1E 05 B8 */	addi r0, r30, 0x5b8
/* 80604FC0  90 1E 0C AC */	stw r0, 0xcac(r30)
/* 80604FC4  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80604FC8  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80604FCC  38 00 00 00 */	li r0, 0
/* 80604FD0  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 80604FD4  38 7E 08 BC */	addi r3, r30, 0x8bc
/* 80604FD8  38 80 00 FA */	li r4, 0xfa
/* 80604FDC  38 A0 00 00 */	li r5, 0
/* 80604FE0  7F C6 F3 78 */	mr r6, r30
/* 80604FE4  4B A7 E8 7C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80604FE8  38 7E 0B 68 */	addi r3, r30, 0xb68
/* 80604FEC  3C 80 80 60 */	lis r4, cc_cyl_src@ha
/* 80604FF0  38 84 55 14 */	addi r4, r4, cc_cyl_src@l
/* 80604FF4  4B A7 F8 C0 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80604FF8  38 1E 08 BC */	addi r0, r30, 0x8bc
/* 80604FFC  90 1E 0B AC */	stw r0, 0xbac(r30)
/* 80605000  7F C3 F3 78 */	mr r3, r30
/* 80605004  4B FF FB 79 */	bl daB_GOS_Execute__FP11b_gos_class
lbl_80605008:
/* 80605008  7F A3 EB 78 */	mr r3, r29
lbl_8060500C:
/* 8060500C  39 61 00 20 */	addi r11, r1, 0x20
/* 80605010  4B D5 D2 18 */	b _restgpr_29
/* 80605014  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80605018  7C 08 03 A6 */	mtlr r0
/* 8060501C  38 21 00 20 */	addi r1, r1, 0x20
/* 80605020  4E 80 00 20 */	blr 
