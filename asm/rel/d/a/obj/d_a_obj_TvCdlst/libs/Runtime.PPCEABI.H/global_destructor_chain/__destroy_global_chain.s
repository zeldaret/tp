lbl_80B9EC74:
/* 80B9EC74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9EC78  7C 08 02 A6 */	mflr r0
/* 80B9EC7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9EC80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9EC84  3C 60 80 BA */	lis r3, __global_destructor_chain@ha
/* 80B9EC88  3B E3 F9 C8 */	addi r31, r3, __global_destructor_chain@l
/* 80B9EC8C  48 00 00 20 */	b lbl_80B9ECAC
lbl_80B9EC90:
/* 80B9EC90  80 05 00 00 */	lwz r0, 0(r5)
/* 80B9EC94  90 1F 00 00 */	stw r0, 0(r31)
/* 80B9EC98  80 65 00 08 */	lwz r3, 8(r5)
/* 80B9EC9C  38 80 FF FF */	li r4, -1
/* 80B9ECA0  81 85 00 04 */	lwz r12, 4(r5)
/* 80B9ECA4  7D 89 03 A6 */	mtctr r12
/* 80B9ECA8  4E 80 04 21 */	bctrl 
lbl_80B9ECAC:
/* 80B9ECAC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80B9ECB0  28 05 00 00 */	cmplwi r5, 0
/* 80B9ECB4  40 82 FF DC */	bne lbl_80B9EC90
/* 80B9ECB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9ECBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9ECC0  7C 08 03 A6 */	mtlr r0
/* 80B9ECC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9ECC8  4E 80 00 20 */	blr 
