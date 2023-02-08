lbl_8059C0C8:
/* 8059C0C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059C0CC  7C 08 02 A6 */	mflr r0
/* 8059C0D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059C0D4  39 61 00 20 */	addi r11, r1, 0x20
/* 8059C0D8  4B DC 61 05 */	bl _savegpr_29
/* 8059C0DC  7C 7D 1B 78 */	mr r29, r3
/* 8059C0E0  3C 60 80 5A */	lis r3, l_dzbIdx@ha /* 0x8059C6A4@ha */
/* 8059C0E4  3B E3 C6 A4 */	addi r31, r3, l_dzbIdx@l /* 0x8059C6A4@l */
/* 8059C0E8  38 60 00 00 */	li r3, 0
/* 8059C0EC  3B C0 00 00 */	li r30, 0
/* 8059C0F0  88 1D 05 B1 */	lbz r0, 0x5b1(r29)
/* 8059C0F4  28 00 00 00 */	cmplwi r0, 0
/* 8059C0F8  41 82 00 08 */	beq lbl_8059C100
/* 8059C0FC  38 60 00 01 */	li r3, 1
lbl_8059C100:
/* 8059C100  88 1D 05 AE */	lbz r0, 0x5ae(r29)
/* 8059C104  28 00 00 00 */	cmplwi r0, 0
/* 8059C108  41 82 00 14 */	beq lbl_8059C11C
/* 8059C10C  88 1D 05 AF */	lbz r0, 0x5af(r29)
/* 8059C110  28 00 00 00 */	cmplwi r0, 0
/* 8059C114  40 82 00 08 */	bne lbl_8059C11C
/* 8059C118  3B C0 00 01 */	li r30, 1
lbl_8059C11C:
/* 8059C11C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8059C120  41 82 00 90 */	beq lbl_8059C1B0
/* 8059C124  88 1D 05 B2 */	lbz r0, 0x5b2(r29)
/* 8059C128  28 00 00 00 */	cmplwi r0, 0
/* 8059C12C  41 82 00 1C */	beq lbl_8059C148
/* 8059C130  88 7D 05 F0 */	lbz r3, 0x5f0(r29)
/* 8059C134  38 03 00 1E */	addi r0, r3, 0x1e
/* 8059C138  98 1D 05 F0 */	stb r0, 0x5f0(r29)
/* 8059C13C  7F A3 EB 78 */	mr r3, r29
/* 8059C140  48 00 00 FD */	bl modeLowerInit__10daObjSw5_cFv
/* 8059C144  48 00 00 D0 */	b lbl_8059C214
lbl_8059C148:
/* 8059C148  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8059C14C  C0 1D 05 FC */	lfs f0, 0x5fc(r29)
/* 8059C150  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8059C154  40 82 00 50 */	bne lbl_8059C1A4
/* 8059C158  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8059C15C  7C 03 07 74 */	extsb r3, r0
/* 8059C160  4B A9 0F 0D */	bl dComIfGp_getReverb__Fi
/* 8059C164  7C 67 1B 78 */	mr r7, r3
/* 8059C168  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080140@ha */
/* 8059C16C  38 03 01 40 */	addi r0, r3, 0x0140 /* 0x00080140@l */
/* 8059C170  90 01 00 0C */	stw r0, 0xc(r1)
/* 8059C174  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8059C178  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8059C17C  80 63 00 00 */	lwz r3, 0(r3)
/* 8059C180  38 81 00 0C */	addi r4, r1, 0xc
/* 8059C184  38 BD 05 38 */	addi r5, r29, 0x538
/* 8059C188  38 C0 00 00 */	li r6, 0
/* 8059C18C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8059C190  FC 40 08 90 */	fmr f2, f1
/* 8059C194  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 8059C198  FC 80 18 90 */	fmr f4, f3
/* 8059C19C  39 00 00 00 */	li r8, 0
/* 8059C1A0  4B D0 F7 E5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8059C1A4:
/* 8059C1A4  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8059C1A8  D0 1D 05 FC */	stfs f0, 0x5fc(r29)
/* 8059C1AC  48 00 00 68 */	b lbl_8059C214
lbl_8059C1B0:
/* 8059C1B0  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8059C1B4  C0 1D 05 FC */	lfs f0, 0x5fc(r29)
/* 8059C1B8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8059C1BC  41 82 00 50 */	beq lbl_8059C20C
/* 8059C1C0  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8059C1C4  7C 03 07 74 */	extsb r3, r0
/* 8059C1C8  4B A9 0E A5 */	bl dComIfGp_getReverb__Fi
/* 8059C1CC  7C 67 1B 78 */	mr r7, r3
/* 8059C1D0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080141@ha */
/* 8059C1D4  38 03 01 41 */	addi r0, r3, 0x0141 /* 0x00080141@l */
/* 8059C1D8  90 01 00 08 */	stw r0, 8(r1)
/* 8059C1DC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8059C1E0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8059C1E4  80 63 00 00 */	lwz r3, 0(r3)
/* 8059C1E8  38 81 00 08 */	addi r4, r1, 8
/* 8059C1EC  38 BD 05 38 */	addi r5, r29, 0x538
/* 8059C1F0  38 C0 00 00 */	li r6, 0
/* 8059C1F4  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8059C1F8  FC 40 08 90 */	fmr f2, f1
/* 8059C1FC  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 8059C200  FC 80 18 90 */	fmr f4, f3
/* 8059C204  39 00 00 00 */	li r8, 0
/* 8059C208  4B D0 F7 7D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8059C20C:
/* 8059C20C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8059C210  D0 1D 05 FC */	stfs f0, 0x5fc(r29)
lbl_8059C214:
/* 8059C214  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8059C218  41 82 00 0C */	beq lbl_8059C224
/* 8059C21C  7F A3 EB 78 */	mr r3, r29
/* 8059C220  4B FF FC 09 */	bl actionPauseOrderInit__10daObjSw5_cFv
lbl_8059C224:
/* 8059C224  39 61 00 20 */	addi r11, r1, 0x20
/* 8059C228  4B DC 60 01 */	bl _restgpr_29
/* 8059C22C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059C230  7C 08 03 A6 */	mtlr r0
/* 8059C234  38 21 00 20 */	addi r1, r1, 0x20
/* 8059C238  4E 80 00 20 */	blr 
