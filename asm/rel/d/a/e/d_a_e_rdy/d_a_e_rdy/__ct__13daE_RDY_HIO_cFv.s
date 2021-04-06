lbl_8076BDCC:
/* 8076BDCC  3C 80 80 78 */	lis r4, lit_4018@ha /* 0x80779DFC@ha */
/* 8076BDD0  38 A4 9D FC */	addi r5, r4, lit_4018@l /* 0x80779DFC@l */
/* 8076BDD4  3C 80 80 78 */	lis r4, __vt__13daE_RDY_HIO_c@ha /* 0x8077A81C@ha */
/* 8076BDD8  38 04 A8 1C */	addi r0, r4, __vt__13daE_RDY_HIO_c@l /* 0x8077A81C@l */
/* 8076BDDC  90 03 00 00 */	stw r0, 0(r3)
/* 8076BDE0  38 00 FF FF */	li r0, -1
/* 8076BDE4  98 03 00 04 */	stb r0, 4(r3)
/* 8076BDE8  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 8076BDEC  D0 03 00 08 */	stfs f0, 8(r3)
/* 8076BDF0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8076BDF4  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 8076BDF8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8076BDFC  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 8076BE00  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8076BE04  C0 05 00 38 */	lfs f0, 0x38(r5)
/* 8076BE08  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8076BE0C  C0 05 00 3C */	lfs f0, 0x3c(r5)
/* 8076BE10  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8076BE14  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 8076BE18  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8076BE1C  38 00 00 3C */	li r0, 0x3c
/* 8076BE20  B0 03 00 24 */	sth r0, 0x24(r3)
/* 8076BE24  C0 05 00 44 */	lfs f0, 0x44(r5)
/* 8076BE28  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8076BE2C  C0 05 00 48 */	lfs f0, 0x48(r5)
/* 8076BE30  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8076BE34  C0 05 00 4C */	lfs f0, 0x4c(r5)
/* 8076BE38  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 8076BE3C  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 8076BE40  38 00 00 01 */	li r0, 1
/* 8076BE44  98 03 00 38 */	stb r0, 0x38(r3)
/* 8076BE48  38 00 00 00 */	li r0, 0
/* 8076BE4C  98 03 00 39 */	stb r0, 0x39(r3)
/* 8076BE50  98 03 00 3A */	stb r0, 0x3a(r3)
/* 8076BE54  98 03 00 3B */	stb r0, 0x3b(r3)
/* 8076BE58  C0 05 00 50 */	lfs f0, 0x50(r5)
/* 8076BE5C  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 8076BE60  C0 25 00 54 */	lfs f1, 0x54(r5)
/* 8076BE64  D0 23 00 48 */	stfs f1, 0x48(r3)
/* 8076BE68  C0 05 00 58 */	lfs f0, 0x58(r5)
/* 8076BE6C  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 8076BE70  C0 05 00 5C */	lfs f0, 0x5c(r5)
/* 8076BE74  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 8076BE78  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 8076BE7C  4E 80 00 20 */	blr 
