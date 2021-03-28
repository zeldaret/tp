lbl_8049E040:
/* 8049E040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049E044  7C 08 02 A6 */	mflr r0
/* 8049E048  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049E04C  3C 60 80 4A */	lis r3, data_804A2848@ha
/* 8049E050  38 63 28 48 */	addi r3, r3, data_804A2848@l
/* 8049E054  4B DC 50 F8 */	b ModuleConstructorsX
/* 8049E058  4B DC 50 30 */	b ModuleProlog
/* 8049E05C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049E060  7C 08 03 A6 */	mtlr r0
/* 8049E064  38 21 00 10 */	addi r1, r1, 0x10
/* 8049E068  4E 80 00 20 */	blr 
