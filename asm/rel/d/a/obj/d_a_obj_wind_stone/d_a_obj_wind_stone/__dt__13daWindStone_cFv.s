lbl_80D37A68:
/* 80D37A68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D37A6C  7C 08 02 A6 */	mflr r0
/* 80D37A70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D37A74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D37A78  93 C1 00 08 */	stw r30, 8(r1)
/* 80D37A7C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D37A80  7C 9F 23 78 */	mr r31, r4
/* 80D37A84  41 82 00 54 */	beq lbl_80D37AD8
/* 80D37A88  3C 60 80 D4 */	lis r3, __vt__13daWindStone_c@ha
/* 80D37A8C  38 03 86 B8 */	addi r0, r3, __vt__13daWindStone_c@l
/* 80D37A90  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80D37A94  7F C3 F3 78 */	mr r3, r30
/* 80D37A98  41 82 00 08 */	beq lbl_80D37AA0
/* 80D37A9C  38 63 05 68 */	addi r3, r3, 0x568
lbl_80D37AA0:
/* 80D37AA0  3C 80 80 D4 */	lis r4, l_arcName@ha
/* 80D37AA4  38 84 86 34 */	addi r4, r4, l_arcName@l
/* 80D37AA8  80 84 00 00 */	lwz r4, 0(r4)
/* 80D37AAC  4B 2F 55 5C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D37AB0  38 7E 05 74 */	addi r3, r30, 0x574
/* 80D37AB4  38 80 FF FF */	li r4, -1
/* 80D37AB8  4B 53 05 F8 */	b __dt__13cBgS_PolyInfoFv
/* 80D37ABC  7F C3 F3 78 */	mr r3, r30
/* 80D37AC0  38 80 00 00 */	li r4, 0
/* 80D37AC4  4B 2E 11 C8 */	b __dt__10fopAc_ac_cFv
/* 80D37AC8  7F E0 07 35 */	extsh. r0, r31
/* 80D37ACC  40 81 00 0C */	ble lbl_80D37AD8
/* 80D37AD0  7F C3 F3 78 */	mr r3, r30
/* 80D37AD4  4B 59 72 68 */	b __dl__FPv
lbl_80D37AD8:
/* 80D37AD8  7F C3 F3 78 */	mr r3, r30
/* 80D37ADC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D37AE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D37AE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D37AE8  7C 08 03 A6 */	mtlr r0
/* 80D37AEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D37AF0  4E 80 00 20 */	blr 
