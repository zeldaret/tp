lbl_80ACA358:
/* 80ACA358  3C 80 80 3A */	lis r4, __ptmf_null@ha /* 0x803A2180@ha */
/* 80ACA35C  38 A4 21 80 */	addi r5, r4, __ptmf_null@l /* 0x803A2180@l */
/* 80ACA360  80 85 00 00 */	lwz r4, 0(r5)
/* 80ACA364  80 05 00 04 */	lwz r0, 4(r5)
/* 80ACA368  90 83 0E 48 */	stw r4, 0xe48(r3)
/* 80ACA36C  90 03 0E 4C */	stw r0, 0xe4c(r3)
/* 80ACA370  80 05 00 08 */	lwz r0, 8(r5)
/* 80ACA374  90 03 0E 50 */	stw r0, 0xe50(r3)
/* 80ACA378  3C 80 80 AD */	lis r4, lit_4467@ha /* 0x80ACB514@ha */
/* 80ACA37C  38 A4 B5 14 */	addi r5, r4, lit_4467@l /* 0x80ACB514@l */
/* 80ACA380  80 85 00 00 */	lwz r4, 0(r5)
/* 80ACA384  80 05 00 04 */	lwz r0, 4(r5)
/* 80ACA388  90 83 0E 48 */	stw r4, 0xe48(r3)
/* 80ACA38C  90 03 0E 4C */	stw r0, 0xe4c(r3)
/* 80ACA390  80 05 00 08 */	lwz r0, 8(r5)
/* 80ACA394  90 03 0E 50 */	stw r0, 0xe50(r3)
/* 80ACA398  38 60 00 01 */	li r3, 1
/* 80ACA39C  4E 80 00 20 */	blr 
