lbl_80D5960C:
/* 80D5960C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D59610  7C 08 02 A6 */	mflr r0
/* 80D59614  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D59618  4B 50 9A 74 */	b ModuleEpilog
/* 80D5961C  3C 60 80 D6 */	lis r3, data_80D5971C@ha
/* 80D59620  38 63 97 1C */	addi r3, r3, data_80D5971C@l
/* 80D59624  4B 50 9B 6C */	b ModuleDestructorsX
/* 80D59628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5962C  7C 08 03 A6 */	mtlr r0
/* 80D59630  38 21 00 10 */	addi r1, r1, 0x10
/* 80D59634  4E 80 00 20 */	blr 
