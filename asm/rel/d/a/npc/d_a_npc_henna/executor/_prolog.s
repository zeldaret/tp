lbl_80542E20:
/* 80542E20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80542E24  7C 08 02 A6 */	mflr r0
/* 80542E28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80542E2C  3C 60 80 55 */	lis r3, data_8054A950@ha
/* 80542E30  38 63 A9 50 */	addi r3, r3, data_8054A950@l
/* 80542E34  4B D2 03 18 */	b ModuleConstructorsX
/* 80542E38  4B D2 02 50 */	b ModuleProlog
/* 80542E3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80542E40  7C 08 03 A6 */	mtlr r0
/* 80542E44  38 21 00 10 */	addi r1, r1, 0x10
/* 80542E48  4E 80 00 20 */	blr 
