lbl_8029A0D0:
/* 8029A0D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029A0D4  7C 08 02 A6 */	mflr r0
/* 8029A0D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029A0DC  7C 64 1B 78 */	mr r4, r3
/* 8029A0E0  3C 60 80 3C */	lis r3, sCurrentDir__16JASWaveArcLoader@ha
/* 8029A0E4  38 63 77 E0 */	addi r3, r3, sCurrentDir__16JASWaveArcLoader@l
/* 8029A0E8  48 0C EA 45 */	bl strcpy
/* 8029A0EC  3C 60 80 3C */	lis r3, sCurrentDir__16JASWaveArcLoader@ha
/* 8029A0F0  38 63 77 E0 */	addi r3, r3, sCurrentDir__16JASWaveArcLoader@l
/* 8029A0F4  48 0C EA F1 */	bl strlen
/* 8029A0F8  3C 80 80 3C */	lis r4, sCurrentDir__16JASWaveArcLoader@ha
/* 8029A0FC  38 A4 77 E0 */	addi r5, r4, sCurrentDir__16JASWaveArcLoader@l
/* 8029A100  7C 85 1A 14 */	add r4, r5, r3
/* 8029A104  88 04 FF FF */	lbz r0, -1(r4)
/* 8029A108  2C 00 00 2F */	cmpwi r0, 0x2f
/* 8029A10C  41 82 00 14 */	beq lbl_8029A120
/* 8029A110  38 00 00 2F */	li r0, 0x2f
/* 8029A114  7C 05 19 AE */	stbx r0, r5, r3
/* 8029A118  38 00 00 00 */	li r0, 0
/* 8029A11C  98 04 00 01 */	stb r0, 1(r4)
lbl_8029A120:
/* 8029A120  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029A124  7C 08 03 A6 */	mtlr r0
/* 8029A128  38 21 00 10 */	addi r1, r1, 0x10
/* 8029A12C  4E 80 00 20 */	blr 
