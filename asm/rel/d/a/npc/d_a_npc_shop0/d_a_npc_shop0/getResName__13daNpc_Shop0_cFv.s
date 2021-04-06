lbl_80AEB190:
/* 80AEB190  3C 60 80 AF */	lis r3, l_resName@ha /* 0x80AEBC74@ha */
/* 80AEB194  38 63 BC 74 */	addi r3, r3, l_resName@l /* 0x80AEBC74@l */
/* 80AEB198  80 63 00 00 */	lwz r3, 0(r3)
/* 80AEB19C  4E 80 00 20 */	blr 
