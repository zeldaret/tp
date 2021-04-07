lbl_804A4420:
/* 804A4420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A4424  7C 08 02 A6 */	mflr r0
/* 804A4428  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A442C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A4430  93 C1 00 08 */	stw r30, 8(r1)
/* 804A4434  7C 7E 1B 79 */	or. r30, r3, r3
/* 804A4438  7C 9F 23 78 */	mr r31, r4
/* 804A443C  41 82 00 44 */	beq lbl_804A4480
/* 804A4440  38 7E 00 C0 */	addi r3, r30, 0xc0
/* 804A4444  3C 80 80 4A */	lis r4, __dt__4cXyzFv@ha /* 0x804A449C@ha */
/* 804A4448  38 84 44 9C */	addi r4, r4, __dt__4cXyzFv@l /* 0x804A449C@l */
/* 804A444C  38 A0 00 0C */	li r5, 0xc
/* 804A4450  38 C0 00 10 */	li r6, 0x10
/* 804A4454  4B EB D8 95 */	bl __destroy_arr
/* 804A4458  7F C3 F3 78 */	mr r3, r30
/* 804A445C  3C 80 80 4A */	lis r4, __dt__4cXyzFv@ha /* 0x804A449C@ha */
/* 804A4460  38 84 44 9C */	addi r4, r4, __dt__4cXyzFv@l /* 0x804A449C@l */
/* 804A4464  38 A0 00 0C */	li r5, 0xc
/* 804A4468  38 C0 00 10 */	li r6, 0x10
/* 804A446C  4B EB D8 7D */	bl __destroy_arr
/* 804A4470  7F E0 07 35 */	extsh. r0, r31
/* 804A4474  40 81 00 0C */	ble lbl_804A4480
/* 804A4478  7F C3 F3 78 */	mr r3, r30
/* 804A447C  4B E2 A8 C1 */	bl __dl__FPv
lbl_804A4480:
/* 804A4480  7F C3 F3 78 */	mr r3, r30
/* 804A4484  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A4488  83 C1 00 08 */	lwz r30, 8(r1)
/* 804A448C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A4490  7C 08 03 A6 */	mtlr r0
/* 804A4494  38 21 00 10 */	addi r1, r1, 0x10
/* 804A4498  4E 80 00 20 */	blr 
