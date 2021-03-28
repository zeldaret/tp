lbl_80C84854:
/* 80C84854  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C84858  7C 08 02 A6 */	mflr r0
/* 80C8485C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C84860  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C84864  3C 60 80 C8 */	lis r3, __global_destructor_chain@ha
/* 80C84868  3B E3 53 58 */	addi r31, r3, __global_destructor_chain@l
/* 80C8486C  48 00 00 20 */	b lbl_80C8488C
lbl_80C84870:
/* 80C84870  80 05 00 00 */	lwz r0, 0(r5)
/* 80C84874  90 1F 00 00 */	stw r0, 0(r31)
/* 80C84878  80 65 00 08 */	lwz r3, 8(r5)
/* 80C8487C  38 80 FF FF */	li r4, -1
/* 80C84880  81 85 00 04 */	lwz r12, 4(r5)
/* 80C84884  7D 89 03 A6 */	mtctr r12
/* 80C84888  4E 80 04 21 */	bctrl 
lbl_80C8488C:
/* 80C8488C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C84890  28 05 00 00 */	cmplwi r5, 0
/* 80C84894  40 82 FF DC */	bne lbl_80C84870
/* 80C84898  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8489C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C848A0  7C 08 03 A6 */	mtlr r0
/* 80C848A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C848A8  4E 80 00 20 */	blr 
