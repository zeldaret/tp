lbl_804A32E4:
/* 804A32E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A32E8  7C 08 02 A6 */	mflr r0
/* 804A32EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A32F0  4B FF FC 29 */	bl create__8daCrod_cFv
/* 804A32F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A32F8  7C 08 03 A6 */	mtlr r0
/* 804A32FC  38 21 00 10 */	addi r1, r1, 0x10
/* 804A3300  4E 80 00 20 */	blr 
