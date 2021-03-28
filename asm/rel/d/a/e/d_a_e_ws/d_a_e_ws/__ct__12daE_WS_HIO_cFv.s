lbl_807E3A0C:
/* 807E3A0C  3C 80 80 7E */	lis r4, lit_3802@ha
/* 807E3A10  38 A4 73 00 */	addi r5, r4, lit_3802@l
/* 807E3A14  3C 80 80 7E */	lis r4, __vt__12daE_WS_HIO_c@ha
/* 807E3A18  38 04 75 A0 */	addi r0, r4, __vt__12daE_WS_HIO_c@l
/* 807E3A1C  90 03 00 00 */	stw r0, 0(r3)
/* 807E3A20  38 00 FF FF */	li r0, -1
/* 807E3A24  98 03 00 04 */	stb r0, 4(r3)
/* 807E3A28  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 807E3A2C  D0 03 00 08 */	stfs f0, 8(r3)
/* 807E3A30  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 807E3A34  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 807E3A38  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 807E3A3C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 807E3A40  C0 05 00 38 */	lfs f0, 0x38(r5)
/* 807E3A44  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 807E3A48  C0 05 00 3C */	lfs f0, 0x3c(r5)
/* 807E3A4C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 807E3A50  38 00 00 00 */	li r0, 0
/* 807E3A54  98 03 00 24 */	stb r0, 0x24(r3)
/* 807E3A58  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 807E3A5C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 807E3A60  C0 05 00 44 */	lfs f0, 0x44(r5)
/* 807E3A64  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 807E3A68  4E 80 00 20 */	blr 
