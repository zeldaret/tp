lbl_8035BE38:
/* 8035BE38  2C 03 00 02 */	cmpwi r3, 2
/* 8035BE3C  41 82 00 60 */	beq lbl_8035BE9C
/* 8035BE40  40 80 00 14 */	bge lbl_8035BE54
/* 8035BE44  2C 03 00 00 */	cmpwi r3, 0
/* 8035BE48  4D 82 00 20 */	beqlr 
/* 8035BE4C  40 80 00 14 */	bge lbl_8035BE60
/* 8035BE50  4E 80 00 20 */	blr 
lbl_8035BE54:
/* 8035BE54  2C 03 00 04 */	cmpwi r3, 4
/* 8035BE58  4C 80 00 20 */	bgelr 
/* 8035BE5C  48 00 00 58 */	b lbl_8035BEB4
lbl_8035BE60:
/* 8035BE60  80 A2 CB 80 */	lwz r5, __GXData(r2)
/* 8035BE64  38 00 00 01 */	li r0, 1
/* 8035BE68  B0 85 00 04 */	sth r4, 4(r5)
/* 8035BE6C  A0 65 00 04 */	lhz r3, 4(r5)
/* 8035BE70  7C 63 00 34 */	cntlzw r3, r3
/* 8035BE74  54 63 DC 3E */	rlwinm r3, r3, 0x1b, 0x10, 0x1f
/* 8035BE78  B0 65 00 00 */	sth r3, 0(r5)
/* 8035BE7C  B0 05 00 02 */	sth r0, 2(r5)
/* 8035BE80  A0 05 00 04 */	lhz r0, 4(r5)
/* 8035BE84  28 00 00 00 */	cmplwi r0, 0
/* 8035BE88  4D 82 00 20 */	beqlr 
/* 8035BE8C  80 05 05 AC */	lwz r0, 0x5ac(r5)
/* 8035BE90  60 00 00 08 */	ori r0, r0, 8
/* 8035BE94  90 05 05 AC */	stw r0, 0x5ac(r5)
/* 8035BE98  4E 80 00 20 */	blr 
lbl_8035BE9C:
/* 8035BE9C  7C 84 00 D0 */	neg r4, r4
/* 8035BEA0  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035BEA4  30 04 FF FF */	addic r0, r4, -1
/* 8035BEA8  7C 00 21 10 */	subfe r0, r0, r4
/* 8035BEAC  98 03 05 A9 */	stb r0, 0x5a9(r3)
/* 8035BEB0  4E 80 00 20 */	blr 
lbl_8035BEB4:
/* 8035BEB4  7C 84 00 D0 */	neg r4, r4
/* 8035BEB8  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035BEBC  30 04 FF FF */	addic r0, r4, -1
/* 8035BEC0  7C 00 21 10 */	subfe r0, r0, r4
/* 8035BEC4  98 03 05 AA */	stb r0, 0x5aa(r3)
/* 8035BEC8  4E 80 00 20 */	blr 
