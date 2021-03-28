lbl_80CA66A0:
/* 80CA66A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA66A4  7C 08 02 A6 */	mflr r0
/* 80CA66A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA66AC  3C 60 80 CA */	lis r3, data_80CA78E8@ha
/* 80CA66B0  38 63 78 E8 */	addi r3, r3, data_80CA78E8@l
/* 80CA66B4  4B 5B CA 98 */	b ModuleConstructorsX
/* 80CA66B8  4B 5B C9 D0 */	b ModuleProlog
/* 80CA66BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA66C0  7C 08 03 A6 */	mtlr r0
/* 80CA66C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA66C8  4E 80 00 20 */	blr 
