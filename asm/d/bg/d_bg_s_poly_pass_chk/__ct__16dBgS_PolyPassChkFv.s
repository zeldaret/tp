lbl_80078D64:
/* 80078D64  3C 80 80 3B */	lis r4, __vt__16cBgS_PolyPassChk@ha /* 0x803ABA44@ha */
/* 80078D68  38 04 BA 44 */	addi r0, r4, __vt__16cBgS_PolyPassChk@l /* 0x803ABA44@l */
/* 80078D6C  90 03 00 00 */	stw r0, 0(r3)
/* 80078D70  3C 80 80 3B */	lis r4, __vt__16dBgS_PolyPassChk@ha /* 0x803ABA38@ha */
/* 80078D74  38 04 BA 38 */	addi r0, r4, __vt__16dBgS_PolyPassChk@l /* 0x803ABA38@l */
/* 80078D78  90 03 00 00 */	stw r0, 0(r3)
/* 80078D7C  38 00 00 00 */	li r0, 0
/* 80078D80  98 03 00 04 */	stb r0, 4(r3)
/* 80078D84  98 03 00 05 */	stb r0, 5(r3)
/* 80078D88  98 03 00 06 */	stb r0, 6(r3)
/* 80078D8C  98 03 00 07 */	stb r0, 7(r3)
/* 80078D90  98 03 00 08 */	stb r0, 8(r3)
/* 80078D94  98 03 00 09 */	stb r0, 9(r3)
/* 80078D98  98 03 00 0A */	stb r0, 0xa(r3)
/* 80078D9C  98 03 00 0B */	stb r0, 0xb(r3)
/* 80078DA0  98 03 00 0C */	stb r0, 0xc(r3)
/* 80078DA4  98 03 00 0D */	stb r0, 0xd(r3)
/* 80078DA8  98 03 00 0E */	stb r0, 0xe(r3)
/* 80078DAC  4E 80 00 20 */	blr 
