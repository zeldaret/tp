lbl_808525B0:
/* 808525B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808525B4  7C 08 02 A6 */	mflr r0
/* 808525B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 808525BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808525C0  7C 7F 1B 78 */	mr r31, r3
/* 808525C4  80 03 07 3C */	lwz r0, 0x73c(r3)
/* 808525C8  2C 00 00 00 */	cmpwi r0, 0
/* 808525CC  40 82 00 0C */	bne lbl_808525D8
/* 808525D0  4B FF EE 65 */	bl executeLandingLakeHairia__8daKago_cFv
/* 808525D4  48 00 00 28 */	b lbl_808525FC
lbl_808525D8:
/* 808525D8  2C 00 00 02 */	cmpwi r0, 2
/* 808525DC  40 82 00 0C */	bne lbl_808525E8
/* 808525E0  4B FF F8 0D */	bl executeLandingBoartHouse__8daKago_cFv
/* 808525E4  48 00 00 18 */	b lbl_808525FC
lbl_808525E8:
/* 808525E8  4B FF 85 E1 */	bl setRideOff__8daKago_cFv
/* 808525EC  7F E3 FB 78 */	mr r3, r31
/* 808525F0  38 80 00 04 */	li r4, 4
/* 808525F4  38 A0 00 00 */	li r5, 0
/* 808525F8  4B FF 84 A1 */	bl setActionMode__8daKago_cFii
lbl_808525FC:
/* 808525FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80852600  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80852604  7C 08 03 A6 */	mtlr r0
/* 80852608  38 21 00 10 */	addi r1, r1, 0x10
/* 8085260C  4E 80 00 20 */	blr 
