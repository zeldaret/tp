lbl_801108B4:
/* 801108B4  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 801108B8  28 00 00 B7 */	cmplwi r0, 0xb7
/* 801108BC  40 82 00 28 */	bne lbl_801108E4
/* 801108C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801108C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801108C8  A0 03 00 08 */	lhz r0, 8(r3)
/* 801108CC  28 00 00 00 */	cmplwi r0, 0
/* 801108D0  40 82 00 0C */	bne lbl_801108DC
/* 801108D4  2C 04 00 00 */	cmpwi r4, 0
/* 801108D8  40 82 00 0C */	bne lbl_801108E4
lbl_801108DC:
/* 801108DC  38 60 00 01 */	li r3, 1
/* 801108E0  4E 80 00 20 */	blr 
lbl_801108E4:
/* 801108E4  38 60 00 00 */	li r3, 0
/* 801108E8  4E 80 00 20 */	blr 
