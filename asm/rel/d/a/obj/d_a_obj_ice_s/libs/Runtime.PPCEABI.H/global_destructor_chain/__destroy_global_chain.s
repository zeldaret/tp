lbl_80C20954:
/* 80C20954  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C20958  7C 08 02 A6 */	mflr r0
/* 80C2095C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C20960  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C20964  3C 60 80 C2 */	lis r3, __global_destructor_chain@ha
/* 80C20968  3B E3 1C 30 */	addi r31, r3, __global_destructor_chain@l
/* 80C2096C  48 00 00 20 */	b lbl_80C2098C
lbl_80C20970:
/* 80C20970  80 05 00 00 */	lwz r0, 0(r5)
/* 80C20974  90 1F 00 00 */	stw r0, 0(r31)
/* 80C20978  80 65 00 08 */	lwz r3, 8(r5)
/* 80C2097C  38 80 FF FF */	li r4, -1
/* 80C20980  81 85 00 04 */	lwz r12, 4(r5)
/* 80C20984  7D 89 03 A6 */	mtctr r12
/* 80C20988  4E 80 04 21 */	bctrl 
lbl_80C2098C:
/* 80C2098C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C20990  28 05 00 00 */	cmplwi r5, 0
/* 80C20994  40 82 FF DC */	bne lbl_80C20970
/* 80C20998  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C2099C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C209A0  7C 08 03 A6 */	mtlr r0
/* 80C209A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C209A8  4E 80 00 20 */	blr 
