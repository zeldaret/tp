lbl_800F36E4:
/* 800F36E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F36E8  7C 08 02 A6 */	mflr r0
/* 800F36EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F36F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F36F4  7C 7F 1B 78 */	mr r31, r3
/* 800F36F8  38 80 00 51 */	li r4, 0x51
/* 800F36FC  4B FC F6 A9 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F3700  2C 03 00 00 */	cmpwi r3, 0
/* 800F3704  40 82 00 0C */	bne lbl_800F3710
/* 800F3708  38 60 00 00 */	li r3, 0
/* 800F370C  48 00 00 34 */	b lbl_800F3740
lbl_800F3710:
/* 800F3710  7F E3 FB 78 */	mr r3, r31
/* 800F3714  38 80 00 00 */	li r4, 0
/* 800F3718  38 A0 00 00 */	li r5, 0
/* 800F371C  4B FC DB C1 */	bl deleteEquipItem__9daAlink_cFii
/* 800F3720  7F E3 FB 78 */	mr r3, r31
/* 800F3724  38 80 01 7E */	li r4, 0x17e
/* 800F3728  4B FB 98 59 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800F372C  7F E3 FB 78 */	mr r3, r31
/* 800F3730  4B FF A2 F5 */	bl setSyncRidePos__9daAlink_cFv
/* 800F3734  38 00 00 00 */	li r0, 0
/* 800F3738  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800F373C  38 60 00 01 */	li r3, 1
lbl_800F3740:
/* 800F3740  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F3744  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F3748  7C 08 03 A6 */	mtlr r0
/* 800F374C  38 21 00 10 */	addi r1, r1, 0x10
/* 800F3750  4E 80 00 20 */	blr 
