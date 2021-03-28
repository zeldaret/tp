lbl_800D43F8:
/* 800D43F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800D43FC  7C 08 02 A6 */	mflr r0
/* 800D4400  90 01 00 24 */	stw r0, 0x24(r1)
/* 800D4404  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800D4408  7C 7F 1B 78 */	mr r31, r3
/* 800D440C  A8 83 04 DE */	lha r4, 0x4de(r3)
/* 800D4410  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 800D4414  7C 04 00 00 */	cmpw r4, r0
/* 800D4418  40 82 00 60 */	bne lbl_800D4478
/* 800D441C  38 80 00 71 */	li r4, 0x71
/* 800D4420  4B FF D5 A9 */	bl changeCutReverseProc__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800D4424  2C 03 00 00 */	cmpwi r3, 0
/* 800D4428  41 82 00 50 */	beq lbl_800D4478
/* 800D442C  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 800D4430  3C 63 00 01 */	addis r3, r3, 1
/* 800D4434  38 03 80 00 */	addi r0, r3, -32768
/* 800D4438  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800D443C  C0 02 93 38 */	lfs f0, lit_7807(r2)
/* 800D4440  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800D4444  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D4448  D0 21 00 08 */	stfs f1, 8(r1)
/* 800D444C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800D4450  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800D4454  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800D4458  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800D445C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800D4460  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800D4464  38 80 00 05 */	li r4, 5
/* 800D4468  38 A0 00 1F */	li r5, 0x1f
/* 800D446C  38 C1 00 08 */	addi r6, r1, 8
/* 800D4470  4B F9 B5 B5 */	bl StartShock__12dVibration_cFii4cXyz
/* 800D4474  48 00 00 24 */	b lbl_800D4498
lbl_800D4478:
/* 800D4478  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 800D447C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800D4480  7C 03 00 00 */	cmpw r3, r0
/* 800D4484  41 82 00 14 */	beq lbl_800D4498
/* 800D4488  38 7F 33 98 */	addi r3, r31, 0x3398
/* 800D448C  C0 22 93 3C */	lfs f1, lit_7808(r2)
/* 800D4490  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 800D4494  48 19 C2 AD */	bl cLib_chaseF__FPfff
lbl_800D4498:
/* 800D4498  7F E3 FB 78 */	mr r3, r31
/* 800D449C  4B FF CF 49 */	bl checkCutTurnInput__9daAlink_cCFv
/* 800D44A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D44A4  41 82 00 10 */	beq lbl_800D44B4
/* 800D44A8  7F E3 FB 78 */	mr r3, r31
/* 800D44AC  4B FF CF 79 */	bl getCutTurnDirection__9daAlink_cCFv
/* 800D44B0  90 7F 31 98 */	stw r3, 0x3198(r31)
lbl_800D44B4:
/* 800D44B4  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 800D44B8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800D44BC  41 82 00 14 */	beq lbl_800D44D0
/* 800D44C0  7F E3 FB 78 */	mr r3, r31
/* 800D44C4  80 9F 31 98 */	lwz r4, 0x3198(r31)
/* 800D44C8  48 00 00 65 */	bl procCutJumpLandInit__9daAlink_cFi
/* 800D44CC  48 00 00 48 */	b lbl_800D4514
lbl_800D44D0:
/* 800D44D0  C0 3F 1F E0 */	lfs f1, 0x1fe0(r31)
/* 800D44D4  3C 60 80 39 */	lis r3, m__21daAlinkHIO_cutJump_c0@ha
/* 800D44D8  38 63 DB 40 */	addi r3, r3, m__21daAlinkHIO_cutJump_c0@l
/* 800D44DC  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 800D44E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D44E4  4C 41 13 82 */	cror 2, 1, 2
/* 800D44E8  40 82 00 2C */	bne lbl_800D4514
/* 800D44EC  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800D44F0  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800D44F4  40 82 00 14 */	bne lbl_800D4508
/* 800D44F8  7F E3 FB 78 */	mr r3, r31
/* 800D44FC  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020003@ha */
/* 800D4500  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00020003@l */
/* 800D4504  4B FE AB E9 */	bl seStartSwordCut__9daAlink_cFUl
lbl_800D4508:
/* 800D4508  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 800D450C  60 00 00 02 */	ori r0, r0, 2
/* 800D4510  90 1F 05 80 */	stw r0, 0x580(r31)
lbl_800D4514:
/* 800D4514  38 60 00 01 */	li r3, 1
/* 800D4518  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800D451C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800D4520  7C 08 03 A6 */	mtlr r0
/* 800D4524  38 21 00 20 */	addi r1, r1, 0x20
/* 800D4528  4E 80 00 20 */	blr 
