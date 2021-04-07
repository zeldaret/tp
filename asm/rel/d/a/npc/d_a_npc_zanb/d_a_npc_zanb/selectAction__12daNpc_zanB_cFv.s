lbl_80B6A47C:
/* 80B6A47C  3C 80 80 3A */	lis r4, __ptmf_null@ha /* 0x803A2180@ha */
/* 80B6A480  38 A4 21 80 */	addi r5, r4, __ptmf_null@l /* 0x803A2180@l */
/* 80B6A484  80 85 00 00 */	lwz r4, 0(r5)
/* 80B6A488  80 05 00 04 */	lwz r0, 4(r5)
/* 80B6A48C  90 83 0F 84 */	stw r4, 0xf84(r3)
/* 80B6A490  90 03 0F 88 */	stw r0, 0xf88(r3)
/* 80B6A494  80 05 00 08 */	lwz r0, 8(r5)
/* 80B6A498  90 03 0F 8C */	stw r0, 0xf8c(r3)
/* 80B6A49C  3C 80 80 B7 */	lis r4, lit_4783@ha /* 0x80B6BED4@ha */
/* 80B6A4A0  38 A4 BE D4 */	addi r5, r4, lit_4783@l /* 0x80B6BED4@l */
/* 80B6A4A4  80 85 00 00 */	lwz r4, 0(r5)
/* 80B6A4A8  80 05 00 04 */	lwz r0, 4(r5)
/* 80B6A4AC  90 83 0F 84 */	stw r4, 0xf84(r3)
/* 80B6A4B0  90 03 0F 88 */	stw r0, 0xf88(r3)
/* 80B6A4B4  80 05 00 08 */	lwz r0, 8(r5)
/* 80B6A4B8  90 03 0F 8C */	stw r0, 0xf8c(r3)
/* 80B6A4BC  38 60 00 01 */	li r3, 1
/* 80B6A4C0  4E 80 00 20 */	blr 
