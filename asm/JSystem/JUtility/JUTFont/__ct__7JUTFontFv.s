lbl_802DECF8:
/* 802DECF8  3C 80 80 3A */	lis r4, __vt__7JUTFont@ha
/* 802DECFC  38 04 31 F0 */	addi r0, r4, __vt__7JUTFont@l
/* 802DED00  90 03 00 00 */	stw r0, 0(r3)
/* 802DED04  38 00 FF FF */	li r0, -1
/* 802DED08  90 03 00 0C */	stw r0, 0xc(r3)
/* 802DED0C  90 03 00 10 */	stw r0, 0x10(r3)
/* 802DED10  90 03 00 14 */	stw r0, 0x14(r3)
/* 802DED14  90 03 00 18 */	stw r0, 0x18(r3)
/* 802DED18  38 00 00 00 */	li r0, 0
/* 802DED1C  98 03 00 04 */	stb r0, 4(r3)
/* 802DED20  4E 80 00 20 */	blr 
