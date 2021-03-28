lbl_809B1EA8:
/* 809B1EA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B1EAC  7C 08 02 A6 */	mflr r0
/* 809B1EB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B1EB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B1EB8  93 C1 00 08 */	stw r30, 8(r1)
/* 809B1EBC  7C 7E 1B 78 */	mr r30, r3
/* 809B1EC0  1F E4 00 0C */	mulli r31, r4, 0xc
/* 809B1EC4  3C 60 80 9C */	lis r3, sBtkPrm@ha
/* 809B1EC8  38 83 93 DC */	addi r4, r3, sBtkPrm@l
/* 809B1ECC  7C 64 FA 14 */	add r3, r4, r31
/* 809B1ED0  80 03 00 08 */	lwz r0, 8(r3)
/* 809B1ED4  54 00 10 3A */	slwi r0, r0, 2
/* 809B1ED8  3C 60 80 9C */	lis r3, l_resNameList@ha
/* 809B1EDC  38 63 95 F8 */	addi r3, r3, l_resNameList@l
/* 809B1EE0  7C 63 00 2E */	lwzx r3, r3, r0
/* 809B1EE4  7C 84 F8 2E */	lwzx r4, r4, r31
/* 809B1EE8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 809B1EEC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 809B1EF0  3C A5 00 02 */	addis r5, r5, 2
/* 809B1EF4  38 C0 00 80 */	li r6, 0x80
/* 809B1EF8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809B1EFC  4B 68 A3 F0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809B1F00  7C 65 1B 79 */	or. r5, r3, r3
/* 809B1F04  40 82 00 0C */	bne lbl_809B1F10
/* 809B1F08  38 60 00 00 */	li r3, 0
/* 809B1F0C  48 00 00 40 */	b lbl_809B1F4C
lbl_809B1F10:
/* 809B1F10  80 7E 00 00 */	lwz r3, 0(r30)
/* 809B1F14  80 63 00 04 */	lwz r3, 4(r3)
/* 809B1F18  80 83 00 04 */	lwz r4, 4(r3)
/* 809B1F1C  38 7E 00 0C */	addi r3, r30, 0xc
/* 809B1F20  38 84 00 58 */	addi r4, r4, 0x58
/* 809B1F24  38 C0 00 01 */	li r6, 1
/* 809B1F28  3C E0 80 9C */	lis r7, sBtkPrm@ha
/* 809B1F2C  38 07 93 DC */	addi r0, r7, sBtkPrm@l
/* 809B1F30  7C E0 FA 14 */	add r7, r0, r31
/* 809B1F34  80 E7 00 04 */	lwz r7, 4(r7)
/* 809B1F38  3D 00 80 9C */	lis r8, lit_3916@ha
/* 809B1F3C  C0 28 93 78 */	lfs f1, lit_3916@l(r8)
/* 809B1F40  39 00 00 00 */	li r8, 0
/* 809B1F44  39 20 FF FF */	li r9, -1
/* 809B1F48  4B 65 B6 F4 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
lbl_809B1F4C:
/* 809B1F4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B1F50  83 C1 00 08 */	lwz r30, 8(r1)
/* 809B1F54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B1F58  7C 08 03 A6 */	mtlr r0
/* 809B1F5C  38 21 00 10 */	addi r1, r1, 0x10
/* 809B1F60  4E 80 00 20 */	blr 
