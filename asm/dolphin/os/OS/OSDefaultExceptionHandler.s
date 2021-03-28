lbl_8033A7B4:
/* 8033A7B4  90 04 00 00 */	stw r0, 0(r4)
/* 8033A7B8  90 24 00 04 */	stw r1, 4(r4)
/* 8033A7BC  90 44 00 08 */	stw r2, 8(r4)
/* 8033A7C0  BC C4 00 18 */	stmw r6, 0x18(r4)
/* 8033A7C4  7C 11 E2 A6 */	mfspr r0, 0x391
/* 8033A7C8  90 04 01 A8 */	stw r0, 0x1a8(r4)
/* 8033A7CC  7C 12 E2 A6 */	mfspr r0, 0x392
/* 8033A7D0  90 04 01 AC */	stw r0, 0x1ac(r4)
/* 8033A7D4  7C 13 E2 A6 */	mfspr r0, 0x393
/* 8033A7D8  90 04 01 B0 */	stw r0, 0x1b0(r4)
/* 8033A7DC  7C 14 E2 A6 */	mfspr r0, 0x394
/* 8033A7E0  90 04 01 B4 */	stw r0, 0x1b4(r4)
/* 8033A7E4  7C 15 E2 A6 */	mfspr r0, 0x395
/* 8033A7E8  90 04 01 B8 */	stw r0, 0x1b8(r4)
/* 8033A7EC  7C 16 E2 A6 */	mfspr r0, 0x396
/* 8033A7F0  90 04 01 BC */	stw r0, 0x1bc(r4)
/* 8033A7F4  7C 17 E2 A6 */	mfspr r0, 0x397
/* 8033A7F8  90 04 01 C0 */	stw r0, 0x1c0(r4)
/* 8033A7FC  7C B2 02 A6 */	mfdsisr r5
/* 8033A800  7C D3 02 A6 */	mfdar r6
/* 8033A804  94 21 FF F8 */	stwu r1, -8(r1)
/* 8033A808  48 00 1F 90 */	b __OSUnhandledException
