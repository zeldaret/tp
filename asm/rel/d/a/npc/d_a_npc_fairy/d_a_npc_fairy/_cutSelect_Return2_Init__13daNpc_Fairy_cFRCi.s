lbl_809B7A38:
/* 809B7A38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B7A3C  7C 08 02 A6 */	mflr r0
/* 809B7A40  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B7A44  80 04 00 00 */	lwz r0, 0(r4)
/* 809B7A48  2C 00 00 14 */	cmpwi r0, 0x14
/* 809B7A4C  41 82 00 24 */	beq lbl_809B7A70
/* 809B7A50  40 80 00 38 */	bge lbl_809B7A88
/* 809B7A54  2C 00 00 0A */	cmpwi r0, 0xa
/* 809B7A58  41 82 00 08 */	beq lbl_809B7A60
/* 809B7A5C  48 00 00 2C */	b lbl_809B7A88
lbl_809B7A60:
/* 809B7A60  80 83 0A 7C */	lwz r4, 0xa7c(r3)
/* 809B7A64  38 A0 00 00 */	li r5, 0
/* 809B7A68  4B 79 41 89 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809B7A6C  48 00 00 1C */	b lbl_809B7A88
lbl_809B7A70:
/* 809B7A70  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B7A74  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B7A78  80 63 00 00 */	lwz r3, 0(r3)
/* 809B7A7C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B7A80  38 80 00 2D */	li r4, 0x2d
/* 809B7A84  4B 8F 84 59 */	bl bgmStreamStop__8Z2SeqMgrFUl
lbl_809B7A88:
/* 809B7A88  38 60 00 00 */	li r3, 0
/* 809B7A8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B7A90  7C 08 03 A6 */	mtlr r0
/* 809B7A94  38 21 00 10 */	addi r1, r1, 0x10
/* 809B7A98  4E 80 00 20 */	blr 
