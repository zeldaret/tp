lbl_80489DB0:
/* 80489DB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80489DB4  7C 08 02 A6 */	mflr r0
/* 80489DB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80489DBC  3C 60 80 49 */	lis r3, data_8048A670@ha /* 0x8048A670@ha */
/* 80489DC0  38 63 A6 70 */	addi r3, r3, data_8048A670@l /* 0x8048A670@l */
/* 80489DC4  80 63 00 00 */	lwz r3, 0(r3)
/* 80489DC8  4B C5 75 C9 */	bl getCopyRodCameraActor__9daAlink_cFv
/* 80489DCC  30 03 FF FF */	addic r0, r3, -1
/* 80489DD0  7C 60 19 10 */	subfe r3, r0, r3
/* 80489DD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80489DD8  7C 08 03 A6 */	mtlr r0
/* 80489DDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80489DE0  4E 80 00 20 */	blr 
