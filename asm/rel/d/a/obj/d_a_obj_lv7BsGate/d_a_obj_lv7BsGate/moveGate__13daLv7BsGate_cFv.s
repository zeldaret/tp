lbl_80C84C1C:
/* 80C84C1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C84C20  7C 08 02 A6 */	mflr r0
/* 80C84C24  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C84C28  39 61 00 20 */	addi r11, r1, 0x20
/* 80C84C2C  4B 6D D5 B0 */	b _savegpr_29
/* 80C84C30  7C 7E 1B 78 */	mr r30, r3
/* 80C84C34  3C 60 80 C8 */	lis r3, cNullVec__6Z2Calc@ha
/* 80C84C38  3B E3 52 44 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80C84C3C  3C 60 80 C8 */	lis r3, data_80C8537C@ha
/* 80C84C40  38 A3 53 7C */	addi r5, r3, data_80C8537C@l
/* 80C84C44  88 05 00 00 */	lbz r0, 0(r5)
/* 80C84C48  7C 00 07 75 */	extsb. r0, r0
/* 80C84C4C  40 82 00 58 */	bne lbl_80C84CA4
/* 80C84C50  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80C84C54  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80C84C58  90 7F 00 5C */	stw r3, 0x5c(r31)
/* 80C84C5C  90 1F 00 60 */	stw r0, 0x60(r31)
/* 80C84C60  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 80C84C64  90 1F 00 64 */	stw r0, 0x64(r31)
/* 80C84C68  38 9F 00 5C */	addi r4, r31, 0x5c
/* 80C84C6C  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80C84C70  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 80C84C74  90 64 00 0C */	stw r3, 0xc(r4)
/* 80C84C78  90 04 00 10 */	stw r0, 0x10(r4)
/* 80C84C7C  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 80C84C80  90 04 00 14 */	stw r0, 0x14(r4)
/* 80C84C84  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 80C84C88  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 80C84C8C  90 64 00 18 */	stw r3, 0x18(r4)
/* 80C84C90  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80C84C94  80 1F 00 58 */	lwz r0, 0x58(r31)
/* 80C84C98  90 04 00 20 */	stw r0, 0x20(r4)
/* 80C84C9C  38 00 00 01 */	li r0, 1
/* 80C84CA0  98 05 00 00 */	stb r0, 0(r5)
lbl_80C84CA4:
/* 80C84CA4  8B BE 05 AF */	lbz r29, 0x5af(r30)
/* 80C84CA8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C84CAC  54 04 E6 3E */	rlwinm r4, r0, 0x1c, 0x18, 0x1f
/* 80C84CB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C84CB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C84CB8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C84CBC  7C 05 07 74 */	extsb r5, r0
/* 80C84CC0  4B 3B 06 A0 */	b isSwitch__10dSv_info_cCFii
/* 80C84CC4  98 7E 05 AF */	stb r3, 0x5af(r30)
/* 80C84CC8  88 1E 05 AF */	lbz r0, 0x5af(r30)
/* 80C84CCC  7C 00 E8 40 */	cmplw r0, r29
/* 80C84CD0  41 82 00 20 */	beq lbl_80C84CF0
/* 80C84CD4  28 00 00 00 */	cmplwi r0, 0
/* 80C84CD8  41 82 00 10 */	beq lbl_80C84CE8
/* 80C84CDC  7F C3 F3 78 */	mr r3, r30
/* 80C84CE0  48 00 00 55 */	bl init_modeOpen__13daLv7BsGate_cFv
/* 80C84CE4  48 00 00 0C */	b lbl_80C84CF0
lbl_80C84CE8:
/* 80C84CE8  7F C3 F3 78 */	mr r3, r30
/* 80C84CEC  48 00 01 A9 */	bl init_modeClose__13daLv7BsGate_cFv
lbl_80C84CF0:
/* 80C84CF0  7F C3 F3 78 */	mr r3, r30
/* 80C84CF4  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 80C84CF8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C84CFC  39 9F 00 5C */	addi r12, r31, 0x5c
/* 80C84D00  7D 8C 02 14 */	add r12, r12, r0
/* 80C84D04  4B 6D D3 80 */	b __ptmf_scall
/* 80C84D08  60 00 00 00 */	nop 
/* 80C84D0C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C84D10  4B 6D D5 18 */	b _restgpr_29
/* 80C84D14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C84D18  7C 08 03 A6 */	mtlr r0
/* 80C84D1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C84D20  4E 80 00 20 */	blr 
