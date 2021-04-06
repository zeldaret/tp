lbl_80C62134:
/* 80C62134  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C62138  7C 08 02 A6 */	mflr r0
/* 80C6213C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C62140  39 61 00 20 */	addi r11, r1, 0x20
/* 80C62144  4B 70 00 99 */	bl _savegpr_29
/* 80C62148  7C 7E 1B 78 */	mr r30, r3
/* 80C6214C  3C 60 80 C6 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80C626D0@ha */
/* 80C62150  3B E3 26 D0 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80C626D0@l */
/* 80C62154  3C 60 80 C6 */	lis r3, data_80C627EC@ha /* 0x80C627EC@ha */
/* 80C62158  38 A3 27 EC */	addi r5, r3, data_80C627EC@l /* 0x80C627EC@l */
/* 80C6215C  88 05 00 00 */	lbz r0, 0(r5)
/* 80C62160  7C 00 07 75 */	extsb. r0, r0
/* 80C62164  40 82 00 58 */	bne lbl_80C621BC
/* 80C62168  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80C6216C  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 80C62170  90 7F 00 44 */	stw r3, 0x44(r31)
/* 80C62174  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C62178  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 80C6217C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C62180  38 9F 00 44 */	addi r4, r31, 0x44
/* 80C62184  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80C62188  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80C6218C  90 64 00 0C */	stw r3, 0xc(r4)
/* 80C62190  90 04 00 10 */	stw r0, 0x10(r4)
/* 80C62194  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 80C62198  90 04 00 14 */	stw r0, 0x14(r4)
/* 80C6219C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80C621A0  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80C621A4  90 64 00 18 */	stw r3, 0x18(r4)
/* 80C621A8  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80C621AC  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 80C621B0  90 04 00 20 */	stw r0, 0x20(r4)
/* 80C621B4  38 00 00 01 */	li r0, 1
/* 80C621B8  98 05 00 00 */	stb r0, 0(r5)
lbl_80C621BC:
/* 80C621BC  8B BE 05 AE */	lbz r29, 0x5ae(r30)
/* 80C621C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C621C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C621C8  88 9E 05 AD */	lbz r4, 0x5ad(r30)
/* 80C621CC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C621D0  7C 05 07 74 */	extsb r5, r0
/* 80C621D4  4B 3D 31 8D */	bl isSwitch__10dSv_info_cCFii
/* 80C621D8  98 7E 05 AE */	stb r3, 0x5ae(r30)
/* 80C621DC  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80C621E0  7C 00 E8 40 */	cmplw r0, r29
/* 80C621E4  41 82 00 20 */	beq lbl_80C62204
/* 80C621E8  28 00 00 00 */	cmplwi r0, 0
/* 80C621EC  41 82 00 10 */	beq lbl_80C621FC
/* 80C621F0  7F C3 F3 78 */	mr r3, r30
/* 80C621F4  48 00 00 55 */	bl init_modeMoveOpen__11daSldWall_cFv
/* 80C621F8  48 00 00 0C */	b lbl_80C62204
lbl_80C621FC:
/* 80C621FC  7F C3 F3 78 */	mr r3, r30
/* 80C62200  48 00 01 15 */	bl init_modeMoveClose__11daSldWall_cFv
lbl_80C62204:
/* 80C62204  7F C3 F3 78 */	mr r3, r30
/* 80C62208  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 80C6220C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C62210  39 9F 00 44 */	addi r12, r31, 0x44
/* 80C62214  7D 8C 02 14 */	add r12, r12, r0
/* 80C62218  4B 6F FE 6D */	bl __ptmf_scall
/* 80C6221C  60 00 00 00 */	nop 
/* 80C62220  39 61 00 20 */	addi r11, r1, 0x20
/* 80C62224  4B 70 00 05 */	bl _restgpr_29
/* 80C62228  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C6222C  7C 08 03 A6 */	mtlr r0
/* 80C62230  38 21 00 20 */	addi r1, r1, 0x20
/* 80C62234  4E 80 00 20 */	blr 
