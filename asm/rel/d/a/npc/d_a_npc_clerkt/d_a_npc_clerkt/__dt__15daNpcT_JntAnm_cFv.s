lbl_8099C868:
/* 8099C868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099C86C  7C 08 02 A6 */	mflr r0
/* 8099C870  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099C874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8099C878  93 C1 00 08 */	stw r30, 8(r1)
/* 8099C87C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8099C880  7C 9E 23 78 */	mr r30, r4
/* 8099C884  41 82 00 C4 */	beq lbl_8099C948
/* 8099C888  3C 60 80 9A */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 8099C88C  38 03 D5 3C */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 8099C890  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 8099C894  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 8099C898  3C 80 80 9A */	lis r4, __dt__4cXyzFv@ha
/* 8099C89C  38 84 C3 E8 */	addi r4, r4, __dt__4cXyzFv@l
/* 8099C8A0  38 A0 00 0C */	li r5, 0xc
/* 8099C8A4  38 C0 00 03 */	li r6, 3
/* 8099C8A8  4B 9C 54 40 */	b __destroy_arr
/* 8099C8AC  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 8099C8B0  3C 80 80 9A */	lis r4, __dt__4cXyzFv@ha
/* 8099C8B4  38 84 C3 E8 */	addi r4, r4, __dt__4cXyzFv@l
/* 8099C8B8  38 A0 00 0C */	li r5, 0xc
/* 8099C8BC  38 C0 00 03 */	li r6, 3
/* 8099C8C0  4B 9C 54 28 */	b __destroy_arr
/* 8099C8C4  38 7F 00 9C */	addi r3, r31, 0x9c
/* 8099C8C8  3C 80 80 9A */	lis r4, __dt__4cXyzFv@ha
/* 8099C8CC  38 84 C3 E8 */	addi r4, r4, __dt__4cXyzFv@l
/* 8099C8D0  38 A0 00 0C */	li r5, 0xc
/* 8099C8D4  38 C0 00 03 */	li r6, 3
/* 8099C8D8  4B 9C 54 10 */	b __destroy_arr
/* 8099C8DC  38 7F 00 78 */	addi r3, r31, 0x78
/* 8099C8E0  3C 80 80 9A */	lis r4, __dt__4cXyzFv@ha
/* 8099C8E4  38 84 C3 E8 */	addi r4, r4, __dt__4cXyzFv@l
/* 8099C8E8  38 A0 00 0C */	li r5, 0xc
/* 8099C8EC  38 C0 00 03 */	li r6, 3
/* 8099C8F0  4B 9C 53 F8 */	b __destroy_arr
/* 8099C8F4  38 7F 00 54 */	addi r3, r31, 0x54
/* 8099C8F8  3C 80 80 9A */	lis r4, __dt__4cXyzFv@ha
/* 8099C8FC  38 84 C3 E8 */	addi r4, r4, __dt__4cXyzFv@l
/* 8099C900  38 A0 00 0C */	li r5, 0xc
/* 8099C904  38 C0 00 03 */	li r6, 3
/* 8099C908  4B 9C 53 E0 */	b __destroy_arr
/* 8099C90C  38 7F 00 30 */	addi r3, r31, 0x30
/* 8099C910  3C 80 80 9A */	lis r4, __dt__4cXyzFv@ha
/* 8099C914  38 84 C3 E8 */	addi r4, r4, __dt__4cXyzFv@l
/* 8099C918  38 A0 00 0C */	li r5, 0xc
/* 8099C91C  38 C0 00 03 */	li r6, 3
/* 8099C920  4B 9C 53 C8 */	b __destroy_arr
/* 8099C924  28 1F 00 00 */	cmplwi r31, 0
/* 8099C928  41 82 00 10 */	beq lbl_8099C938
/* 8099C92C  3C 60 80 9A */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 8099C930  38 03 D5 48 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 8099C934  90 1F 00 04 */	stw r0, 4(r31)
lbl_8099C938:
/* 8099C938  7F C0 07 35 */	extsh. r0, r30
/* 8099C93C  40 81 00 0C */	ble lbl_8099C948
/* 8099C940  7F E3 FB 78 */	mr r3, r31
/* 8099C944  4B 93 23 F8 */	b __dl__FPv
lbl_8099C948:
/* 8099C948  7F E3 FB 78 */	mr r3, r31
/* 8099C94C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099C950  83 C1 00 08 */	lwz r30, 8(r1)
/* 8099C954  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099C958  7C 08 03 A6 */	mtlr r0
/* 8099C95C  38 21 00 10 */	addi r1, r1, 0x10
/* 8099C960  4E 80 00 20 */	blr 
