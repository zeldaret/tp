lbl_8033DF10:
/* 8033DF10  90 04 00 00 */	stw r0, 0(r4)
/* 8033DF14  90 24 00 04 */	stw r1, 4(r4)
/* 8033DF18  90 44 00 08 */	stw r2, 8(r4)
/* 8033DF1C  BC C4 00 18 */	stmw r6, 0x18(r4)
/* 8033DF20  7C 11 E2 A6 */	mfspr r0, 0x391
/* 8033DF24  90 04 01 A8 */	stw r0, 0x1a8(r4)
/* 8033DF28  7C 12 E2 A6 */	mfspr r0, 0x392
/* 8033DF2C  90 04 01 AC */	stw r0, 0x1ac(r4)
/* 8033DF30  7C 13 E2 A6 */	mfspr r0, 0x393
/* 8033DF34  90 04 01 B0 */	stw r0, 0x1b0(r4)
/* 8033DF38  7C 14 E2 A6 */	mfspr r0, 0x394
/* 8033DF3C  90 04 01 B4 */	stw r0, 0x1b4(r4)
/* 8033DF40  7C 15 E2 A6 */	mfspr r0, 0x395
/* 8033DF44  90 04 01 B8 */	stw r0, 0x1b8(r4)
/* 8033DF48  7C 16 E2 A6 */	mfspr r0, 0x396
/* 8033DF4C  90 04 01 BC */	stw r0, 0x1bc(r4)
/* 8033DF50  7C 17 E2 A6 */	mfspr r0, 0x397
/* 8033DF54  90 04 01 C0 */	stw r0, 0x1c0(r4)
/* 8033DF58  94 21 FF F8 */	stwu r1, -8(r1)
/* 8033DF5C  4B FF FC 70 */	b __OSDispatchInterrupt
