lbl_80563E14:
/* 80563E14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80563E18  7C 08 02 A6 */	mflr r0
/* 80563E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80563E20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80563E24  93 C1 00 08 */	stw r30, 8(r1)
/* 80563E28  7C 7F 1B 79 */	or. r31, r3, r3
/* 80563E2C  7C 9E 23 78 */	mr r30, r4
/* 80563E30  41 82 00 C4 */	beq lbl_80563EF4
/* 80563E34  3C 60 80 56 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80565C74@ha */
/* 80563E38  38 03 5C 74 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80565C74@l */
/* 80563E3C  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80563E40  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80563E44  3C 80 80 56 */	lis r4, __dt__4cXyzFv@ha /* 0x80563994@ha */
/* 80563E48  38 84 39 94 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80563994@l */
/* 80563E4C  38 A0 00 0C */	li r5, 0xc
/* 80563E50  38 C0 00 03 */	li r6, 3
/* 80563E54  4B DF DE 95 */	bl __destroy_arr
/* 80563E58  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80563E5C  3C 80 80 56 */	lis r4, __dt__4cXyzFv@ha /* 0x80563994@ha */
/* 80563E60  38 84 39 94 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80563994@l */
/* 80563E64  38 A0 00 0C */	li r5, 0xc
/* 80563E68  38 C0 00 03 */	li r6, 3
/* 80563E6C  4B DF DE 7D */	bl __destroy_arr
/* 80563E70  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80563E74  3C 80 80 56 */	lis r4, __dt__4cXyzFv@ha /* 0x80563994@ha */
/* 80563E78  38 84 39 94 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80563994@l */
/* 80563E7C  38 A0 00 0C */	li r5, 0xc
/* 80563E80  38 C0 00 03 */	li r6, 3
/* 80563E84  4B DF DE 65 */	bl __destroy_arr
/* 80563E88  38 7F 00 78 */	addi r3, r31, 0x78
/* 80563E8C  3C 80 80 56 */	lis r4, __dt__4cXyzFv@ha /* 0x80563994@ha */
/* 80563E90  38 84 39 94 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80563994@l */
/* 80563E94  38 A0 00 0C */	li r5, 0xc
/* 80563E98  38 C0 00 03 */	li r6, 3
/* 80563E9C  4B DF DE 4D */	bl __destroy_arr
/* 80563EA0  38 7F 00 54 */	addi r3, r31, 0x54
/* 80563EA4  3C 80 80 56 */	lis r4, __dt__4cXyzFv@ha /* 0x80563994@ha */
/* 80563EA8  38 84 39 94 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80563994@l */
/* 80563EAC  38 A0 00 0C */	li r5, 0xc
/* 80563EB0  38 C0 00 03 */	li r6, 3
/* 80563EB4  4B DF DE 35 */	bl __destroy_arr
/* 80563EB8  38 7F 00 30 */	addi r3, r31, 0x30
/* 80563EBC  3C 80 80 56 */	lis r4, __dt__4cXyzFv@ha /* 0x80563994@ha */
/* 80563EC0  38 84 39 94 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80563994@l */
/* 80563EC4  38 A0 00 0C */	li r5, 0xc
/* 80563EC8  38 C0 00 03 */	li r6, 3
/* 80563ECC  4B DF DE 1D */	bl __destroy_arr
/* 80563ED0  28 1F 00 00 */	cmplwi r31, 0
/* 80563ED4  41 82 00 10 */	beq lbl_80563EE4
/* 80563ED8  3C 60 80 56 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80565C80@ha */
/* 80563EDC  38 03 5C 80 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80565C80@l */
/* 80563EE0  90 1F 00 04 */	stw r0, 4(r31)
lbl_80563EE4:
/* 80563EE4  7F C0 07 35 */	extsh. r0, r30
/* 80563EE8  40 81 00 0C */	ble lbl_80563EF4
/* 80563EEC  7F E3 FB 78 */	mr r3, r31
/* 80563EF0  4B D6 AE 4D */	bl __dl__FPv
lbl_80563EF4:
/* 80563EF4  7F E3 FB 78 */	mr r3, r31
/* 80563EF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80563EFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80563F00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80563F04  7C 08 03 A6 */	mtlr r0
/* 80563F08  38 21 00 10 */	addi r1, r1, 0x10
/* 80563F0C  4E 80 00 20 */	blr 
