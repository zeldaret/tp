lbl_80674FDC:
/* 80674FDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80674FE0  7C 08 02 A6 */	mflr r0
/* 80674FE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80674FE8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80674FEC  7C 7F 1B 78 */	mr r31, r3
/* 80674FF0  4B FF DF 95 */	bl getDoorType__12daMBdoorL1_cFv
/* 80674FF4  2C 03 00 00 */	cmpwi r3, 0
/* 80674FF8  40 82 00 58 */	bne lbl_80675050
/* 80674FFC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80675000  7C 03 07 74 */	extsb r3, r0
/* 80675004  4B 9B 80 68 */	b dComIfGp_getReverb__Fi
/* 80675008  7C 67 1B 78 */	mr r7, r3
/* 8067500C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B4@ha */
/* 80675010  38 03 00 B4 */	addi r0, r3, 0x00B4 /* 0x000800B4@l */
/* 80675014  90 01 00 08 */	stw r0, 8(r1)
/* 80675018  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8067501C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80675020  80 63 00 00 */	lwz r3, 0(r3)
/* 80675024  38 81 00 08 */	addi r4, r1, 8
/* 80675028  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8067502C  38 C0 00 00 */	li r6, 0
/* 80675030  3D 00 80 67 */	lis r8, lit_3741@ha
/* 80675034  C0 28 75 9C */	lfs f1, lit_3741@l(r8)
/* 80675038  FC 40 08 90 */	fmr f2, f1
/* 8067503C  3D 00 80 67 */	lis r8, lit_3742@ha
/* 80675040  C0 68 75 A0 */	lfs f3, lit_3742@l(r8)
/* 80675044  FC 80 18 90 */	fmr f4, f3
/* 80675048  39 00 00 00 */	li r8, 0
/* 8067504C  4B C3 69 38 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80675050:
/* 80675050  38 60 00 01 */	li r3, 1
/* 80675054  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80675058  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8067505C  7C 08 03 A6 */	mtlr r0
/* 80675060  38 21 00 20 */	addi r1, r1, 0x20
/* 80675064  4E 80 00 20 */	blr 
