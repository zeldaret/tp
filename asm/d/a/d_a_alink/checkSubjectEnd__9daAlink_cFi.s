lbl_800CEBD8:
/* 800CEBD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800CEBDC  7C 08 02 A6 */	mflr r0
/* 800CEBE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800CEBE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800CEBE8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800CEBEC  7C 7E 1B 78 */	mr r30, r3
/* 800CEBF0  7C 9F 23 78 */	mr r31, r4
/* 800CEBF4  38 80 00 12 */	li r4, 0x12
/* 800CEBF8  4B FE 46 59 */	bl setDoStatus__9daAlink_cFUc
/* 800CEBFC  7F C3 F3 78 */	mr r3, r30
/* 800CEC00  48 04 70 21 */	bl checkEventRun__9daAlink_cCFv
/* 800CEC04  2C 03 00 00 */	cmpwi r3, 0
/* 800CEC08  40 82 00 70 */	bne lbl_800CEC78
/* 800CEC0C  7F C3 F3 78 */	mr r3, r30
/* 800CEC10  4B FE A7 31 */	bl checkEquipAnime__9daAlink_cCFv
/* 800CEC14  2C 03 00 00 */	cmpwi r3, 0
/* 800CEC18  40 82 00 60 */	bne lbl_800CEC78
/* 800CEC1C  88 1E 2F 8D */	lbz r0, 0x2f8d(r30)
/* 800CEC20  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800CEC24  40 82 00 54 */	bne lbl_800CEC78
/* 800CEC28  7F C3 F3 78 */	mr r3, r30
/* 800CEC2C  38 80 00 3E */	li r4, 0x3e
/* 800CEC30  4B FF 15 35 */	bl checkSetItemTrigger__9daAlink_cFi
/* 800CEC34  2C 03 00 00 */	cmpwi r3, 0
/* 800CEC38  40 82 00 40 */	bne lbl_800CEC78
/* 800CEC3C  7F C3 F3 78 */	mr r3, r30
/* 800CEC40  4B FF FF 19 */	bl subjectCancelTrigger__9daAlink_cFv
/* 800CEC44  2C 03 00 00 */	cmpwi r3, 0
/* 800CEC48  40 82 00 30 */	bne lbl_800CEC78
/* 800CEC4C  80 1E 05 88 */	lwz r0, 0x588(r30)
/* 800CEC50  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 800CEC54  40 82 00 24 */	bne lbl_800CEC78
/* 800CEC58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800CEC5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800CEC60  80 1E 31 7C */	lwz r0, 0x317c(r30)
/* 800CEC64  1C 00 00 38 */	mulli r0, r0, 0x38
/* 800CEC68  7C 63 02 14 */	add r3, r3, r0
/* 800CEC6C  80 03 5D 7C */	lwz r0, 0x5d7c(r3)
/* 800CEC70  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 800CEC74  41 82 00 54 */	beq lbl_800CECC8
lbl_800CEC78:
/* 800CEC78  2C 1F 00 00 */	cmpwi r31, 0
/* 800CEC7C  41 82 00 38 */	beq lbl_800CECB4
/* 800CEC80  38 00 00 38 */	li r0, 0x38
/* 800CEC84  90 01 00 08 */	stw r0, 8(r1)
/* 800CEC88  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 800CEC8C  38 81 00 08 */	addi r4, r1, 8
/* 800CEC90  38 A0 00 00 */	li r5, 0
/* 800CEC94  38 C0 00 00 */	li r6, 0
/* 800CEC98  38 E0 00 00 */	li r7, 0
/* 800CEC9C  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800CECA0  FC 40 08 90 */	fmr f2, f1
/* 800CECA4  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 800CECA8  FC 80 18 90 */	fmr f4, f3
/* 800CECAC  39 00 00 00 */	li r8, 0
/* 800CECB0  48 1D CC D5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_800CECB4:
/* 800CECB4  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 800CECB8  64 00 10 00 */	oris r0, r0, 0x1000
/* 800CECBC  90 1E 05 80 */	stw r0, 0x580(r30)
/* 800CECC0  38 60 00 01 */	li r3, 1
/* 800CECC4  48 00 00 08 */	b lbl_800CECCC
lbl_800CECC8:
/* 800CECC8  38 60 00 00 */	li r3, 0
lbl_800CECCC:
/* 800CECCC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800CECD0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800CECD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800CECD8  7C 08 03 A6 */	mtlr r0
/* 800CECDC  38 21 00 20 */	addi r1, r1, 0x20
/* 800CECE0  4E 80 00 20 */	blr 
