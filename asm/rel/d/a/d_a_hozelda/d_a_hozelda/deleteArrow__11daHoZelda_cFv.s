lbl_80848090:
/* 80848090  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80848094  7C 08 02 A6 */	mflr r0
/* 80848098  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084809C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808480A0  7C 7F 1B 78 */	mr r31, r3
/* 808480A4  80 63 06 C8 */	lwz r3, 0x6c8(r3)
/* 808480A8  28 03 00 00 */	cmplwi r3, 0
/* 808480AC  41 82 00 14 */	beq lbl_808480C0
/* 808480B0  38 00 00 01 */	li r0, 1
/* 808480B4  98 03 09 3F */	stb r0, 0x93f(r3)
/* 808480B8  38 7F 06 C4 */	addi r3, r31, 0x6c4
/* 808480BC  4B 91 6C 40 */	b clearData__16daPy_actorKeep_cFv
lbl_808480C0:
/* 808480C0  A0 1F 06 EA */	lhz r0, 0x6ea(r31)
/* 808480C4  28 00 00 0C */	cmplwi r0, 0xc
/* 808480C8  41 82 00 10 */	beq lbl_808480D8
/* 808480CC  7F E3 FB 78 */	mr r3, r31
/* 808480D0  38 80 00 0C */	li r4, 0xc
/* 808480D4  48 00 00 45 */	bl setBowBck__11daHoZelda_cFUs
lbl_808480D8:
/* 808480D8  A0 1F 06 E8 */	lhz r0, 0x6e8(r31)
/* 808480DC  28 00 00 09 */	cmplwi r0, 9
/* 808480E0  41 82 00 1C */	beq lbl_808480FC
/* 808480E4  28 00 00 0A */	cmplwi r0, 0xa
/* 808480E8  41 82 00 14 */	beq lbl_808480FC
/* 808480EC  28 00 00 08 */	cmplwi r0, 8
/* 808480F0  41 82 00 0C */	beq lbl_808480FC
/* 808480F4  28 00 00 1A */	cmplwi r0, 0x1a
/* 808480F8  40 82 00 0C */	bne lbl_80848104
lbl_808480FC:
/* 808480FC  7F E3 FB 78 */	mr r3, r31
/* 80848100  4B FF F1 35 */	bl resetUpperAnime__11daHoZelda_cFv
lbl_80848104:
/* 80848104  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80848108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8084810C  7C 08 03 A6 */	mtlr r0
/* 80848110  38 21 00 10 */	addi r1, r1, 0x10
/* 80848114  4E 80 00 20 */	blr 
