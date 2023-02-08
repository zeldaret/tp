lbl_8098F2BC:
/* 8098F2BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8098F2C0  7C 08 02 A6 */	mflr r0
/* 8098F2C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8098F2C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8098F2CC  4B 9D 2F 11 */	bl _savegpr_29
/* 8098F2D0  7C 7F 1B 78 */	mr r31, r3
/* 8098F2D4  A8 03 0E 04 */	lha r0, 0xe04(r3)
/* 8098F2D8  2C 00 00 00 */	cmpwi r0, 0
/* 8098F2DC  41 82 00 18 */	beq lbl_8098F2F4
/* 8098F2E0  40 80 00 08 */	bge lbl_8098F2E8
/* 8098F2E4  48 00 01 14 */	b lbl_8098F3F8
lbl_8098F2E8:
/* 8098F2E8  2C 00 00 02 */	cmpwi r0, 2
/* 8098F2EC  40 80 01 0C */	bge lbl_8098F3F8
/* 8098F2F0  48 00 00 50 */	b lbl_8098F340
lbl_8098F2F4:
/* 8098F2F4  38 80 00 0E */	li r4, 0xe
/* 8098F2F8  3C A0 80 99 */	lis r5, lit_4627@ha /* 0x809919A4@ha */
/* 8098F2FC  C0 25 19 A4 */	lfs f1, lit_4627@l(r5)  /* 0x809919A4@l */
/* 8098F300  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 8098F304  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8098F308  7D 89 03 A6 */	mtctr r12
/* 8098F30C  4E 80 04 21 */	bctrl 
/* 8098F310  7F E3 FB 78 */	mr r3, r31
/* 8098F314  38 80 00 00 */	li r4, 0
/* 8098F318  3C A0 80 99 */	lis r5, lit_4627@ha /* 0x809919A4@ha */
/* 8098F31C  C0 25 19 A4 */	lfs f1, lit_4627@l(r5)  /* 0x809919A4@l */
/* 8098F320  38 A0 00 00 */	li r5, 0
/* 8098F324  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 8098F328  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8098F32C  7D 89 03 A6 */	mtctr r12
/* 8098F330  4E 80 04 21 */	bctrl 
/* 8098F334  38 00 00 01 */	li r0, 1
/* 8098F338  B0 1F 0E 04 */	sth r0, 0xe04(r31)
/* 8098F33C  48 00 00 BC */	b lbl_8098F3F8
lbl_8098F340:
/* 8098F340  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8098F344  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8098F348  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8098F34C  28 00 00 00 */	cmplwi r0, 0
/* 8098F350  41 82 00 A8 */	beq lbl_8098F3F8
/* 8098F354  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 8098F358  28 00 00 01 */	cmplwi r0, 1
/* 8098F35C  41 82 00 9C */	beq lbl_8098F3F8
/* 8098F360  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 8098F364  7F C3 F3 78 */	mr r3, r30
/* 8098F368  3C 80 80 99 */	lis r4, l_myName@ha /* 0x8099219C@ha */
/* 8098F36C  38 84 21 9C */	addi r4, r4, l_myName@l /* 0x8099219C@l */
/* 8098F370  80 84 00 00 */	lwz r4, 0(r4)
/* 8098F374  38 A0 00 00 */	li r5, 0
/* 8098F378  38 C0 00 00 */	li r6, 0
/* 8098F37C  4B 6B 87 A1 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8098F380  2C 03 FF FF */	cmpwi r3, -1
/* 8098F384  41 82 00 44 */	beq lbl_8098F3C8
/* 8098F388  7C 7D 1B 78 */	mr r29, r3
/* 8098F38C  93 BF 09 2C */	stw r29, 0x92c(r31)
/* 8098F390  7F E3 FB 78 */	mr r3, r31
/* 8098F394  7F A4 EB 78 */	mr r4, r29
/* 8098F398  A0 1F 09 E6 */	lhz r0, 0x9e6(r31)
/* 8098F39C  1C C0 00 0C */	mulli r6, r0, 0xc
/* 8098F3A0  3C A0 80 99 */	lis r5, mEvtSeqList__11daNpcChin_c@ha /* 0x8099213C@ha */
/* 8098F3A4  38 05 21 3C */	addi r0, r5, mEvtSeqList__11daNpcChin_c@l /* 0x8099213C@l */
/* 8098F3A8  7D 80 32 14 */	add r12, r0, r6
/* 8098F3AC  4B 9D 2C D9 */	bl __ptmf_scall
/* 8098F3B0  60 00 00 00 */	nop 
/* 8098F3B4  2C 03 00 00 */	cmpwi r3, 0
/* 8098F3B8  41 82 00 10 */	beq lbl_8098F3C8
/* 8098F3BC  7F C3 F3 78 */	mr r3, r30
/* 8098F3C0  7F A4 EB 78 */	mr r4, r29
/* 8098F3C4  4B 6B 8D B9 */	bl cutEnd__16dEvent_manager_cFi
lbl_8098F3C8:
/* 8098F3C8  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 8098F3CC  28 00 00 02 */	cmplwi r0, 2
/* 8098F3D0  40 82 00 28 */	bne lbl_8098F3F8
/* 8098F3D4  A8 9F 09 D4 */	lha r4, 0x9d4(r31)
/* 8098F3D8  2C 04 FF FF */	cmpwi r4, -1
/* 8098F3DC  41 82 00 1C */	beq lbl_8098F3F8
/* 8098F3E0  7F C3 F3 78 */	mr r3, r30
/* 8098F3E4  4B 6B 86 95 */	bl endCheck__16dEvent_manager_cFs
/* 8098F3E8  2C 03 00 00 */	cmpwi r3, 0
/* 8098F3EC  41 82 00 0C */	beq lbl_8098F3F8
/* 8098F3F0  7F E3 FB 78 */	mr r3, r31
/* 8098F3F4  48 00 03 65 */	bl Event_DT__11daNpcChin_cFv
lbl_8098F3F8:
/* 8098F3F8  38 60 00 01 */	li r3, 1
/* 8098F3FC  39 61 00 20 */	addi r11, r1, 0x20
/* 8098F400  4B 9D 2E 29 */	bl _restgpr_29
/* 8098F404  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8098F408  7C 08 03 A6 */	mtlr r0
/* 8098F40C  38 21 00 20 */	addi r1, r1, 0x20
/* 8098F410  4E 80 00 20 */	blr 
