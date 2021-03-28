lbl_806A2214:
/* 806A2214  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A2218  7C 08 02 A6 */	mflr r0
/* 806A221C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A2220  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A2224  3C 60 80 6A */	lis r3, __global_destructor_chain@ha
/* 806A2228  3B E3 74 B0 */	addi r31, r3, __global_destructor_chain@l
/* 806A222C  48 00 00 20 */	b lbl_806A224C
lbl_806A2230:
/* 806A2230  80 05 00 00 */	lwz r0, 0(r5)
/* 806A2234  90 1F 00 00 */	stw r0, 0(r31)
/* 806A2238  80 65 00 08 */	lwz r3, 8(r5)
/* 806A223C  38 80 FF FF */	li r4, -1
/* 806A2240  81 85 00 04 */	lwz r12, 4(r5)
/* 806A2244  7D 89 03 A6 */	mtctr r12
/* 806A2248  4E 80 04 21 */	bctrl 
lbl_806A224C:
/* 806A224C  80 BF 00 00 */	lwz r5, 0(r31)
/* 806A2250  28 05 00 00 */	cmplwi r5, 0
/* 806A2254  40 82 FF DC */	bne lbl_806A2230
/* 806A2258  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A225C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A2260  7C 08 03 A6 */	mtlr r0
/* 806A2264  38 21 00 10 */	addi r1, r1, 0x10
/* 806A2268  4E 80 00 20 */	blr 
