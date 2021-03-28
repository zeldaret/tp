lbl_80B47B5C:
/* 80B47B5C  3C 80 80 3A */	lis r4, __ptmf_null@ha
/* 80B47B60  38 A4 21 80 */	addi r5, r4, __ptmf_null@l
/* 80B47B64  80 85 00 00 */	lwz r4, 0(r5)
/* 80B47B68  80 05 00 04 */	lwz r0, 4(r5)
/* 80B47B6C  90 83 0F 84 */	stw r4, 0xf84(r3)
/* 80B47B70  90 03 0F 88 */	stw r0, 0xf88(r3)
/* 80B47B74  80 05 00 08 */	lwz r0, 8(r5)
/* 80B47B78  90 03 0F 8C */	stw r0, 0xf8c(r3)
/* 80B47B7C  3C 80 80 B5 */	lis r4, lit_4821@ha
/* 80B47B80  38 A4 98 F8 */	addi r5, r4, lit_4821@l
/* 80B47B84  80 85 00 00 */	lwz r4, 0(r5)
/* 80B47B88  80 05 00 04 */	lwz r0, 4(r5)
/* 80B47B8C  90 83 0F 84 */	stw r4, 0xf84(r3)
/* 80B47B90  90 03 0F 88 */	stw r0, 0xf88(r3)
/* 80B47B94  80 05 00 08 */	lwz r0, 8(r5)
/* 80B47B98  90 03 0F 8C */	stw r0, 0xf8c(r3)
/* 80B47B9C  38 60 00 01 */	li r3, 1
/* 80B47BA0  4E 80 00 20 */	blr 
