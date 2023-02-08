lbl_80AAFBDC:
/* 80AAFBDC  3C 80 80 3A */	lis r4, __ptmf_null@ha /* 0x803A2180@ha */
/* 80AAFBE0  38 A4 21 80 */	addi r5, r4, __ptmf_null@l /* 0x803A2180@l */
/* 80AAFBE4  80 85 00 00 */	lwz r4, 0(r5)
/* 80AAFBE8  80 05 00 04 */	lwz r0, 4(r5)
/* 80AAFBEC  90 83 0F B0 */	stw r4, 0xfb0(r3)
/* 80AAFBF0  90 03 0F B4 */	stw r0, 0xfb4(r3)
/* 80AAFBF4  80 05 00 08 */	lwz r0, 8(r5)
/* 80AAFBF8  90 03 0F B8 */	stw r0, 0xfb8(r3)
/* 80AAFBFC  3C 80 80 AB */	lis r4, lit_5095@ha /* 0x80AB2AA8@ha */
/* 80AAFC00  38 A4 2A A8 */	addi r5, r4, lit_5095@l /* 0x80AB2AA8@l */
/* 80AAFC04  80 85 00 00 */	lwz r4, 0(r5)
/* 80AAFC08  80 05 00 04 */	lwz r0, 4(r5)
/* 80AAFC0C  90 83 0F B0 */	stw r4, 0xfb0(r3)
/* 80AAFC10  90 03 0F B4 */	stw r0, 0xfb4(r3)
/* 80AAFC14  80 05 00 08 */	lwz r0, 8(r5)
/* 80AAFC18  90 03 0F B8 */	stw r0, 0xfb8(r3)
/* 80AAFC1C  38 60 00 01 */	li r3, 1
/* 80AAFC20  4E 80 00 20 */	blr 
