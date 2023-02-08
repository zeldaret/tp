lbl_80ACC0FC:
/* 80ACC0FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACC100  7C 08 02 A6 */	mflr r0
/* 80ACC104  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACC108  38 80 FF FF */	li r4, -1
/* 80ACC10C  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80ACC110  81 8C 00 08 */	lwz r12, 8(r12)
/* 80ACC114  7D 89 03 A6 */	mtctr r12
/* 80ACC118  4E 80 04 21 */	bctrl 
/* 80ACC11C  38 60 00 01 */	li r3, 1
/* 80ACC120  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACC124  7C 08 03 A6 */	mtlr r0
/* 80ACC128  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACC12C  4E 80 00 20 */	blr 
