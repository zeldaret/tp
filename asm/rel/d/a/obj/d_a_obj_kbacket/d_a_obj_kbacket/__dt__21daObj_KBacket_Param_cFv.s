lbl_80587D18:
/* 80587D18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80587D1C  7C 08 02 A6 */	mflr r0
/* 80587D20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80587D24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80587D28  7C 7F 1B 79 */	or. r31, r3, r3
/* 80587D2C  41 82 00 1C */	beq lbl_80587D48
/* 80587D30  3C A0 80 58 */	lis r5, __vt__21daObj_KBacket_Param_c@ha /* 0x80587FCC@ha */
/* 80587D34  38 05 7F CC */	addi r0, r5, __vt__21daObj_KBacket_Param_c@l /* 0x80587FCC@l */
/* 80587D38  90 1F 00 00 */	stw r0, 0(r31)
/* 80587D3C  7C 80 07 35 */	extsh. r0, r4
/* 80587D40  40 81 00 08 */	ble lbl_80587D48
/* 80587D44  4B D4 6F F9 */	bl __dl__FPv
lbl_80587D48:
/* 80587D48  7F E3 FB 78 */	mr r3, r31
/* 80587D4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80587D50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80587D54  7C 08 03 A6 */	mtlr r0
/* 80587D58  38 21 00 10 */	addi r1, r1, 0x10
/* 80587D5C  4E 80 00 20 */	blr 
