lbl_80499C14:
/* 80499C14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80499C18  7C 08 02 A6 */	mflr r0
/* 80499C1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80499C20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80499C24  3C 60 80 4A */	lis r3, __global_destructor_chain@ha
/* 80499C28  3B E3 DF 58 */	addi r31, r3, __global_destructor_chain@l
/* 80499C2C  48 00 00 20 */	b lbl_80499C4C
lbl_80499C30:
/* 80499C30  80 05 00 00 */	lwz r0, 0(r5)
/* 80499C34  90 1F 00 00 */	stw r0, 0(r31)
/* 80499C38  80 65 00 08 */	lwz r3, 8(r5)
/* 80499C3C  38 80 FF FF */	li r4, -1
/* 80499C40  81 85 00 04 */	lwz r12, 4(r5)
/* 80499C44  7D 89 03 A6 */	mtctr r12
/* 80499C48  4E 80 04 21 */	bctrl 
lbl_80499C4C:
/* 80499C4C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80499C50  28 05 00 00 */	cmplwi r5, 0
/* 80499C54  40 82 FF DC */	bne lbl_80499C30
/* 80499C58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80499C5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80499C60  7C 08 03 A6 */	mtlr r0
/* 80499C64  38 21 00 10 */	addi r1, r1, 0x10
/* 80499C68  4E 80 00 20 */	blr 
