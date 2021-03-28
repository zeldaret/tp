lbl_805A36E0:
/* 805A36E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A36E4  7C 08 02 A6 */	mflr r0
/* 805A36E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A36EC  3C 60 80 5A */	lis r3, data_805A39E0@ha
/* 805A36F0  38 63 39 E0 */	addi r3, r3, data_805A39E0@l
/* 805A36F4  4B CB FA 58 */	b ModuleConstructorsX
/* 805A36F8  4B CB F9 90 */	b ModuleProlog
/* 805A36FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A3700  7C 08 03 A6 */	mtlr r0
/* 805A3704  38 21 00 10 */	addi r1, r1, 0x10
/* 805A3708  4E 80 00 20 */	blr 
