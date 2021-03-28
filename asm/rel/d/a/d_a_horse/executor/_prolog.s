lbl_80837E40:
/* 80837E40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80837E44  7C 08 02 A6 */	mflr r0
/* 80837E48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80837E4C  3C 60 80 84 */	lis r3, data_80845498@ha
/* 80837E50  38 63 54 98 */	addi r3, r3, data_80845498@l
/* 80837E54  4B A2 B2 F8 */	b ModuleConstructorsX
/* 80837E58  4B A2 B2 30 */	b ModuleProlog
/* 80837E5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80837E60  7C 08 03 A6 */	mtlr r0
/* 80837E64  38 21 00 10 */	addi r1, r1, 0x10
/* 80837E68  4E 80 00 20 */	blr 
