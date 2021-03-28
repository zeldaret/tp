lbl_8045FFB0:
/* 8045FFB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045FFB4  7C 08 02 A6 */	mflr r0
/* 8045FFB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045FFBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045FFC0  7C 7F 1B 78 */	mr r31, r3
/* 8045FFC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8045FFC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8045FFCC  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8045FFD0  3C 80 80 46 */	lis r4, struct_804606C4+0x0@ha
/* 8045FFD4  38 84 06 C4 */	addi r4, r4, struct_804606C4+0x0@l
/* 8045FFD8  38 84 01 AA */	addi r4, r4, 0x1aa
/* 8045FFDC  38 A0 00 00 */	li r5, 0
/* 8045FFE0  38 C0 00 00 */	li r6, 0
/* 8045FFE4  4B BE 7B 38 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8045FFE8  90 7F 05 BC */	stw r3, 0x5bc(r31)
/* 8045FFEC  80 1F 05 BC */	lwz r0, 0x5bc(r31)
/* 8045FFF0  2C 00 FF FF */	cmpwi r0, -1
/* 8045FFF4  40 82 00 18 */	bne lbl_8046000C
/* 8045FFF8  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8045FFFC  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80460000  38 00 00 01 */	li r0, 1
/* 80460004  98 1F 06 0E */	stb r0, 0x60e(r31)
/* 80460008  48 00 00 0C */	b lbl_80460014
lbl_8046000C:
/* 8046000C  7F E3 FB 78 */	mr r3, r31
/* 80460010  4B FF F5 59 */	bl demoProc__10daKnob20_cFv
lbl_80460014:
/* 80460014  38 60 00 01 */	li r3, 1
/* 80460018  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046001C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80460020  7C 08 03 A6 */	mtlr r0
/* 80460024  38 21 00 10 */	addi r1, r1, 0x10
/* 80460028  4E 80 00 20 */	blr 
