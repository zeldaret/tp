lbl_802F12C0:
/* 802F12C0  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 802F12C4  41 82 00 30 */	beq lbl_802F12F4
/* 802F12C8  38 A0 00 01 */	li r5, 1
/* 802F12CC  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 802F12D0  7C A4 00 30 */	slw r4, r5, r0
/* 802F12D4  38 04 FF FF */	addi r0, r4, -1
/* 802F12D8  88 A3 01 B0 */	lbz r5, 0x1b0(r3)
/* 802F12DC  7C A4 00 38 */	and r4, r5, r0
/* 802F12E0  7C A0 00 78 */	andc r0, r5, r0
/* 802F12E4  54 00 08 3C */	slwi r0, r0, 1
/* 802F12E8  7C 80 03 78 */	or r0, r4, r0
/* 802F12EC  98 03 01 B0 */	stb r0, 0x1b0(r3)
/* 802F12F0  4E 80 00 20 */	blr 
lbl_802F12F4:
/* 802F12F4  54 87 06 3E */	clrlwi r7, r4, 0x18
/* 802F12F8  89 03 01 B0 */	lbz r8, 0x1b0(r3)
/* 802F12FC  38 C0 00 01 */	li r6, 1
/* 802F1300  7C C4 38 30 */	slw r4, r6, r7
/* 802F1304  38 04 FF FF */	addi r0, r4, -1
/* 802F1308  7D 05 00 38 */	and r5, r8, r0
/* 802F130C  38 07 00 01 */	addi r0, r7, 1
/* 802F1310  7C C4 00 30 */	slw r4, r6, r0
/* 802F1314  38 04 FF FF */	addi r0, r4, -1
/* 802F1318  7D 00 00 78 */	andc r0, r8, r0
/* 802F131C  7C 00 0E 70 */	srawi r0, r0, 1
/* 802F1320  7C A0 03 78 */	or r0, r5, r0
/* 802F1324  98 03 01 B0 */	stb r0, 0x1b0(r3)
/* 802F1328  4E 80 00 20 */	blr 
