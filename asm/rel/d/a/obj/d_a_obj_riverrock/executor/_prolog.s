lbl_80CBC5E0:
/* 80CBC5E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBC5E4  7C 08 02 A6 */	mflr r0
/* 80CBC5E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBC5EC  3C 60 80 CC */	lis r3, data_80CBDA48@ha
/* 80CBC5F0  38 63 DA 48 */	addi r3, r3, data_80CBDA48@l
/* 80CBC5F4  4B 5A 6B 58 */	b ModuleConstructorsX
/* 80CBC5F8  4B 5A 6A 90 */	b ModuleProlog
/* 80CBC5FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBC600  7C 08 03 A6 */	mtlr r0
/* 80CBC604  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBC608  4E 80 00 20 */	blr 
