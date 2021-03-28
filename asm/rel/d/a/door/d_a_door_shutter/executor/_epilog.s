lbl_80460AEC:
/* 80460AEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80460AF0  7C 08 02 A6 */	mflr r0
/* 80460AF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80460AF8  4B E0 25 94 */	b ModuleEpilog
/* 80460AFC  3C 60 80 46 */	lis r3, data_8046681C@ha
/* 80460B00  38 63 68 1C */	addi r3, r3, data_8046681C@l
/* 80460B04  4B E0 26 8C */	b ModuleDestructorsX
/* 80460B08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80460B0C  7C 08 03 A6 */	mtlr r0
/* 80460B10  38 21 00 10 */	addi r1, r1, 0x10
/* 80460B14  4E 80 00 20 */	blr 
