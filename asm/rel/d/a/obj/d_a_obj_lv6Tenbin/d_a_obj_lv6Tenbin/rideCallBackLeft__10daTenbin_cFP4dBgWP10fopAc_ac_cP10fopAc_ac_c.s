lbl_80C77078:
/* 80C77078  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C7707C  7C 08 02 A6 */	mflr r0
/* 80C77080  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C77084  39 61 00 20 */	addi r11, r1, 0x20
/* 80C77088  4B 6E B1 54 */	b _savegpr_29
/* 80C7708C  7C 9D 23 78 */	mr r29, r4
/* 80C77090  7C BE 2B 78 */	mr r30, r5
/* 80C77094  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C77098  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C7709C  83 E3 5D B4 */	lwz r31, 0x5db4(r3)
/* 80C770A0  A8 05 00 08 */	lha r0, 8(r5)
/* 80C770A4  2C 00 00 F2 */	cmpwi r0, 0xf2
/* 80C770A8  40 82 00 2C */	bne lbl_80C770D4
/* 80C770AC  7F E3 FB 78 */	mr r3, r31
/* 80C770B0  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80C770B4  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 80C770B8  7D 89 03 A6 */	mtctr r12
/* 80C770BC  4E 80 04 21 */	bctrl 
/* 80C770C0  28 03 00 00 */	cmplwi r3, 0
/* 80C770C4  41 82 00 10 */	beq lbl_80C770D4
/* 80C770C8  A0 7D 05 B4 */	lhz r3, 0x5b4(r29)
/* 80C770CC  38 03 00 02 */	addi r0, r3, 2
/* 80C770D0  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_80C770D4:
/* 80C770D4  A8 1E 00 08 */	lha r0, 8(r30)
/* 80C770D8  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80C770DC  40 82 00 B8 */	bne lbl_80C77194
/* 80C770E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C770E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C770E8  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80C770EC  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80C770F0  40 82 00 A4 */	bne lbl_80C77194
/* 80C770F4  A0 7D 05 B4 */	lhz r3, 0x5b4(r29)
/* 80C770F8  38 03 00 02 */	addi r0, r3, 2
/* 80C770FC  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80C77100  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80C77104  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80C77108  41 82 00 14 */	beq lbl_80C7711C
/* 80C7710C  A0 7D 05 B4 */	lhz r3, 0x5b4(r29)
/* 80C77110  3C 63 00 01 */	addis r3, r3, 1
/* 80C77114  38 03 EA 60 */	addi r0, r3, -5536
/* 80C77118  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_80C7711C:
/* 80C7711C  7F E3 FB 78 */	mr r3, r31
/* 80C77120  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80C77124  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 80C77128  7D 89 03 A6 */	mtctr r12
/* 80C7712C  4E 80 04 21 */	bctrl 
/* 80C77130  3C 03 00 01 */	addis r0, r3, 1
/* 80C77134  28 00 FF FF */	cmplwi r0, 0xffff
/* 80C77138  41 82 00 5C */	beq lbl_80C77194
/* 80C7713C  7F E3 FB 78 */	mr r3, r31
/* 80C77140  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80C77144  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 80C77148  7D 89 03 A6 */	mtctr r12
/* 80C7714C  4E 80 04 21 */	bctrl 
/* 80C77150  90 61 00 08 */	stw r3, 8(r1)
/* 80C77154  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80C77158  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80C7715C  38 81 00 08 */	addi r4, r1, 8
/* 80C77160  4B 3A 26 98 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C77164  A8 03 00 08 */	lha r0, 8(r3)
/* 80C77168  2C 00 01 98 */	cmpwi r0, 0x198
/* 80C7716C  40 82 00 28 */	bne lbl_80C77194
/* 80C77170  A0 9D 05 B4 */	lhz r4, 0x5b4(r29)
/* 80C77174  38 04 00 01 */	addi r0, r4, 1
/* 80C77178  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80C7717C  28 03 00 00 */	cmplwi r3, 0
/* 80C77180  41 82 00 0C */	beq lbl_80C7718C
/* 80C77184  80 03 00 04 */	lwz r0, 4(r3)
/* 80C77188  48 00 00 08 */	b lbl_80C77190
lbl_80C7718C:
/* 80C7718C  38 00 FF FF */	li r0, -1
lbl_80C77190:
/* 80C77190  90 1D 06 50 */	stw r0, 0x650(r29)
lbl_80C77194:
/* 80C77194  A8 1E 00 08 */	lha r0, 8(r30)
/* 80C77198  2C 00 01 98 */	cmpwi r0, 0x198
/* 80C7719C  40 82 00 4C */	bne lbl_80C771E8
/* 80C771A0  88 1E 0A DD */	lbz r0, 0xadd(r30)
/* 80C771A4  28 00 00 00 */	cmplwi r0, 0
/* 80C771A8  40 82 00 14 */	bne lbl_80C771BC
/* 80C771AC  A0 7D 05 B4 */	lhz r3, 0x5b4(r29)
/* 80C771B0  38 03 00 04 */	addi r0, r3, 4
/* 80C771B4  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80C771B8  48 00 00 30 */	b lbl_80C771E8
lbl_80C771BC:
/* 80C771BC  80 7D 06 50 */	lwz r3, 0x650(r29)
/* 80C771C0  28 1E 00 00 */	cmplwi r30, 0
/* 80C771C4  41 82 00 0C */	beq lbl_80C771D0
/* 80C771C8  80 1E 00 04 */	lwz r0, 4(r30)
/* 80C771CC  48 00 00 08 */	b lbl_80C771D4
lbl_80C771D0:
/* 80C771D0  38 00 FF FF */	li r0, -1
lbl_80C771D4:
/* 80C771D4  7C 03 00 40 */	cmplw r3, r0
/* 80C771D8  41 82 00 10 */	beq lbl_80C771E8
/* 80C771DC  A0 7D 05 B4 */	lhz r3, 0x5b4(r29)
/* 80C771E0  38 03 00 01 */	addi r0, r3, 1
/* 80C771E4  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_80C771E8:
/* 80C771E8  39 61 00 20 */	addi r11, r1, 0x20
/* 80C771EC  4B 6E B0 3C */	b _restgpr_29
/* 80C771F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C771F4  7C 08 03 A6 */	mtlr r0
/* 80C771F8  38 21 00 20 */	addi r1, r1, 0x20
/* 80C771FC  4E 80 00 20 */	blr 
