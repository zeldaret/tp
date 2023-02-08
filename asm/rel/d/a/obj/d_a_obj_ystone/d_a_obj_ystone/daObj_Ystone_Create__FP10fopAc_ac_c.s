lbl_80D3EA80:
/* 80D3EA80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3EA84  7C 08 02 A6 */	mflr r0
/* 80D3EA88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3EA8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3EA90  93 C1 00 08 */	stw r30, 8(r1)
/* 80D3EA94  7C 7F 1B 78 */	mr r31, r3
/* 80D3EA98  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D3EA9C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D3EAA0  40 82 00 1C */	bne lbl_80D3EABC
/* 80D3EAA4  28 1F 00 00 */	cmplwi r31, 0
/* 80D3EAA8  41 82 00 08 */	beq lbl_80D3EAB0
/* 80D3EAAC  4B 2D A0 B9 */	bl __ct__10fopAc_ac_cFv
lbl_80D3EAB0:
/* 80D3EAB0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D3EAB4  60 00 00 08 */	ori r0, r0, 8
/* 80D3EAB8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D3EABC:
/* 80D3EABC  4B FF F5 5D */	bl getNowLevel__Fv
/* 80D3EAC0  38 03 FF FF */	addi r0, r3, -1
/* 80D3EAC4  98 1F 05 99 */	stb r0, 0x599(r31)
/* 80D3EAC8  38 7F 05 68 */	addi r3, r31, 0x568
/* 80D3EACC  88 1F 05 99 */	lbz r0, 0x599(r31)
/* 80D3EAD0  54 00 10 3A */	slwi r0, r0, 2
/* 80D3EAD4  3C 80 80 D4 */	lis r4, l_arcName@ha /* 0x80D3ECBC@ha */
/* 80D3EAD8  38 84 EC BC */	addi r4, r4, l_arcName@l /* 0x80D3ECBC@l */
/* 80D3EADC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D3EAE0  4B 2E E3 DD */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D3EAE4  7C 7E 1B 78 */	mr r30, r3
/* 80D3EAE8  2C 1E 00 04 */	cmpwi r30, 4
/* 80D3EAEC  40 82 00 FC */	bne lbl_80D3EBE8
/* 80D3EAF0  88 1F 05 99 */	lbz r0, 0x599(r31)
/* 80D3EAF4  28 00 00 03 */	cmplwi r0, 3
/* 80D3EAF8  40 80 00 28 */	bge lbl_80D3EB20
/* 80D3EAFC  7F E3 FB 78 */	mr r3, r31
/* 80D3EB00  3C 80 80 D4 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80D3E7B8@ha */
/* 80D3EB04  38 84 E7 B8 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80D3E7B8@l */
/* 80D3EB08  38 A0 10 00 */	li r5, 0x1000
/* 80D3EB0C  4B 2D B9 A5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D3EB10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D3EB14  40 82 00 30 */	bne lbl_80D3EB44
/* 80D3EB18  38 60 00 05 */	li r3, 5
/* 80D3EB1C  48 00 00 D0 */	b lbl_80D3EBEC
lbl_80D3EB20:
/* 80D3EB20  7F E3 FB 78 */	mr r3, r31
/* 80D3EB24  3C 80 80 D4 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80D3E7B8@ha */
/* 80D3EB28  38 84 E7 B8 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80D3E7B8@l */
/* 80D3EB2C  38 A0 33 A0 */	li r5, 0x33a0
/* 80D3EB30  4B 2D B9 81 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D3EB34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D3EB38  40 82 00 0C */	bne lbl_80D3EB44
/* 80D3EB3C  38 60 00 05 */	li r3, 5
/* 80D3EB40  48 00 00 AC */	b lbl_80D3EBEC
lbl_80D3EB44:
/* 80D3EB44  88 1F 05 99 */	lbz r0, 0x599(r31)
/* 80D3EB48  28 00 00 03 */	cmplwi r0, 3
/* 80D3EB4C  40 80 00 58 */	bge lbl_80D3EBA4
/* 80D3EB50  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D3EB54  38 03 00 24 */	addi r0, r3, 0x24
/* 80D3EB58  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80D3EB5C  88 1F 05 99 */	lbz r0, 0x599(r31)
/* 80D3EB60  28 00 00 03 */	cmplwi r0, 3
/* 80D3EB64  40 80 00 0C */	bge lbl_80D3EB70
/* 80D3EB68  38 00 00 01 */	li r0, 1
/* 80D3EB6C  98 1F 05 9B */	stb r0, 0x59b(r31)
lbl_80D3EB70:
/* 80D3EB70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3EB74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D3EB78  3C 80 80 D4 */	lis r4, lit_3968@ha /* 0x80D3EC54@ha */
/* 80D3EB7C  C0 24 EC 54 */	lfs f1, lit_3968@l(r4)  /* 0x80D3EC54@l */
/* 80D3EB80  FC 40 08 90 */	fmr f2, f1
/* 80D3EB84  FC 60 08 90 */	fmr f3, f1
/* 80D3EB88  4B 60 7D E1 */	bl PSMTXScale
/* 80D3EB8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3EB90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D3EB94  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80D3EB98  38 84 00 24 */	addi r4, r4, 0x24
/* 80D3EB9C  4B 60 79 15 */	bl PSMTXCopy
/* 80D3EBA0  48 00 00 34 */	b lbl_80D3EBD4
lbl_80D3EBA4:
/* 80D3EBA4  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80D3EBA8  80 63 00 04 */	lwz r3, 4(r3)
/* 80D3EBAC  38 03 00 24 */	addi r0, r3, 0x24
/* 80D3EBB0  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80D3EBB4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D3EBB8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80D3EBBC  90 1F 05 8C */	stw r0, 0x58c(r31)
/* 80D3EBC0  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 80D3EBC4  2C 00 00 07 */	cmpwi r0, 7
/* 80D3EBC8  41 80 00 0C */	blt lbl_80D3EBD4
/* 80D3EBCC  38 00 00 00 */	li r0, 0
/* 80D3EBD0  90 1F 05 8C */	stw r0, 0x58c(r31)
lbl_80D3EBD4:
/* 80D3EBD4  3C 60 80 D4 */	lis r3, lit_3967@ha /* 0x80D3EC50@ha */
/* 80D3EBD8  C0 03 EC 50 */	lfs f0, lit_3967@l(r3)  /* 0x80D3EC50@l */
/* 80D3EBDC  D0 1F 05 80 */	stfs f0, 0x580(r31)
/* 80D3EBE0  7F E3 FB 78 */	mr r3, r31
/* 80D3EBE4  4B FF FB 09 */	bl daObj_Ystone_Execute__FP16obj_ystone_class
lbl_80D3EBE8:
/* 80D3EBE8  7F C3 F3 78 */	mr r3, r30
lbl_80D3EBEC:
/* 80D3EBEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3EBF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D3EBF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3EBF8  7C 08 03 A6 */	mtlr r0
/* 80D3EBFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3EC00  4E 80 00 20 */	blr 
