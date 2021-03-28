lbl_80CE8080:
/* 80CE8080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE8084  7C 08 02 A6 */	mflr r0
/* 80CE8088  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE808C  3C 60 80 CF */	lis r3, data_80CE8DA8@ha
/* 80CE8090  38 63 8D A8 */	addi r3, r3, data_80CE8DA8@l
/* 80CE8094  4B 57 B0 B8 */	b ModuleConstructorsX
/* 80CE8098  4B 57 AF F0 */	b ModuleProlog
/* 80CE809C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE80A0  7C 08 03 A6 */	mtlr r0
/* 80CE80A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE80A8  4E 80 00 20 */	blr 
