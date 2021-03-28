lbl_80D4DCFC:
/* 80D4DCFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4DD00  7C 08 02 A6 */	mflr r0
/* 80D4DD04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4DD08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4DD0C  7C 7F 1B 78 */	mr r31, r3
/* 80D4DD10  88 03 0B 98 */	lbz r0, 0xb98(r3)
/* 80D4DD14  28 00 00 01 */	cmplwi r0, 1
/* 80D4DD18  40 82 00 1C */	bne lbl_80D4DD34
/* 80D4DD1C  88 1F 0B 99 */	lbz r0, 0xb99(r31)
/* 80D4DD20  54 00 18 38 */	slwi r0, r0, 3
/* 80D4DD24  3C 60 80 D5 */	lis r3, l_timerType@ha
/* 80D4DD28  38 63 DE CC */	addi r3, r3, l_timerType@l
/* 80D4DD2C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D4DD30  4B 2E 1A 6C */	b dComIfG_TimerDeleteRequest__Fi
lbl_80D4DD34:
/* 80D4DD34  88 1F 0B A0 */	lbz r0, 0xba0(r31)
/* 80D4DD38  28 00 00 01 */	cmplwi r0, 1
/* 80D4DD3C  40 82 00 2C */	bne lbl_80D4DD68
/* 80D4DD40  88 1F 0B 99 */	lbz r0, 0xb99(r31)
/* 80D4DD44  28 00 00 00 */	cmplwi r0, 0
/* 80D4DD48  41 82 00 0C */	beq lbl_80D4DD54
/* 80D4DD4C  28 00 00 01 */	cmplwi r0, 1
/* 80D4DD50  40 82 00 18 */	bne lbl_80D4DD68
lbl_80D4DD54:
/* 80D4DD54  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D4DD58  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D4DD5C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D4DD60  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80D4DD64  4B 56 1B 20 */	b subBgmStop__8Z2SeqMgrFv
lbl_80D4DD68:
/* 80D4DD68  38 60 00 01 */	li r3, 1
/* 80D4DD6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4DD70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4DD74  7C 08 03 A6 */	mtlr r0
/* 80D4DD78  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4DD7C  4E 80 00 20 */	blr 
