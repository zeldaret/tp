lbl_80003424:
/* 80003424  3C A0 FF FF */	lis r5, 0xFFFF /* 0xFFFFFFF1@h */
/* 80003428  60 A5 FF F1 */	ori r5, r5, 0xFFF1 /* 0xFFFFFFF1@l */
/* 8000342C  7C A5 18 38 */	and r5, r5, r3
/* 80003430  7C 65 18 50 */	subf r3, r5, r3
/* 80003434  7C 84 1A 14 */	add r4, r4, r3
lbl_80003438:
/* 80003438  7C 00 28 6C */	dcbst 0, r5
/* 8000343C  7C 00 04 AC */	sync
/* 80003440  7C 00 2F AC */	icbi 0, r5
/* 80003444  30 A5 00 08 */	addic r5, r5, 8
/* 80003448  34 84 FF F8 */	addic. r4, r4, -8
/* 8000344C  40 80 FF EC */	bge lbl_80003438
/* 80003450  4C 00 01 2C */	isync 
/* 80003454  4E 80 00 20 */	blr 
