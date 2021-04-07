lbl_80D18D60:
/* 80D18D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D18D64  7C 08 02 A6 */	mflr r0
/* 80D18D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D18D6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D18D70  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D18D74  41 82 00 1C */	beq lbl_80D18D90
/* 80D18D78  3C A0 80 D2 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80D19024@ha */
/* 80D18D7C  38 05 90 24 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80D19024@l */
/* 80D18D80  90 1F 00 00 */	stw r0, 0(r31)
/* 80D18D84  7C 80 07 35 */	extsh. r0, r4
/* 80D18D88  40 81 00 08 */	ble lbl_80D18D90
/* 80D18D8C  4B 5B 5F B1 */	bl __dl__FPv
lbl_80D18D90:
/* 80D18D90  7F E3 FB 78 */	mr r3, r31
/* 80D18D94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D18D98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D18D9C  7C 08 03 A6 */	mtlr r0
/* 80D18DA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D18DA4  4E 80 00 20 */	blr 
