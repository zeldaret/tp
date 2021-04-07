lbl_80133EF0:
/* 80133EF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80133EF4  7C 08 02 A6 */	mflr r0
/* 80133EF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80133EFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80133F00  7C 7F 1B 78 */	mr r31, r3
/* 80133F04  80 03 19 9C */	lwz r0, 0x199c(r3)
/* 80133F08  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80133F0C  40 82 00 10 */	bne lbl_80133F1C
/* 80133F10  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 80133F14  28 00 01 18 */	cmplwi r0, 0x118
/* 80133F18  40 82 00 24 */	bne lbl_80133F3C
lbl_80133F1C:
/* 80133F1C  7F E3 FB 78 */	mr r3, r31
/* 80133F20  4B FF 5A 39 */	bl checkMidnaUseAbility__9daAlink_cCFv
/* 80133F24  2C 03 00 00 */	cmpwi r3, 0
/* 80133F28  40 82 00 14 */	bne lbl_80133F3C
/* 80133F2C  80 6D 8A 98 */	lwz r3, m_midnaActor__9daPy_py_c(r13)
/* 80133F30  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80133F34  28 00 00 01 */	cmplwi r0, 1
/* 80133F38  40 82 00 0C */	bne lbl_80133F44
lbl_80133F3C:
/* 80133F3C  38 60 00 00 */	li r3, 0
/* 80133F40  48 00 00 AC */	b lbl_80133FEC
lbl_80133F44:
/* 80133F44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80133F48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80133F4C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80133F50  4B EE 7B C5 */	bl fopAcM_getTalkEventPartner__FPC10fopAc_ac_c
/* 80133F54  38 A0 00 00 */	li r5, 0
/* 80133F58  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 80133F5C  54 00 03 9D */	rlwinm. r0, r0, 0, 0xe, 0xe
/* 80133F60  41 82 00 0C */	beq lbl_80133F6C
/* 80133F64  38 7F 37 38 */	addi r3, r31, 0x3738
/* 80133F68  48 00 00 84 */	b lbl_80133FEC
lbl_80133F6C:
/* 80133F6C  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 80133F70  28 00 01 18 */	cmplwi r0, 0x118
/* 80133F74  40 82 00 18 */	bne lbl_80133F8C
/* 80133F78  80 1F 28 10 */	lwz r0, 0x2810(r31)
/* 80133F7C  28 00 00 00 */	cmplwi r0, 0
/* 80133F80  41 82 00 0C */	beq lbl_80133F8C
/* 80133F84  7C 05 03 78 */	mr r5, r0
/* 80133F88  48 00 00 3C */	b lbl_80133FC4
lbl_80133F8C:
/* 80133F8C  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 80133F90  28 04 00 00 */	cmplwi r4, 0
/* 80133F94  41 82 00 18 */	beq lbl_80133FAC
/* 80133F98  A8 04 00 08 */	lha r0, 8(r4)
/* 80133F9C  2C 00 02 C7 */	cmpwi r0, 0x2c7
/* 80133FA0  40 82 00 0C */	bne lbl_80133FAC
/* 80133FA4  7C 85 23 78 */	mr r5, r4
/* 80133FA8  48 00 00 1C */	b lbl_80133FC4
lbl_80133FAC:
/* 80133FAC  28 03 00 00 */	cmplwi r3, 0
/* 80133FB0  41 82 00 14 */	beq lbl_80133FC4
/* 80133FB4  A8 03 00 08 */	lha r0, 8(r3)
/* 80133FB8  2C 00 02 C7 */	cmpwi r0, 0x2c7
/* 80133FBC  40 82 00 08 */	bne lbl_80133FC4
/* 80133FC0  7C 65 1B 78 */	mr r5, r3
lbl_80133FC4:
/* 80133FC4  28 05 00 00 */	cmplwi r5, 0
/* 80133FC8  41 82 00 20 */	beq lbl_80133FE8
/* 80133FCC  88 05 05 68 */	lbz r0, 0x568(r5)
/* 80133FD0  7C 00 07 75 */	extsb. r0, r0
/* 80133FD4  40 80 00 0C */	bge lbl_80133FE0
/* 80133FD8  38 60 00 00 */	li r3, 0
/* 80133FDC  48 00 00 10 */	b lbl_80133FEC
lbl_80133FE0:
/* 80133FE0  38 65 05 38 */	addi r3, r5, 0x538
/* 80133FE4  48 00 00 08 */	b lbl_80133FEC
lbl_80133FE8:
/* 80133FE8  38 60 00 00 */	li r3, 0
lbl_80133FEC:
/* 80133FEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80133FF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80133FF4  7C 08 03 A6 */	mtlr r0
/* 80133FF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80133FFC  4E 80 00 20 */	blr 
