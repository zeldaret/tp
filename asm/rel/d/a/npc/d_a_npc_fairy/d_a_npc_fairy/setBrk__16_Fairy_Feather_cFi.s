lbl_809B1DEC:
/* 809B1DEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B1DF0  7C 08 02 A6 */	mflr r0
/* 809B1DF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B1DF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B1DFC  93 C1 00 08 */	stw r30, 8(r1)
/* 809B1E00  7C 7E 1B 78 */	mr r30, r3
/* 809B1E04  1F E4 00 0C */	mulli r31, r4, 0xc
/* 809B1E08  3C 60 80 9C */	lis r3, sBrkPrm@ha /* 0x809B93D0@ha */
/* 809B1E0C  38 83 93 D0 */	addi r4, r3, sBrkPrm@l /* 0x809B93D0@l */
/* 809B1E10  7C 64 FA 14 */	add r3, r4, r31
/* 809B1E14  80 03 00 08 */	lwz r0, 8(r3)
/* 809B1E18  54 00 10 3A */	slwi r0, r0, 2
/* 809B1E1C  3C 60 80 9C */	lis r3, l_resNameList@ha /* 0x809B95F8@ha */
/* 809B1E20  38 63 95 F8 */	addi r3, r3, l_resNameList@l /* 0x809B95F8@l */
/* 809B1E24  7C 63 00 2E */	lwzx r3, r3, r0
/* 809B1E28  7C 84 F8 2E */	lwzx r4, r4, r31
/* 809B1E2C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809B1E30  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809B1E34  3C A5 00 02 */	addis r5, r5, 2
/* 809B1E38  38 C0 00 80 */	li r6, 0x80
/* 809B1E3C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809B1E40  4B 68 A4 AD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809B1E44  7C 65 1B 79 */	or. r5, r3, r3
/* 809B1E48  40 82 00 0C */	bne lbl_809B1E54
/* 809B1E4C  38 60 00 00 */	li r3, 0
/* 809B1E50  48 00 00 40 */	b lbl_809B1E90
lbl_809B1E54:
/* 809B1E54  80 7E 00 00 */	lwz r3, 0(r30)
/* 809B1E58  80 63 00 04 */	lwz r3, 4(r3)
/* 809B1E5C  80 83 00 04 */	lwz r4, 4(r3)
/* 809B1E60  38 7E 00 24 */	addi r3, r30, 0x24
/* 809B1E64  38 84 00 58 */	addi r4, r4, 0x58
/* 809B1E68  38 C0 00 01 */	li r6, 1
/* 809B1E6C  3C E0 80 9C */	lis r7, sBrkPrm@ha /* 0x809B93D0@ha */
/* 809B1E70  38 07 93 D0 */	addi r0, r7, sBrkPrm@l /* 0x809B93D0@l */
/* 809B1E74  7C E0 FA 14 */	add r7, r0, r31
/* 809B1E78  80 E7 00 04 */	lwz r7, 4(r7)
/* 809B1E7C  3D 00 80 9C */	lis r8, lit_3916@ha /* 0x809B9378@ha */
/* 809B1E80  C0 28 93 78 */	lfs f1, lit_3916@l(r8)  /* 0x809B9378@l */
/* 809B1E84  39 00 00 00 */	li r8, 0
/* 809B1E88  39 20 FF FF */	li r9, -1
/* 809B1E8C  4B 65 B8 81 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
lbl_809B1E90:
/* 809B1E90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B1E94  83 C1 00 08 */	lwz r30, 8(r1)
/* 809B1E98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B1E9C  7C 08 03 A6 */	mtlr r0
/* 809B1EA0  38 21 00 10 */	addi r1, r1, 0x10
/* 809B1EA4  4E 80 00 20 */	blr 
