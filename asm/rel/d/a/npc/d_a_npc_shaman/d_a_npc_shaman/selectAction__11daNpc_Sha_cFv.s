lbl_80AE44C0:
/* 80AE44C0  3C 80 80 3A */	lis r4, __ptmf_null@ha
/* 80AE44C4  38 A4 21 80 */	addi r5, r4, __ptmf_null@l
/* 80AE44C8  80 85 00 00 */	lwz r4, 0(r5)
/* 80AE44CC  80 05 00 04 */	lwz r0, 4(r5)
/* 80AE44D0  90 83 0F 84 */	stw r4, 0xf84(r3)
/* 80AE44D4  90 03 0F 88 */	stw r0, 0xf88(r3)
/* 80AE44D8  80 05 00 08 */	lwz r0, 8(r5)
/* 80AE44DC  90 03 0F 8C */	stw r0, 0xf8c(r3)
/* 80AE44E0  3C 80 80 AE */	lis r4, lit_4823@ha
/* 80AE44E4  38 A4 70 F0 */	addi r5, r4, lit_4823@l
/* 80AE44E8  80 85 00 00 */	lwz r4, 0(r5)
/* 80AE44EC  80 05 00 04 */	lwz r0, 4(r5)
/* 80AE44F0  90 83 0F 84 */	stw r4, 0xf84(r3)
/* 80AE44F4  90 03 0F 88 */	stw r0, 0xf88(r3)
/* 80AE44F8  80 05 00 08 */	lwz r0, 8(r5)
/* 80AE44FC  90 03 0F 8C */	stw r0, 0xf8c(r3)
/* 80AE4500  38 60 00 01 */	li r3, 1
/* 80AE4504  4E 80 00 20 */	blr 
