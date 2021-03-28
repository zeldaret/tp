lbl_80C6B5E4:
/* 80C6B5E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6B5E8  7C 08 02 A6 */	mflr r0
/* 80C6B5EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6B5F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6B5F4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C6B5F8  7C 7E 1B 78 */	mr r30, r3
/* 80C6B5FC  3C 60 80 C7 */	lis r3, stringBase0@ha
/* 80C6B600  38 63 C6 BC */	addi r3, r3, stringBase0@l
/* 80C6B604  38 80 00 04 */	li r4, 4
/* 80C6B608  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C6B60C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C6B610  3F E5 00 02 */	addis r31, r5, 2
/* 80C6B614  3B FF C2 F8 */	addi r31, r31, -15624
/* 80C6B618  7F E5 FB 78 */	mr r5, r31
/* 80C6B61C  38 C0 00 80 */	li r6, 0x80
/* 80C6B620  4B 3D 0C CC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C6B624  38 80 00 00 */	li r4, 0
/* 80C6B628  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C6B62C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C6B630  4B 3A 96 24 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C6B634  90 7E 08 5C */	stw r3, 0x85c(r30)
/* 80C6B638  80 1E 08 5C */	lwz r0, 0x85c(r30)
/* 80C6B63C  28 00 00 00 */	cmplwi r0, 0
/* 80C6B640  40 82 00 0C */	bne lbl_80C6B64C
/* 80C6B644  38 60 00 00 */	li r3, 0
/* 80C6B648  48 00 00 3C */	b lbl_80C6B684
lbl_80C6B64C:
/* 80C6B64C  3C 60 80 C7 */	lis r3, stringBase0@ha
/* 80C6B650  38 63 C6 BC */	addi r3, r3, stringBase0@l
/* 80C6B654  38 80 00 05 */	li r4, 5
/* 80C6B658  7F E5 FB 78 */	mr r5, r31
/* 80C6B65C  38 C0 00 80 */	li r6, 0x80
/* 80C6B660  4B 3D 0C 8C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C6B664  38 80 00 00 */	li r4, 0
/* 80C6B668  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C6B66C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C6B670  4B 3A 95 E4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C6B674  90 7E 08 60 */	stw r3, 0x860(r30)
/* 80C6B678  80 7E 08 60 */	lwz r3, 0x860(r30)
/* 80C6B67C  30 03 FF FF */	addic r0, r3, -1
/* 80C6B680  7C 60 19 10 */	subfe r3, r0, r3
lbl_80C6B684:
/* 80C6B684  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6B688  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C6B68C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6B690  7C 08 03 A6 */	mtlr r0
/* 80C6B694  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6B698  4E 80 00 20 */	blr 
