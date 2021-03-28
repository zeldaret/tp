lbl_80B31EB0:
/* 80B31EB0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B31EB4  7C 08 02 A6 */	mflr r0
/* 80B31EB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B31EBC  39 61 00 30 */	addi r11, r1, 0x30
/* 80B31EC0  4B 83 03 18 */	b _savegpr_28
/* 80B31EC4  7C 7F 1B 78 */	mr r31, r3
/* 80B31EC8  3C 60 80 B4 */	lis r3, cNullVec__6Z2Calc@ha
/* 80B31ECC  3B A3 1D F8 */	addi r29, r3, cNullVec__6Z2Calc@l
/* 80B31ED0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B31ED4  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80B31ED8  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80B31EDC  A0 1F 0E 96 */	lhz r0, 0xe96(r31)
/* 80B31EE0  2C 00 00 02 */	cmpwi r0, 2
/* 80B31EE4  41 82 00 2C */	beq lbl_80B31F10
/* 80B31EE8  40 80 00 10 */	bge lbl_80B31EF8
/* 80B31EEC  2C 00 00 00 */	cmpwi r0, 0
/* 80B31EF0  41 82 00 14 */	beq lbl_80B31F04
/* 80B31EF4  48 00 01 48 */	b lbl_80B3203C
lbl_80B31EF8:
/* 80B31EF8  2C 00 00 04 */	cmpwi r0, 4
/* 80B31EFC  40 80 01 40 */	bge lbl_80B3203C
/* 80B31F00  48 00 01 30 */	b lbl_80B32030
lbl_80B31F04:
/* 80B31F04  38 00 00 02 */	li r0, 2
/* 80B31F08  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B31F0C  48 00 01 30 */	b lbl_80B3203C
lbl_80B31F10:
/* 80B31F10  7F 83 E3 78 */	mr r3, r28
/* 80B31F14  80 9D 08 28 */	lwz r4, 0x828(r29)
/* 80B31F18  38 A0 00 00 */	li r5, 0
/* 80B31F1C  38 C0 00 00 */	li r6, 0
/* 80B31F20  4B 51 5B FC */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B31F24  7C 64 1B 78 */	mr r4, r3
/* 80B31F28  90 9F 09 2C */	stw r4, 0x92c(r31)
/* 80B31F2C  2C 03 FF FF */	cmpwi r3, -1
/* 80B31F30  41 82 00 34 */	beq lbl_80B31F64
/* 80B31F34  7F E3 FB 78 */	mr r3, r31
/* 80B31F38  A0 1F 09 E6 */	lhz r0, 0x9e6(r31)
/* 80B31F3C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80B31F40  39 9D 08 74 */	addi r12, r29, 0x874
/* 80B31F44  7D 8C 02 14 */	add r12, r12, r0
/* 80B31F48  4B 83 01 3C */	b __ptmf_scall
/* 80B31F4C  60 00 00 00 */	nop 
/* 80B31F50  2C 03 00 00 */	cmpwi r3, 0
/* 80B31F54  41 82 00 10 */	beq lbl_80B31F64
/* 80B31F58  7F 83 E3 78 */	mr r3, r28
/* 80B31F5C  80 9F 09 2C */	lwz r4, 0x92c(r31)
/* 80B31F60  4B 51 62 1C */	b cutEnd__16dEvent_manager_cFi
lbl_80B31F64:
/* 80B31F64  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80B31F68  28 00 00 02 */	cmplwi r0, 2
/* 80B31F6C  40 82 00 D0 */	bne lbl_80B3203C
/* 80B31F70  A8 9F 09 D4 */	lha r4, 0x9d4(r31)
/* 80B31F74  2C 04 FF FF */	cmpwi r4, -1
/* 80B31F78  41 82 00 C4 */	beq lbl_80B3203C
/* 80B31F7C  7F 83 E3 78 */	mr r3, r28
/* 80B31F80  4B 51 5A F8 */	b endCheck__16dEvent_manager_cFs
/* 80B31F84  2C 03 00 00 */	cmpwi r3, 0
/* 80B31F88  41 82 00 B4 */	beq lbl_80B3203C
/* 80B31F8C  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80B31F90  4B 51 04 D8 */	b reset__14dEvt_control_cFv
/* 80B31F94  38 00 00 00 */	li r0, 0
/* 80B31F98  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 80B31F9C  38 00 FF FF */	li r0, -1
/* 80B31FA0  B0 1F 09 D4 */	sth r0, 0x9d4(r31)
/* 80B31FA4  80 7D 0A E4 */	lwz r3, 0xae4(r29)
/* 80B31FA8  80 1D 0A E8 */	lwz r0, 0xae8(r29)
/* 80B31FAC  90 61 00 08 */	stw r3, 8(r1)
/* 80B31FB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B31FB4  80 1D 0A EC */	lwz r0, 0xaec(r29)
/* 80B31FB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B31FBC  38 00 00 03 */	li r0, 3
/* 80B31FC0  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B31FC4  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B31FC8  4B 83 00 50 */	b __ptmf_test
/* 80B31FCC  2C 03 00 00 */	cmpwi r3, 0
/* 80B31FD0  41 82 00 18 */	beq lbl_80B31FE8
/* 80B31FD4  7F E3 FB 78 */	mr r3, r31
/* 80B31FD8  38 80 00 00 */	li r4, 0
/* 80B31FDC  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B31FE0  4B 83 00 A4 */	b __ptmf_scall
/* 80B31FE4  60 00 00 00 */	nop 
lbl_80B31FE8:
/* 80B31FE8  38 00 00 00 */	li r0, 0
/* 80B31FEC  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B31FF0  80 61 00 08 */	lwz r3, 8(r1)
/* 80B31FF4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B31FF8  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B31FFC  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B32000  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80B32004  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B32008  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B3200C  4B 83 00 0C */	b __ptmf_test
/* 80B32010  2C 03 00 00 */	cmpwi r3, 0
/* 80B32014  41 82 00 28 */	beq lbl_80B3203C
/* 80B32018  7F E3 FB 78 */	mr r3, r31
/* 80B3201C  38 80 00 00 */	li r4, 0
/* 80B32020  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B32024  4B 83 00 60 */	b __ptmf_scall
/* 80B32028  60 00 00 00 */	nop 
/* 80B3202C  48 00 00 10 */	b lbl_80B3203C
lbl_80B32030:
/* 80B32030  3C 60 80 B4 */	lis r3, lit_5759@ha
/* 80B32034  C0 03 1C 7C */	lfs f0, lit_5759@l(r3)
/* 80B32038  D0 1F 0E 8C */	stfs f0, 0xe8c(r31)
lbl_80B3203C:
/* 80B3203C  38 60 00 01 */	li r3, 1
/* 80B32040  39 61 00 30 */	addi r11, r1, 0x30
/* 80B32044  4B 83 01 E0 */	b _restgpr_28
/* 80B32048  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B3204C  7C 08 03 A6 */	mtlr r0
/* 80B32050  38 21 00 30 */	addi r1, r1, 0x30
/* 80B32054  4E 80 00 20 */	blr 
