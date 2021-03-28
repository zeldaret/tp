lbl_804A9500:
/* 804A9500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A9504  7C 08 02 A6 */	mflr r0
/* 804A9508  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A950C  3C 60 80 4C */	lis r3, data_804BB520@ha
/* 804A9510  38 63 B5 20 */	addi r3, r3, data_804BB520@l
/* 804A9514  4B DB 9C 38 */	b ModuleConstructorsX
/* 804A9518  4B DB 9B 70 */	b ModuleProlog
/* 804A951C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A9520  7C 08 03 A6 */	mtlr r0
/* 804A9524  38 21 00 10 */	addi r1, r1, 0x10
/* 804A9528  4E 80 00 20 */	blr 
