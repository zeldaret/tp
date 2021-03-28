lbl_80598194:
/* 80598194  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80598198  7C 08 02 A6 */	mflr r0
/* 8059819C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805981A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805981A4  3C 60 80 5A */	lis r3, __global_destructor_chain@ha
/* 805981A8  3B E3 90 E0 */	addi r31, r3, __global_destructor_chain@l
/* 805981AC  48 00 00 20 */	b lbl_805981CC
lbl_805981B0:
/* 805981B0  80 05 00 00 */	lwz r0, 0(r5)
/* 805981B4  90 1F 00 00 */	stw r0, 0(r31)
/* 805981B8  80 65 00 08 */	lwz r3, 8(r5)
/* 805981BC  38 80 FF FF */	li r4, -1
/* 805981C0  81 85 00 04 */	lwz r12, 4(r5)
/* 805981C4  7D 89 03 A6 */	mtctr r12
/* 805981C8  4E 80 04 21 */	bctrl 
lbl_805981CC:
/* 805981CC  80 BF 00 00 */	lwz r5, 0(r31)
/* 805981D0  28 05 00 00 */	cmplwi r5, 0
/* 805981D4  40 82 FF DC */	bne lbl_805981B0
/* 805981D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805981DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805981E0  7C 08 03 A6 */	mtlr r0
/* 805981E4  38 21 00 10 */	addi r1, r1, 0x10
/* 805981E8  4E 80 00 20 */	blr 
