lbl_8033AF88:
/* 8033AF88  90 04 00 00 */	stw r0, 0(r4)
/* 8033AF8C  90 24 00 04 */	stw r1, 4(r4)
/* 8033AF90  90 44 00 08 */	stw r2, 8(r4)
/* 8033AF94  BC C4 00 18 */	stmw r6, 0x18(r4)
/* 8033AF98  7C 11 E2 A6 */	mfspr r0, 0x391
/* 8033AF9C  90 04 01 A8 */	stw r0, 0x1a8(r4)
/* 8033AFA0  7C 12 E2 A6 */	mfspr r0, 0x392
/* 8033AFA4  90 04 01 AC */	stw r0, 0x1ac(r4)
/* 8033AFA8  7C 13 E2 A6 */	mfspr r0, 0x393
/* 8033AFAC  90 04 01 B0 */	stw r0, 0x1b0(r4)
/* 8033AFB0  7C 14 E2 A6 */	mfspr r0, 0x394
/* 8033AFB4  90 04 01 B4 */	stw r0, 0x1b4(r4)
/* 8033AFB8  7C 15 E2 A6 */	mfspr r0, 0x395
/* 8033AFBC  90 04 01 B8 */	stw r0, 0x1b8(r4)
/* 8033AFC0  7C 16 E2 A6 */	mfspr r0, 0x396
/* 8033AFC4  90 04 01 BC */	stw r0, 0x1bc(r4)
/* 8033AFC8  7C 17 E2 A6 */	mfspr r0, 0x397
/* 8033AFCC  90 04 01 C0 */	stw r0, 0x1c0(r4)
/* 8033AFD0  94 21 FF F8 */	stwu r1, -8(r1)
/* 8033AFD4  4B FF FD 84 */	b DecrementerExceptionCallback
