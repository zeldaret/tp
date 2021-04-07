lbl_80CBC6CC:
/* 80CBC6CC  3C 80 80 CC */	lis r4, __vt__20daObjRIVERROCK_HIO_c@ha /* 0x80CBDBD4@ha */
/* 80CBC6D0  38 04 DB D4 */	addi r0, r4, __vt__20daObjRIVERROCK_HIO_c@l /* 0x80CBDBD4@l */
/* 80CBC6D4  90 03 00 00 */	stw r0, 0(r3)
/* 80CBC6D8  38 00 FF FF */	li r0, -1
/* 80CBC6DC  98 03 00 04 */	stb r0, 4(r3)
/* 80CBC6E0  3C 80 80 CC */	lis r4, lit_3631@ha /* 0x80CBDA5C@ha */
/* 80CBC6E4  C0 04 DA 5C */	lfs f0, lit_3631@l(r4)  /* 0x80CBDA5C@l */
/* 80CBC6E8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80CBC6EC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CBC6F0  4E 80 00 20 */	blr 
