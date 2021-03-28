lbl_80994E78:
/* 80994E78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80994E7C  7C 08 02 A6 */	mflr r0
/* 80994E80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80994E84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80994E88  93 C1 00 08 */	stw r30, 8(r1)
/* 80994E8C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80994E90  7C 9E 23 78 */	mr r30, r4
/* 80994E94  41 82 00 C4 */	beq lbl_80994F58
/* 80994E98  3C 60 80 99 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80994E9C  38 03 5D 0C */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80994EA0  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80994EA4  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80994EA8  3C 80 80 99 */	lis r4, __dt__4cXyzFv@ha
/* 80994EAC  38 84 49 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80994EB0  38 A0 00 0C */	li r5, 0xc
/* 80994EB4  38 C0 00 03 */	li r6, 3
/* 80994EB8  4B 9C CE 30 */	b __destroy_arr
/* 80994EBC  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80994EC0  3C 80 80 99 */	lis r4, __dt__4cXyzFv@ha
/* 80994EC4  38 84 49 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80994EC8  38 A0 00 0C */	li r5, 0xc
/* 80994ECC  38 C0 00 03 */	li r6, 3
/* 80994ED0  4B 9C CE 18 */	b __destroy_arr
/* 80994ED4  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80994ED8  3C 80 80 99 */	lis r4, __dt__4cXyzFv@ha
/* 80994EDC  38 84 49 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80994EE0  38 A0 00 0C */	li r5, 0xc
/* 80994EE4  38 C0 00 03 */	li r6, 3
/* 80994EE8  4B 9C CE 00 */	b __destroy_arr
/* 80994EEC  38 7F 00 78 */	addi r3, r31, 0x78
/* 80994EF0  3C 80 80 99 */	lis r4, __dt__4cXyzFv@ha
/* 80994EF4  38 84 49 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80994EF8  38 A0 00 0C */	li r5, 0xc
/* 80994EFC  38 C0 00 03 */	li r6, 3
/* 80994F00  4B 9C CD E8 */	b __destroy_arr
/* 80994F04  38 7F 00 54 */	addi r3, r31, 0x54
/* 80994F08  3C 80 80 99 */	lis r4, __dt__4cXyzFv@ha
/* 80994F0C  38 84 49 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80994F10  38 A0 00 0C */	li r5, 0xc
/* 80994F14  38 C0 00 03 */	li r6, 3
/* 80994F18  4B 9C CD D0 */	b __destroy_arr
/* 80994F1C  38 7F 00 30 */	addi r3, r31, 0x30
/* 80994F20  3C 80 80 99 */	lis r4, __dt__4cXyzFv@ha
/* 80994F24  38 84 49 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80994F28  38 A0 00 0C */	li r5, 0xc
/* 80994F2C  38 C0 00 03 */	li r6, 3
/* 80994F30  4B 9C CD B8 */	b __destroy_arr
/* 80994F34  28 1F 00 00 */	cmplwi r31, 0
/* 80994F38  41 82 00 10 */	beq lbl_80994F48
/* 80994F3C  3C 60 80 99 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80994F40  38 03 5D 18 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80994F44  90 1F 00 04 */	stw r0, 4(r31)
lbl_80994F48:
/* 80994F48  7F C0 07 35 */	extsh. r0, r30
/* 80994F4C  40 81 00 0C */	ble lbl_80994F58
/* 80994F50  7F E3 FB 78 */	mr r3, r31
/* 80994F54  4B 93 9D E8 */	b __dl__FPv
lbl_80994F58:
/* 80994F58  7F E3 FB 78 */	mr r3, r31
/* 80994F5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80994F60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80994F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80994F68  7C 08 03 A6 */	mtlr r0
/* 80994F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80994F70  4E 80 00 20 */	blr 
