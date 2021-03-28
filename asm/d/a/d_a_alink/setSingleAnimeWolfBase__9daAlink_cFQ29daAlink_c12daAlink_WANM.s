lbl_80129678:
/* 80129678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012967C  7C 08 02 A6 */	mflr r0
/* 80129680  90 01 00 14 */	stw r0, 0x14(r1)
/* 80129684  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 80129688  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 8012968C  38 A0 FF FF */	li r5, -1
/* 80129690  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 80129694  48 00 00 71 */	bl setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
/* 80129698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012969C  7C 08 03 A6 */	mtlr r0
/* 801296A0  38 21 00 10 */	addi r1, r1, 0x10
/* 801296A4  4E 80 00 20 */	blr 
