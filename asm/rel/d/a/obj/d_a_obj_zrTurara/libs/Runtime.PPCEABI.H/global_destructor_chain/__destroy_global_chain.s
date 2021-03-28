lbl_80D40514:
/* 80D40514  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D40518  7C 08 02 A6 */	mflr r0
/* 80D4051C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D40520  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D40524  3C 60 80 D4 */	lis r3, __global_destructor_chain@ha
/* 80D40528  3B E3 17 78 */	addi r31, r3, __global_destructor_chain@l
/* 80D4052C  48 00 00 20 */	b lbl_80D4054C
lbl_80D40530:
/* 80D40530  80 05 00 00 */	lwz r0, 0(r5)
/* 80D40534  90 1F 00 00 */	stw r0, 0(r31)
/* 80D40538  80 65 00 08 */	lwz r3, 8(r5)
/* 80D4053C  38 80 FF FF */	li r4, -1
/* 80D40540  81 85 00 04 */	lwz r12, 4(r5)
/* 80D40544  7D 89 03 A6 */	mtctr r12
/* 80D40548  4E 80 04 21 */	bctrl 
lbl_80D4054C:
/* 80D4054C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80D40550  28 05 00 00 */	cmplwi r5, 0
/* 80D40554  40 82 FF DC */	bne lbl_80D40530
/* 80D40558  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4055C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D40560  7C 08 03 A6 */	mtlr r0
/* 80D40564  38 21 00 10 */	addi r1, r1, 0x10
/* 80D40568  4E 80 00 20 */	blr 
