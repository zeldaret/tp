lbl_805AB13C:
/* 805AB13C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AB140  7C 08 02 A6 */	mflr r0
/* 805AB144  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AB148  39 83 08 58 */	addi r12, r3, 0x858
/* 805AB14C  4B DB 6F 39 */	bl __ptmf_scall
/* 805AB150  60 00 00 00 */	nop 
/* 805AB154  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AB158  7C 08 03 A6 */	mtlr r0
/* 805AB15C  38 21 00 10 */	addi r1, r1, 0x10
/* 805AB160  4E 80 00 20 */	blr 
