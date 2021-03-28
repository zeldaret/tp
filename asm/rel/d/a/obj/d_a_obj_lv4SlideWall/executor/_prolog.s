lbl_80C61D40:
/* 80C61D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C61D44  7C 08 02 A6 */	mflr r0
/* 80C61D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C61D4C  3C 60 80 C6 */	lis r3, data_80C62694@ha
/* 80C61D50  38 63 26 94 */	addi r3, r3, data_80C62694@l
/* 80C61D54  4B 60 13 F8 */	b ModuleConstructorsX
/* 80C61D58  4B 60 13 30 */	b ModuleProlog
/* 80C61D5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C61D60  7C 08 03 A6 */	mtlr r0
/* 80C61D64  38 21 00 10 */	addi r1, r1, 0x10
/* 80C61D68  4E 80 00 20 */	blr 
