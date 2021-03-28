lbl_805CB1D4:
/* 805CB1D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CB1D8  7C 08 02 A6 */	mflr r0
/* 805CB1DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CB1E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805CB1E4  3C 60 80 5E */	lis r3, __global_destructor_chain@ha
/* 805CB1E8  3B E3 DA 68 */	addi r31, r3, __global_destructor_chain@l
/* 805CB1EC  48 00 00 20 */	b lbl_805CB20C
lbl_805CB1F0:
/* 805CB1F0  80 05 00 00 */	lwz r0, 0(r5)
/* 805CB1F4  90 1F 00 00 */	stw r0, 0(r31)
/* 805CB1F8  80 65 00 08 */	lwz r3, 8(r5)
/* 805CB1FC  38 80 FF FF */	li r4, -1
/* 805CB200  81 85 00 04 */	lwz r12, 4(r5)
/* 805CB204  7D 89 03 A6 */	mtctr r12
/* 805CB208  4E 80 04 21 */	bctrl 
lbl_805CB20C:
/* 805CB20C  80 BF 00 00 */	lwz r5, 0(r31)
/* 805CB210  28 05 00 00 */	cmplwi r5, 0
/* 805CB214  40 82 FF DC */	bne lbl_805CB1F0
/* 805CB218  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805CB21C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CB220  7C 08 03 A6 */	mtlr r0
/* 805CB224  38 21 00 10 */	addi r1, r1, 0x10
/* 805CB228  4E 80 00 20 */	blr 
