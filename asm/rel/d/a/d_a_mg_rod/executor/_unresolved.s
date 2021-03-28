lbl_804A9558:
/* 804A9558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A955C  7C 08 02 A6 */	mflr r0
/* 804A9560  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A9564  4B DB 9B 2C */	b ModuleUnresolved
/* 804A9568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A956C  7C 08 03 A6 */	mtlr r0
/* 804A9570  38 21 00 10 */	addi r1, r1, 0x10
/* 804A9574  4E 80 00 20 */	blr 
