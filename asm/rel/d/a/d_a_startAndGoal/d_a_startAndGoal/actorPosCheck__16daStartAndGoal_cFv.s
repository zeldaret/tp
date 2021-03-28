lbl_80D4DA68:
/* 80D4DA68  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D4DA6C  7C 08 02 A6 */	mflr r0
/* 80D4DA70  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D4DA74  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D4DA78  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80D4DA7C  7C 7E 1B 78 */	mr r30, r3
/* 80D4DA80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D4DA84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D4DA88  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80D4DA8C  C0 43 04 D0 */	lfs f2, 0x4d0(r3)
/* 80D4DA90  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80D4DA94  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80D4DA98  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80D4DA9C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80D4DAA0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D4DAA4  D0 41 00 08 */	stfs f2, 8(r1)
/* 80D4DAA8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D4DAAC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D4DAB0  38 7E 05 68 */	addi r3, r30, 0x568
/* 80D4DAB4  38 81 00 08 */	addi r4, r1, 8
/* 80D4DAB8  4B FF FD 01 */	bl chkPassed2__21daStartAndGoal_Path_cF4cXyz
/* 80D4DABC  2C 03 00 00 */	cmpwi r3, 0
/* 80D4DAC0  41 82 00 58 */	beq lbl_80D4DB18
/* 80D4DAC4  A3 FE 05 68 */	lhz r31, 0x568(r30)
/* 80D4DAC8  38 7E 05 68 */	addi r3, r30, 0x568
/* 80D4DACC  4B 40 31 4C */	b getNextIdx__13daNpcF_Path_cFv
/* 80D4DAD0  7C 1F 18 00 */	cmpw r31, r3
/* 80D4DAD4  40 82 00 44 */	bne lbl_80D4DB18
/* 80D4DAD8  38 00 00 03 */	li r0, 3
/* 80D4DADC  90 1E 0B 9C */	stw r0, 0xb9c(r30)
/* 80D4DAE0  88 1E 0B 99 */	lbz r0, 0xb99(r30)
/* 80D4DAE4  54 00 18 38 */	slwi r0, r0, 3
/* 80D4DAE8  3C 60 80 D5 */	lis r3, l_timerType@ha
/* 80D4DAEC  38 63 DE CC */	addi r3, r3, l_timerType@l
/* 80D4DAF0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D4DAF4  38 80 FF FF */	li r4, -1
/* 80D4DAF8  4B 2E 1B B8 */	b dComIfG_TimerEnd__Fii
/* 80D4DAFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D4DB00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D4DB04  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D4DB08  4B 2D F0 94 */	b getTimerNowTimeMs__14dComIfG_play_cFv
/* 80D4DB0C  3C 80 80 43 */	lis r4, g_meter2_info@ha
/* 80D4DB10  38 84 01 88 */	addi r4, r4, g_meter2_info@l
/* 80D4DB14  90 64 00 88 */	stw r3, 0x88(r4)
lbl_80D4DB18:
/* 80D4DB18  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D4DB1C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80D4DB20  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D4DB24  7C 08 03 A6 */	mtlr r0
/* 80D4DB28  38 21 00 30 */	addi r1, r1, 0x30
/* 80D4DB2C  4E 80 00 20 */	blr 
