lbl_801AF710:
/* 801AF710  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 801AF714  38 A4 61 C0 */	addi r5, r4, g_dComIfG_gameInfo@l
/* 801AF718  80 83 00 E8 */	lwz r4, 0xe8(r3)
/* 801AF71C  98 85 01 E8 */	stb r4, 0x1e8(r5)
/* 801AF720  A0 03 00 F4 */	lhz r0, 0xf4(r3)
/* 801AF724  B0 05 01 E6 */	sth r0, 0x1e6(r5)
/* 801AF728  90 83 00 EC */	stw r4, 0xec(r3)
/* 801AF72C  A0 03 00 F4 */	lhz r0, 0xf4(r3)
/* 801AF730  B0 03 00 F6 */	sth r0, 0xf6(r3)
/* 801AF734  4E 80 00 20 */	blr 
