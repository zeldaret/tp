lbl_800D1978:
/* 800D1978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D197C  7C 08 02 A6 */	mflr r0
/* 800D1980  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D1984  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D1988  93 C1 00 08 */	stw r30, 8(r1)
/* 800D198C  7C 7E 1B 78 */	mr r30, r3
/* 800D1990  7C 9F 23 78 */	mr r31, r4
/* 800D1994  38 7F 00 58 */	addi r3, r31, 0x58
/* 800D1998  4B FB 1C F1 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 800D199C  7F C3 F3 78 */	mr r3, r30
/* 800D19A0  7F E4 FB 78 */	mr r4, r31
/* 800D19A4  4B FF FF 7D */	bl checkAtShieldHit__9daAlink_cFR12dCcD_GObjInf
/* 800D19A8  30 03 FF FF */	addic r0, r3, -1
/* 800D19AC  7C 60 19 10 */	subfe r3, r0, r3
/* 800D19B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D19B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800D19B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D19BC  7C 08 03 A6 */	mtlr r0
/* 800D19C0  38 21 00 10 */	addi r1, r1, 0x10
/* 800D19C4  4E 80 00 20 */	blr 
