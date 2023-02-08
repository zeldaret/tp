lbl_805DFA64:
/* 805DFA64  88 03 05 C5 */	lbz r0, 0x5c5(r3)
/* 805DFA68  98 03 05 C8 */	stb r0, 0x5c8(r3)
/* 805DFA6C  88 03 05 C6 */	lbz r0, 0x5c6(r3)
/* 805DFA70  98 03 05 C9 */	stb r0, 0x5c9(r3)
/* 805DFA74  88 03 05 C7 */	lbz r0, 0x5c7(r3)
/* 805DFA78  98 03 05 CA */	stb r0, 0x5ca(r3)
/* 805DFA7C  98 83 05 C5 */	stb r4, 0x5c5(r3)
/* 805DFA80  98 A3 05 C6 */	stb r5, 0x5c6(r3)
/* 805DFA84  98 C3 05 C7 */	stb r6, 0x5c7(r3)
/* 805DFA88  4E 80 00 20 */	blr 
