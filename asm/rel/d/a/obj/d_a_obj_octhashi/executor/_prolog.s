lbl_80CA4B40:
/* 80CA4B40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA4B44  7C 08 02 A6 */	mflr r0
/* 80CA4B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA4B4C  3C 60 80 CA */	lis r3, data_80CA6478@ha
/* 80CA4B50  38 63 64 78 */	addi r3, r3, data_80CA6478@l
/* 80CA4B54  4B 5B E5 F8 */	b ModuleConstructorsX
/* 80CA4B58  4B 5B E5 30 */	b ModuleProlog
/* 80CA4B5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA4B60  7C 08 03 A6 */	mtlr r0
/* 80CA4B64  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA4B68  4E 80 00 20 */	blr 
