lbl_80AEDAC8:
/* 80AEDAC8  3C 80 80 3A */	lis r4, __ptmf_null@ha
/* 80AEDACC  38 A4 21 80 */	addi r5, r4, __ptmf_null@l
/* 80AEDAD0  80 85 00 00 */	lwz r4, 0(r5)
/* 80AEDAD4  80 05 00 04 */	lwz r0, 4(r5)
/* 80AEDAD8  90 83 0F 84 */	stw r4, 0xf84(r3)
/* 80AEDADC  90 03 0F 88 */	stw r0, 0xf88(r3)
/* 80AEDAE0  80 05 00 08 */	lwz r0, 8(r5)
/* 80AEDAE4  90 03 0F 8C */	stw r0, 0xf8c(r3)
/* 80AEDAE8  3C 80 80 AF */	lis r4, lit_4786@ha
/* 80AEDAEC  38 A4 F2 BC */	addi r5, r4, lit_4786@l
/* 80AEDAF0  80 85 00 00 */	lwz r4, 0(r5)
/* 80AEDAF4  80 05 00 04 */	lwz r0, 4(r5)
/* 80AEDAF8  90 83 0F 84 */	stw r4, 0xf84(r3)
/* 80AEDAFC  90 03 0F 88 */	stw r0, 0xf88(r3)
/* 80AEDB00  80 05 00 08 */	lwz r0, 8(r5)
/* 80AEDB04  90 03 0F 8C */	stw r0, 0xf8c(r3)
/* 80AEDB08  38 60 00 01 */	li r3, 1
/* 80AEDB0C  4E 80 00 20 */	blr 
