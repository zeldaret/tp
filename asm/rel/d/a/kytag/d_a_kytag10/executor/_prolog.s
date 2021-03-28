lbl_80528B80:
/* 80528B80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80528B84  7C 08 02 A6 */	mflr r0
/* 80528B88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80528B8C  3C 60 80 53 */	lis r3, data_805293F8@ha
/* 80528B90  38 63 93 F8 */	addi r3, r3, data_805293F8@l
/* 80528B94  4B D3 A5 B8 */	b ModuleConstructorsX
/* 80528B98  4B D3 A4 F0 */	b ModuleProlog
/* 80528B9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80528BA0  7C 08 03 A6 */	mtlr r0
/* 80528BA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80528BA8  4E 80 00 20 */	blr 
