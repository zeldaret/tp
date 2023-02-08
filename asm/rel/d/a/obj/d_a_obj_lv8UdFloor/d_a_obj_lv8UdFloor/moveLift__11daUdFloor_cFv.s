lbl_80C8C12C:
/* 80C8C12C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C8C130  7C 08 02 A6 */	mflr r0
/* 80C8C134  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C8C138  39 61 00 20 */	addi r11, r1, 0x20
/* 80C8C13C  4B 6D 60 A1 */	bl _savegpr_29
/* 80C8C140  7C 7E 1B 78 */	mr r30, r3
/* 80C8C144  3C 60 80 C9 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80C8CC44@ha */
/* 80C8C148  3B E3 CC 44 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80C8CC44@l */
/* 80C8C14C  3C 60 80 C9 */	lis r3, data_80C8CDA4@ha /* 0x80C8CDA4@ha */
/* 80C8C150  38 A3 CD A4 */	addi r5, r3, data_80C8CDA4@l /* 0x80C8CDA4@l */
/* 80C8C154  88 05 00 00 */	lbz r0, 0(r5)
/* 80C8C158  7C 00 07 75 */	extsb. r0, r0
/* 80C8C15C  40 82 00 88 */	bne lbl_80C8C1E4
/* 80C8C160  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80C8C164  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 80C8C168  90 7F 00 64 */	stw r3, 0x64(r31)
/* 80C8C16C  90 1F 00 68 */	stw r0, 0x68(r31)
/* 80C8C170  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80C8C174  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 80C8C178  38 9F 00 64 */	addi r4, r31, 0x64
/* 80C8C17C  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80C8C180  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 80C8C184  90 64 00 0C */	stw r3, 0xc(r4)
/* 80C8C188  90 04 00 10 */	stw r0, 0x10(r4)
/* 80C8C18C  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80C8C190  90 04 00 14 */	stw r0, 0x14(r4)
/* 80C8C194  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 80C8C198  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 80C8C19C  90 64 00 18 */	stw r3, 0x18(r4)
/* 80C8C1A0  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80C8C1A4  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 80C8C1A8  90 04 00 20 */	stw r0, 0x20(r4)
/* 80C8C1AC  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 80C8C1B0  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 80C8C1B4  90 64 00 24 */	stw r3, 0x24(r4)
/* 80C8C1B8  90 04 00 28 */	stw r0, 0x28(r4)
/* 80C8C1BC  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 80C8C1C0  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80C8C1C4  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 80C8C1C8  80 1F 00 5C */	lwz r0, 0x5c(r31)
/* 80C8C1CC  90 64 00 30 */	stw r3, 0x30(r4)
/* 80C8C1D0  90 04 00 34 */	stw r0, 0x34(r4)
/* 80C8C1D4  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 80C8C1D8  90 04 00 38 */	stw r0, 0x38(r4)
/* 80C8C1DC  38 00 00 01 */	li r0, 1
/* 80C8C1E0  98 05 00 00 */	stb r0, 0(r5)
lbl_80C8C1E4:
/* 80C8C1E4  8B BE 05 BC */	lbz r29, 0x5bc(r30)
/* 80C8C1E8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C8C1EC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C8C1F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C8C1F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8C1F8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C8C1FC  7C 05 07 74 */	extsb r5, r0
/* 80C8C200  4B 3A 91 61 */	bl isSwitch__10dSv_info_cCFii
/* 80C8C204  98 7E 05 BC */	stb r3, 0x5bc(r30)
/* 80C8C208  88 1E 05 BC */	lbz r0, 0x5bc(r30)
/* 80C8C20C  7C 1D 00 40 */	cmplw r29, r0
/* 80C8C210  41 82 00 20 */	beq lbl_80C8C230
/* 80C8C214  28 00 00 00 */	cmplwi r0, 0
/* 80C8C218  41 82 00 10 */	beq lbl_80C8C228
/* 80C8C21C  7F C3 F3 78 */	mr r3, r30
/* 80C8C220  48 00 00 55 */	bl init_modeUpMoveInit__11daUdFloor_cFv
/* 80C8C224  48 00 00 0C */	b lbl_80C8C230
lbl_80C8C228:
/* 80C8C228  7F C3 F3 78 */	mr r3, r30
/* 80C8C22C  48 00 05 CD */	bl init_modeDownMoveInit__11daUdFloor_cFv
lbl_80C8C230:
/* 80C8C230  7F C3 F3 78 */	mr r3, r30
/* 80C8C234  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 80C8C238  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C8C23C  39 9F 00 64 */	addi r12, r31, 0x64
/* 80C8C240  7D 8C 02 14 */	add r12, r12, r0
/* 80C8C244  4B 6D 5E 41 */	bl __ptmf_scall
/* 80C8C248  60 00 00 00 */	nop 
/* 80C8C24C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C8C250  4B 6D 5F D9 */	bl _restgpr_29
/* 80C8C254  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C8C258  7C 08 03 A6 */	mtlr r0
/* 80C8C25C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C8C260  4E 80 00 20 */	blr 
