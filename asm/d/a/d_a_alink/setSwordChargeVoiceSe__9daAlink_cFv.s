lbl_800D22BC:
/* 800D22BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D22C0  7C 08 02 A6 */	mflr r0
/* 800D22C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D22C8  A8 83 30 0C */	lha r4, 0x300c(r3)
/* 800D22CC  2C 04 00 00 */	cmpwi r4, 0
/* 800D22D0  41 82 00 24 */	beq lbl_800D22F4
/* 800D22D4  38 04 FF FF */	addi r0, r4, -1
/* 800D22D8  B0 03 30 0C */	sth r0, 0x300c(r3)
/* 800D22DC  A8 03 30 0C */	lha r0, 0x300c(r3)
/* 800D22E0  2C 00 00 00 */	cmpwi r0, 0
/* 800D22E4  40 82 00 10 */	bne lbl_800D22F4
/* 800D22E8  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010092@ha */
/* 800D22EC  38 84 00 92 */	addi r4, r4, 0x0092 /* 0x00010092@l */
/* 800D22F0  4B FF FF 95 */	bl setSwordVoiceSe__9daAlink_cFUl
lbl_800D22F4:
/* 800D22F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D22F8  7C 08 03 A6 */	mtlr r0
/* 800D22FC  38 21 00 10 */	addi r1, r1, 0x10
/* 800D2300  4E 80 00 20 */	blr 
