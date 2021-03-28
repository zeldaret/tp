lbl_800F3FC4:
/* 800F3FC4  38 00 00 01 */	li r0, 1
/* 800F3FC8  B0 03 30 12 */	sth r0, 0x3012(r3)
/* 800F3FCC  3C 80 80 42 */	lis r4, l_waitBaseAnime@ha
/* 800F3FD0  C4 04 55 14 */	lfsu f0, l_waitBaseAnime@l(r4)
/* 800F3FD4  D0 03 35 88 */	stfs f0, 0x3588(r3)
/* 800F3FD8  C0 04 00 04 */	lfs f0, 4(r4)
/* 800F3FDC  D0 03 35 8C */	stfs f0, 0x358c(r3)
/* 800F3FE0  C0 04 00 08 */	lfs f0, 8(r4)
/* 800F3FE4  D0 03 35 90 */	stfs f0, 0x3590(r3)
/* 800F3FE8  3C 80 80 42 */	lis r4, l_canoeBaseAnime@ha
/* 800F3FEC  38 04 55 EC */	addi r0, r4, l_canoeBaseAnime@l
/* 800F3FF0  90 03 38 4C */	stw r0, 0x384c(r3)
/* 800F3FF4  38 00 00 03 */	li r0, 3
/* 800F3FF8  98 03 2F AA */	stb r0, 0x2faa(r3)
/* 800F3FFC  38 00 00 00 */	li r0, 0
/* 800F4000  B0 03 30 10 */	sth r0, 0x3010(r3)
/* 800F4004  4E 80 00 20 */	blr 
