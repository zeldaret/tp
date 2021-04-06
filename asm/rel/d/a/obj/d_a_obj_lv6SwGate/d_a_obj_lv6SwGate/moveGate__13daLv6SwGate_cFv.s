lbl_80C74A3C:
/* 80C74A3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C74A40  7C 08 02 A6 */	mflr r0
/* 80C74A44  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C74A48  39 61 00 20 */	addi r11, r1, 0x20
/* 80C74A4C  4B 6E D7 91 */	bl _savegpr_29
/* 80C74A50  7C 7E 1B 78 */	mr r30, r3
/* 80C74A54  3C 60 80 C7 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80C75598@ha */
/* 80C74A58  3B E3 55 98 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80C75598@l */
/* 80C74A5C  3C 60 80 C7 */	lis r3, data_80C7576C@ha /* 0x80C7576C@ha */
/* 80C74A60  38 A3 57 6C */	addi r5, r3, data_80C7576C@l /* 0x80C7576C@l */
/* 80C74A64  88 05 00 00 */	lbz r0, 0(r5)
/* 80C74A68  7C 00 07 75 */	extsb. r0, r0
/* 80C74A6C  40 82 00 70 */	bne lbl_80C74ADC
/* 80C74A70  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 80C74A74  80 1F 00 80 */	lwz r0, 0x80(r31)
/* 80C74A78  90 7F 00 AC */	stw r3, 0xac(r31)
/* 80C74A7C  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 80C74A80  80 1F 00 84 */	lwz r0, 0x84(r31)
/* 80C74A84  90 1F 00 B4 */	stw r0, 0xb4(r31)
/* 80C74A88  38 9F 00 AC */	addi r4, r31, 0xac
/* 80C74A8C  80 7F 00 88 */	lwz r3, 0x88(r31)
/* 80C74A90  80 1F 00 8C */	lwz r0, 0x8c(r31)
/* 80C74A94  90 64 00 0C */	stw r3, 0xc(r4)
/* 80C74A98  90 04 00 10 */	stw r0, 0x10(r4)
/* 80C74A9C  80 1F 00 90 */	lwz r0, 0x90(r31)
/* 80C74AA0  90 04 00 14 */	stw r0, 0x14(r4)
/* 80C74AA4  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 80C74AA8  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 80C74AAC  90 64 00 18 */	stw r3, 0x18(r4)
/* 80C74AB0  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80C74AB4  80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 80C74AB8  90 04 00 20 */	stw r0, 0x20(r4)
/* 80C74ABC  80 7F 00 A0 */	lwz r3, 0xa0(r31)
/* 80C74AC0  80 1F 00 A4 */	lwz r0, 0xa4(r31)
/* 80C74AC4  90 64 00 24 */	stw r3, 0x24(r4)
/* 80C74AC8  90 04 00 28 */	stw r0, 0x28(r4)
/* 80C74ACC  80 1F 00 A8 */	lwz r0, 0xa8(r31)
/* 80C74AD0  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80C74AD4  38 00 00 01 */	li r0, 1
/* 80C74AD8  98 05 00 00 */	stb r0, 0(r5)
lbl_80C74ADC:
/* 80C74ADC  8B BE 14 BF */	lbz r29, 0x14bf(r30)
/* 80C74AE0  7F C3 F3 78 */	mr r3, r30
/* 80C74AE4  4B FF FC 3D */	bl isSwitch__13daLv6SwGate_cFv
/* 80C74AE8  98 7E 14 BF */	stb r3, 0x14bf(r30)
/* 80C74AEC  88 1E 14 BF */	lbz r0, 0x14bf(r30)
/* 80C74AF0  7C 00 E8 40 */	cmplw r0, r29
/* 80C74AF4  41 82 00 20 */	beq lbl_80C74B14
/* 80C74AF8  28 00 00 00 */	cmplwi r0, 0
/* 80C74AFC  41 82 00 10 */	beq lbl_80C74B0C
/* 80C74B00  7F C3 F3 78 */	mr r3, r30
/* 80C74B04  48 00 00 55 */	bl init_modeOpen__13daLv6SwGate_cFv
/* 80C74B08  48 00 00 0C */	b lbl_80C74B14
lbl_80C74B0C:
/* 80C74B0C  7F C3 F3 78 */	mr r3, r30
/* 80C74B10  48 00 01 6D */	bl init_modeClose__13daLv6SwGate_cFv
lbl_80C74B14:
/* 80C74B14  7F C3 F3 78 */	mr r3, r30
/* 80C74B18  88 1E 14 BC */	lbz r0, 0x14bc(r30)
/* 80C74B1C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C74B20  39 9F 00 AC */	addi r12, r31, 0xac
/* 80C74B24  7D 8C 02 14 */	add r12, r12, r0
/* 80C74B28  4B 6E D5 5D */	bl __ptmf_scall
/* 80C74B2C  60 00 00 00 */	nop 
/* 80C74B30  39 61 00 20 */	addi r11, r1, 0x20
/* 80C74B34  4B 6E D6 F5 */	bl _restgpr_29
/* 80C74B38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C74B3C  7C 08 03 A6 */	mtlr r0
/* 80C74B40  38 21 00 20 */	addi r1, r1, 0x20
/* 80C74B44  4E 80 00 20 */	blr 
