lbl_80487ED4:
/* 80487ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80487ED8  7C 08 02 A6 */	mflr r0
/* 80487EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80487EE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80487EE4  93 C1 00 08 */	stw r30, 8(r1)
/* 80487EE8  7C 7E 1B 78 */	mr r30, r3
/* 80487EEC  3B E0 00 00 */	li r31, 0
/* 80487EF0  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80487EF4  54 04 A5 3E */	rlwinm r4, r0, 0x14, 0x14, 0x1f
/* 80487EF8  28 04 0F FF */	cmplwi r4, 0xfff
/* 80487EFC  38 60 FF FF */	li r3, -1
/* 80487F00  41 82 00 08 */	beq lbl_80487F08
/* 80487F04  7C 83 23 78 */	mr r3, r4
lbl_80487F08:
/* 80487F08  3C 03 00 01 */	addis r0, r3, 1
/* 80487F0C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80487F10  41 82 00 24 */	beq lbl_80487F34
/* 80487F14  28 04 0F FF */	cmplwi r4, 0xfff
/* 80487F18  38 60 FF FF */	li r3, -1
/* 80487F1C  41 82 00 08 */	beq lbl_80487F24
/* 80487F20  7C 83 23 78 */	mr r3, r4
lbl_80487F24:
/* 80487F24  4B CC D7 11 */	bl daNpcF_chkEvtBit__FUl
/* 80487F28  2C 03 00 00 */	cmpwi r3, 0
/* 80487F2C  41 82 00 08 */	beq lbl_80487F34
/* 80487F30  3B E0 00 01 */	li r31, 1
lbl_80487F34:
/* 80487F34  A8 1E 04 B4 */	lha r0, 0x4b4(r30)
/* 80487F38  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80487F3C  28 04 00 FF */	cmplwi r4, 0xff
/* 80487F40  41 82 00 24 */	beq lbl_80487F64
/* 80487F44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80487F48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80487F4C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80487F50  7C 05 07 74 */	extsb r5, r0
/* 80487F54  4B BA D4 0D */	bl isSwitch__10dSv_info_cCFii
/* 80487F58  2C 03 00 00 */	cmpwi r3, 0
/* 80487F5C  41 82 00 08 */	beq lbl_80487F64
/* 80487F60  3B E0 00 01 */	li r31, 1
lbl_80487F64:
/* 80487F64  7F E3 FB 78 */	mr r3, r31
/* 80487F68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80487F6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80487F70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80487F74  7C 08 03 A6 */	mtlr r0
/* 80487F78  38 21 00 10 */	addi r1, r1, 0x10
/* 80487F7C  4E 80 00 20 */	blr 
