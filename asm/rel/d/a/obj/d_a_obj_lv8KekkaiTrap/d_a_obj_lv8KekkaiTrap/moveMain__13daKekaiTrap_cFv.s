lbl_80C88000:
/* 80C88000  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C88004  7C 08 02 A6 */	mflr r0
/* 80C88008  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C8800C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C88010  4B 6D A1 CD */	bl _savegpr_29
/* 80C88014  7C 7E 1B 78 */	mr r30, r3
/* 80C88018  3C 60 80 C9 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80C88504@ha */
/* 80C8801C  3B E3 85 04 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80C88504@l */
/* 80C88020  3C 60 80 C9 */	lis r3, data_80C88638@ha /* 0x80C88638@ha */
/* 80C88024  38 A3 86 38 */	addi r5, r3, data_80C88638@l /* 0x80C88638@l */
/* 80C88028  88 05 00 00 */	lbz r0, 0(r5)
/* 80C8802C  7C 00 07 75 */	extsb. r0, r0
/* 80C88030  40 82 00 58 */	bne lbl_80C88088
/* 80C88034  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80C88038  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80C8803C  90 7F 00 50 */	stw r3, 0x50(r31)
/* 80C88040  90 1F 00 54 */	stw r0, 0x54(r31)
/* 80C88044  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 80C88048  90 1F 00 58 */	stw r0, 0x58(r31)
/* 80C8804C  38 9F 00 50 */	addi r4, r31, 0x50
/* 80C88050  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80C88054  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80C88058  90 64 00 0C */	stw r3, 0xc(r4)
/* 80C8805C  90 04 00 10 */	stw r0, 0x10(r4)
/* 80C88060  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 80C88064  90 04 00 14 */	stw r0, 0x14(r4)
/* 80C88068  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80C8806C  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 80C88070  90 64 00 18 */	stw r3, 0x18(r4)
/* 80C88074  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80C88078  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 80C8807C  90 04 00 20 */	stw r0, 0x20(r4)
/* 80C88080  38 00 00 01 */	li r0, 1
/* 80C88084  98 05 00 00 */	stb r0, 0(r5)
lbl_80C88088:
/* 80C88088  8B BE 05 AC */	lbz r29, 0x5ac(r30)
/* 80C8808C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C88090  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C88094  88 9E 05 AD */	lbz r4, 0x5ad(r30)
/* 80C88098  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C8809C  7C 05 07 74 */	extsb r5, r0
/* 80C880A0  4B 3A D2 C1 */	bl isSwitch__10dSv_info_cCFii
/* 80C880A4  98 7E 05 AC */	stb r3, 0x5ac(r30)
/* 80C880A8  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 80C880AC  7C 00 E8 40 */	cmplw r0, r29
/* 80C880B0  41 82 00 20 */	beq lbl_80C880D0
/* 80C880B4  28 00 00 00 */	cmplwi r0, 0
/* 80C880B8  41 82 00 10 */	beq lbl_80C880C8
/* 80C880BC  7F C3 F3 78 */	mr r3, r30
/* 80C880C0  48 00 00 55 */	bl init_modeMoveUp__13daKekaiTrap_cFv
/* 80C880C4  48 00 00 0C */	b lbl_80C880D0
lbl_80C880C8:
/* 80C880C8  7F C3 F3 78 */	mr r3, r30
/* 80C880CC  48 00 01 25 */	bl init_modeMoveDown__13daKekaiTrap_cFv
lbl_80C880D0:
/* 80C880D0  7F C3 F3 78 */	mr r3, r30
/* 80C880D4  88 1E 05 AF */	lbz r0, 0x5af(r30)
/* 80C880D8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C880DC  39 9F 00 50 */	addi r12, r31, 0x50
/* 80C880E0  7D 8C 02 14 */	add r12, r12, r0
/* 80C880E4  4B 6D 9F A1 */	bl __ptmf_scall
/* 80C880E8  60 00 00 00 */	nop 
/* 80C880EC  39 61 00 20 */	addi r11, r1, 0x20
/* 80C880F0  4B 6D A1 39 */	bl _restgpr_29
/* 80C880F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C880F8  7C 08 03 A6 */	mtlr r0
/* 80C880FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80C88100  4E 80 00 20 */	blr 
