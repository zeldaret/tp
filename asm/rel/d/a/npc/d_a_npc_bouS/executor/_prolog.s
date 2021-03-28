lbl_80973460:
/* 80973460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80973464  7C 08 02 A6 */	mflr r0
/* 80973468  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097346C  3C 60 80 98 */	lis r3, data_809783FC@ha
/* 80973470  38 63 83 FC */	addi r3, r3, data_809783FC@l
/* 80973474  4B 8E FC D8 */	b ModuleConstructorsX
/* 80973478  4B 8E FC 10 */	b ModuleProlog
/* 8097347C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80973480  7C 08 03 A6 */	mtlr r0
/* 80973484  38 21 00 10 */	addi r1, r1, 0x10
/* 80973488  4E 80 00 20 */	blr 
