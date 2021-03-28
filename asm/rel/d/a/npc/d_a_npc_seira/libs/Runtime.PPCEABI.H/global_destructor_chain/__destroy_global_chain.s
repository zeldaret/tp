lbl_80ACB774:
/* 80ACB774  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACB778  7C 08 02 A6 */	mflr r0
/* 80ACB77C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACB780  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACB784  3C 60 80 AD */	lis r3, __global_destructor_chain@ha
/* 80ACB788  3B E3 0A F0 */	addi r31, r3, __global_destructor_chain@l
/* 80ACB78C  48 00 00 20 */	b lbl_80ACB7AC
lbl_80ACB790:
/* 80ACB790  80 05 00 00 */	lwz r0, 0(r5)
/* 80ACB794  90 1F 00 00 */	stw r0, 0(r31)
/* 80ACB798  80 65 00 08 */	lwz r3, 8(r5)
/* 80ACB79C  38 80 FF FF */	li r4, -1
/* 80ACB7A0  81 85 00 04 */	lwz r12, 4(r5)
/* 80ACB7A4  7D 89 03 A6 */	mtctr r12
/* 80ACB7A8  4E 80 04 21 */	bctrl 
lbl_80ACB7AC:
/* 80ACB7AC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80ACB7B0  28 05 00 00 */	cmplwi r5, 0
/* 80ACB7B4  40 82 FF DC */	bne lbl_80ACB790
/* 80ACB7B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACB7BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACB7C0  7C 08 03 A6 */	mtlr r0
/* 80ACB7C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACB7C8  4E 80 00 20 */	blr 
