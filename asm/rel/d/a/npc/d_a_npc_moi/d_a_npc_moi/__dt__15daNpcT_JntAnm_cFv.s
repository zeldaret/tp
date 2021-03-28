lbl_80A7A4C8:
/* 80A7A4C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A7A4CC  7C 08 02 A6 */	mflr r0
/* 80A7A4D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A7A4D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A7A4D8  93 C1 00 08 */	stw r30, 8(r1)
/* 80A7A4DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A7A4E0  7C 9E 23 78 */	mr r30, r4
/* 80A7A4E4  41 82 00 C4 */	beq lbl_80A7A5A8
/* 80A7A4E8  3C 60 80 A8 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80A7A4EC  38 03 BE 94 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80A7A4F0  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80A7A4F4  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80A7A4F8  3C 80 80 A8 */	lis r4, __dt__4cXyzFv@ha
/* 80A7A4FC  38 84 9D 58 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A7A500  38 A0 00 0C */	li r5, 0xc
/* 80A7A504  38 C0 00 03 */	li r6, 3
/* 80A7A508  4B 8E 77 E0 */	b __destroy_arr
/* 80A7A50C  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80A7A510  3C 80 80 A8 */	lis r4, __dt__4cXyzFv@ha
/* 80A7A514  38 84 9D 58 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A7A518  38 A0 00 0C */	li r5, 0xc
/* 80A7A51C  38 C0 00 03 */	li r6, 3
/* 80A7A520  4B 8E 77 C8 */	b __destroy_arr
/* 80A7A524  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80A7A528  3C 80 80 A8 */	lis r4, __dt__4cXyzFv@ha
/* 80A7A52C  38 84 9D 58 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A7A530  38 A0 00 0C */	li r5, 0xc
/* 80A7A534  38 C0 00 03 */	li r6, 3
/* 80A7A538  4B 8E 77 B0 */	b __destroy_arr
/* 80A7A53C  38 7F 00 78 */	addi r3, r31, 0x78
/* 80A7A540  3C 80 80 A8 */	lis r4, __dt__4cXyzFv@ha
/* 80A7A544  38 84 9D 58 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A7A548  38 A0 00 0C */	li r5, 0xc
/* 80A7A54C  38 C0 00 03 */	li r6, 3
/* 80A7A550  4B 8E 77 98 */	b __destroy_arr
/* 80A7A554  38 7F 00 54 */	addi r3, r31, 0x54
/* 80A7A558  3C 80 80 A8 */	lis r4, __dt__4cXyzFv@ha
/* 80A7A55C  38 84 9D 58 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A7A560  38 A0 00 0C */	li r5, 0xc
/* 80A7A564  38 C0 00 03 */	li r6, 3
/* 80A7A568  4B 8E 77 80 */	b __destroy_arr
/* 80A7A56C  38 7F 00 30 */	addi r3, r31, 0x30
/* 80A7A570  3C 80 80 A8 */	lis r4, __dt__4cXyzFv@ha
/* 80A7A574  38 84 9D 58 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A7A578  38 A0 00 0C */	li r5, 0xc
/* 80A7A57C  38 C0 00 03 */	li r6, 3
/* 80A7A580  4B 8E 77 68 */	b __destroy_arr
/* 80A7A584  28 1F 00 00 */	cmplwi r31, 0
/* 80A7A588  41 82 00 10 */	beq lbl_80A7A598
/* 80A7A58C  3C 60 80 A8 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A7A590  38 03 BE 88 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A7A594  90 1F 00 04 */	stw r0, 4(r31)
lbl_80A7A598:
/* 80A7A598  7F C0 07 35 */	extsh. r0, r30
/* 80A7A59C  40 81 00 0C */	ble lbl_80A7A5A8
/* 80A7A5A0  7F E3 FB 78 */	mr r3, r31
/* 80A7A5A4  4B 85 47 98 */	b __dl__FPv
lbl_80A7A5A8:
/* 80A7A5A8  7F E3 FB 78 */	mr r3, r31
/* 80A7A5AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A7A5B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A7A5B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A7A5B8  7C 08 03 A6 */	mtlr r0
/* 80A7A5BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A7A5C0  4E 80 00 20 */	blr 
