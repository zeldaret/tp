lbl_804E43A0:
/* 804E43A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E43A4  7C 08 02 A6 */	mflr r0
/* 804E43A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E43AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E43B0  7C 7F 1B 78 */	mr r31, r3
/* 804E43B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E43B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E43BC  38 63 09 58 */	addi r3, r3, 0x958
/* 804E43C0  38 80 00 02 */	li r4, 2
/* 804E43C4  4B B5 05 71 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 804E43C8  2C 03 00 00 */	cmpwi r3, 0
/* 804E43CC  40 82 00 0C */	bne lbl_804E43D8
/* 804E43D0  38 60 00 00 */	li r3, 0
/* 804E43D4  48 00 00 2C */	b lbl_804E4400
lbl_804E43D8:
/* 804E43D8  7F E3 FB 78 */	mr r3, r31
/* 804E43DC  4B FF FF 51 */	bl checkFront__11daBdoorL1_cFv
/* 804E43E0  2C 03 00 00 */	cmpwi r3, 0
/* 804E43E4  40 82 00 0C */	bne lbl_804E43F0
/* 804E43E8  38 60 00 00 */	li r3, 0
/* 804E43EC  48 00 00 14 */	b lbl_804E4400
lbl_804E43F0:
/* 804E43F0  7F E3 FB 78 */	mr r3, r31
/* 804E43F4  4B FF FD 65 */	bl checkArea__11daBdoorL1_cFv
/* 804E43F8  30 03 FF FF */	addic r0, r3, -1
/* 804E43FC  7C 60 19 10 */	subfe r3, r0, r3
lbl_804E4400:
/* 804E4400  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E4404  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E4408  7C 08 03 A6 */	mtlr r0
/* 804E440C  38 21 00 10 */	addi r1, r1, 0x10
/* 804E4410  4E 80 00 20 */	blr 
