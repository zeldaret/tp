lbl_80945D9C:
/* 80945D9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80945DA0  7C 08 02 A6 */	mflr r0
/* 80945DA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80945DA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80945DAC  93 C1 00 08 */	stw r30, 8(r1)
/* 80945DB0  7C 7E 1B 78 */	mr r30, r3
/* 80945DB4  7C 9F 23 78 */	mr r31, r4
/* 80945DB8  4B 6D 2F 29 */	bl fopAc_IsActor__FPv
/* 80945DBC  2C 03 00 00 */	cmpwi r3, 0
/* 80945DC0  41 82 00 30 */	beq lbl_80945DF0
/* 80945DC4  A8 1E 00 08 */	lha r0, 8(r30)
/* 80945DC8  2C 00 01 25 */	cmpwi r0, 0x125
/* 80945DCC  40 82 00 24 */	bne lbl_80945DF0
/* 80945DD0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80945DD4  54 03 00 06 */	rlwinm r3, r0, 0, 0, 3
/* 80945DD8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80945DDC  54 00 00 06 */	rlwinm r0, r0, 0, 0, 3
/* 80945DE0  7C 03 00 40 */	cmplw r3, r0
/* 80945DE4  40 82 00 0C */	bne lbl_80945DF0
/* 80945DE8  3C 60 80 95 */	lis r3, daMyna_LightActor@ha /* 0x8094BAC0@ha */
/* 80945DEC  93 C3 BA C0 */	stw r30, daMyna_LightActor@l(r3)  /* 0x8094BAC0@l */
lbl_80945DF0:
/* 80945DF0  38 60 00 00 */	li r3, 0
/* 80945DF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80945DF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80945DFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80945E00  7C 08 03 A6 */	mtlr r0
/* 80945E04  38 21 00 10 */	addi r1, r1, 0x10
/* 80945E08  4E 80 00 20 */	blr 
