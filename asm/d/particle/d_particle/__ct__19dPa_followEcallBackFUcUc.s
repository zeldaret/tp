lbl_80049580:
/* 80049580  3C C0 80 3B */	lis r6, __vt__18JPAEmitterCallBack@ha /* 0x803A8578@ha */
/* 80049584  38 06 85 78 */	addi r0, r6, __vt__18JPAEmitterCallBack@l /* 0x803A8578@l */
/* 80049588  90 03 00 00 */	stw r0, 0(r3)
/* 8004958C  3C C0 80 3B */	lis r6, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 80049590  38 06 85 54 */	addi r0, r6, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 80049594  90 03 00 00 */	stw r0, 0(r3)
/* 80049598  3C C0 80 3B */	lis r6, __vt__19dPa_followEcallBack@ha /* 0x803A852C@ha */
/* 8004959C  38 06 85 2C */	addi r0, r6, __vt__19dPa_followEcallBack@l /* 0x803A852C@l */
/* 800495A0  90 03 00 00 */	stw r0, 0(r3)
/* 800495A4  98 83 00 11 */	stb r4, 0x11(r3)
/* 800495A8  98 A3 00 12 */	stb r5, 0x12(r3)
/* 800495AC  38 00 00 00 */	li r0, 0
/* 800495B0  98 03 00 13 */	stb r0, 0x13(r3)
/* 800495B4  90 03 00 04 */	stw r0, 4(r3)
/* 800495B8  4E 80 00 20 */	blr 
