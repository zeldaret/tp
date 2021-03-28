lbl_80BDA534:
/* 80BDA534  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDA538  7C 08 02 A6 */	mflr r0
/* 80BDA53C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDA540  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDA544  3C 60 80 BE */	lis r3, __global_destructor_chain@ha
/* 80BDA548  3B E3 C5 60 */	addi r31, r3, __global_destructor_chain@l
/* 80BDA54C  48 00 00 20 */	b lbl_80BDA56C
lbl_80BDA550:
/* 80BDA550  80 05 00 00 */	lwz r0, 0(r5)
/* 80BDA554  90 1F 00 00 */	stw r0, 0(r31)
/* 80BDA558  80 65 00 08 */	lwz r3, 8(r5)
/* 80BDA55C  38 80 FF FF */	li r4, -1
/* 80BDA560  81 85 00 04 */	lwz r12, 4(r5)
/* 80BDA564  7D 89 03 A6 */	mtctr r12
/* 80BDA568  4E 80 04 21 */	bctrl 
lbl_80BDA56C:
/* 80BDA56C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80BDA570  28 05 00 00 */	cmplwi r5, 0
/* 80BDA574  40 82 FF DC */	bne lbl_80BDA550
/* 80BDA578  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDA57C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDA580  7C 08 03 A6 */	mtlr r0
/* 80BDA584  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDA588  4E 80 00 20 */	blr 
