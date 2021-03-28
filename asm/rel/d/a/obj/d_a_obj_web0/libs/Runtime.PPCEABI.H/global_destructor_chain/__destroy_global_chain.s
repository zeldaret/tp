lbl_80D344D4:
/* 80D344D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D344D8  7C 08 02 A6 */	mflr r0
/* 80D344DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D344E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D344E4  3C 60 80 D3 */	lis r3, __global_destructor_chain@ha
/* 80D344E8  3B E3 52 88 */	addi r31, r3, __global_destructor_chain@l
/* 80D344EC  48 00 00 20 */	b lbl_80D3450C
lbl_80D344F0:
/* 80D344F0  80 05 00 00 */	lwz r0, 0(r5)
/* 80D344F4  90 1F 00 00 */	stw r0, 0(r31)
/* 80D344F8  80 65 00 08 */	lwz r3, 8(r5)
/* 80D344FC  38 80 FF FF */	li r4, -1
/* 80D34500  81 85 00 04 */	lwz r12, 4(r5)
/* 80D34504  7D 89 03 A6 */	mtctr r12
/* 80D34508  4E 80 04 21 */	bctrl 
lbl_80D3450C:
/* 80D3450C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80D34510  28 05 00 00 */	cmplwi r5, 0
/* 80D34514  40 82 FF DC */	bne lbl_80D344F0
/* 80D34518  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3451C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D34520  7C 08 03 A6 */	mtlr r0
/* 80D34524  38 21 00 10 */	addi r1, r1, 0x10
/* 80D34528  4E 80 00 20 */	blr 
