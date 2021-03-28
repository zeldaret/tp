lbl_80AC1B30:
/* 80AC1B30  3C 80 80 3A */	lis r4, __ptmf_null@ha
/* 80AC1B34  38 A4 21 80 */	addi r5, r4, __ptmf_null@l
/* 80AC1B38  80 85 00 00 */	lwz r4, 0(r5)
/* 80AC1B3C  80 05 00 04 */	lwz r0, 4(r5)
/* 80AC1B40  90 83 0F BC */	stw r4, 0xfbc(r3)
/* 80AC1B44  90 03 0F C0 */	stw r0, 0xfc0(r3)
/* 80AC1B48  80 05 00 08 */	lwz r0, 8(r5)
/* 80AC1B4C  90 03 0F C4 */	stw r0, 0xfc4(r3)
/* 80AC1B50  3C 80 80 AC */	lis r4, lit_4930@ha
/* 80AC1B54  38 A4 4E 18 */	addi r5, r4, lit_4930@l
/* 80AC1B58  80 85 00 00 */	lwz r4, 0(r5)
/* 80AC1B5C  80 05 00 04 */	lwz r0, 4(r5)
/* 80AC1B60  90 83 0F BC */	stw r4, 0xfbc(r3)
/* 80AC1B64  90 03 0F C0 */	stw r0, 0xfc0(r3)
/* 80AC1B68  80 05 00 08 */	lwz r0, 8(r5)
/* 80AC1B6C  90 03 0F C4 */	stw r0, 0xfc4(r3)
/* 80AC1B70  38 60 00 01 */	li r3, 1
/* 80AC1B74  4E 80 00 20 */	blr 
