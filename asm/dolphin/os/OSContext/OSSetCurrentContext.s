lbl_8033BE38:
/* 8033BE38  3C 80 80 00 */	lis r4, 0x8000 /* 0x800000D4@ha */
/* 8033BE3C  90 64 00 D4 */	stw r3, 0x00D4(r4)
/* 8033BE40  54 65 00 BE */	clrlwi r5, r3, 2
/* 8033BE44  90 A4 00 C0 */	stw r5, 0xc0(r4)
/* 8033BE48  80 A4 00 D8 */	lwz r5, 0xd8(r4)
/* 8033BE4C  7C 05 18 00 */	cmpw r5, r3
/* 8033BE50  40 82 00 20 */	bne lbl_8033BE70
/* 8033BE54  80 C3 01 9C */	lwz r6, 0x19c(r3)
/* 8033BE58  60 C6 20 00 */	ori r6, r6, 0x2000
/* 8033BE5C  90 C3 01 9C */	stw r6, 0x19c(r3)
/* 8033BE60  7C C0 00 A6 */	mfmsr r6
/* 8033BE64  60 C6 00 02 */	ori r6, r6, 2
/* 8033BE68  7C C0 01 24 */	mtmsr r6
/* 8033BE6C  4E 80 00 20 */	blr 
lbl_8033BE70:
/* 8033BE70  80 C3 01 9C */	lwz r6, 0x19c(r3)
/* 8033BE74  54 C6 04 E2 */	rlwinm r6, r6, 0, 0x13, 0x11
/* 8033BE78  90 C3 01 9C */	stw r6, 0x19c(r3)
/* 8033BE7C  7C C0 00 A6 */	mfmsr r6
/* 8033BE80  54 C6 04 E2 */	rlwinm r6, r6, 0, 0x13, 0x11
/* 8033BE84  60 C6 00 02 */	ori r6, r6, 2
/* 8033BE88  7C C0 01 24 */	mtmsr r6
/* 8033BE8C  4C 00 01 2C */	isync 
/* 8033BE90  4E 80 00 20 */	blr 
