lbl_80CDE588:
/* 80CDE588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDE58C  7C 08 02 A6 */	mflr r0
/* 80CDE590  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDE594  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDE598  93 C1 00 08 */	stw r30, 8(r1)
/* 80CDE59C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CDE5A0  7C 9F 23 78 */	mr r31, r4
/* 80CDE5A4  41 82 00 54 */	beq lbl_80CDE5F8
/* 80CDE5A8  3C 60 80 CE */	lis r3, __vt__12daSmWStone_c@ha /* 0x80CDEFA0@ha */
/* 80CDE5AC  38 03 EF A0 */	addi r0, r3, __vt__12daSmWStone_c@l /* 0x80CDEFA0@l */
/* 80CDE5B0  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80CDE5B4  7F C3 F3 78 */	mr r3, r30
/* 80CDE5B8  41 82 00 08 */	beq lbl_80CDE5C0
/* 80CDE5BC  38 63 05 68 */	addi r3, r3, 0x568
lbl_80CDE5C0:
/* 80CDE5C0  3C 80 80 CE */	lis r4, l_arcName@ha /* 0x80CDEF1C@ha */
/* 80CDE5C4  38 84 EF 1C */	addi r4, r4, l_arcName@l /* 0x80CDEF1C@l */
/* 80CDE5C8  80 84 00 00 */	lwz r4, 0(r4)
/* 80CDE5CC  4B 34 EA 3D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CDE5D0  38 7E 05 74 */	addi r3, r30, 0x574
/* 80CDE5D4  38 80 FF FF */	li r4, -1
/* 80CDE5D8  4B 58 9A D9 */	bl __dt__13cBgS_PolyInfoFv
/* 80CDE5DC  7F C3 F3 78 */	mr r3, r30
/* 80CDE5E0  38 80 00 00 */	li r4, 0
/* 80CDE5E4  4B 33 A6 A9 */	bl __dt__10fopAc_ac_cFv
/* 80CDE5E8  7F E0 07 35 */	extsh. r0, r31
/* 80CDE5EC  40 81 00 0C */	ble lbl_80CDE5F8
/* 80CDE5F0  7F C3 F3 78 */	mr r3, r30
/* 80CDE5F4  4B 5F 07 49 */	bl __dl__FPv
lbl_80CDE5F8:
/* 80CDE5F8  7F C3 F3 78 */	mr r3, r30
/* 80CDE5FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDE600  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CDE604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDE608  7C 08 03 A6 */	mtlr r0
/* 80CDE60C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDE610  4E 80 00 20 */	blr 
