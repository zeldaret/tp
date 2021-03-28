lbl_80D2D95C:
/* 80D2D95C  3C 80 80 D3 */	lis r4, l_HIO@ha
/* 80D2D960  38 84 EB 3C */	addi r4, r4, l_HIO@l
/* 80D2D964  88 04 00 2C */	lbz r0, 0x2c(r4)
/* 80D2D968  B0 03 0B 02 */	sth r0, 0xb02(r3)
/* 80D2D96C  C0 04 00 48 */	lfs f0, 0x48(r4)
/* 80D2D970  D0 03 0B 34 */	stfs f0, 0xb34(r3)
/* 80D2D974  C0 04 00 44 */	lfs f0, 0x44(r4)
/* 80D2D978  D0 03 0B 30 */	stfs f0, 0xb30(r3)
/* 80D2D97C  C0 04 00 4C */	lfs f0, 0x4c(r4)
/* 80D2D980  D0 03 0B 38 */	stfs f0, 0xb38(r3)
/* 80D2D984  C0 04 00 50 */	lfs f0, 0x50(r4)
/* 80D2D988  D0 03 0B 3C */	stfs f0, 0xb3c(r3)
/* 80D2D98C  C0 04 00 54 */	lfs f0, 0x54(r4)
/* 80D2D990  D0 03 0B 40 */	stfs f0, 0xb40(r3)
/* 80D2D994  38 00 00 05 */	li r0, 5
/* 80D2D998  98 03 0B 00 */	stb r0, 0xb00(r3)
/* 80D2D99C  4E 80 00 20 */	blr 
