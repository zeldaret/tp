lbl_80CBE934:
/* 80CBE934  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBE938  7C 08 02 A6 */	mflr r0
/* 80CBE93C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBE940  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBE944  3C 60 80 CC */	lis r3, __global_destructor_chain@ha
/* 80CBE948  3B E3 F7 80 */	addi r31, r3, __global_destructor_chain@l
/* 80CBE94C  48 00 00 20 */	b lbl_80CBE96C
lbl_80CBE950:
/* 80CBE950  80 05 00 00 */	lwz r0, 0(r5)
/* 80CBE954  90 1F 00 00 */	stw r0, 0(r31)
/* 80CBE958  80 65 00 08 */	lwz r3, 8(r5)
/* 80CBE95C  38 80 FF FF */	li r4, -1
/* 80CBE960  81 85 00 04 */	lwz r12, 4(r5)
/* 80CBE964  7D 89 03 A6 */	mtctr r12
/* 80CBE968  4E 80 04 21 */	bctrl 
lbl_80CBE96C:
/* 80CBE96C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80CBE970  28 05 00 00 */	cmplwi r5, 0
/* 80CBE974  40 82 FF DC */	bne lbl_80CBE950
/* 80CBE978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBE97C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBE980  7C 08 03 A6 */	mtlr r0
/* 80CBE984  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBE988  4E 80 00 20 */	blr 
