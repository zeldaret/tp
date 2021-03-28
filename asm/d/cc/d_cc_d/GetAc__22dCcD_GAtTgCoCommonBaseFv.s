lbl_80083688:
/* 80083688  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8008368C  7C 08 02 A6 */	mflr r0
/* 80083690  90 01 00 24 */	stw r0, 0x24(r1)
/* 80083694  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80083698  7C 7F 1B 78 */	mr r31, r3
/* 8008369C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800836A0  3C 03 00 01 */	addis r0, r3, 1
/* 800836A4  28 00 FF FF */	cmplwi r0, 0xffff
/* 800836A8  40 82 00 0C */	bne lbl_800836B4
/* 800836AC  38 60 00 00 */	li r3, 0
/* 800836B0  48 00 00 40 */	b lbl_800836F0
lbl_800836B4:
/* 800836B4  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 800836B8  28 00 00 00 */	cmplwi r0, 0
/* 800836BC  40 82 00 30 */	bne lbl_800836EC
/* 800836C0  90 61 00 08 */	stw r3, 8(r1)
/* 800836C4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 800836C8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 800836CC  38 81 00 08 */	addi r4, r1, 8
/* 800836D0  4B F9 61 29 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800836D4  90 7F 00 10 */	stw r3, 0x10(r31)
/* 800836D8  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 800836DC  28 00 00 00 */	cmplwi r0, 0
/* 800836E0  40 82 00 0C */	bne lbl_800836EC
/* 800836E4  38 00 FF FF */	li r0, -1
/* 800836E8  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_800836EC:
/* 800836EC  80 7F 00 10 */	lwz r3, 0x10(r31)
lbl_800836F0:
/* 800836F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800836F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800836F8  7C 08 03 A6 */	mtlr r0
/* 800836FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80083700  4E 80 00 20 */	blr 
