lbl_80A0DF08:
/* 80A0DF08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A0DF0C  7C 08 02 A6 */	mflr r0
/* 80A0DF10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A0DF14  39 61 00 20 */	addi r11, r1, 0x20
/* 80A0DF18  4B 95 42 C5 */	bl _savegpr_29
/* 80A0DF1C  7C 7E 1B 78 */	mr r30, r3
/* 80A0DF20  3C 80 80 A1 */	lis r4, lit_3849@ha /* 0x80A0E014@ha */
/* 80A0DF24  3B E4 E0 14 */	addi r31, r4, lit_3849@l /* 0x80A0E014@l */
/* 80A0DF28  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80A0DF2C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80A0DF30  40 82 00 30 */	bne lbl_80A0DF60
/* 80A0DF34  7F C0 F3 79 */	or. r0, r30, r30
/* 80A0DF38  41 82 00 1C */	beq lbl_80A0DF54
/* 80A0DF3C  7C 1D 03 78 */	mr r29, r0
/* 80A0DF40  4B 60 AC 25 */	bl __ct__10fopAc_ac_cFv
/* 80A0DF44  38 7D 05 74 */	addi r3, r29, 0x574
/* 80A0DF48  4B 8B 08 FD */	bl __ct__16Z2SoundObjSimpleFv
/* 80A0DF4C  38 7D 05 F8 */	addi r3, r29, 0x5f8
/* 80A0DF50  4B 83 BF B1 */	bl __ct__10dMsgFlow_cFv
lbl_80A0DF54:
/* 80A0DF54  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80A0DF58  60 00 00 08 */	ori r0, r0, 8
/* 80A0DF5C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80A0DF60:
/* 80A0DF60  38 7E 05 68 */	addi r3, r30, 0x568
/* 80A0DF64  3C 80 80 A1 */	lis r4, d_a_npc_inko__stringBase0@ha /* 0x80A0E0CC@ha */
/* 80A0DF68  38 84 E0 CC */	addi r4, r4, d_a_npc_inko__stringBase0@l /* 0x80A0E0CC@l */
/* 80A0DF6C  4B 61 EF 51 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80A0DF70  7C 7D 1B 78 */	mr r29, r3
/* 80A0DF74  2C 1D 00 04 */	cmpwi r29, 4
/* 80A0DF78  40 82 00 78 */	bne lbl_80A0DFF0
/* 80A0DF7C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80A0DF80  98 1E 05 70 */	stb r0, 0x570(r30)
/* 80A0DF84  7F C3 F3 78 */	mr r3, r30
/* 80A0DF88  3C 80 80 A1 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80A0DDC8@ha */
/* 80A0DF8C  38 84 DD C8 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80A0DDC8@l */
/* 80A0DF90  38 A0 0C 00 */	li r5, 0xc00
/* 80A0DF94  4B 60 C5 1D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80A0DF98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A0DF9C  40 82 00 0C */	bne lbl_80A0DFA8
/* 80A0DFA0  38 60 00 05 */	li r3, 5
/* 80A0DFA4  48 00 00 50 */	b lbl_80A0DFF4
lbl_80A0DFA8:
/* 80A0DFA8  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80A0DFAC  4B 85 99 A9 */	bl cM_rndF__Ff
/* 80A0DFB0  FC 00 08 1E */	fctiwz f0, f1
/* 80A0DFB4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A0DFB8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A0DFBC  B0 1E 05 96 */	sth r0, 0x596(r30)
/* 80A0DFC0  7F C3 F3 78 */	mr r3, r30
/* 80A0DFC4  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80A0DFC8  FC 40 08 90 */	fmr f2, f1
/* 80A0DFCC  FC 60 08 90 */	fmr f3, f1
/* 80A0DFD0  4B 60 C5 59 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80A0DFD4  7F C3 F3 78 */	mr r3, r30
/* 80A0DFD8  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80A0DFDC  FC 40 08 90 */	fmr f2, f1
/* 80A0DFE0  FC 60 08 90 */	fmr f3, f1
/* 80A0DFE4  4B 60 C5 55 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80A0DFE8  7F C3 F3 78 */	mr r3, r30
/* 80A0DFEC  4B FF EC DD */	bl daNpc_Inko_Execute__FP14npc_inko_class
lbl_80A0DFF0:
/* 80A0DFF0  7F A3 EB 78 */	mr r3, r29
lbl_80A0DFF4:
/* 80A0DFF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A0DFF8  4B 95 42 31 */	bl _restgpr_29
/* 80A0DFFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A0E000  7C 08 03 A6 */	mtlr r0
/* 80A0E004  38 21 00 20 */	addi r1, r1, 0x20
/* 80A0E008  4E 80 00 20 */	blr 
