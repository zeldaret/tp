lbl_80B4B300:
/* 80B4B300  3C 80 80 3A */	lis r4, __ptmf_null@ha
/* 80B4B304  38 A4 21 80 */	addi r5, r4, __ptmf_null@l
/* 80B4B308  80 85 00 00 */	lwz r4, 0(r5)
/* 80B4B30C  80 05 00 04 */	lwz r0, 4(r5)
/* 80B4B310  90 83 0F 88 */	stw r4, 0xf88(r3)
/* 80B4B314  90 03 0F 8C */	stw r0, 0xf8c(r3)
/* 80B4B318  80 05 00 08 */	lwz r0, 8(r5)
/* 80B4B31C  90 03 0F 90 */	stw r0, 0xf90(r3)
/* 80B4B320  3C 80 80 B5 */	lis r4, lit_4836@ha
/* 80B4B324  38 A4 D0 18 */	addi r5, r4, lit_4836@l
/* 80B4B328  80 85 00 00 */	lwz r4, 0(r5)
/* 80B4B32C  80 05 00 04 */	lwz r0, 4(r5)
/* 80B4B330  90 83 0F 88 */	stw r4, 0xf88(r3)
/* 80B4B334  90 03 0F 8C */	stw r0, 0xf8c(r3)
/* 80B4B338  80 05 00 08 */	lwz r0, 8(r5)
/* 80B4B33C  90 03 0F 90 */	stw r0, 0xf90(r3)
/* 80B4B340  38 60 00 01 */	li r3, 1
/* 80B4B344  4E 80 00 20 */	blr 
