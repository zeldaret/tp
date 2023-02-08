lbl_807C39C4:
/* 807C39C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807C39C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807C39CC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807C39D0  88 03 05 68 */	lbz r0, 0x568(r3)
/* 807C39D4  2C 00 00 37 */	cmpwi r0, 0x37
/* 807C39D8  40 80 00 18 */	bge lbl_807C39F0
/* 807C39DC  2C 00 00 2E */	cmpwi r0, 0x2e
/* 807C39E0  40 80 00 2C */	bge lbl_807C3A0C
/* 807C39E4  2C 00 00 2C */	cmpwi r0, 0x2c
/* 807C39E8  40 80 00 14 */	bge lbl_807C39FC
/* 807C39EC  48 00 00 28 */	b lbl_807C3A14
lbl_807C39F0:
/* 807C39F0  2C 00 00 39 */	cmpwi r0, 0x39
/* 807C39F4  41 82 00 10 */	beq lbl_807C3A04
/* 807C39F8  48 00 00 1C */	b lbl_807C3A14
lbl_807C39FC:
/* 807C39FC  38 60 00 01 */	li r3, 1
/* 807C3A00  4E 80 00 20 */	blr 
lbl_807C3A04:
/* 807C3A04  38 60 00 02 */	li r3, 2
/* 807C3A08  4E 80 00 20 */	blr 
lbl_807C3A0C:
/* 807C3A0C  38 60 00 03 */	li r3, 3
/* 807C3A10  4E 80 00 20 */	blr 
lbl_807C3A14:
/* 807C3A14  38 60 00 00 */	li r3, 0
/* 807C3A18  4E 80 00 20 */	blr 
