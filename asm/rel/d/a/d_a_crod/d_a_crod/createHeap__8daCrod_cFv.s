lbl_804A2E38:
/* 804A2E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A2E3C  7C 08 02 A6 */	mflr r0
/* 804A2E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A2E44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A2E48  93 C1 00 08 */	stw r30, 8(r1)
/* 804A2E4C  7C 7E 1B 78 */	mr r30, r3
/* 804A2E50  4B BF AA 34 */	b getAlinkArcName__9daAlink_cFv
/* 804A2E54  38 80 00 22 */	li r4, 0x22
/* 804A2E58  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804A2E5C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804A2E60  3F E5 00 02 */	addis r31, r5, 2
/* 804A2E64  3B FF C2 F8 */	addi r31, r31, -15624
/* 804A2E68  7F E5 FB 78 */	mr r5, r31
/* 804A2E6C  38 C0 00 80 */	li r6, 0x80
/* 804A2E70  4B B9 94 7C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804A2E74  3C 80 00 08 */	lis r4, 8
/* 804A2E78  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 804A2E7C  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 804A2E80  4B B7 1D D4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804A2E84  90 7E 05 68 */	stw r3, 0x568(r30)
/* 804A2E88  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 804A2E8C  28 00 00 00 */	cmplwi r0, 0
/* 804A2E90  40 82 00 0C */	bne lbl_804A2E9C
/* 804A2E94  38 60 00 00 */	li r3, 0
/* 804A2E98  48 00 00 48 */	b lbl_804A2EE0
lbl_804A2E9C:
/* 804A2E9C  4B BF A9 E8 */	b getAlinkArcName__9daAlink_cFv
/* 804A2EA0  38 80 00 0E */	li r4, 0xe
/* 804A2EA4  7F E5 FB 78 */	mr r5, r31
/* 804A2EA8  38 C0 00 80 */	li r6, 0x80
/* 804A2EAC  4B B9 94 40 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804A2EB0  7C 64 1B 78 */	mr r4, r3
/* 804A2EB4  38 7E 05 6C */	addi r3, r30, 0x56c
/* 804A2EB8  38 A0 00 01 */	li r5, 1
/* 804A2EBC  38 C0 00 02 */	li r6, 2
/* 804A2EC0  3C E0 80 4A */	lis r7, lit_4173@ha
/* 804A2EC4  C0 27 41 04 */	lfs f1, lit_4173@l(r7)
/* 804A2EC8  38 E0 00 00 */	li r7, 0
/* 804A2ECC  39 00 FF FF */	li r8, -1
/* 804A2ED0  39 20 00 00 */	li r9, 0
/* 804A2ED4  4B B6 A9 08 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 804A2ED8  30 03 FF FF */	addic r0, r3, -1
/* 804A2EDC  7C 60 19 10 */	subfe r3, r0, r3
lbl_804A2EE0:
/* 804A2EE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A2EE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804A2EE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A2EEC  7C 08 03 A6 */	mtlr r0
/* 804A2EF0  38 21 00 10 */	addi r1, r1, 0x10
/* 804A2EF4  4E 80 00 20 */	blr 
