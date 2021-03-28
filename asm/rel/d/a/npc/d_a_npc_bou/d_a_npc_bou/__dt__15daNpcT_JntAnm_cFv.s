lbl_80971ED0:
/* 80971ED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80971ED4  7C 08 02 A6 */	mflr r0
/* 80971ED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80971EDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80971EE0  93 C1 00 08 */	stw r30, 8(r1)
/* 80971EE4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80971EE8  7C 9E 23 78 */	mr r30, r4
/* 80971EEC  41 82 00 C4 */	beq lbl_80971FB0
/* 80971EF0  3C 60 80 97 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80971EF4  38 03 33 3C */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80971EF8  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80971EFC  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80971F00  3C 80 80 97 */	lis r4, __dt__4cXyzFv@ha
/* 80971F04  38 84 18 F4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80971F08  38 A0 00 0C */	li r5, 0xc
/* 80971F0C  38 C0 00 03 */	li r6, 3
/* 80971F10  4B 9E FD D8 */	b __destroy_arr
/* 80971F14  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80971F18  3C 80 80 97 */	lis r4, __dt__4cXyzFv@ha
/* 80971F1C  38 84 18 F4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80971F20  38 A0 00 0C */	li r5, 0xc
/* 80971F24  38 C0 00 03 */	li r6, 3
/* 80971F28  4B 9E FD C0 */	b __destroy_arr
/* 80971F2C  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80971F30  3C 80 80 97 */	lis r4, __dt__4cXyzFv@ha
/* 80971F34  38 84 18 F4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80971F38  38 A0 00 0C */	li r5, 0xc
/* 80971F3C  38 C0 00 03 */	li r6, 3
/* 80971F40  4B 9E FD A8 */	b __destroy_arr
/* 80971F44  38 7F 00 78 */	addi r3, r31, 0x78
/* 80971F48  3C 80 80 97 */	lis r4, __dt__4cXyzFv@ha
/* 80971F4C  38 84 18 F4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80971F50  38 A0 00 0C */	li r5, 0xc
/* 80971F54  38 C0 00 03 */	li r6, 3
/* 80971F58  4B 9E FD 90 */	b __destroy_arr
/* 80971F5C  38 7F 00 54 */	addi r3, r31, 0x54
/* 80971F60  3C 80 80 97 */	lis r4, __dt__4cXyzFv@ha
/* 80971F64  38 84 18 F4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80971F68  38 A0 00 0C */	li r5, 0xc
/* 80971F6C  38 C0 00 03 */	li r6, 3
/* 80971F70  4B 9E FD 78 */	b __destroy_arr
/* 80971F74  38 7F 00 30 */	addi r3, r31, 0x30
/* 80971F78  3C 80 80 97 */	lis r4, __dt__4cXyzFv@ha
/* 80971F7C  38 84 18 F4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80971F80  38 A0 00 0C */	li r5, 0xc
/* 80971F84  38 C0 00 03 */	li r6, 3
/* 80971F88  4B 9E FD 60 */	b __destroy_arr
/* 80971F8C  28 1F 00 00 */	cmplwi r31, 0
/* 80971F90  41 82 00 10 */	beq lbl_80971FA0
/* 80971F94  3C 60 80 97 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80971F98  38 03 33 30 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80971F9C  90 1F 00 04 */	stw r0, 4(r31)
lbl_80971FA0:
/* 80971FA0  7F C0 07 35 */	extsh. r0, r30
/* 80971FA4  40 81 00 0C */	ble lbl_80971FB0
/* 80971FA8  7F E3 FB 78 */	mr r3, r31
/* 80971FAC  4B 95 CD 90 */	b __dl__FPv
lbl_80971FB0:
/* 80971FB0  7F E3 FB 78 */	mr r3, r31
/* 80971FB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80971FB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80971FBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80971FC0  7C 08 03 A6 */	mtlr r0
/* 80971FC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80971FC8  4E 80 00 20 */	blr 
