lbl_80AEA760:
/* 80AEA760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEA764  7C 08 02 A6 */	mflr r0
/* 80AEA768  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEA76C  3C 60 80 AF */	lis r3, data_80AEBBCC@ha
/* 80AEA770  38 63 BB CC */	addi r3, r3, data_80AEBBCC@l
/* 80AEA774  4B 77 89 D8 */	b ModuleConstructorsX
/* 80AEA778  4B 77 89 10 */	b ModuleProlog
/* 80AEA77C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEA780  7C 08 03 A6 */	mtlr r0
/* 80AEA784  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEA788  4E 80 00 20 */	blr 
