lbl_80529C40:
/* 80529C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80529C44  7C 08 02 A6 */	mflr r0
/* 80529C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80529C4C  3C 60 80 53 */	lis r3, data_80536154@ha
/* 80529C50  38 63 61 54 */	addi r3, r3, data_80536154@l
/* 80529C54  4B D3 94 F8 */	b ModuleConstructorsX
/* 80529C58  4B D3 94 30 */	b ModuleProlog
/* 80529C5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80529C60  7C 08 03 A6 */	mtlr r0
/* 80529C64  38 21 00 10 */	addi r1, r1, 0x10
/* 80529C68  4E 80 00 20 */	blr 
