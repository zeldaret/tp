lbl_80C1824C:
/* 80C1824C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C18250  7C 08 02 A6 */	mflr r0
/* 80C18254  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C18258  4B 64 AE 34 */	b ModuleEpilog
/* 80C1825C  3C 60 80 C2 */	lis r3, data_80C18A54@ha
/* 80C18260  38 63 8A 54 */	addi r3, r3, data_80C18A54@l
/* 80C18264  4B 64 AF 2C */	b ModuleDestructorsX
/* 80C18268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1826C  7C 08 03 A6 */	mtlr r0
/* 80C18270  38 21 00 10 */	addi r1, r1, 0x10
/* 80C18274  4E 80 00 20 */	blr 
