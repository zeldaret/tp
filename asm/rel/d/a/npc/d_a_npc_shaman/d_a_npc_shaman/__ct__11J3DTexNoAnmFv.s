lbl_80AE3500:
/* 80AE3500  3C 80 80 AE */	lis r4, __vt__11J3DTexNoAnm@ha /* 0x80AE76C4@ha */
/* 80AE3504  38 04 76 C4 */	addi r0, r4, __vt__11J3DTexNoAnm@l /* 0x80AE76C4@l */
/* 80AE3508  90 03 00 00 */	stw r0, 0(r3)
/* 80AE350C  38 80 00 00 */	li r4, 0
/* 80AE3510  B0 83 00 04 */	sth r4, 4(r3)
/* 80AE3514  38 00 00 01 */	li r0, 1
/* 80AE3518  B0 03 00 06 */	sth r0, 6(r3)
/* 80AE351C  90 83 00 08 */	stw r4, 8(r3)
/* 80AE3520  4E 80 00 20 */	blr 
