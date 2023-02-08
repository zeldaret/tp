lbl_800F3818:
/* 800F3818  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F381C  7C 08 02 A6 */	mflr r0
/* 800F3820  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F3824  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F3828  7C 7F 1B 78 */	mr r31, r3
/* 800F382C  38 80 00 52 */	li r4, 0x52
/* 800F3830  4B FC F5 75 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F3834  2C 03 00 00 */	cmpwi r3, 0
/* 800F3838  40 82 00 0C */	bne lbl_800F3844
/* 800F383C  38 60 00 00 */	li r3, 0
/* 800F3840  48 00 00 40 */	b lbl_800F3880
lbl_800F3844:
/* 800F3844  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800F3848  28 00 01 03 */	cmplwi r0, 0x103
/* 800F384C  41 82 00 1C */	beq lbl_800F3868
/* 800F3850  7F E3 FB 78 */	mr r3, r31
/* 800F3854  38 80 00 00 */	li r4, 0
/* 800F3858  38 A0 00 00 */	li r5, 0
/* 800F385C  4B FC DA 81 */	bl deleteEquipItem__9daAlink_cFii
/* 800F3860  7F E3 FB 78 */	mr r3, r31
/* 800F3864  4B FD DA 05 */	bl setSwordModel__9daAlink_cFv
lbl_800F3868:
/* 800F3868  7F E3 FB 78 */	mr r3, r31
/* 800F386C  38 80 01 99 */	li r4, 0x199
/* 800F3870  4B FB 97 11 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800F3874  7F E3 FB 78 */	mr r3, r31
/* 800F3878  4B FF A1 AD */	bl setSyncRidePos__9daAlink_cFv
/* 800F387C  38 60 00 01 */	li r3, 1
lbl_800F3880:
/* 800F3880  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F3884  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F3888  7C 08 03 A6 */	mtlr r0
/* 800F388C  38 21 00 10 */	addi r1, r1, 0x10
/* 800F3890  4E 80 00 20 */	blr 
