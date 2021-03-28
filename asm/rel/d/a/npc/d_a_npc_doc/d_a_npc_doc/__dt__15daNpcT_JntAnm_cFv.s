lbl_809A9A2C:
/* 809A9A2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A9A30  7C 08 02 A6 */	mflr r0
/* 809A9A34  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A9A38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A9A3C  93 C1 00 08 */	stw r30, 8(r1)
/* 809A9A40  7C 7F 1B 79 */	or. r31, r3, r3
/* 809A9A44  7C 9E 23 78 */	mr r30, r4
/* 809A9A48  41 82 00 C4 */	beq lbl_809A9B0C
/* 809A9A4C  3C 60 80 9B */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 809A9A50  38 03 A9 C4 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 809A9A54  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 809A9A58  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 809A9A5C  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha
/* 809A9A60  38 84 94 D4 */	addi r4, r4, __dt__4cXyzFv@l
/* 809A9A64  38 A0 00 0C */	li r5, 0xc
/* 809A9A68  38 C0 00 03 */	li r6, 3
/* 809A9A6C  4B 9B 82 7C */	b __destroy_arr
/* 809A9A70  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 809A9A74  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha
/* 809A9A78  38 84 94 D4 */	addi r4, r4, __dt__4cXyzFv@l
/* 809A9A7C  38 A0 00 0C */	li r5, 0xc
/* 809A9A80  38 C0 00 03 */	li r6, 3
/* 809A9A84  4B 9B 82 64 */	b __destroy_arr
/* 809A9A88  38 7F 00 9C */	addi r3, r31, 0x9c
/* 809A9A8C  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha
/* 809A9A90  38 84 94 D4 */	addi r4, r4, __dt__4cXyzFv@l
/* 809A9A94  38 A0 00 0C */	li r5, 0xc
/* 809A9A98  38 C0 00 03 */	li r6, 3
/* 809A9A9C  4B 9B 82 4C */	b __destroy_arr
/* 809A9AA0  38 7F 00 78 */	addi r3, r31, 0x78
/* 809A9AA4  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha
/* 809A9AA8  38 84 94 D4 */	addi r4, r4, __dt__4cXyzFv@l
/* 809A9AAC  38 A0 00 0C */	li r5, 0xc
/* 809A9AB0  38 C0 00 03 */	li r6, 3
/* 809A9AB4  4B 9B 82 34 */	b __destroy_arr
/* 809A9AB8  38 7F 00 54 */	addi r3, r31, 0x54
/* 809A9ABC  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha
/* 809A9AC0  38 84 94 D4 */	addi r4, r4, __dt__4cXyzFv@l
/* 809A9AC4  38 A0 00 0C */	li r5, 0xc
/* 809A9AC8  38 C0 00 03 */	li r6, 3
/* 809A9ACC  4B 9B 82 1C */	b __destroy_arr
/* 809A9AD0  38 7F 00 30 */	addi r3, r31, 0x30
/* 809A9AD4  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha
/* 809A9AD8  38 84 94 D4 */	addi r4, r4, __dt__4cXyzFv@l
/* 809A9ADC  38 A0 00 0C */	li r5, 0xc
/* 809A9AE0  38 C0 00 03 */	li r6, 3
/* 809A9AE4  4B 9B 82 04 */	b __destroy_arr
/* 809A9AE8  28 1F 00 00 */	cmplwi r31, 0
/* 809A9AEC  41 82 00 10 */	beq lbl_809A9AFC
/* 809A9AF0  3C 60 80 9B */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 809A9AF4  38 03 A9 B8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 809A9AF8  90 1F 00 04 */	stw r0, 4(r31)
lbl_809A9AFC:
/* 809A9AFC  7F C0 07 35 */	extsh. r0, r30
/* 809A9B00  40 81 00 0C */	ble lbl_809A9B0C
/* 809A9B04  7F E3 FB 78 */	mr r3, r31
/* 809A9B08  4B 92 52 34 */	b __dl__FPv
lbl_809A9B0C:
/* 809A9B0C  7F E3 FB 78 */	mr r3, r31
/* 809A9B10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A9B14  83 C1 00 08 */	lwz r30, 8(r1)
/* 809A9B18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A9B1C  7C 08 03 A6 */	mtlr r0
/* 809A9B20  38 21 00 10 */	addi r1, r1, 0x10
/* 809A9B24  4E 80 00 20 */	blr 
