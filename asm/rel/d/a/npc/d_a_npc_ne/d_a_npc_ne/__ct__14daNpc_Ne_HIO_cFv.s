lbl_80A88CCC:
/* 80A88CCC  3C 80 80 A9 */	lis r4, lit_3990@ha
/* 80A88CD0  38 A4 24 1C */	addi r5, r4, lit_3990@l
/* 80A88CD4  3C 80 80 A9 */	lis r4, __vt__14daNpc_Ne_HIO_c@ha
/* 80A88CD8  38 04 2A 74 */	addi r0, r4, __vt__14daNpc_Ne_HIO_c@l
/* 80A88CDC  90 03 00 00 */	stw r0, 0(r3)
/* 80A88CE0  38 00 FF FF */	li r0, -1
/* 80A88CE4  98 03 00 04 */	stb r0, 4(r3)
/* 80A88CE8  C0 05 00 00 */	lfs f0, 0(r5)
/* 80A88CEC  D0 03 00 08 */	stfs f0, 8(r3)
/* 80A88CF0  C0 05 00 04 */	lfs f0, 4(r5)
/* 80A88CF4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80A88CF8  C0 05 00 08 */	lfs f0, 8(r5)
/* 80A88CFC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80A88D00  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80A88D04  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80A88D08  38 00 00 00 */	li r0, 0
/* 80A88D0C  98 03 00 18 */	stb r0, 0x18(r3)
/* 80A88D10  4E 80 00 20 */	blr 
