lbl_80A93EAC:
/* 80A93EAC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A93EB0  7C 08 02 A6 */	mflr r0
/* 80A93EB4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A93EB8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A93EBC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80A93EC0  7C 7F 1B 78 */	mr r31, r3
/* 80A93EC4  3C 80 80 A9 */	lis r4, lit_4773@ha /* 0x80A978D0@ha */
/* 80A93EC8  38 A4 78 D0 */	addi r5, r4, lit_4773@l /* 0x80A978D0@l */
/* 80A93ECC  80 85 00 00 */	lwz r4, 0(r5)
/* 80A93ED0  80 05 00 04 */	lwz r0, 4(r5)
/* 80A93ED4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80A93ED8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A93EDC  80 05 00 08 */	lwz r0, 8(r5)
/* 80A93EE0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A93EE4  38 81 00 14 */	addi r4, r1, 0x14
/* 80A93EE8  48 00 07 BD */	bl chkAction__18daNpc_Pachi_Besu_cFM18daNpc_Pachi_Besu_cFPCvPvPv_i
/* 80A93EEC  2C 03 00 00 */	cmpwi r3, 0
/* 80A93EF0  41 82 00 1C */	beq lbl_80A93F0C
/* 80A93EF4  7F E3 FB 78 */	mr r3, r31
/* 80A93EF8  38 80 00 00 */	li r4, 0
/* 80A93EFC  39 9F 0F BC */	addi r12, r31, 0xfbc
/* 80A93F00  4B 8C E1 85 */	bl __ptmf_scall
/* 80A93F04  60 00 00 00 */	nop 
/* 80A93F08  48 00 00 8C */	b lbl_80A93F94
lbl_80A93F0C:
/* 80A93F0C  38 00 00 00 */	li r0, 0
/* 80A93F10  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80A93F14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A93F18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A93F1C  3B C3 4E C8 */	addi r30, r3, 0x4ec8
/* 80A93F20  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80A93F24  28 04 00 01 */	cmplwi r4, 1
/* 80A93F28  41 82 00 0C */	beq lbl_80A93F34
/* 80A93F2C  28 04 00 02 */	cmplwi r4, 2
/* 80A93F30  40 82 00 08 */	bne lbl_80A93F38
lbl_80A93F34:
/* 80A93F34  38 00 00 01 */	li r0, 1
lbl_80A93F38:
/* 80A93F38  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A93F3C  41 82 00 2C */	beq lbl_80A93F68
/* 80A93F40  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A93F44  4B 5B 48 AD */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80A93F48  2C 03 00 00 */	cmpwi r3, 0
/* 80A93F4C  40 82 00 0C */	bne lbl_80A93F58
/* 80A93F50  38 60 00 01 */	li r3, 1
/* 80A93F54  48 00 00 44 */	b lbl_80A93F98
lbl_80A93F58:
/* 80A93F58  7F C3 F3 78 */	mr r3, r30
/* 80A93F5C  4B 5A E5 0D */	bl reset__14dEvt_control_cFv
/* 80A93F60  38 60 00 01 */	li r3, 1
/* 80A93F64  48 00 00 34 */	b lbl_80A93F98
lbl_80A93F68:
/* 80A93F68  3C 60 80 A9 */	lis r3, lit_4783@ha /* 0x80A978DC@ha */
/* 80A93F6C  38 83 78 DC */	addi r4, r3, lit_4783@l /* 0x80A978DC@l */
/* 80A93F70  80 64 00 00 */	lwz r3, 0(r4)
/* 80A93F74  80 04 00 04 */	lwz r0, 4(r4)
/* 80A93F78  90 61 00 08 */	stw r3, 8(r1)
/* 80A93F7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A93F80  80 04 00 08 */	lwz r0, 8(r4)
/* 80A93F84  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A93F88  7F E3 FB 78 */	mr r3, r31
/* 80A93F8C  38 81 00 08 */	addi r4, r1, 8
/* 80A93F90  48 00 07 41 */	bl setAction__18daNpc_Pachi_Besu_cFM18daNpc_Pachi_Besu_cFPCvPvPv_i
lbl_80A93F94:
/* 80A93F94  38 60 00 01 */	li r3, 1
lbl_80A93F98:
/* 80A93F98  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A93F9C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80A93FA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A93FA4  7C 08 03 A6 */	mtlr r0
/* 80A93FA8  38 21 00 30 */	addi r1, r1, 0x30
/* 80A93FAC  4E 80 00 20 */	blr 
