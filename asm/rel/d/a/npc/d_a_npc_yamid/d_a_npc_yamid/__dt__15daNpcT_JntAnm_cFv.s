lbl_80B456E0:
/* 80B456E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B456E4  7C 08 02 A6 */	mflr r0
/* 80B456E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B456EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B456F0  93 C1 00 08 */	stw r30, 8(r1)
/* 80B456F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B456F8  7C 9E 23 78 */	mr r30, r4
/* 80B456FC  41 82 00 C4 */	beq lbl_80B457C0
/* 80B45700  3C 60 80 B4 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80B46368@ha */
/* 80B45704  38 03 63 68 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80B46368@l */
/* 80B45708  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80B4570C  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80B45710  3C 80 80 B4 */	lis r4, __dt__4cXyzFv@ha /* 0x80B45188@ha */
/* 80B45714  38 84 51 88 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B45188@l */
/* 80B45718  38 A0 00 0C */	li r5, 0xc
/* 80B4571C  38 C0 00 03 */	li r6, 3
/* 80B45720  4B 81 C5 C9 */	bl __destroy_arr
/* 80B45724  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80B45728  3C 80 80 B4 */	lis r4, __dt__4cXyzFv@ha /* 0x80B45188@ha */
/* 80B4572C  38 84 51 88 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B45188@l */
/* 80B45730  38 A0 00 0C */	li r5, 0xc
/* 80B45734  38 C0 00 03 */	li r6, 3
/* 80B45738  4B 81 C5 B1 */	bl __destroy_arr
/* 80B4573C  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80B45740  3C 80 80 B4 */	lis r4, __dt__4cXyzFv@ha /* 0x80B45188@ha */
/* 80B45744  38 84 51 88 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B45188@l */
/* 80B45748  38 A0 00 0C */	li r5, 0xc
/* 80B4574C  38 C0 00 03 */	li r6, 3
/* 80B45750  4B 81 C5 99 */	bl __destroy_arr
/* 80B45754  38 7F 00 78 */	addi r3, r31, 0x78
/* 80B45758  3C 80 80 B4 */	lis r4, __dt__4cXyzFv@ha /* 0x80B45188@ha */
/* 80B4575C  38 84 51 88 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B45188@l */
/* 80B45760  38 A0 00 0C */	li r5, 0xc
/* 80B45764  38 C0 00 03 */	li r6, 3
/* 80B45768  4B 81 C5 81 */	bl __destroy_arr
/* 80B4576C  38 7F 00 54 */	addi r3, r31, 0x54
/* 80B45770  3C 80 80 B4 */	lis r4, __dt__4cXyzFv@ha /* 0x80B45188@ha */
/* 80B45774  38 84 51 88 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B45188@l */
/* 80B45778  38 A0 00 0C */	li r5, 0xc
/* 80B4577C  38 C0 00 03 */	li r6, 3
/* 80B45780  4B 81 C5 69 */	bl __destroy_arr
/* 80B45784  38 7F 00 30 */	addi r3, r31, 0x30
/* 80B45788  3C 80 80 B4 */	lis r4, __dt__4cXyzFv@ha /* 0x80B45188@ha */
/* 80B4578C  38 84 51 88 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B45188@l */
/* 80B45790  38 A0 00 0C */	li r5, 0xc
/* 80B45794  38 C0 00 03 */	li r6, 3
/* 80B45798  4B 81 C5 51 */	bl __destroy_arr
/* 80B4579C  28 1F 00 00 */	cmplwi r31, 0
/* 80B457A0  41 82 00 10 */	beq lbl_80B457B0
/* 80B457A4  3C 60 80 B4 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B4635C@ha */
/* 80B457A8  38 03 63 5C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B4635C@l */
/* 80B457AC  90 1F 00 04 */	stw r0, 4(r31)
lbl_80B457B0:
/* 80B457B0  7F C0 07 35 */	extsh. r0, r30
/* 80B457B4  40 81 00 0C */	ble lbl_80B457C0
/* 80B457B8  7F E3 FB 78 */	mr r3, r31
/* 80B457BC  4B 78 95 81 */	bl __dl__FPv
lbl_80B457C0:
/* 80B457C0  7F E3 FB 78 */	mr r3, r31
/* 80B457C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B457C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B457CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B457D0  7C 08 03 A6 */	mtlr r0
/* 80B457D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B457D8  4E 80 00 20 */	blr 
