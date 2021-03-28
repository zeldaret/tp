lbl_807B792C:
/* 807B792C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807B7930  7C 08 02 A6 */	mflr r0
/* 807B7934  90 01 00 24 */	stw r0, 0x24(r1)
/* 807B7938  39 61 00 20 */	addi r11, r1, 0x20
/* 807B793C  4B BA A8 A0 */	b _savegpr_29
/* 807B7940  7C 7E 1B 78 */	mr r30, r3
/* 807B7944  3C 80 80 7B */	lis r4, lit_3746@ha
/* 807B7948  3B E4 7E B8 */	addi r31, r4, lit_3746@l
/* 807B794C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 807B7950  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 807B7954  40 82 00 1C */	bne lbl_807B7970
/* 807B7958  28 1E 00 00 */	cmplwi r30, 0
/* 807B795C  41 82 00 08 */	beq lbl_807B7964
/* 807B7960  48 00 01 49 */	bl __ct__15e_th_ball_classFv
lbl_807B7964:
/* 807B7964  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 807B7968  60 00 00 08 */	ori r0, r0, 8
/* 807B796C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_807B7970:
/* 807B7970  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 807B7974  3C 80 80 7B */	lis r4, stringBase0@ha
/* 807B7978  38 84 7F C0 */	addi r4, r4, stringBase0@l
/* 807B797C  38 84 00 05 */	addi r4, r4, 5
/* 807B7980  4B 87 55 3C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 807B7984  7C 7D 1B 78 */	mr r29, r3
/* 807B7988  2C 1D 00 04 */	cmpwi r29, 4
/* 807B798C  40 82 01 00 */	bne lbl_807B7A8C
/* 807B7990  7F C3 F3 78 */	mr r3, r30
/* 807B7994  3C 80 80 7B */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 807B7998  38 84 77 AC */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 807B799C  3C A0 00 05 */	lis r5, 0x0005 /* 0x0004B000@ha */
/* 807B79A0  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x0004B000@l */
/* 807B79A4  4B 86 2B 0C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 807B79A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807B79AC  40 82 00 0C */	bne lbl_807B79B8
/* 807B79B0  38 60 00 05 */	li r3, 5
/* 807B79B4  48 00 00 DC */	b lbl_807B7A90
lbl_807B79B8:
/* 807B79B8  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807B79BC  38 03 00 24 */	addi r0, r3, 0x24
/* 807B79C0  90 1E 05 04 */	stw r0, 0x504(r30)
/* 807B79C4  7F C3 F3 78 */	mr r3, r30
/* 807B79C8  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 807B79CC  C0 5F 01 00 */	lfs f2, 0x100(r31)
/* 807B79D0  FC 60 08 90 */	fmr f3, f1
/* 807B79D4  4B 86 2B 54 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 807B79D8  7F C3 F3 78 */	mr r3, r30
/* 807B79DC  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 807B79E0  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 807B79E4  FC 60 08 90 */	fmr f3, f1
/* 807B79E8  4B 86 2B 50 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 807B79EC  38 7E 17 E0 */	addi r3, r30, 0x17e0
/* 807B79F0  38 80 00 F0 */	li r4, 0xf0
/* 807B79F4  38 A0 00 00 */	li r5, 0
/* 807B79F8  7F C6 F3 78 */	mr r6, r30
/* 807B79FC  4B 8C BE 64 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 807B7A00  38 7E 18 1C */	addi r3, r30, 0x181c
/* 807B7A04  3C 80 80 7B */	lis r4, cc_sph_src@ha
/* 807B7A08  38 84 7F D0 */	addi r4, r4, cc_sph_src@l
/* 807B7A0C  4B 8C D0 28 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807B7A10  38 1E 17 E0 */	addi r0, r30, 0x17e0
/* 807B7A14  90 1E 18 60 */	stw r0, 0x1860(r30)
/* 807B7A18  38 7E 19 54 */	addi r3, r30, 0x1954
/* 807B7A1C  3C 80 80 7C */	lis r4, at_sph_src@ha
/* 807B7A20  38 84 80 10 */	addi r4, r4, at_sph_src@l
/* 807B7A24  4B 8C D0 10 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807B7A28  38 1E 17 E0 */	addi r0, r30, 0x17e0
/* 807B7A2C  90 1E 19 98 */	stw r0, 0x1998(r30)
/* 807B7A30  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807B7A34  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807B7A38  38 A0 00 00 */	li r5, 0
/* 807B7A3C  38 C0 00 03 */	li r6, 3
/* 807B7A40  38 E0 00 01 */	li r7, 1
/* 807B7A44  4B B0 8A EC */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 807B7A48  38 00 00 00 */	li r0, 0
/* 807B7A4C  90 01 00 08 */	stw r0, 8(r1)
/* 807B7A50  38 7E 16 08 */	addi r3, r30, 0x1608
/* 807B7A54  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807B7A58  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 807B7A5C  7F C6 F3 78 */	mr r6, r30
/* 807B7A60  38 E0 00 01 */	li r7, 1
/* 807B7A64  39 1E 15 C8 */	addi r8, r30, 0x15c8
/* 807B7A68  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 807B7A6C  39 40 00 00 */	li r10, 0
/* 807B7A70  4B 8B E7 D8 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 807B7A74  38 7E 15 C8 */	addi r3, r30, 0x15c8
/* 807B7A78  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 807B7A7C  FC 40 08 90 */	fmr f2, f1
/* 807B7A80  4B 8B E4 D8 */	b SetWall__12dBgS_AcchCirFff
/* 807B7A84  7F C3 F3 78 */	mr r3, r30
/* 807B7A88  4B FF FA B5 */	bl daE_TH_BALL_Execute__FP15e_th_ball_class
lbl_807B7A8C:
/* 807B7A8C  7F A3 EB 78 */	mr r3, r29
lbl_807B7A90:
/* 807B7A90  39 61 00 20 */	addi r11, r1, 0x20
/* 807B7A94  4B BA A7 94 */	b _restgpr_29
/* 807B7A98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807B7A9C  7C 08 03 A6 */	mtlr r0
/* 807B7AA0  38 21 00 20 */	addi r1, r1, 0x20
/* 807B7AA4  4E 80 00 20 */	blr 
