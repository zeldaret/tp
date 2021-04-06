lbl_80BC6DB8:
/* 80BC6DB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC6DBC  7C 08 02 A6 */	mflr r0
/* 80BC6DC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC6DC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC6DC8  93 C1 00 08 */	stw r30, 8(r1)
/* 80BC6DCC  7C 7F 1B 78 */	mr r31, r3
/* 80BC6DD0  88 03 05 AE */	lbz r0, 0x5ae(r3)
/* 80BC6DD4  54 00 10 3A */	slwi r0, r0, 2
/* 80BC6DD8  3C 60 80 BC */	lis r3, l_arcName@ha /* 0x80BC7D78@ha */
/* 80BC6DDC  38 63 7D 78 */	addi r3, r3, l_arcName@l /* 0x80BC7D78@l */
/* 80BC6DE0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80BC6DE4  3C 80 80 BC */	lis r4, l_bmdIdx@ha /* 0x80BC7D18@ha */
/* 80BC6DE8  38 84 7D 18 */	addi r4, r4, l_bmdIdx@l /* 0x80BC7D18@l */
/* 80BC6DEC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BC6DF0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC6DF4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC6DF8  3F C5 00 02 */	addis r30, r5, 2
/* 80BC6DFC  3B DE C2 F8 */	addi r30, r30, -15624
/* 80BC6E00  7F C5 F3 78 */	mr r5, r30
/* 80BC6E04  38 C0 00 80 */	li r6, 0x80
/* 80BC6E08  4B 47 54 E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BC6E0C  3C 80 00 08 */	lis r4, 8
/* 80BC6E10  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BC6E14  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BC6E18  4B 44 DE 3D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BC6E1C  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80BC6E20  80 1F 05 A8 */	lwz r0, 0x5a8(r31)
/* 80BC6E24  28 00 00 00 */	cmplwi r0, 0
/* 80BC6E28  40 82 00 0C */	bne lbl_80BC6E34
/* 80BC6E2C  38 60 00 00 */	li r3, 0
/* 80BC6E30  48 00 00 A8 */	b lbl_80BC6ED8
lbl_80BC6E34:
/* 80BC6E34  88 1F 05 AE */	lbz r0, 0x5ae(r31)
/* 80BC6E38  28 00 00 01 */	cmplwi r0, 1
/* 80BC6E3C  40 82 00 98 */	bne lbl_80BC6ED4
/* 80BC6E40  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80BC6E44  3C 60 80 BC */	lis r3, l_arcName@ha /* 0x80BC7D78@ha */
/* 80BC6E48  38 63 7D 78 */	addi r3, r3, l_arcName@l /* 0x80BC7D78@l */
/* 80BC6E4C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80BC6E50  38 80 00 06 */	li r4, 6
/* 80BC6E54  7F C5 F3 78 */	mr r5, r30
/* 80BC6E58  38 C0 00 80 */	li r6, 0x80
/* 80BC6E5C  4B 47 54 91 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BC6E60  7C 64 1B 78 */	mr r4, r3
/* 80BC6E64  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80BC6E68  38 A0 00 01 */	li r5, 1
/* 80BC6E6C  38 C0 00 00 */	li r6, 0
/* 80BC6E70  3C E0 80 BC */	lis r7, lit_3783@ha /* 0x80BC7D30@ha */
/* 80BC6E74  C0 27 7D 30 */	lfs f1, lit_3783@l(r7)  /* 0x80BC7D30@l */
/* 80BC6E78  38 E0 00 00 */	li r7, 0
/* 80BC6E7C  39 00 FF FF */	li r8, -1
/* 80BC6E80  39 20 00 00 */	li r9, 0
/* 80BC6E84  4B 44 69 59 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80BC6E88  88 1F 05 AE */	lbz r0, 0x5ae(r31)
/* 80BC6E8C  54 00 10 3A */	slwi r0, r0, 2
/* 80BC6E90  3C 60 80 BC */	lis r3, l_arcName@ha /* 0x80BC7D78@ha */
/* 80BC6E94  38 63 7D 78 */	addi r3, r3, l_arcName@l /* 0x80BC7D78@l */
/* 80BC6E98  7C 63 00 2E */	lwzx r3, r3, r0
/* 80BC6E9C  38 80 00 05 */	li r4, 5
/* 80BC6EA0  7F C5 F3 78 */	mr r5, r30
/* 80BC6EA4  38 C0 00 80 */	li r6, 0x80
/* 80BC6EA8  4B 47 54 45 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BC6EAC  7C 64 1B 78 */	mr r4, r3
/* 80BC6EB0  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 80BC6EB4  38 A0 00 01 */	li r5, 1
/* 80BC6EB8  38 C0 00 00 */	li r6, 0
/* 80BC6EBC  3C E0 80 BC */	lis r7, lit_3783@ha /* 0x80BC7D30@ha */
/* 80BC6EC0  C0 27 7D 30 */	lfs f1, lit_3783@l(r7)  /* 0x80BC7D30@l */
/* 80BC6EC4  38 E0 00 00 */	li r7, 0
/* 80BC6EC8  39 00 FF FF */	li r8, -1
/* 80BC6ECC  39 20 00 00 */	li r9, 0
/* 80BC6ED0  4B 44 69 0D */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
lbl_80BC6ED4:
/* 80BC6ED4  38 60 00 01 */	li r3, 1
lbl_80BC6ED8:
/* 80BC6ED8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC6EDC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BC6EE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC6EE4  7C 08 03 A6 */	mtlr r0
/* 80BC6EE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC6EEC  4E 80 00 20 */	blr 
