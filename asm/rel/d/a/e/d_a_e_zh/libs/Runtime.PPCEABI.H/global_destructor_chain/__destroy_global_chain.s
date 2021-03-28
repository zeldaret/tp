lbl_80828FD4:
/* 80828FD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80828FD8  7C 08 02 A6 */	mflr r0
/* 80828FDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80828FE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80828FE4  3C 60 80 83 */	lis r3, __global_destructor_chain@ha
/* 80828FE8  3B E3 F6 E0 */	addi r31, r3, __global_destructor_chain@l
/* 80828FEC  48 00 00 20 */	b lbl_8082900C
lbl_80828FF0:
/* 80828FF0  80 05 00 00 */	lwz r0, 0(r5)
/* 80828FF4  90 1F 00 00 */	stw r0, 0(r31)
/* 80828FF8  80 65 00 08 */	lwz r3, 8(r5)
/* 80828FFC  38 80 FF FF */	li r4, -1
/* 80829000  81 85 00 04 */	lwz r12, 4(r5)
/* 80829004  7D 89 03 A6 */	mtctr r12
/* 80829008  4E 80 04 21 */	bctrl 
lbl_8082900C:
/* 8082900C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80829010  28 05 00 00 */	cmplwi r5, 0
/* 80829014  40 82 FF DC */	bne lbl_80828FF0
/* 80829018  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8082901C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80829020  7C 08 03 A6 */	mtlr r0
/* 80829024  38 21 00 10 */	addi r1, r1, 0x10
/* 80829028  4E 80 00 20 */	blr 
