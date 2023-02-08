lbl_8059E3A0:
/* 8059E3A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059E3A4  7C 08 02 A6 */	mflr r0
/* 8059E3A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059E3AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059E3B0  7C 7F 1B 78 */	mr r31, r3
/* 8059E3B4  48 00 03 19 */	bl checkArea__10daScExit_cFv
/* 8059E3B8  2C 03 00 00 */	cmpwi r3, 0
/* 8059E3BC  41 82 00 38 */	beq lbl_8059E3F4
/* 8059E3C0  38 00 00 01 */	li r0, 1
/* 8059E3C4  98 1F 05 7B */	stb r0, 0x57b(r31)
/* 8059E3C8  7F E3 FB 78 */	mr r3, r31
/* 8059E3CC  A8 9F 05 78 */	lha r4, 0x578(r31)
/* 8059E3D0  88 BF 05 7A */	lbz r5, 0x57a(r31)
/* 8059E3D4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8059E3D8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8059E3DC  38 E0 00 00 */	li r7, 0
/* 8059E3E0  39 00 00 01 */	li r8, 1
/* 8059E3E4  4B A7 D2 99 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 8059E3E8  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8059E3EC  60 00 00 02 */	ori r0, r0, 2
/* 8059E3F0  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_8059E3F4:
/* 8059E3F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059E3F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059E3FC  7C 08 03 A6 */	mtlr r0
/* 8059E400  38 21 00 10 */	addi r1, r1, 0x10
/* 8059E404  4E 80 00 20 */	blr 
