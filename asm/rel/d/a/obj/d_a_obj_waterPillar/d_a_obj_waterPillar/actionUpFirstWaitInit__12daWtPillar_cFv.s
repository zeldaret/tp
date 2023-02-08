lbl_80D2D73C:
/* 80D2D73C  3C 80 80 D3 */	lis r4, l_HIO@ha /* 0x80D2EB3C@ha */
/* 80D2D740  38 84 EB 3C */	addi r4, r4, l_HIO@l /* 0x80D2EB3C@l */
/* 80D2D744  88 04 00 19 */	lbz r0, 0x19(r4)
/* 80D2D748  B0 03 0B 02 */	sth r0, 0xb02(r3)
/* 80D2D74C  C0 04 00 48 */	lfs f0, 0x48(r4)
/* 80D2D750  D0 03 0B 34 */	stfs f0, 0xb34(r3)
/* 80D2D754  C0 04 00 44 */	lfs f0, 0x44(r4)
/* 80D2D758  D0 03 0B 30 */	stfs f0, 0xb30(r3)
/* 80D2D75C  C0 04 00 4C */	lfs f0, 0x4c(r4)
/* 80D2D760  D0 03 0B 38 */	stfs f0, 0xb38(r3)
/* 80D2D764  C0 04 00 50 */	lfs f0, 0x50(r4)
/* 80D2D768  D0 03 0B 3C */	stfs f0, 0xb3c(r3)
/* 80D2D76C  C0 04 00 54 */	lfs f0, 0x54(r4)
/* 80D2D770  D0 03 0B 40 */	stfs f0, 0xb40(r3)
/* 80D2D774  38 00 00 03 */	li r0, 3
/* 80D2D778  98 03 0B 00 */	stb r0, 0xb00(r3)
/* 80D2D77C  4E 80 00 20 */	blr 
