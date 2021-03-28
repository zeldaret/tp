lbl_80947CFC:
/* 80947CFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80947D00  7C 08 02 A6 */	mflr r0
/* 80947D04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80947D08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80947D0C  7C 7F 1B 78 */	mr r31, r3
/* 80947D10  A0 03 09 1E */	lhz r0, 0x91e(r3)
/* 80947D14  28 00 00 00 */	cmplwi r0, 0
/* 80947D18  41 82 00 1C */	beq lbl_80947D34
/* 80947D1C  3C 60 80 95 */	lis r3, daMyna_LightActor@ha
/* 80947D20  38 63 BA C0 */	addi r3, r3, daMyna_LightActor@l
/* 80947D24  80 63 00 00 */	lwz r3, 0(r3)
/* 80947D28  48 41 51 18 */	b setTurnOnOffChange__17daTag_MynaLight_cFv
/* 80947D2C  38 00 00 0D */	li r0, 0xd
/* 80947D30  98 1F 09 2C */	stb r0, 0x92c(r31)
lbl_80947D34:
/* 80947D34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80947D38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80947D3C  7C 08 03 A6 */	mtlr r0
/* 80947D40  38 21 00 10 */	addi r1, r1, 0x10
/* 80947D44  4E 80 00 20 */	blr 
