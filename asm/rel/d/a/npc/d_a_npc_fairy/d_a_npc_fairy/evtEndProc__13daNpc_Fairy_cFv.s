lbl_809B36F8:
/* 809B36F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B36FC  7C 08 02 A6 */	mflr r0
/* 809B3700  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B3704  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B3708  7C 7F 1B 78 */	mr r31, r3
/* 809B370C  A0 03 0F F4 */	lhz r0, 0xff4(r3)
/* 809B3710  2C 00 00 0F */	cmpwi r0, 0xf
/* 809B3714  41 82 00 68 */	beq lbl_809B377C
/* 809B3718  40 80 00 10 */	bge lbl_809B3728
/* 809B371C  2C 00 00 0E */	cmpwi r0, 0xe
/* 809B3720  40 80 00 10 */	bge lbl_809B3730
/* 809B3724  48 00 00 58 */	b lbl_809B377C
lbl_809B3728:
/* 809B3728  2C 00 00 11 */	cmpwi r0, 0x11
/* 809B372C  40 80 00 50 */	bge lbl_809B377C
lbl_809B3730:
/* 809B3730  A0 1F 09 AE */	lhz r0, 0x9ae(r31)
/* 809B3734  7C 00 07 35 */	extsh. r0, r0
/* 809B3738  40 82 00 10 */	bne lbl_809B3748
/* 809B373C  38 00 00 0F */	li r0, 0xf
/* 809B3740  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 809B3744  48 00 00 24 */	b lbl_809B3768
lbl_809B3748:
/* 809B3748  38 00 00 11 */	li r0, 0x11
/* 809B374C  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 809B3750  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 809B3754  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 809B3758  80 63 00 00 */	lwz r3, 0(r3)
/* 809B375C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B3760  38 80 00 2D */	li r4, 0x2d
/* 809B3764  4B 8F C7 78 */	b bgmStreamStop__8Z2SeqMgrFUl
lbl_809B3768:
/* 809B3768  A0 1F 0E 30 */	lhz r0, 0xe30(r31)
/* 809B376C  B0 1F 0F F4 */	sth r0, 0xff4(r31)
/* 809B3770  7F E3 FB 78 */	mr r3, r31
/* 809B3774  4B 79 6A B0 */	b evtChange__8daNpcT_cFv
/* 809B3778  48 00 00 0C */	b lbl_809B3784
lbl_809B377C:
/* 809B377C  38 60 00 00 */	li r3, 0
/* 809B3780  4B 7F 50 64 */	b dKy_change_colpat__FUc
lbl_809B3784:
/* 809B3784  38 60 00 01 */	li r3, 1
/* 809B3788  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B378C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B3790  7C 08 03 A6 */	mtlr r0
/* 809B3794  38 21 00 10 */	addi r1, r1, 0x10
/* 809B3798  4E 80 00 20 */	blr 
