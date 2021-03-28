lbl_8099A0F4:
/* 8099A0F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099A0F8  7C 08 02 A6 */	mflr r0
/* 8099A0FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099A100  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8099A104  3C 60 80 9A */	lis r3, __global_destructor_chain@ha
/* 8099A108  3B E3 D6 48 */	addi r31, r3, __global_destructor_chain@l
/* 8099A10C  48 00 00 20 */	b lbl_8099A12C
lbl_8099A110:
/* 8099A110  80 05 00 00 */	lwz r0, 0(r5)
/* 8099A114  90 1F 00 00 */	stw r0, 0(r31)
/* 8099A118  80 65 00 08 */	lwz r3, 8(r5)
/* 8099A11C  38 80 FF FF */	li r4, -1
/* 8099A120  81 85 00 04 */	lwz r12, 4(r5)
/* 8099A124  7D 89 03 A6 */	mtctr r12
/* 8099A128  4E 80 04 21 */	bctrl 
lbl_8099A12C:
/* 8099A12C  80 BF 00 00 */	lwz r5, 0(r31)
/* 8099A130  28 05 00 00 */	cmplwi r5, 0
/* 8099A134  40 82 FF DC */	bne lbl_8099A110
/* 8099A138  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099A13C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099A140  7C 08 03 A6 */	mtlr r0
/* 8099A144  38 21 00 10 */	addi r1, r1, 0x10
/* 8099A148  4E 80 00 20 */	blr 
