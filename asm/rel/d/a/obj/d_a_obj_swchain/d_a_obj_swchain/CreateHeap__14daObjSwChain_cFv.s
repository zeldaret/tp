lbl_80CF89C0:
/* 80CF89C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF89C4  7C 08 02 A6 */	mflr r0
/* 80CF89C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF89CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF89D0  93 C1 00 08 */	stw r30, 8(r1)
/* 80CF89D4  7C 7F 1B 78 */	mr r31, r3
/* 80CF89D8  88 63 0A 65 */	lbz r3, 0xa65(r3)
/* 80CF89DC  3B C3 00 01 */	addi r30, r3, 1
/* 80CF89E0  1C 7E 00 50 */	mulli r3, r30, 0x50
/* 80CF89E4  38 63 00 10 */	addi r3, r3, 0x10
/* 80CF89E8  4B 5D 62 DD */	bl __nwa__FUl
/* 80CF89EC  3C 80 80 D0 */	lis r4, __ct__Q214daObjSwChain_c7chain_sFv@ha /* 0x80CF8B3C@ha */
/* 80CF89F0  38 84 8B 3C */	addi r4, r4, __ct__Q214daObjSwChain_c7chain_sFv@l /* 0x80CF8B3C@l */
/* 80CF89F4  3C A0 80 D0 */	lis r5, __dt__Q214daObjSwChain_c7chain_sFv@ha /* 0x80CF8B00@ha */
/* 80CF89F8  38 A5 8B 00 */	addi r5, r5, __dt__Q214daObjSwChain_c7chain_sFv@l /* 0x80CF8B00@l */
/* 80CF89FC  38 C0 00 50 */	li r6, 0x50
/* 80CF8A00  7F C7 F3 78 */	mr r7, r30
/* 80CF8A04  4B 66 95 11 */	bl __construct_new_array
/* 80CF8A08  90 7F 0A 74 */	stw r3, 0xa74(r31)
/* 80CF8A0C  80 1F 0A 74 */	lwz r0, 0xa74(r31)
/* 80CF8A10  28 00 00 00 */	cmplwi r0, 0
/* 80CF8A14  40 82 00 0C */	bne lbl_80CF8A20
/* 80CF8A18  38 60 00 00 */	li r3, 0
/* 80CF8A1C  48 00 00 CC */	b lbl_80CF8AE8
lbl_80CF8A20:
/* 80CF8A20  7C 05 03 78 */	mr r5, r0
/* 80CF8A24  38 C0 00 00 */	li r6, 0
/* 80CF8A28  3C 60 80 D0 */	lis r3, lit_3734@ha /* 0x80CFB6EC@ha */
/* 80CF8A2C  C0 03 B6 EC */	lfs f0, lit_3734@l(r3)  /* 0x80CFB6EC@l */
/* 80CF8A30  38 80 00 00 */	li r4, 0
/* 80CF8A34  48 00 00 2C */	b lbl_80CF8A60
lbl_80CF8A38:
/* 80CF8A38  D0 05 00 34 */	stfs f0, 0x34(r5)
/* 80CF8A3C  D0 05 00 38 */	stfs f0, 0x38(r5)
/* 80CF8A40  D0 05 00 3C */	stfs f0, 0x3c(r5)
/* 80CF8A44  B0 85 00 40 */	sth r4, 0x40(r5)
/* 80CF8A48  B0 85 00 42 */	sth r4, 0x42(r5)
/* 80CF8A4C  B0 85 00 44 */	sth r4, 0x44(r5)
/* 80CF8A50  D0 05 00 48 */	stfs f0, 0x48(r5)
/* 80CF8A54  98 85 00 4C */	stb r4, 0x4c(r5)
/* 80CF8A58  38 C6 00 01 */	addi r6, r6, 1
/* 80CF8A5C  38 A5 00 50 */	addi r5, r5, 0x50
lbl_80CF8A60:
/* 80CF8A60  88 7F 0A 65 */	lbz r3, 0xa65(r31)
/* 80CF8A64  38 03 00 01 */	addi r0, r3, 1
/* 80CF8A68  7C 06 00 00 */	cmpw r6, r0
/* 80CF8A6C  41 80 FF CC */	blt lbl_80CF8A38
/* 80CF8A70  3C 60 80 D0 */	lis r3, l_arcName@ha /* 0x80CFB798@ha */
/* 80CF8A74  38 63 B7 98 */	addi r3, r3, l_arcName@l /* 0x80CFB798@l */
/* 80CF8A78  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF8A7C  38 80 00 04 */	li r4, 4
/* 80CF8A80  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CF8A84  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CF8A88  3F C5 00 02 */	addis r30, r5, 2
/* 80CF8A8C  3B DE C2 F8 */	addi r30, r30, -15624
/* 80CF8A90  7F C5 F3 78 */	mr r5, r30
/* 80CF8A94  38 C0 00 80 */	li r6, 0x80
/* 80CF8A98  4B 34 38 55 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CF8A9C  3C 80 00 08 */	lis r4, 8
/* 80CF8AA0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CF8AA4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CF8AA8  4B 31 C1 AD */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CF8AAC  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80CF8AB0  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80CF8AB4  28 00 00 00 */	cmplwi r0, 0
/* 80CF8AB8  40 82 00 0C */	bne lbl_80CF8AC4
/* 80CF8ABC  38 60 00 00 */	li r3, 0
/* 80CF8AC0  48 00 00 28 */	b lbl_80CF8AE8
lbl_80CF8AC4:
/* 80CF8AC4  3C 60 80 D0 */	lis r3, l_arcName@ha /* 0x80CFB798@ha */
/* 80CF8AC8  38 63 B7 98 */	addi r3, r3, l_arcName@l /* 0x80CFB798@l */
/* 80CF8ACC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF8AD0  38 80 00 03 */	li r4, 3
/* 80CF8AD4  7F C5 F3 78 */	mr r5, r30
/* 80CF8AD8  38 C0 00 80 */	li r6, 0x80
/* 80CF8ADC  4B 34 38 11 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CF8AE0  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80CF8AE4  38 60 00 01 */	li r3, 1
lbl_80CF8AE8:
/* 80CF8AE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF8AEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CF8AF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF8AF4  7C 08 03 A6 */	mtlr r0
/* 80CF8AF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF8AFC  4E 80 00 20 */	blr 
