lbl_804A3488:
/* 804A3488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A348C  7C 08 02 A6 */	mflr r0
/* 804A3490  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A3494  38 80 FF FF */	li r4, -1
/* 804A3498  4B FF FE 6D */	bl __dt__8daCrod_cFv
/* 804A349C  38 60 00 01 */	li r3, 1
/* 804A34A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A34A4  7C 08 03 A6 */	mtlr r0
/* 804A34A8  38 21 00 10 */	addi r1, r1, 0x10
/* 804A34AC  4E 80 00 20 */	blr 
