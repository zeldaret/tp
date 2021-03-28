lbl_80BC8B20:
/* 80BC8B20  3C 80 80 BD */	lis r4, lit_3731@ha
/* 80BC8B24  38 84 8C DC */	addi r4, r4, lit_3731@l
/* 80BC8B28  C0 04 00 54 */	lfs f0, 0x54(r4)
/* 80BC8B2C  D0 03 05 EC */	stfs f0, 0x5ec(r3)
/* 80BC8B30  C0 04 00 58 */	lfs f0, 0x58(r4)
/* 80BC8B34  D0 03 05 F0 */	stfs f0, 0x5f0(r3)
/* 80BC8B38  A8 03 04 B6 */	lha r0, 0x4b6(r3)
/* 80BC8B3C  B0 03 04 E6 */	sth r0, 0x4e6(r3)
/* 80BC8B40  A8 03 04 B8 */	lha r0, 0x4b8(r3)
/* 80BC8B44  B0 03 04 E8 */	sth r0, 0x4e8(r3)
/* 80BC8B48  C0 03 05 A8 */	lfs f0, 0x5a8(r3)
/* 80BC8B4C  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 80BC8B50  C0 03 05 AC */	lfs f0, 0x5ac(r3)
/* 80BC8B54  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80BC8B58  C0 03 05 B0 */	lfs f0, 0x5b0(r3)
/* 80BC8B5C  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 80BC8B60  38 00 00 1E */	li r0, 0x1e
/* 80BC8B64  B0 03 06 04 */	sth r0, 0x604(r3)
/* 80BC8B68  38 00 00 00 */	li r0, 0
/* 80BC8B6C  90 03 05 FC */	stw r0, 0x5fc(r3)
/* 80BC8B70  C0 04 00 5C */	lfs f0, 0x5c(r4)
/* 80BC8B74  D0 03 05 F8 */	stfs f0, 0x5f8(r3)
/* 80BC8B78  4E 80 00 20 */	blr 
