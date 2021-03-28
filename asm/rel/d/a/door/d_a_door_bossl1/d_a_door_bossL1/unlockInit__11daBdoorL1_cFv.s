lbl_804E3C14:
/* 804E3C14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E3C18  7C 08 02 A6 */	mflr r0
/* 804E3C1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E3C20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804E3C24  7C 7F 1B 78 */	mr r31, r3
/* 804E3C28  80 63 05 94 */	lwz r3, 0x594(r3)
/* 804E3C2C  3C 03 00 01 */	addis r0, r3, 1
/* 804E3C30  28 00 FF FF */	cmplwi r0, 0xffff
/* 804E3C34  40 82 00 0C */	bne lbl_804E3C40
/* 804E3C38  38 60 00 01 */	li r3, 1
/* 804E3C3C  48 00 00 7C */	b lbl_804E3CB8
lbl_804E3C40:
/* 804E3C40  90 61 00 0C */	stw r3, 0xc(r1)
/* 804E3C44  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 804E3C48  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 804E3C4C  38 81 00 0C */	addi r4, r1, 0xc
/* 804E3C50  4B B3 5B A8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 804E3C54  7C 65 1B 79 */	or. r5, r3, r3
/* 804E3C58  41 82 00 54 */	beq lbl_804E3CAC
/* 804E3C5C  38 00 00 01 */	li r0, 1
/* 804E3C60  98 05 2C A4 */	stb r0, 0x2ca4(r5)
/* 804E3C64  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080060@ha */
/* 804E3C68  38 03 00 60 */	addi r0, r3, 0x0060 /* 0x00080060@l */
/* 804E3C6C  90 01 00 08 */	stw r0, 8(r1)
/* 804E3C70  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804E3C74  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804E3C78  80 63 00 00 */	lwz r3, 0(r3)
/* 804E3C7C  38 81 00 08 */	addi r4, r1, 8
/* 804E3C80  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 804E3C84  38 C0 00 00 */	li r6, 0
/* 804E3C88  38 E0 00 00 */	li r7, 0
/* 804E3C8C  3D 00 80 4E */	lis r8, lit_3861@ha
/* 804E3C90  C0 28 4A 50 */	lfs f1, lit_3861@l(r8)
/* 804E3C94  FC 40 08 90 */	fmr f2, f1
/* 804E3C98  3D 00 80 4E */	lis r8, lit_4238@ha
/* 804E3C9C  C0 68 4A 68 */	lfs f3, lit_4238@l(r8)
/* 804E3CA0  FC 80 18 90 */	fmr f4, f3
/* 804E3CA4  39 00 00 00 */	li r8, 0
/* 804E3CA8  4B DC 7C DC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_804E3CAC:
/* 804E3CAC  38 00 00 01 */	li r0, 1
/* 804E3CB0  98 1F 05 9B */	stb r0, 0x59b(r31)
/* 804E3CB4  38 60 00 01 */	li r3, 1
lbl_804E3CB8:
/* 804E3CB8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804E3CBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E3CC0  7C 08 03 A6 */	mtlr r0
/* 804E3CC4  38 21 00 20 */	addi r1, r1, 0x20
/* 804E3CC8  4E 80 00 20 */	blr 
