lbl_80995E40:
/* 80995E40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80995E44  7C 08 02 A6 */	mflr r0
/* 80995E48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80995E4C  3C 60 80 9A */	lis r3, data_80999964@ha
/* 80995E50  38 63 99 64 */	addi r3, r3, data_80999964@l
/* 80995E54  4B 8C D2 F8 */	b ModuleConstructorsX
/* 80995E58  4B 8C D2 30 */	b ModuleProlog
/* 80995E5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80995E60  7C 08 03 A6 */	mtlr r0
/* 80995E64  38 21 00 10 */	addi r1, r1, 0x10
/* 80995E68  4E 80 00 20 */	blr 
