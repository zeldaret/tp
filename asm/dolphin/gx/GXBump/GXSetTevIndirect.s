lbl_8035ECC0:
/* 8035ECC0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8035ECC4  38 00 00 00 */	li r0, 0
/* 8035ECC8  50 80 07 BE */	rlwimi r0, r4, 0, 0x1e, 0x1f
/* 8035ECCC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8035ECD0  7C 0B 03 78 */	mr r11, r0
/* 8035ECD4  50 AB 17 3A */	rlwimi r11, r5, 2, 0x1c, 0x1d
/* 8035ECD8  81 81 00 3C */	lwz r12, 0x3c(r1)
/* 8035ECDC  8B E1 00 3B */	lbz r31, 0x3b(r1)
/* 8035ECE0  50 CB 26 76 */	rlwimi r11, r6, 4, 0x19, 0x1b
/* 8035ECE4  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035ECE8  51 8B 3D F0 */	rlwimi r11, r12, 7, 0x17, 0x18
/* 8035ECEC  50 EB 4C EC */	rlwimi r11, r7, 9, 0x13, 0x16
/* 8035ECF0  51 0B 6C 24 */	rlwimi r11, r8, 0xd, 0x10, 0x12
/* 8035ECF4  51 2B 83 5E */	rlwimi r11, r9, 0x10, 0xd, 0xf
/* 8035ECF8  53 EB 9B 18 */	rlwimi r11, r31, 0x13, 0xc, 0xc
/* 8035ECFC  38 00 00 61 */	li r0, 0x61
/* 8035ED00  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 8035ED04  98 05 80 00 */	stb r0, 0x8000(r5)
/* 8035ED08  38 03 00 10 */	addi r0, r3, 0x10
/* 8035ED0C  51 4B A2 D6 */	rlwimi r11, r10, 0x14, 0xb, 0xb
/* 8035ED10  50 0B C0 0E */	rlwimi r11, r0, 0x18, 0, 7
/* 8035ED14  91 65 80 00 */	stw r11, -0x8000(r5)
/* 8035ED18  38 00 00 00 */	li r0, 0
/* 8035ED1C  B0 04 00 02 */	sth r0, 2(r4)
/* 8035ED20  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8035ED24  38 21 00 30 */	addi r1, r1, 0x30
/* 8035ED28  4E 80 00 20 */	blr 
