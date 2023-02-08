lbl_8071F9CC:
/* 8071F9CC  3C 80 80 72 */	lis r4, lit_3789@ha /* 0x80722C3C@ha */
/* 8071F9D0  38 A4 2C 3C */	addi r5, r4, lit_3789@l /* 0x80722C3C@l */
/* 8071F9D4  3C 80 80 72 */	lis r4, __vt__12daE_MM_HIO_c@ha /* 0x80722E9C@ha */
/* 8071F9D8  38 04 2E 9C */	addi r0, r4, __vt__12daE_MM_HIO_c@l /* 0x80722E9C@l */
/* 8071F9DC  90 03 00 00 */	stw r0, 0(r3)
/* 8071F9E0  38 00 FF FF */	li r0, -1
/* 8071F9E4  98 03 00 04 */	stb r0, 4(r3)
/* 8071F9E8  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 8071F9EC  D0 03 00 08 */	stfs f0, 8(r3)
/* 8071F9F0  C0 45 00 30 */	lfs f2, 0x30(r5)
/* 8071F9F4  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 8071F9F8  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 8071F9FC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8071FA00  C0 25 00 38 */	lfs f1, 0x38(r5)
/* 8071FA04  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 8071FA08  38 00 00 32 */	li r0, 0x32
/* 8071FA0C  B0 03 00 18 */	sth r0, 0x18(r3)
/* 8071FA10  C0 05 00 3C */	lfs f0, 0x3c(r5)
/* 8071FA14  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8071FA18  D0 43 00 20 */	stfs f2, 0x20(r3)
/* 8071FA1C  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 8071FA20  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8071FA24  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 8071FA28  C0 05 00 44 */	lfs f0, 0x44(r5)
/* 8071FA2C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8071FA30  38 00 00 4B */	li r0, 0x4b
/* 8071FA34  B0 03 00 30 */	sth r0, 0x30(r3)
/* 8071FA38  38 00 01 2C */	li r0, 0x12c
/* 8071FA3C  B0 03 00 32 */	sth r0, 0x32(r3)
/* 8071FA40  4E 80 00 20 */	blr 
