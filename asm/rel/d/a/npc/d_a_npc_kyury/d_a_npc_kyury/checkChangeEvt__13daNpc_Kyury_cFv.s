lbl_80A60EB0:
/* 80A60EB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A60EB4  7C 08 02 A6 */	mflr r0
/* 80A60EB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A60EBC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A60EC0  7C 7F 1B 78 */	mr r31, r3
/* 80A60EC4  3C 80 80 A6 */	lis r4, lit_4537@ha
/* 80A60EC8  38 A4 40 20 */	addi r5, r4, lit_4537@l
/* 80A60ECC  80 85 00 00 */	lwz r4, 0(r5)
/* 80A60ED0  80 05 00 04 */	lwz r0, 4(r5)
/* 80A60ED4  90 81 00 08 */	stw r4, 8(r1)
/* 80A60ED8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A60EDC  80 05 00 08 */	lwz r0, 8(r5)
/* 80A60EE0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A60EE4  38 81 00 08 */	addi r4, r1, 8
/* 80A60EE8  48 00 0B 19 */	bl chkAction__13daNpc_Kyury_cFM13daNpc_Kyury_cFPCvPvPv_i
/* 80A60EEC  2C 03 00 00 */	cmpwi r3, 0
/* 80A60EF0  40 82 00 A8 */	bne lbl_80A60F98
/* 80A60EF4  38 00 00 00 */	li r0, 0
/* 80A60EF8  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80A60EFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A60F00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A60F04  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80A60F08  28 04 00 01 */	cmplwi r4, 1
/* 80A60F0C  41 82 00 0C */	beq lbl_80A60F18
/* 80A60F10  28 04 00 02 */	cmplwi r4, 2
/* 80A60F14  40 82 00 08 */	bne lbl_80A60F1C
lbl_80A60F18:
/* 80A60F18  38 00 00 01 */	li r0, 1
lbl_80A60F1C:
/* 80A60F1C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A60F20  41 82 00 2C */	beq lbl_80A60F4C
/* 80A60F24  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A60F28  4B 5E 78 C8 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80A60F2C  2C 03 00 00 */	cmpwi r3, 0
/* 80A60F30  41 82 00 14 */	beq lbl_80A60F44
/* 80A60F34  38 00 00 01 */	li r0, 1
/* 80A60F38  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A60F3C  7F E3 FB 78 */	mr r3, r31
/* 80A60F40  4B 6E 92 E4 */	b evtChange__8daNpcT_cFv
lbl_80A60F44:
/* 80A60F44  38 60 00 01 */	li r3, 1
/* 80A60F48  48 00 00 54 */	b lbl_80A60F9C
lbl_80A60F4C:
/* 80A60F4C  88 1F 0F 88 */	lbz r0, 0xf88(r31)
/* 80A60F50  2C 00 00 00 */	cmpwi r0, 0
/* 80A60F54  41 82 00 0C */	beq lbl_80A60F60
/* 80A60F58  41 80 00 40 */	blt lbl_80A60F98
/* 80A60F5C  48 00 00 3C */	b lbl_80A60F98
lbl_80A60F60:
/* 80A60F60  38 60 00 2D */	li r3, 0x2d
/* 80A60F64  4B 6E BB 48 */	b daNpcT_chkEvtBit__FUl
/* 80A60F68  2C 03 00 00 */	cmpwi r3, 0
/* 80A60F6C  40 82 00 2C */	bne lbl_80A60F98
/* 80A60F70  38 60 00 1A */	li r3, 0x1a
/* 80A60F74  4B 6E BB 38 */	b daNpcT_chkEvtBit__FUl
/* 80A60F78  2C 03 00 00 */	cmpwi r3, 0
/* 80A60F7C  40 82 00 1C */	bne lbl_80A60F98
/* 80A60F80  38 00 00 02 */	li r0, 2
/* 80A60F84  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A60F88  7F E3 FB 78 */	mr r3, r31
/* 80A60F8C  4B 6E 92 98 */	b evtChange__8daNpcT_cFv
/* 80A60F90  38 60 00 01 */	li r3, 1
/* 80A60F94  48 00 00 08 */	b lbl_80A60F9C
lbl_80A60F98:
/* 80A60F98  38 60 00 00 */	li r3, 0
lbl_80A60F9C:
/* 80A60F9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A60FA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A60FA4  7C 08 03 A6 */	mtlr r0
/* 80A60FA8  38 21 00 20 */	addi r1, r1, 0x20
/* 80A60FAC  4E 80 00 20 */	blr 
