lbl_8086FFC0:
/* 8086FFC0  3C 80 80 87 */	lis r4, __vt__18mDoExt_3DlineMat_c@ha
/* 8086FFC4  38 04 09 3C */	addi r0, r4, __vt__18mDoExt_3DlineMat_c@l
/* 8086FFC8  90 03 00 30 */	stw r0, 0x30(r3)
/* 8086FFCC  3C 80 80 3A */	lis r4, __vt__19mDoExt_3DlineMat0_c@ha
/* 8086FFD0  38 04 32 5C */	addi r0, r4, __vt__19mDoExt_3DlineMat0_c@l
/* 8086FFD4  90 03 00 30 */	stw r0, 0x30(r3)
/* 8086FFD8  4E 80 00 20 */	blr 
