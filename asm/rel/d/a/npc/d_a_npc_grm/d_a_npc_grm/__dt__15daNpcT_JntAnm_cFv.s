lbl_809D65A4:
/* 809D65A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D65A8  7C 08 02 A6 */	mflr r0
/* 809D65AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D65B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D65B4  93 C1 00 08 */	stw r30, 8(r1)
/* 809D65B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 809D65BC  7C 9E 23 78 */	mr r30, r4
/* 809D65C0  41 82 00 C4 */	beq lbl_809D6684
/* 809D65C4  3C 60 80 9D */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 809D65C8  38 03 71 EC */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 809D65CC  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 809D65D0  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 809D65D4  3C 80 80 9D */	lis r4, __dt__4cXyzFv@ha
/* 809D65D8  38 84 5F 5C */	addi r4, r4, __dt__4cXyzFv@l
/* 809D65DC  38 A0 00 0C */	li r5, 0xc
/* 809D65E0  38 C0 00 03 */	li r6, 3
/* 809D65E4  4B 98 B7 04 */	b __destroy_arr
/* 809D65E8  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 809D65EC  3C 80 80 9D */	lis r4, __dt__4cXyzFv@ha
/* 809D65F0  38 84 5F 5C */	addi r4, r4, __dt__4cXyzFv@l
/* 809D65F4  38 A0 00 0C */	li r5, 0xc
/* 809D65F8  38 C0 00 03 */	li r6, 3
/* 809D65FC  4B 98 B6 EC */	b __destroy_arr
/* 809D6600  38 7F 00 9C */	addi r3, r31, 0x9c
/* 809D6604  3C 80 80 9D */	lis r4, __dt__4cXyzFv@ha
/* 809D6608  38 84 5F 5C */	addi r4, r4, __dt__4cXyzFv@l
/* 809D660C  38 A0 00 0C */	li r5, 0xc
/* 809D6610  38 C0 00 03 */	li r6, 3
/* 809D6614  4B 98 B6 D4 */	b __destroy_arr
/* 809D6618  38 7F 00 78 */	addi r3, r31, 0x78
/* 809D661C  3C 80 80 9D */	lis r4, __dt__4cXyzFv@ha
/* 809D6620  38 84 5F 5C */	addi r4, r4, __dt__4cXyzFv@l
/* 809D6624  38 A0 00 0C */	li r5, 0xc
/* 809D6628  38 C0 00 03 */	li r6, 3
/* 809D662C  4B 98 B6 BC */	b __destroy_arr
/* 809D6630  38 7F 00 54 */	addi r3, r31, 0x54
/* 809D6634  3C 80 80 9D */	lis r4, __dt__4cXyzFv@ha
/* 809D6638  38 84 5F 5C */	addi r4, r4, __dt__4cXyzFv@l
/* 809D663C  38 A0 00 0C */	li r5, 0xc
/* 809D6640  38 C0 00 03 */	li r6, 3
/* 809D6644  4B 98 B6 A4 */	b __destroy_arr
/* 809D6648  38 7F 00 30 */	addi r3, r31, 0x30
/* 809D664C  3C 80 80 9D */	lis r4, __dt__4cXyzFv@ha
/* 809D6650  38 84 5F 5C */	addi r4, r4, __dt__4cXyzFv@l
/* 809D6654  38 A0 00 0C */	li r5, 0xc
/* 809D6658  38 C0 00 03 */	li r6, 3
/* 809D665C  4B 98 B6 8C */	b __destroy_arr
/* 809D6660  28 1F 00 00 */	cmplwi r31, 0
/* 809D6664  41 82 00 10 */	beq lbl_809D6674
/* 809D6668  3C 60 80 9D */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 809D666C  38 03 71 E0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 809D6670  90 1F 00 04 */	stw r0, 4(r31)
lbl_809D6674:
/* 809D6674  7F C0 07 35 */	extsh. r0, r30
/* 809D6678  40 81 00 0C */	ble lbl_809D6684
/* 809D667C  7F E3 FB 78 */	mr r3, r31
/* 809D6680  4B 8F 86 BC */	b __dl__FPv
lbl_809D6684:
/* 809D6684  7F E3 FB 78 */	mr r3, r31
/* 809D6688  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D668C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809D6690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D6694  7C 08 03 A6 */	mtlr r0
/* 809D6698  38 21 00 10 */	addi r1, r1, 0x10
/* 809D669C  4E 80 00 20 */	blr 
