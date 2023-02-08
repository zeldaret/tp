lbl_80A13D40:
/* 80A13D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A13D44  7C 08 02 A6 */	mflr r0
/* 80A13D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A13D4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A13D50  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A13D54  41 82 00 1C */	beq lbl_80A13D70
/* 80A13D58  3C A0 80 A1 */	lis r5, __vt__16daNpcIns_Param_c@ha /* 0x80A145E4@ha */
/* 80A13D5C  38 05 45 E4 */	addi r0, r5, __vt__16daNpcIns_Param_c@l /* 0x80A145E4@l */
/* 80A13D60  90 1F 00 00 */	stw r0, 0(r31)
/* 80A13D64  7C 80 07 35 */	extsh. r0, r4
/* 80A13D68  40 81 00 08 */	ble lbl_80A13D70
/* 80A13D6C  4B 8B AF D1 */	bl __dl__FPv
lbl_80A13D70:
/* 80A13D70  7F E3 FB 78 */	mr r3, r31
/* 80A13D74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A13D78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A13D7C  7C 08 03 A6 */	mtlr r0
/* 80A13D80  38 21 00 10 */	addi r1, r1, 0x10
/* 80A13D84  4E 80 00 20 */	blr 
