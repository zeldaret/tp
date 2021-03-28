lbl_8062F380:
/* 8062F380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062F384  7C 08 02 A6 */	mflr r0
/* 8062F388  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062F38C  3C 60 80 64 */	lis r3, data_806397E0@ha
/* 8062F390  38 63 97 E0 */	addi r3, r3, data_806397E0@l
/* 8062F394  4B C3 3D B8 */	b ModuleConstructorsX
/* 8062F398  4B C3 3C F0 */	b ModuleProlog
/* 8062F39C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062F3A0  7C 08 03 A6 */	mtlr r0
/* 8062F3A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8062F3A8  4E 80 00 20 */	blr 
