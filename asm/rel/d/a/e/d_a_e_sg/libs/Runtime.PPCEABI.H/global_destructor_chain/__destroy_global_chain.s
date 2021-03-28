lbl_8078A1D4:
/* 8078A1D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8078A1D8  7C 08 02 A6 */	mflr r0
/* 8078A1DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8078A1E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8078A1E4  3C 60 80 79 */	lis r3, __global_destructor_chain@ha
/* 8078A1E8  3B E3 E0 98 */	addi r31, r3, __global_destructor_chain@l
/* 8078A1EC  48 00 00 20 */	b lbl_8078A20C
lbl_8078A1F0:
/* 8078A1F0  80 05 00 00 */	lwz r0, 0(r5)
/* 8078A1F4  90 1F 00 00 */	stw r0, 0(r31)
/* 8078A1F8  80 65 00 08 */	lwz r3, 8(r5)
/* 8078A1FC  38 80 FF FF */	li r4, -1
/* 8078A200  81 85 00 04 */	lwz r12, 4(r5)
/* 8078A204  7D 89 03 A6 */	mtctr r12
/* 8078A208  4E 80 04 21 */	bctrl 
lbl_8078A20C:
/* 8078A20C  80 BF 00 00 */	lwz r5, 0(r31)
/* 8078A210  28 05 00 00 */	cmplwi r5, 0
/* 8078A214  40 82 FF DC */	bne lbl_8078A1F0
/* 8078A218  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8078A21C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8078A220  7C 08 03 A6 */	mtlr r0
/* 8078A224  38 21 00 10 */	addi r1, r1, 0x10
/* 8078A228  4E 80 00 20 */	blr 
