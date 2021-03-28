lbl_801299A8:
/* 801299A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801299AC  7C 08 02 A6 */	mflr r0
/* 801299B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801299B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801299B8  7C 7F 1B 78 */	mr r31, r3
/* 801299BC  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 801299C0  28 00 01 37 */	cmplwi r0, 0x137
/* 801299C4  41 82 00 A8 */	beq lbl_80129A6C
/* 801299C8  48 00 A5 29 */	bl checkMidnaLockJumpPoint__9daAlink_cCFv
/* 801299CC  28 03 00 00 */	cmplwi r3, 0
/* 801299D0  41 82 00 1C */	beq lbl_801299EC
/* 801299D4  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 801299D8  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 801299DC  40 82 00 10 */	bne lbl_801299EC
/* 801299E0  7F E3 FB 78 */	mr r3, r31
/* 801299E4  4B FF E2 C9 */	bl offWolfEyeUp__9daAlink_cFv
/* 801299E8  48 00 00 84 */	b lbl_80129A6C
lbl_801299EC:
/* 801299EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801299F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801299F4  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 801299F8  38 80 43 08 */	li r4, 0x4308
/* 801299FC  4B F0 AF C1 */	bl isEventBit__11dSv_event_cCFUs
/* 80129A00  2C 03 00 00 */	cmpwi r3, 0
/* 80129A04  41 82 00 68 */	beq lbl_80129A6C
/* 80129A08  88 1F 2F D2 */	lbz r0, 0x2fd2(r31)
/* 80129A0C  28 00 00 00 */	cmplwi r0, 0
/* 80129A10  40 82 00 5C */	bne lbl_80129A6C
/* 80129A14  7F E3 FB 78 */	mr r3, r31
/* 80129A18  4B FE C2 09 */	bl checkEventRun__9daAlink_cCFv
/* 80129A1C  2C 03 00 00 */	cmpwi r3, 0
/* 80129A20  40 82 00 4C */	bne lbl_80129A6C
/* 80129A24  A8 9F 30 AC */	lha r4, 0x30ac(r31)
/* 80129A28  3C 60 80 39 */	lis r3, m__18daAlinkHIO_wolf_c0@ha
/* 80129A2C  38 63 F9 F8 */	addi r3, r3, m__18daAlinkHIO_wolf_c0@l
/* 80129A30  A8 03 00 0C */	lha r0, 0xc(r3)
/* 80129A34  7C 04 00 00 */	cmpw r4, r0
/* 80129A38  40 80 00 34 */	bge lbl_80129A6C
/* 80129A3C  7F E3 FB 78 */	mr r3, r31
/* 80129A40  4B FF E2 B1 */	bl wolfSenseTrigger__9daAlink_cFv
/* 80129A44  2C 03 00 00 */	cmpwi r3, 0
/* 80129A48  41 82 00 24 */	beq lbl_80129A6C
/* 80129A4C  A8 1F 30 AC */	lha r0, 0x30ac(r31)
/* 80129A50  2C 00 00 00 */	cmpwi r0, 0
/* 80129A54  40 82 00 10 */	bne lbl_80129A64
/* 80129A58  7F E3 FB 78 */	mr r3, r31
/* 80129A5C  4B FF E1 F9 */	bl onWolfEyeUp__9daAlink_cFv
/* 80129A60  48 00 00 0C */	b lbl_80129A6C
lbl_80129A64:
/* 80129A64  7F E3 FB 78 */	mr r3, r31
/* 80129A68  4B FF E2 45 */	bl offWolfEyeUp__9daAlink_cFv
lbl_80129A6C:
/* 80129A6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80129A70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80129A74  7C 08 03 A6 */	mtlr r0
/* 80129A78  38 21 00 10 */	addi r1, r1, 0x10
/* 80129A7C  4E 80 00 20 */	blr 
