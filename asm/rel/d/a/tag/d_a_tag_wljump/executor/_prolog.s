lbl_80D64E40:
/* 80D64E40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D64E44  7C 08 02 A6 */	mflr r0
/* 80D64E48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D64E4C  3C 60 80 D6 */	lis r3, data_80D658C4@ha
/* 80D64E50  38 63 58 C4 */	addi r3, r3, data_80D658C4@l
/* 80D64E54  4B 4F E2 F8 */	b ModuleConstructorsX
/* 80D64E58  4B 4F E2 30 */	b ModuleProlog
/* 80D64E5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D64E60  7C 08 03 A6 */	mtlr r0
/* 80D64E64  38 21 00 10 */	addi r1, r1, 0x10
/* 80D64E68  4E 80 00 20 */	blr 
