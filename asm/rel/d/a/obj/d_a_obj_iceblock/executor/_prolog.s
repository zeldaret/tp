lbl_80C21C60:
/* 80C21C60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C21C64  7C 08 02 A6 */	mflr r0
/* 80C21C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C21C6C  3C 60 80 C2 */	lis r3, data_80C242EC@ha
/* 80C21C70  38 63 42 EC */	addi r3, r3, data_80C242EC@l
/* 80C21C74  4B 64 14 D8 */	b ModuleConstructorsX
/* 80C21C78  4B 64 14 10 */	b ModuleProlog
/* 80C21C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C21C80  7C 08 03 A6 */	mtlr r0
/* 80C21C84  38 21 00 10 */	addi r1, r1, 0x10
/* 80C21C88  4E 80 00 20 */	blr 
