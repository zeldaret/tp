lbl_80BFD9D4:
/* 80BFD9D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BFD9D8  7C 08 02 A6 */	mflr r0
/* 80BFD9DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BFD9E0  39 61 00 20 */	addi r11, r1, 0x20
/* 80BFD9E4  4B 76 47 F9 */	bl _savegpr_29
/* 80BFD9E8  7C 7E 1B 78 */	mr r30, r3
/* 80BFD9EC  3C 60 80 C0 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80BFE010@ha */
/* 80BFD9F0  3B E3 E0 10 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80BFE010@l */
/* 80BFD9F4  3C 60 80 C0 */	lis r3, data_80BFE128@ha /* 0x80BFE128@ha */
/* 80BFD9F8  38 A3 E1 28 */	addi r5, r3, data_80BFE128@l /* 0x80BFE128@l */
/* 80BFD9FC  88 05 00 00 */	lbz r0, 0(r5)
/* 80BFDA00  7C 00 07 75 */	extsb. r0, r0
/* 80BFDA04  40 82 00 58 */	bne lbl_80BFDA5C
/* 80BFDA08  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80BFDA0C  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 80BFDA10  90 7F 00 44 */	stw r3, 0x44(r31)
/* 80BFDA14  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BFDA18  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 80BFDA1C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BFDA20  38 9F 00 44 */	addi r4, r31, 0x44
/* 80BFDA24  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80BFDA28  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80BFDA2C  90 64 00 0C */	stw r3, 0xc(r4)
/* 80BFDA30  90 04 00 10 */	stw r0, 0x10(r4)
/* 80BFDA34  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 80BFDA38  90 04 00 14 */	stw r0, 0x14(r4)
/* 80BFDA3C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80BFDA40  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80BFDA44  90 64 00 18 */	stw r3, 0x18(r4)
/* 80BFDA48  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80BFDA4C  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 80BFDA50  90 04 00 20 */	stw r0, 0x20(r4)
/* 80BFDA54  38 00 00 01 */	li r0, 1
/* 80BFDA58  98 05 00 00 */	stb r0, 0(r5)
lbl_80BFDA5C:
/* 80BFDA5C  8B BE 05 AE */	lbz r29, 0x5ae(r30)
/* 80BFDA60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BFDA64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BFDA68  88 9E 05 AD */	lbz r4, 0x5ad(r30)
/* 80BFDA6C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BFDA70  7C 05 07 74 */	extsb r5, r0
/* 80BFDA74  4B 43 78 ED */	bl isSwitch__10dSv_info_cCFii
/* 80BFDA78  98 7E 05 AE */	stb r3, 0x5ae(r30)
/* 80BFDA7C  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80BFDA80  7C 00 E8 40 */	cmplw r0, r29
/* 80BFDA84  41 82 00 20 */	beq lbl_80BFDAA4
/* 80BFDA88  28 00 00 00 */	cmplwi r0, 0
/* 80BFDA8C  41 82 00 10 */	beq lbl_80BFDA9C
/* 80BFDA90  7F C3 F3 78 */	mr r3, r30
/* 80BFDA94  48 00 00 55 */	bl init_modeMoveOpen__10daGoGate_cFv
/* 80BFDA98  48 00 00 0C */	b lbl_80BFDAA4
lbl_80BFDA9C:
/* 80BFDA9C  7F C3 F3 78 */	mr r3, r30
/* 80BFDAA0  48 00 01 65 */	bl init_modeMoveClose__10daGoGate_cFv
lbl_80BFDAA4:
/* 80BFDAA4  7F C3 F3 78 */	mr r3, r30
/* 80BFDAA8  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 80BFDAAC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BFDAB0  39 9F 00 44 */	addi r12, r31, 0x44
/* 80BFDAB4  7D 8C 02 14 */	add r12, r12, r0
/* 80BFDAB8  4B 76 45 CD */	bl __ptmf_scall
/* 80BFDABC  60 00 00 00 */	nop 
/* 80BFDAC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80BFDAC4  4B 76 47 65 */	bl _restgpr_29
/* 80BFDAC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BFDACC  7C 08 03 A6 */	mtlr r0
/* 80BFDAD0  38 21 00 20 */	addi r1, r1, 0x20
/* 80BFDAD4  4E 80 00 20 */	blr 
