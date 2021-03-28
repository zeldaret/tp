lbl_80D20D48:
/* 80D20D48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D20D4C  7C 08 02 A6 */	mflr r0
/* 80D20D50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D20D54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D20D58  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D20D5C  41 82 00 1C */	beq lbl_80D20D78
/* 80D20D60  3C A0 80 D2 */	lis r5, __vt__8cM3dGSph@ha
/* 80D20D64  38 05 0E BC */	addi r0, r5, __vt__8cM3dGSph@l
/* 80D20D68  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80D20D6C  7C 80 07 35 */	extsh. r0, r4
/* 80D20D70  40 81 00 08 */	ble lbl_80D20D78
/* 80D20D74  4B 5A DF C8 */	b __dl__FPv
lbl_80D20D78:
/* 80D20D78  7F E3 FB 78 */	mr r3, r31
/* 80D20D7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D20D80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D20D84  7C 08 03 A6 */	mtlr r0
/* 80D20D88  38 21 00 10 */	addi r1, r1, 0x10
/* 80D20D8C  4E 80 00 20 */	blr 
