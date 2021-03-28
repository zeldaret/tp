lbl_80CC8998:
/* 80CC8998  80 A3 06 0C */	lwz r5, 0x60c(r3)
/* 80CC899C  38 80 00 00 */	li r4, 0
/* 80CC89A0  90 83 06 00 */	stw r4, 0x600(r3)
/* 80CC89A4  90 83 05 FC */	stw r4, 0x5fc(r3)
/* 80CC89A8  98 83 06 19 */	stb r4, 0x619(r3)
/* 80CC89AC  38 00 00 01 */	li r0, 1
/* 80CC89B0  98 03 06 1B */	stb r0, 0x61b(r3)
/* 80CC89B4  2C 05 00 03 */	cmpwi r5, 3
/* 80CC89B8  41 82 00 0C */	beq lbl_80CC89C4
/* 80CC89BC  2C 05 00 0A */	cmpwi r5, 0xa
/* 80CC89C0  40 82 00 2C */	bne lbl_80CC89EC
lbl_80CC89C4:
/* 80CC89C4  38 80 00 00 */	li r4, 0
/* 80CC89C8  98 83 06 16 */	stb r4, 0x616(r3)
/* 80CC89CC  38 00 00 01 */	li r0, 1
/* 80CC89D0  98 03 06 18 */	stb r0, 0x618(r3)
/* 80CC89D4  98 83 06 17 */	stb r4, 0x617(r3)
/* 80CC89D8  90 83 06 08 */	stw r4, 0x608(r3)
/* 80CC89DC  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 80CC89E0  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 80CC89E4  B0 03 06 12 */	sth r0, 0x612(r3)
/* 80CC89E8  4E 80 00 20 */	blr 
lbl_80CC89EC:
/* 80CC89EC  2C 05 00 01 */	cmpwi r5, 1
/* 80CC89F0  4C 82 00 20 */	bnelr 
/* 80CC89F4  88 03 06 1A */	lbz r0, 0x61a(r3)
/* 80CC89F8  28 00 00 00 */	cmplwi r0, 0
/* 80CC89FC  41 82 00 10 */	beq lbl_80CC8A0C
/* 80CC8A00  98 83 06 1B */	stb r4, 0x61b(r3)
/* 80CC8A04  98 83 06 16 */	stb r4, 0x616(r3)
/* 80CC8A08  48 00 00 0C */	b lbl_80CC8A14
lbl_80CC8A0C:
/* 80CC8A0C  38 00 00 03 */	li r0, 3
/* 80CC8A10  98 03 06 16 */	stb r0, 0x616(r3)
lbl_80CC8A14:
/* 80CC8A14  38 00 00 00 */	li r0, 0
/* 80CC8A18  98 03 06 17 */	stb r0, 0x617(r3)
/* 80CC8A1C  98 03 06 18 */	stb r0, 0x618(r3)
/* 80CC8A20  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 80CC8A24  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 80CC8A28  B0 03 06 14 */	sth r0, 0x614(r3)
/* 80CC8A2C  4E 80 00 20 */	blr 
