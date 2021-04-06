lbl_804A84DC:
/* 804A84DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A84E0  7C 08 02 A6 */	mflr r0
/* 804A84E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A84E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A84EC  93 C1 00 08 */	stw r30, 8(r1)
/* 804A84F0  7C 7F 1B 78 */	mr r31, r3
/* 804A84F4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 804A84F8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804A84FC  40 82 00 78 */	bne lbl_804A8574
/* 804A8500  7F E0 FB 79 */	or. r0, r31, r31
/* 804A8504  41 82 00 64 */	beq lbl_804A8568
/* 804A8508  7C 1E 03 78 */	mr r30, r0
/* 804A850C  4B B7 06 59 */	bl __ct__10fopAc_ac_cFv
/* 804A8510  38 7E 05 FC */	addi r3, r30, 0x5fc
/* 804A8514  4B E1 7E B5 */	bl __ct__10Z2CreatureFv
/* 804A8518  3C 60 80 4B */	lis r3, __vt__18mDoExt_3DlineMat_c@ha /* 0x804A8BE4@ha */
/* 804A851C  38 03 8B E4 */	addi r0, r3, __vt__18mDoExt_3DlineMat_c@l /* 0x804A8BE4@l */
/* 804A8520  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 804A8524  3C 60 80 3A */	lis r3, __vt__19mDoExt_3DlineMat1_c@ha /* 0x803A3248@ha */
/* 804A8528  38 03 32 48 */	addi r0, r3, __vt__19mDoExt_3DlineMat1_c@l /* 0x803A3248@l */
/* 804A852C  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 804A8530  38 7E 06 F8 */	addi r3, r30, 0x6f8
/* 804A8534  3C 80 80 4B */	lis r4, __ct__12demo_s1_ke_sFv@ha /* 0x804A86B4@ha */
/* 804A8538  38 84 86 B4 */	addi r4, r4, __ct__12demo_s1_ke_sFv@l /* 0x804A86B4@l */
/* 804A853C  3C A0 80 4A */	lis r5, __dt__12demo_s1_ke_sFv@ha /* 0x804A4420@ha */
/* 804A8540  38 A5 44 20 */	addi r5, r5, __dt__12demo_s1_ke_sFv@l /* 0x804A4420@l */
/* 804A8544  38 C0 01 8C */	li r6, 0x18c
/* 804A8548  38 E0 00 16 */	li r7, 0x16
/* 804A854C  4B EB 98 15 */	bl __construct_array
/* 804A8550  3C 60 80 4B */	lis r3, __vt__18mDoExt_3DlineMat_c@ha /* 0x804A8BE4@ha */
/* 804A8554  38 03 8B E4 */	addi r0, r3, __vt__18mDoExt_3DlineMat_c@l /* 0x804A8BE4@l */
/* 804A8558  90 1E 29 00 */	stw r0, 0x2900(r30)
/* 804A855C  3C 60 80 3A */	lis r3, __vt__19mDoExt_3DlineMat0_c@ha /* 0x803A325C@ha */
/* 804A8560  38 03 32 5C */	addi r0, r3, __vt__19mDoExt_3DlineMat0_c@l /* 0x803A325C@l */
/* 804A8564  90 1E 29 00 */	stw r0, 0x2900(r30)
lbl_804A8568:
/* 804A8568  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 804A856C  60 00 00 08 */	ori r0, r0, 8
/* 804A8570  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_804A8574:
/* 804A8574  38 80 00 00 */	li r4, 0
/* 804A8578  98 9F 06 A2 */	stb r4, 0x6a2(r31)
/* 804A857C  98 9F 06 A3 */	stb r4, 0x6a3(r31)
/* 804A8580  98 9F 06 A4 */	stb r4, 0x6a4(r31)
/* 804A8584  98 9F 06 B2 */	stb r4, 0x6b2(r31)
/* 804A8588  38 00 FF FF */	li r0, -1
/* 804A858C  B0 1F 06 9C */	sth r0, 0x69c(r31)
/* 804A8590  B0 1F 06 9E */	sth r0, 0x69e(r31)
/* 804A8594  90 9F 06 94 */	stw r4, 0x694(r31)
/* 804A8598  90 9F 06 98 */	stw r4, 0x698(r31)
/* 804A859C  3C 60 80 4B */	lis r3, lit_4123@ha /* 0x804A8874@ha */
/* 804A85A0  C0 03 88 74 */	lfs f0, lit_4123@l(r3)  /* 0x804A8874@l */
/* 804A85A4  D0 1F 05 68 */	stfs f0, 0x568(r31)
/* 804A85A8  D0 1F 05 6C */	stfs f0, 0x56c(r31)
/* 804A85AC  D0 1F 05 70 */	stfs f0, 0x570(r31)
/* 804A85B0  98 9F 06 A5 */	stb r4, 0x6a5(r31)
/* 804A85B4  98 9F 06 A6 */	stb r4, 0x6a6(r31)
/* 804A85B8  98 1F 06 A7 */	stb r0, 0x6a7(r31)
/* 804A85BC  98 1F 06 A8 */	stb r0, 0x6a8(r31)
/* 804A85C0  98 1F 06 A9 */	stb r0, 0x6a9(r31)
/* 804A85C4  98 1F 06 AA */	stb r0, 0x6aa(r31)
/* 804A85C8  98 1F 06 AB */	stb r0, 0x6ab(r31)
/* 804A85CC  98 9F 06 AC */	stb r4, 0x6ac(r31)
/* 804A85D0  98 9F 06 AD */	stb r4, 0x6ad(r31)
/* 804A85D4  98 9F 06 AE */	stb r4, 0x6ae(r31)
/* 804A85D8  98 9F 06 B8 */	stb r4, 0x6b8(r31)
/* 804A85DC  98 9F 06 B9 */	stb r4, 0x6b9(r31)
/* 804A85E0  38 00 00 03 */	li r0, 3
/* 804A85E4  98 1F 06 AF */	stb r0, 0x6af(r31)
/* 804A85E8  38 00 00 02 */	li r0, 2
/* 804A85EC  98 1F 06 B0 */	stb r0, 0x6b0(r31)
/* 804A85F0  98 9F 06 B4 */	stb r4, 0x6b4(r31)
/* 804A85F4  98 9F 06 B1 */	stb r4, 0x6b1(r31)
/* 804A85F8  38 00 00 01 */	li r0, 1
/* 804A85FC  98 1F 06 B5 */	stb r0, 0x6b5(r31)
/* 804A8600  98 9F 06 B6 */	stb r4, 0x6b6(r31)
/* 804A8604  98 1F 06 B7 */	stb r0, 0x6b7(r31)
/* 804A8608  3C 60 80 4B */	lis r3, lit_4004@ha /* 0x804A886C@ha */
/* 804A860C  C0 03 88 6C */	lfs f0, lit_4004@l(r3)  /* 0x804A886C@l */
/* 804A8610  3C 60 80 4B */	lis r3, S_ganon_left_hand_pos@ha /* 0x804A8DFC@ha */
/* 804A8614  D4 03 8D FC */	stfsu f0, S_ganon_left_hand_pos@l(r3)  /* 0x804A8DFC@l */
/* 804A8618  D0 03 00 04 */	stfs f0, 4(r3)
/* 804A861C  D0 03 00 08 */	stfs f0, 8(r3)
/* 804A8620  3C 60 80 4B */	lis r3, S_ganon_right_hand_pos@ha /* 0x804A8E14@ha */
/* 804A8624  D4 03 8E 14 */	stfsu f0, S_ganon_right_hand_pos@l(r3)  /* 0x804A8E14@l */
/* 804A8628  D0 03 00 04 */	stfs f0, 4(r3)
/* 804A862C  D0 03 00 08 */	stfs f0, 8(r3)
/* 804A8630  38 7F 01 0C */	addi r3, r31, 0x10c
/* 804A8634  3C 80 80 45 */	lis r4, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 804A8638  88 04 0D 64 */	lbz r0, struct_80450D64+0x0@l(r4)  /* 0x80450D64@l */
/* 804A863C  7C 04 07 74 */	extsb r4, r0
/* 804A8640  38 A0 00 FF */	li r5, 0xff
/* 804A8644  4B D0 02 A9 */	bl dKy_tevstr_init__FP12dKy_tevstr_cScUc
/* 804A8648  38 00 00 01 */	li r0, 1
/* 804A864C  98 1F 04 90 */	stb r0, 0x490(r31)
/* 804A8650  38 7F 05 FC */	addi r3, r31, 0x5fc
/* 804A8654  38 9F 05 38 */	addi r4, r31, 0x538
/* 804A8658  38 A0 00 00 */	li r5, 0
/* 804A865C  38 C0 00 0A */	li r6, 0xa
/* 804A8660  38 E0 00 01 */	li r7, 1
/* 804A8664  4B E1 7E CD */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 804A8668  3C 60 80 4B */	lis r3, lit_4662@ha /* 0x804A89F8@ha */
/* 804A866C  38 83 89 F8 */	addi r4, r3, lit_4662@l /* 0x804A89F8@l */
/* 804A8670  80 64 00 00 */	lwz r3, 0(r4)
/* 804A8674  80 04 00 04 */	lwz r0, 4(r4)
/* 804A8678  90 7F 05 7C */	stw r3, 0x57c(r31)
/* 804A867C  90 1F 05 80 */	stw r0, 0x580(r31)
/* 804A8680  80 04 00 08 */	lwz r0, 8(r4)
/* 804A8684  90 1F 05 84 */	stw r0, 0x584(r31)
/* 804A8688  38 7F 05 88 */	addi r3, r31, 0x588
/* 804A868C  4B FF BC 81 */	bl reset__16daDemo00_resID_cFv
/* 804A8690  38 00 FF FF */	li r0, -1
/* 804A8694  98 1F 06 A0 */	stb r0, 0x6a0(r31)
/* 804A8698  38 60 00 04 */	li r3, 4
/* 804A869C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A86A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804A86A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A86A8  7C 08 03 A6 */	mtlr r0
/* 804A86AC  38 21 00 10 */	addi r1, r1, 0x10
/* 804A86B0  4E 80 00 20 */	blr 
