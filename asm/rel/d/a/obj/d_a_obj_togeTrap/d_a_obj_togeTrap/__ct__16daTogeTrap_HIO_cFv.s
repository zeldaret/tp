lbl_80D17B6C:
/* 80D17B6C  3C 80 80 D2 */	lis r4, lit_3655@ha
/* 80D17B70  38 A4 8E 98 */	addi r5, r4, lit_3655@l
/* 80D17B74  3C 80 80 D2 */	lis r4, __vt__14mDoHIO_entry_c@ha
/* 80D17B78  38 04 90 94 */	addi r0, r4, __vt__14mDoHIO_entry_c@l
/* 80D17B7C  90 03 00 00 */	stw r0, 0(r3)
/* 80D17B80  3C 80 80 D2 */	lis r4, __vt__18fOpAcm_HIO_entry_c@ha
/* 80D17B84  38 04 90 88 */	addi r0, r4, __vt__18fOpAcm_HIO_entry_c@l
/* 80D17B88  90 03 00 00 */	stw r0, 0(r3)
/* 80D17B8C  3C 80 80 D2 */	lis r4, __vt__16daTogeTrap_HIO_c@ha
/* 80D17B90  38 04 90 7C */	addi r0, r4, __vt__16daTogeTrap_HIO_c@l
/* 80D17B94  90 03 00 00 */	stw r0, 0(r3)
/* 80D17B98  C0 25 00 00 */	lfs f1, 0(r5)
/* 80D17B9C  D0 23 00 08 */	stfs f1, 8(r3)
/* 80D17BA0  C0 05 00 04 */	lfs f0, 4(r5)
/* 80D17BA4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D17BA8  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 80D17BAC  C0 05 00 08 */	lfs f0, 8(r5)
/* 80D17BB0  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80D17BB4  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80D17BB8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80D17BBC  38 00 00 03 */	li r0, 3
/* 80D17BC0  98 03 00 1C */	stb r0, 0x1c(r3)
/* 80D17BC4  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 80D17BC8  D0 03 00 04 */	stfs f0, 4(r3)
/* 80D17BCC  4E 80 00 20 */	blr 
