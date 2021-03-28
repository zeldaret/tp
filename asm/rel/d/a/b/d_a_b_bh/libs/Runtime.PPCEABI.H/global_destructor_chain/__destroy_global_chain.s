lbl_805AE214:
/* 805AE214  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AE218  7C 08 02 A6 */	mflr r0
/* 805AE21C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AE220  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805AE224  3C 60 80 5B */	lis r3, __global_destructor_chain@ha
/* 805AE228  3B E3 33 A8 */	addi r31, r3, __global_destructor_chain@l
/* 805AE22C  48 00 00 20 */	b lbl_805AE24C
lbl_805AE230:
/* 805AE230  80 05 00 00 */	lwz r0, 0(r5)
/* 805AE234  90 1F 00 00 */	stw r0, 0(r31)
/* 805AE238  80 65 00 08 */	lwz r3, 8(r5)
/* 805AE23C  38 80 FF FF */	li r4, -1
/* 805AE240  81 85 00 04 */	lwz r12, 4(r5)
/* 805AE244  7D 89 03 A6 */	mtctr r12
/* 805AE248  4E 80 04 21 */	bctrl 
lbl_805AE24C:
/* 805AE24C  80 BF 00 00 */	lwz r5, 0(r31)
/* 805AE250  28 05 00 00 */	cmplwi r5, 0
/* 805AE254  40 82 FF DC */	bne lbl_805AE230
/* 805AE258  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805AE25C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AE260  7C 08 03 A6 */	mtlr r0
/* 805AE264  38 21 00 10 */	addi r1, r1, 0x10
/* 805AE268  4E 80 00 20 */	blr 
