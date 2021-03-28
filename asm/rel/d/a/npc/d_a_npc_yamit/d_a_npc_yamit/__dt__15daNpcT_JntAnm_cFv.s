lbl_80B4C4A4:
/* 80B4C4A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4C4A8  7C 08 02 A6 */	mflr r0
/* 80B4C4AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4C4B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4C4B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80B4C4B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B4C4BC  7C 9E 23 78 */	mr r30, r4
/* 80B4C4C0  41 82 00 C4 */	beq lbl_80B4C584
/* 80B4C4C4  3C 60 80 B5 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80B4C4C8  38 03 D0 EC */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80B4C4CC  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80B4C4D0  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80B4C4D4  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B4C4D8  38 84 BF 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 80B4C4DC  38 A0 00 0C */	li r5, 0xc
/* 80B4C4E0  38 C0 00 03 */	li r6, 3
/* 80B4C4E4  4B 81 58 04 */	b __destroy_arr
/* 80B4C4E8  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80B4C4EC  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B4C4F0  38 84 BF 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 80B4C4F4  38 A0 00 0C */	li r5, 0xc
/* 80B4C4F8  38 C0 00 03 */	li r6, 3
/* 80B4C4FC  4B 81 57 EC */	b __destroy_arr
/* 80B4C500  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80B4C504  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B4C508  38 84 BF 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 80B4C50C  38 A0 00 0C */	li r5, 0xc
/* 80B4C510  38 C0 00 03 */	li r6, 3
/* 80B4C514  4B 81 57 D4 */	b __destroy_arr
/* 80B4C518  38 7F 00 78 */	addi r3, r31, 0x78
/* 80B4C51C  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B4C520  38 84 BF 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 80B4C524  38 A0 00 0C */	li r5, 0xc
/* 80B4C528  38 C0 00 03 */	li r6, 3
/* 80B4C52C  4B 81 57 BC */	b __destroy_arr
/* 80B4C530  38 7F 00 54 */	addi r3, r31, 0x54
/* 80B4C534  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B4C538  38 84 BF 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 80B4C53C  38 A0 00 0C */	li r5, 0xc
/* 80B4C540  38 C0 00 03 */	li r6, 3
/* 80B4C544  4B 81 57 A4 */	b __destroy_arr
/* 80B4C548  38 7F 00 30 */	addi r3, r31, 0x30
/* 80B4C54C  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B4C550  38 84 BF 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 80B4C554  38 A0 00 0C */	li r5, 0xc
/* 80B4C558  38 C0 00 03 */	li r6, 3
/* 80B4C55C  4B 81 57 8C */	b __destroy_arr
/* 80B4C560  28 1F 00 00 */	cmplwi r31, 0
/* 80B4C564  41 82 00 10 */	beq lbl_80B4C574
/* 80B4C568  3C 60 80 B5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B4C56C  38 03 D0 E0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B4C570  90 1F 00 04 */	stw r0, 4(r31)
lbl_80B4C574:
/* 80B4C574  7F C0 07 35 */	extsh. r0, r30
/* 80B4C578  40 81 00 0C */	ble lbl_80B4C584
/* 80B4C57C  7F E3 FB 78 */	mr r3, r31
/* 80B4C580  4B 78 27 BC */	b __dl__FPv
lbl_80B4C584:
/* 80B4C584  7F E3 FB 78 */	mr r3, r31
/* 80B4C588  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4C58C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B4C590  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4C594  7C 08 03 A6 */	mtlr r0
/* 80B4C598  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4C59C  4E 80 00 20 */	blr 
