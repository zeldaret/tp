lbl_807EFE74:
/* 807EFE74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807EFE78  7C 08 02 A6 */	mflr r0
/* 807EFE7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807EFE80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807EFE84  3C 60 80 7F */	lis r3, __global_destructor_chain@ha
/* 807EFE88  3B E3 2B 00 */	addi r31, r3, __global_destructor_chain@l
/* 807EFE8C  48 00 00 20 */	b lbl_807EFEAC
lbl_807EFE90:
/* 807EFE90  80 05 00 00 */	lwz r0, 0(r5)
/* 807EFE94  90 1F 00 00 */	stw r0, 0(r31)
/* 807EFE98  80 65 00 08 */	lwz r3, 8(r5)
/* 807EFE9C  38 80 FF FF */	li r4, -1
/* 807EFEA0  81 85 00 04 */	lwz r12, 4(r5)
/* 807EFEA4  7D 89 03 A6 */	mtctr r12
/* 807EFEA8  4E 80 04 21 */	bctrl 
lbl_807EFEAC:
/* 807EFEAC  80 BF 00 00 */	lwz r5, 0(r31)
/* 807EFEB0  28 05 00 00 */	cmplwi r5, 0
/* 807EFEB4  40 82 FF DC */	bne lbl_807EFE90
/* 807EFEB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807EFEBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807EFEC0  7C 08 03 A6 */	mtlr r0
/* 807EFEC4  38 21 00 10 */	addi r1, r1, 0x10
/* 807EFEC8  4E 80 00 20 */	blr 
