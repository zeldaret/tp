lbl_80C4827C:
/* 80C4827C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C48280  7C 08 02 A6 */	mflr r0
/* 80C48284  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C48288  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C4828C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C48290  7C 7E 1B 78 */	mr r30, r3
/* 80C48294  80 63 06 14 */	lwz r3, 0x614(r3)
/* 80C48298  3C 03 00 01 */	addis r0, r3, 1
/* 80C4829C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80C482A0  41 82 00 58 */	beq lbl_80C482F8
/* 80C482A4  90 61 00 08 */	stw r3, 8(r1)
/* 80C482A8  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80C482AC  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80C482B0  38 81 00 08 */	addi r4, r1, 8
/* 80C482B4  4B 3D 15 44 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C482B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C482BC  41 82 00 48 */	beq lbl_80C48304
/* 80C482C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C482C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C482C8  88 9E 05 EB */	lbz r4, 0x5eb(r30)
/* 80C482CC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C482D0  7C 05 07 74 */	extsb r5, r0
/* 80C482D4  4B 3E D0 8C */	b isSwitch__10dSv_info_cCFii
/* 80C482D8  2C 03 00 00 */	cmpwi r3, 0
/* 80C482DC  41 82 00 0C */	beq lbl_80C482E8
/* 80C482E0  38 00 00 03 */	li r0, 3
/* 80C482E4  98 1F 2C A4 */	stb r0, 0x2ca4(r31)
lbl_80C482E8:
/* 80C482E8  88 7E 06 18 */	lbz r3, 0x618(r30)
/* 80C482EC  38 03 00 01 */	addi r0, r3, 1
/* 80C482F0  98 1E 06 18 */	stb r0, 0x618(r30)
/* 80C482F4  48 00 00 10 */	b lbl_80C48304
lbl_80C482F8:
/* 80C482F8  88 7E 06 18 */	lbz r3, 0x618(r30)
/* 80C482FC  38 03 00 01 */	addi r0, r3, 1
/* 80C48300  98 1E 06 18 */	stb r0, 0x618(r30)
lbl_80C48304:
/* 80C48304  38 60 00 00 */	li r3, 0
/* 80C48308  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C4830C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C48310  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C48314  7C 08 03 A6 */	mtlr r0
/* 80C48318  38 21 00 20 */	addi r1, r1, 0x20
/* 80C4831C  4E 80 00 20 */	blr 
