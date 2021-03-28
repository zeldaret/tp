lbl_8048F310:
/* 8048F310  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F314  7C 08 02 A6 */	mflr r0
/* 8048F318  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F31C  7C 65 1B 78 */	mr r5, r3
/* 8048F320  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8048F324  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8048F328  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8048F32C  28 00 00 FF */	cmplwi r0, 0xff
/* 8048F330  41 82 00 2C */	beq lbl_8048F35C
/* 8048F334  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8048F338  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8048F33C  7C 84 02 14 */	add r4, r4, r0
/* 8048F340  88 05 04 BA */	lbz r0, 0x4ba(r5)
/* 8048F344  7C 05 07 74 */	extsb r5, r0
/* 8048F348  4B BA 60 18 */	b isSwitch__10dSv_info_cCFii
/* 8048F34C  2C 03 00 00 */	cmpwi r3, 0
/* 8048F350  41 82 00 0C */	beq lbl_8048F35C
/* 8048F354  38 60 00 01 */	li r3, 1
/* 8048F358  48 00 00 08 */	b lbl_8048F360
lbl_8048F35C:
/* 8048F35C  38 60 00 00 */	li r3, 0
lbl_8048F360:
/* 8048F360  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F364  7C 08 03 A6 */	mtlr r0
/* 8048F368  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F36C  4E 80 00 20 */	blr 
