lbl_80697FB4:
/* 80697FB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80697FB8  7C 08 02 A6 */	mflr r0
/* 80697FBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80697FC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80697FC4  3C 60 80 6A */	lis r3, __global_destructor_chain@ha
/* 80697FC8  3B E3 9E 80 */	addi r31, r3, __global_destructor_chain@l
/* 80697FCC  48 00 00 20 */	b lbl_80697FEC
lbl_80697FD0:
/* 80697FD0  80 05 00 00 */	lwz r0, 0(r5)
/* 80697FD4  90 1F 00 00 */	stw r0, 0(r31)
/* 80697FD8  80 65 00 08 */	lwz r3, 8(r5)
/* 80697FDC  38 80 FF FF */	li r4, -1
/* 80697FE0  81 85 00 04 */	lwz r12, 4(r5)
/* 80697FE4  7D 89 03 A6 */	mtctr r12
/* 80697FE8  4E 80 04 21 */	bctrl 
lbl_80697FEC:
/* 80697FEC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80697FF0  28 05 00 00 */	cmplwi r5, 0
/* 80697FF4  40 82 FF DC */	bne lbl_80697FD0
/* 80697FF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80697FFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80698000  7C 08 03 A6 */	mtlr r0
/* 80698004  38 21 00 10 */	addi r1, r1, 0x10
/* 80698008  4E 80 00 20 */	blr 
