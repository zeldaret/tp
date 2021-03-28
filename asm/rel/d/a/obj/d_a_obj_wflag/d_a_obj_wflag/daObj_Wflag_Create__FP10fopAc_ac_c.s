lbl_80D37634:
/* 80D37634  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D37638  7C 08 02 A6 */	mflr r0
/* 80D3763C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D37640  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D37644  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D37648  7C 7F 1B 78 */	mr r31, r3
/* 80D3764C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D37650  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D37654  40 82 00 40 */	bne lbl_80D37694
/* 80D37658  7F E0 FB 79 */	or. r0, r31, r31
/* 80D3765C  41 82 00 2C */	beq lbl_80D37688
/* 80D37660  7C 1E 03 78 */	mr r30, r0
/* 80D37664  4B 2E 15 00 */	b __ct__10fopAc_ac_cFv
/* 80D37668  38 7E 05 80 */	addi r3, r30, 0x580
/* 80D3766C  3C 80 80 D3 */	lis r4, __ct__9wf_tail_sFv@ha
/* 80D37670  38 84 77 F0 */	addi r4, r4, __ct__9wf_tail_sFv@l
/* 80D37674  3C A0 80 D3 */	lis r5, __dt__9wf_tail_sFv@ha
/* 80D37678  38 A5 77 20 */	addi r5, r5, __dt__9wf_tail_sFv@l
/* 80D3767C  38 C0 02 AC */	li r6, 0x2ac
/* 80D37680  38 E0 00 01 */	li r7, 1
/* 80D37684  4B 62 A6 DC */	b __construct_array
lbl_80D37688:
/* 80D37688  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D3768C  60 00 00 08 */	ori r0, r0, 8
/* 80D37690  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D37694:
/* 80D37694  38 7F 05 68 */	addi r3, r31, 0x568
/* 80D37698  3C 80 80 D3 */	lis r4, stringBase0@ha
/* 80D3769C  38 84 78 C0 */	addi r4, r4, stringBase0@l
/* 80D376A0  4B 2F 58 1C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D376A4  7C 7E 1B 78 */	mr r30, r3
/* 80D376A8  2C 1E 00 04 */	cmpwi r30, 4
/* 80D376AC  40 82 00 58 */	bne lbl_80D37704
/* 80D376B0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D376B4  98 1F 08 2C */	stb r0, 0x82c(r31)
/* 80D376B8  7F E3 FB 78 */	mr r3, r31
/* 80D376BC  3C 80 80 D3 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80D376C0  38 84 73 08 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80D376C4  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000D700@ha */
/* 80D376C8  38 A5 D7 00 */	addi r5, r5, 0xD700 /* 0x0000D700@l */
/* 80D376CC  4B 2E 2D E4 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D376D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D376D4  40 82 00 0C */	bne lbl_80D376E0
/* 80D376D8  38 60 00 05 */	li r3, 5
/* 80D376DC  48 00 00 2C */	b lbl_80D37708
lbl_80D376E0:
/* 80D376E0  3C 60 80 D3 */	lis r3, lit_4131@ha
/* 80D376E4  C0 23 78 BC */	lfs f1, lit_4131@l(r3)
/* 80D376E8  4B 53 02 6C */	b cM_rndF__Ff
/* 80D376EC  FC 00 08 1E */	fctiwz f0, f1
/* 80D376F0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80D376F4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80D376F8  B0 1F 08 36 */	sth r0, 0x836(r31)
/* 80D376FC  7F E3 FB 78 */	mr r3, r31
/* 80D37700  4B FF F9 59 */	bl daObj_Wflag_Execute__FP15obj_wflag_class
lbl_80D37704:
/* 80D37704  7F C3 F3 78 */	mr r3, r30
lbl_80D37708:
/* 80D37708  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D3770C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D37710  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D37714  7C 08 03 A6 */	mtlr r0
/* 80D37718  38 21 00 20 */	addi r1, r1, 0x20
/* 80D3771C  4E 80 00 20 */	blr 
