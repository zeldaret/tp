lbl_802A8EC0:
/* 802A8EC0  38 00 00 00 */	li r0, 0
/* 802A8EC4  90 03 00 04 */	stw r0, 4(r3)
/* 802A8EC8  90 03 00 08 */	stw r0, 8(r3)
/* 802A8ECC  90 03 00 00 */	stw r0, 0(r3)
/* 802A8ED0  38 03 00 04 */	addi r0, r3, 4
/* 802A8ED4  90 03 00 04 */	stw r0, 4(r3)
/* 802A8ED8  90 03 00 08 */	stw r0, 8(r3)
/* 802A8EDC  3C 80 80 3D */	lis r4, data_803C9CBC@ha
/* 802A8EE0  38 04 9C BC */	addi r0, r4, data_803C9CBC@l
/* 802A8EE4  90 03 00 0C */	stw r0, 0xc(r3)
/* 802A8EE8  3C 80 80 3D */	lis r4, __vt__Q38JMessage18TResourceContainer10TCResource@ha
/* 802A8EEC  38 04 9C A8 */	addi r0, r4, __vt__Q38JMessage18TResourceContainer10TCResource@l
/* 802A8EF0  90 03 00 0C */	stw r0, 0xc(r3)
/* 802A8EF4  4E 80 00 20 */	blr 
