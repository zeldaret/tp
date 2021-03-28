lbl_809FF7BC:
/* 809FF7BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FF7C0  7C 08 02 A6 */	mflr r0
/* 809FF7C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FF7C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809FF7CC  93 C1 00 08 */	stw r30, 8(r1)
/* 809FF7D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 809FF7D4  7C 9E 23 78 */	mr r30, r4
/* 809FF7D8  41 82 00 C4 */	beq lbl_809FF89C
/* 809FF7DC  3C 60 80 A0 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 809FF7E0  38 03 11 7C */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 809FF7E4  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 809FF7E8  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 809FF7EC  3C 80 80 A0 */	lis r4, __dt__4cXyzFv@ha
/* 809FF7F0  38 84 F1 E0 */	addi r4, r4, __dt__4cXyzFv@l
/* 809FF7F4  38 A0 00 0C */	li r5, 0xc
/* 809FF7F8  38 C0 00 03 */	li r6, 3
/* 809FF7FC  4B 96 24 EC */	b __destroy_arr
/* 809FF800  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 809FF804  3C 80 80 A0 */	lis r4, __dt__4cXyzFv@ha
/* 809FF808  38 84 F1 E0 */	addi r4, r4, __dt__4cXyzFv@l
/* 809FF80C  38 A0 00 0C */	li r5, 0xc
/* 809FF810  38 C0 00 03 */	li r6, 3
/* 809FF814  4B 96 24 D4 */	b __destroy_arr
/* 809FF818  38 7F 00 9C */	addi r3, r31, 0x9c
/* 809FF81C  3C 80 80 A0 */	lis r4, __dt__4cXyzFv@ha
/* 809FF820  38 84 F1 E0 */	addi r4, r4, __dt__4cXyzFv@l
/* 809FF824  38 A0 00 0C */	li r5, 0xc
/* 809FF828  38 C0 00 03 */	li r6, 3
/* 809FF82C  4B 96 24 BC */	b __destroy_arr
/* 809FF830  38 7F 00 78 */	addi r3, r31, 0x78
/* 809FF834  3C 80 80 A0 */	lis r4, __dt__4cXyzFv@ha
/* 809FF838  38 84 F1 E0 */	addi r4, r4, __dt__4cXyzFv@l
/* 809FF83C  38 A0 00 0C */	li r5, 0xc
/* 809FF840  38 C0 00 03 */	li r6, 3
/* 809FF844  4B 96 24 A4 */	b __destroy_arr
/* 809FF848  38 7F 00 54 */	addi r3, r31, 0x54
/* 809FF84C  3C 80 80 A0 */	lis r4, __dt__4cXyzFv@ha
/* 809FF850  38 84 F1 E0 */	addi r4, r4, __dt__4cXyzFv@l
/* 809FF854  38 A0 00 0C */	li r5, 0xc
/* 809FF858  38 C0 00 03 */	li r6, 3
/* 809FF85C  4B 96 24 8C */	b __destroy_arr
/* 809FF860  38 7F 00 30 */	addi r3, r31, 0x30
/* 809FF864  3C 80 80 A0 */	lis r4, __dt__4cXyzFv@ha
/* 809FF868  38 84 F1 E0 */	addi r4, r4, __dt__4cXyzFv@l
/* 809FF86C  38 A0 00 0C */	li r5, 0xc
/* 809FF870  38 C0 00 03 */	li r6, 3
/* 809FF874  4B 96 24 74 */	b __destroy_arr
/* 809FF878  28 1F 00 00 */	cmplwi r31, 0
/* 809FF87C  41 82 00 10 */	beq lbl_809FF88C
/* 809FF880  3C 60 80 A0 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 809FF884  38 03 11 70 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 809FF888  90 1F 00 04 */	stw r0, 4(r31)
lbl_809FF88C:
/* 809FF88C  7F C0 07 35 */	extsh. r0, r30
/* 809FF890  40 81 00 0C */	ble lbl_809FF89C
/* 809FF894  7F E3 FB 78 */	mr r3, r31
/* 809FF898  4B 8C F4 A4 */	b __dl__FPv
lbl_809FF89C:
/* 809FF89C  7F E3 FB 78 */	mr r3, r31
/* 809FF8A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809FF8A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 809FF8A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FF8AC  7C 08 03 A6 */	mtlr r0
/* 809FF8B0  38 21 00 10 */	addi r1, r1, 0x10
/* 809FF8B4  4E 80 00 20 */	blr 
