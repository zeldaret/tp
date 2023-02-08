lbl_80BC2BBC:
/* 80BC2BBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BC2BC0  7C 08 02 A6 */	mflr r0
/* 80BC2BC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BC2BC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80BC2BCC  4B 79 F6 11 */	bl _savegpr_29
/* 80BC2BD0  7C 7E 1B 78 */	mr r30, r3
/* 80BC2BD4  3C 60 80 BC */	lis r3, cNullVec__6Z2Calc@ha /* 0x80BC31CC@ha */
/* 80BC2BD8  3B E3 31 CC */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80BC31CC@l */
/* 80BC2BDC  3C 60 80 BC */	lis r3, data_80BC32EC@ha /* 0x80BC32EC@ha */
/* 80BC2BE0  38 A3 32 EC */	addi r5, r3, data_80BC32EC@l /* 0x80BC32EC@l */
/* 80BC2BE4  88 05 00 00 */	lbz r0, 0(r5)
/* 80BC2BE8  7C 00 07 75 */	extsb. r0, r0
/* 80BC2BEC  40 82 00 58 */	bne lbl_80BC2C44
/* 80BC2BF0  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80BC2BF4  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 80BC2BF8  90 7F 00 44 */	stw r3, 0x44(r31)
/* 80BC2BFC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BC2C00  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 80BC2C04  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BC2C08  38 9F 00 44 */	addi r4, r31, 0x44
/* 80BC2C0C  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80BC2C10  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80BC2C14  90 64 00 0C */	stw r3, 0xc(r4)
/* 80BC2C18  90 04 00 10 */	stw r0, 0x10(r4)
/* 80BC2C1C  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 80BC2C20  90 04 00 14 */	stw r0, 0x14(r4)
/* 80BC2C24  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80BC2C28  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80BC2C2C  90 64 00 18 */	stw r3, 0x18(r4)
/* 80BC2C30  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80BC2C34  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 80BC2C38  90 04 00 20 */	stw r0, 0x20(r4)
/* 80BC2C3C  38 00 00 01 */	li r0, 1
/* 80BC2C40  98 05 00 00 */	stb r0, 0(r5)
lbl_80BC2C44:
/* 80BC2C44  8B BE 05 AE */	lbz r29, 0x5ae(r30)
/* 80BC2C48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC2C4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC2C50  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BC2C54  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BC2C58  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BC2C5C  7C 05 07 74 */	extsb r5, r0
/* 80BC2C60  4B 47 27 01 */	bl isSwitch__10dSv_info_cCFii
/* 80BC2C64  98 7E 05 AE */	stb r3, 0x5ae(r30)
/* 80BC2C68  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80BC2C6C  7C 00 E8 40 */	cmplw r0, r29
/* 80BC2C70  41 82 00 20 */	beq lbl_80BC2C90
/* 80BC2C74  28 00 00 00 */	cmplwi r0, 0
/* 80BC2C78  41 82 00 10 */	beq lbl_80BC2C88
/* 80BC2C7C  7F C3 F3 78 */	mr r3, r30
/* 80BC2C80  48 00 00 55 */	bl init_modeOpen__10daBsGate_cFv
/* 80BC2C84  48 00 00 0C */	b lbl_80BC2C90
lbl_80BC2C88:
/* 80BC2C88  7F C3 F3 78 */	mr r3, r30
/* 80BC2C8C  48 00 01 A9 */	bl init_modeClose__10daBsGate_cFv
lbl_80BC2C90:
/* 80BC2C90  7F C3 F3 78 */	mr r3, r30
/* 80BC2C94  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 80BC2C98  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BC2C9C  39 9F 00 44 */	addi r12, r31, 0x44
/* 80BC2CA0  7D 8C 02 14 */	add r12, r12, r0
/* 80BC2CA4  4B 79 F3 E1 */	bl __ptmf_scall
/* 80BC2CA8  60 00 00 00 */	nop 
/* 80BC2CAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80BC2CB0  4B 79 F5 79 */	bl _restgpr_29
/* 80BC2CB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BC2CB8  7C 08 03 A6 */	mtlr r0
/* 80BC2CBC  38 21 00 20 */	addi r1, r1, 0x20
/* 80BC2CC0  4E 80 00 20 */	blr 
