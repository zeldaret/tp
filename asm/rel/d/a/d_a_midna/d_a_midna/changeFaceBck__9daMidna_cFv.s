lbl_804BC614:
/* 804BC614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BC618  7C 08 02 A6 */	mflr r0
/* 804BC61C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BC620  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BC624  93 C1 00 08 */	stw r30, 8(r1)
/* 804BC628  7C 7E 1B 78 */	mr r30, r3
/* 804BC62C  80 03 08 90 */	lwz r0, 0x890(r3)
/* 804BC630  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 804BC634  41 82 00 20 */	beq lbl_804BC654
/* 804BC638  83 FE 05 B4 */	lwz r31, 0x5b4(r30)
/* 804BC63C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 804BC640  80 83 00 08 */	lwz r4, 8(r3)
/* 804BC644  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 804BC648  4B B5 13 49 */	bl changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 804BC64C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 804BC650  93 E3 00 08 */	stw r31, 8(r3)
lbl_804BC654:
/* 804BC654  38 60 00 01 */	li r3, 1
/* 804BC658  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BC65C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804BC660  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BC664  7C 08 03 A6 */	mtlr r0
/* 804BC668  38 21 00 10 */	addi r1, r1, 0x10
/* 804BC66C  4E 80 00 20 */	blr 
