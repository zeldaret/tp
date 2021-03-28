lbl_80BA76D4:
/* 80BA76D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA76D8  7C 08 02 A6 */	mflr r0
/* 80BA76DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA76E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA76E4  7C 7F 1B 78 */	mr r31, r3
/* 80BA76E8  4B FF FD 59 */	bl checkCollapse__16daObjAvalanche_cFv
/* 80BA76EC  2C 03 00 00 */	cmpwi r3, 0
/* 80BA76F0  41 82 00 38 */	beq lbl_80BA7728
/* 80BA76F4  38 00 00 01 */	li r0, 1
/* 80BA76F8  98 1F 05 E8 */	stb r0, 0x5e8(r31)
/* 80BA76FC  7F E3 FB 78 */	mr r3, r31
/* 80BA7700  A8 9F 05 F0 */	lha r4, 0x5f0(r31)
/* 80BA7704  88 BF 05 E9 */	lbz r5, 0x5e9(r31)
/* 80BA7708  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80BA770C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80BA7710  38 E0 00 00 */	li r7, 0
/* 80BA7714  39 00 00 01 */	li r8, 1
/* 80BA7718  4B 47 3F 64 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80BA771C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80BA7720  60 00 00 02 */	ori r0, r0, 2
/* 80BA7724  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80BA7728:
/* 80BA7728  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA772C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA7730  7C 08 03 A6 */	mtlr r0
/* 80BA7734  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA7738  4E 80 00 20 */	blr 
