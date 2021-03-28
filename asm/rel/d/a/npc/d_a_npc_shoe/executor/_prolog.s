lbl_80AE7860:
/* 80AE7860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE7864  7C 08 02 A6 */	mflr r0
/* 80AE7868  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE786C  3C 60 80 AF */	lis r3, data_80AEA39C@ha
/* 80AE7870  38 63 A3 9C */	addi r3, r3, data_80AEA39C@l
/* 80AE7874  4B 77 B8 D8 */	b ModuleConstructorsX
/* 80AE7878  4B 77 B8 10 */	b ModuleProlog
/* 80AE787C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE7880  7C 08 03 A6 */	mtlr r0
/* 80AE7884  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE7888  4E 80 00 20 */	blr 
