lbl_801A880C:
/* 801A880C  3C A0 80 43 */	lis r5, g_env_light@ha /* 0x8042CA54@ha */
/* 801A8810  38 A5 CA 54 */	addi r5, r5, g_env_light@l /* 0x8042CA54@l */
/* 801A8814  88 05 12 D2 */	lbz r0, 0x12d2(r5)
/* 801A8818  28 00 00 01 */	cmplwi r0, 1
/* 801A881C  4D 82 00 20 */	beqlr 
/* 801A8820  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801A8824  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A8828  40 80 00 0C */	bge lbl_801A8834
/* 801A882C  98 65 12 C4 */	stb r3, 0x12c4(r5)
/* 801A8830  48 00 00 08 */	b lbl_801A8838
lbl_801A8834:
/* 801A8834  98 85 12 C4 */	stb r4, 0x12c4(r5)
lbl_801A8838:
/* 801A8838  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A883C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A8840  98 83 12 C5 */	stb r4, 0x12c5(r3)
/* 801A8844  D0 23 11 E0 */	stfs f1, 0x11e0(r3)
/* 801A8848  38 00 00 01 */	li r0, 1
/* 801A884C  98 03 12 CE */	stb r0, 0x12ce(r3)
/* 801A8850  4E 80 00 20 */	blr 
