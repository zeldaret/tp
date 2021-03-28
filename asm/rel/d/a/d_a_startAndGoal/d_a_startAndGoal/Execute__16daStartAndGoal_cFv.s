lbl_80D4DC50:
/* 80D4DC50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4DC54  7C 08 02 A6 */	mflr r0
/* 80D4DC58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4DC5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4DC60  7C 7F 1B 78 */	mr r31, r3
/* 80D4DC64  80 03 0B 9C */	lwz r0, 0xb9c(r3)
/* 80D4DC68  2C 00 00 02 */	cmpwi r0, 2
/* 80D4DC6C  41 82 00 68 */	beq lbl_80D4DCD4
/* 80D4DC70  40 80 00 6C */	bge lbl_80D4DCDC
/* 80D4DC74  2C 00 00 00 */	cmpwi r0, 0
/* 80D4DC78  41 82 00 64 */	beq lbl_80D4DCDC
/* 80D4DC7C  40 80 00 0C */	bge lbl_80D4DC88
/* 80D4DC80  48 00 00 5C */	b lbl_80D4DCDC
/* 80D4DC84  48 00 00 58 */	b lbl_80D4DCDC
lbl_80D4DC88:
/* 80D4DC88  4B FF FF 25 */	bl isStartCheck__16daStartAndGoal_cFv
/* 80D4DC8C  2C 03 00 00 */	cmpwi r3, 0
/* 80D4DC90  41 82 00 38 */	beq lbl_80D4DCC8
/* 80D4DC94  38 00 00 02 */	li r0, 2
/* 80D4DC98  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80D4DC9C  88 1F 0B 99 */	lbz r0, 0xb99(r31)
/* 80D4DCA0  28 00 00 00 */	cmplwi r0, 0
/* 80D4DCA4  40 82 00 30 */	bne lbl_80D4DCD4
/* 80D4DCA8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D4DCAC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D4DCB0  80 63 00 00 */	lwz r3, 0(r3)
/* 80D4DCB4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80D4DCB8  3C 80 01 00 */	lis r4, 0x0100 /* 0x010000A5@ha */
/* 80D4DCBC  38 84 00 A5 */	addi r4, r4, 0x00A5 /* 0x010000A5@l */
/* 80D4DCC0  4B 56 17 DC */	b subBgmStart__8Z2SeqMgrFUl
/* 80D4DCC4  48 00 00 10 */	b lbl_80D4DCD4
lbl_80D4DCC8:
/* 80D4DCC8  7F E3 FB 78 */	mr r3, r31
/* 80D4DCCC  4B FF FF 05 */	bl isReadyCheck__16daStartAndGoal_cFv
/* 80D4DCD0  48 00 00 0C */	b lbl_80D4DCDC
lbl_80D4DCD4:
/* 80D4DCD4  7F E3 FB 78 */	mr r3, r31
/* 80D4DCD8  4B FF FD 91 */	bl actorPosCheck__16daStartAndGoal_cFv
lbl_80D4DCDC:
/* 80D4DCDC  38 60 00 01 */	li r3, 1
/* 80D4DCE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4DCE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4DCE8  7C 08 03 A6 */	mtlr r0
/* 80D4DCEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4DCF0  4E 80 00 20 */	blr 
