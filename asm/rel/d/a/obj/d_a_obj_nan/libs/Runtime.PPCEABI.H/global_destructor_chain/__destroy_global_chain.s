lbl_80CA0554:
/* 80CA0554  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA0558  7C 08 02 A6 */	mflr r0
/* 80CA055C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA0560  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA0564  3C 60 80 CA */	lis r3, __global_destructor_chain@ha
/* 80CA0568  3B E3 34 90 */	addi r31, r3, __global_destructor_chain@l
/* 80CA056C  48 00 00 20 */	b lbl_80CA058C
lbl_80CA0570:
/* 80CA0570  80 05 00 00 */	lwz r0, 0(r5)
/* 80CA0574  90 1F 00 00 */	stw r0, 0(r31)
/* 80CA0578  80 65 00 08 */	lwz r3, 8(r5)
/* 80CA057C  38 80 FF FF */	li r4, -1
/* 80CA0580  81 85 00 04 */	lwz r12, 4(r5)
/* 80CA0584  7D 89 03 A6 */	mtctr r12
/* 80CA0588  4E 80 04 21 */	bctrl 
lbl_80CA058C:
/* 80CA058C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80CA0590  28 05 00 00 */	cmplwi r5, 0
/* 80CA0594  40 82 FF DC */	bne lbl_80CA0570
/* 80CA0598  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA059C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA05A0  7C 08 03 A6 */	mtlr r0
/* 80CA05A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA05A8  4E 80 00 20 */	blr 
