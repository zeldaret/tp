lbl_805A76AC:
/* 805A76AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A76B0  7C 08 02 A6 */	mflr r0
/* 805A76B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A76B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A76BC  7C 7F 1B 78 */	mr r31, r3
/* 805A76C0  48 00 04 B9 */	bl checkStartDemo__13daTagStatue_cFv
/* 805A76C4  2C 03 00 00 */	cmpwi r3, 0
/* 805A76C8  41 82 00 38 */	beq lbl_805A7700
/* 805A76CC  38 00 00 01 */	li r0, 1
/* 805A76D0  98 1F 05 94 */	stb r0, 0x594(r31)
/* 805A76D4  7F E3 FB 78 */	mr r3, r31
/* 805A76D8  A8 9F 05 98 */	lha r4, 0x598(r31)
/* 805A76DC  88 BF 05 96 */	lbz r5, 0x596(r31)
/* 805A76E0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 805A76E4  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 805A76E8  38 E0 00 00 */	li r7, 0
/* 805A76EC  39 00 00 01 */	li r8, 1
/* 805A76F0  4B A7 3F 8C */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 805A76F4  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 805A76F8  60 00 00 02 */	ori r0, r0, 2
/* 805A76FC  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_805A7700:
/* 805A7700  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A7704  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A7708  7C 08 03 A6 */	mtlr r0
/* 805A770C  38 21 00 10 */	addi r1, r1, 0x10
/* 805A7710  4E 80 00 20 */	blr 
