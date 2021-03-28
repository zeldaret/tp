lbl_80594020:
/* 80594020  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80594024  7C 08 02 A6 */	mflr r0
/* 80594028  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059402C  3C 60 80 59 */	lis r3, data_80594E6C@ha
/* 80594030  38 63 4E 6C */	addi r3, r3, data_80594E6C@l
/* 80594034  4B CC F1 18 */	b ModuleConstructorsX
/* 80594038  4B CC F0 50 */	b ModuleProlog
/* 8059403C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80594040  7C 08 03 A6 */	mtlr r0
/* 80594044  38 21 00 10 */	addi r1, r1, 0x10
/* 80594048  4E 80 00 20 */	blr 
