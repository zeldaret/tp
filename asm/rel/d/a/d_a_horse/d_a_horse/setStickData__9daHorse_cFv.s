lbl_8083B600:
/* 8083B600  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8083B604  7C 08 02 A6 */	mflr r0
/* 8083B608  90 01 00 14 */	stw r0, 0x14(r1)
/* 8083B60C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8083B610  93 C1 00 08 */	stw r30, 8(r1)
/* 8083B614  7C 7F 1B 78 */	mr r31, r3
/* 8083B618  3C 60 80 84 */	lis r3, lit_3894@ha /* 0x808454AC@ha */
/* 8083B61C  38 A3 54 AC */	addi r5, r3, lit_3894@l /* 0x808454AC@l */
/* 8083B620  80 1F 17 44 */	lwz r0, 0x1744(r31)
/* 8083B624  74 00 90 00 */	andis. r0, r0, 0x9000
/* 8083B628  41 82 00 10 */	beq lbl_8083B638
/* 8083B62C  38 00 07 D0 */	li r0, 0x7d0
/* 8083B630  B0 1F 16 C2 */	sth r0, 0x16c2(r31)
/* 8083B634  48 00 00 0C */	b lbl_8083B640
lbl_8083B638:
/* 8083B638  A8 05 00 20 */	lha r0, 0x20(r5)
/* 8083B63C  B0 1F 16 C2 */	sth r0, 0x16c2(r31)
lbl_8083B640:
/* 8083B640  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8083B644  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8083B648  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 8083B64C  28 00 00 00 */	cmplwi r0, 0
/* 8083B650  41 82 00 CC */	beq lbl_8083B71C
/* 8083B654  88 1F 16 B8 */	lbz r0, 0x16b8(r31)
/* 8083B658  28 00 00 01 */	cmplwi r0, 1
/* 8083B65C  41 82 00 20 */	beq lbl_8083B67C
/* 8083B660  28 00 00 03 */	cmplwi r0, 3
/* 8083B664  41 82 00 18 */	beq lbl_8083B67C
/* 8083B668  28 00 00 02 */	cmplwi r0, 2
/* 8083B66C  40 82 00 70 */	bne lbl_8083B6DC
/* 8083B670  80 1F 17 2C */	lwz r0, 0x172c(r31)
/* 8083B674  2C 00 FF FF */	cmpwi r0, -1
/* 8083B678  41 82 00 64 */	beq lbl_8083B6DC
lbl_8083B67C:
/* 8083B67C  80 1F 17 40 */	lwz r0, 0x1740(r31)
/* 8083B680  28 00 00 02 */	cmplwi r0, 2
/* 8083B684  41 82 00 24 */	beq lbl_8083B6A8
/* 8083B688  28 00 00 0A */	cmplwi r0, 0xa
/* 8083B68C  41 82 00 1C */	beq lbl_8083B6A8
/* 8083B690  28 00 00 04 */	cmplwi r0, 4
/* 8083B694  41 82 00 14 */	beq lbl_8083B6A8
/* 8083B698  28 00 00 0B */	cmplwi r0, 0xb
/* 8083B69C  41 82 00 0C */	beq lbl_8083B6A8
/* 8083B6A0  28 00 00 03 */	cmplwi r0, 3
/* 8083B6A4  40 82 00 10 */	bne lbl_8083B6B4
lbl_8083B6A8:
/* 8083B6A8  C0 05 01 48 */	lfs f0, 0x148(r5)
/* 8083B6AC  D0 1F 17 58 */	stfs f0, 0x1758(r31)
/* 8083B6B0  48 00 00 20 */	b lbl_8083B6D0
lbl_8083B6B4:
/* 8083B6B4  28 00 00 06 */	cmplwi r0, 6
/* 8083B6B8  40 82 00 10 */	bne lbl_8083B6C8
/* 8083B6BC  C0 1F 17 88 */	lfs f0, 0x1788(r31)
/* 8083B6C0  D0 1F 17 58 */	stfs f0, 0x1758(r31)
/* 8083B6C4  48 00 00 0C */	b lbl_8083B6D0
lbl_8083B6C8:
/* 8083B6C8  C0 05 01 50 */	lfs f0, 0x150(r5)
/* 8083B6CC  D0 1F 17 58 */	stfs f0, 0x1758(r31)
lbl_8083B6D0:
/* 8083B6D0  A8 1F 16 FC */	lha r0, 0x16fc(r31)
/* 8083B6D4  B0 1F 16 EC */	sth r0, 0x16ec(r31)
/* 8083B6D8  48 00 01 38 */	b lbl_8083B810
lbl_8083B6DC:
/* 8083B6DC  80 7F 17 44 */	lwz r3, 0x1744(r31)
/* 8083B6E0  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 8083B6E4  41 82 00 10 */	beq lbl_8083B6F4
/* 8083B6E8  7F E3 FB 78 */	mr r3, r31
/* 8083B6EC  4B FF F1 A5 */	bl setStickRodeoMove__9daHorse_cFv
/* 8083B6F0  48 00 01 20 */	b lbl_8083B810
lbl_8083B6F4:
/* 8083B6F4  54 60 00 C7 */	rlwinm. r0, r3, 0, 3, 3
/* 8083B6F8  41 82 00 10 */	beq lbl_8083B708
/* 8083B6FC  7F E3 FB 78 */	mr r3, r31
/* 8083B700  4B FF F5 7D */	bl setStickCallMove__9daHorse_cFv
/* 8083B704  48 00 01 0C */	b lbl_8083B810
lbl_8083B708:
/* 8083B708  C0 05 01 50 */	lfs f0, 0x150(r5)
/* 8083B70C  D0 1F 17 58 */	stfs f0, 0x1758(r31)
/* 8083B710  38 00 00 00 */	li r0, 0
/* 8083B714  B0 1F 16 EC */	sth r0, 0x16ec(r31)
/* 8083B718  48 00 00 F8 */	b lbl_8083B810
lbl_8083B71C:
/* 8083B71C  80 7F 17 44 */	lwz r3, 0x1744(r31)
/* 8083B720  54 60 00 C7 */	rlwinm. r0, r3, 0, 3, 3
/* 8083B724  41 82 00 10 */	beq lbl_8083B734
/* 8083B728  7F E3 FB 78 */	mr r3, r31
/* 8083B72C  4B FF F5 51 */	bl setStickCallMove__9daHorse_cFv
/* 8083B730  48 00 00 E0 */	b lbl_8083B810
lbl_8083B734:
/* 8083B734  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 8083B738  41 82 00 40 */	beq lbl_8083B778
/* 8083B73C  54 60 02 53 */	rlwinm. r0, r3, 0, 9, 9
/* 8083B740  40 82 00 2C */	bne lbl_8083B76C
/* 8083B744  80 1F 17 44 */	lwz r0, 0x1744(r31)
/* 8083B748  64 00 00 40 */	oris r0, r0, 0x40
/* 8083B74C  90 1F 17 44 */	stw r0, 0x1744(r31)
/* 8083B750  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8083B754  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8083B758  80 63 00 00 */	lwz r3, 0(r3)
/* 8083B75C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8083B760  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000029@ha */
/* 8083B764  38 84 00 29 */	addi r4, r4, 0x0029 /* 0x01000029@l */
/* 8083B768  4B A7 3D 35 */	bl subBgmStart__8Z2SeqMgrFUl
lbl_8083B76C:
/* 8083B76C  7F E3 FB 78 */	mr r3, r31
/* 8083B770  4B FF F1 21 */	bl setStickRodeoMove__9daHorse_cFv
/* 8083B774  48 00 00 9C */	b lbl_8083B810
lbl_8083B778:
/* 8083B778  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8083B77C  41 82 00 64 */	beq lbl_8083B7E0
/* 8083B780  80 C4 5D B4 */	lwz r6, 0x5db4(r4)
/* 8083B784  A0 06 2F E8 */	lhz r0, 0x2fe8(r6)
/* 8083B788  28 00 00 3B */	cmplwi r0, 0x3b
/* 8083B78C  41 82 00 54 */	beq lbl_8083B7E0
/* 8083B790  28 00 00 50 */	cmplwi r0, 0x50
/* 8083B794  41 82 00 4C */	beq lbl_8083B7E0
/* 8083B798  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 8083B79C  40 82 00 44 */	bne lbl_8083B7E0
/* 8083B7A0  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 8083B7A4  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 8083B7A8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8083B7AC  D0 1F 17 58 */	stfs f0, 0x1758(r31)
/* 8083B7B0  AB C3 00 0C */	lha r30, 0xc(r3)
/* 8083B7B4  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 8083B7B8  7C 00 07 74 */	extsb r0, r0
/* 8083B7BC  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8083B7C0  7C 64 02 14 */	add r3, r4, r0
/* 8083B7C4  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 8083B7C8  4B 94 5E 4D */	bl dCam_getControledAngleY__FP12camera_class
/* 8083B7CC  3C 03 00 01 */	addis r0, r3, 1
/* 8083B7D0  7C 60 F2 14 */	add r3, r0, r30
/* 8083B7D4  38 03 80 00 */	addi r0, r3, -32768
/* 8083B7D8  B0 1F 16 EC */	sth r0, 0x16ec(r31)
/* 8083B7DC  48 00 00 34 */	b lbl_8083B810
lbl_8083B7E0:
/* 8083B7E0  80 1F 17 4C */	lwz r0, 0x174c(r31)
/* 8083B7E4  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8083B7E8  41 82 00 18 */	beq lbl_8083B800
/* 8083B7EC  C0 05 01 48 */	lfs f0, 0x148(r5)
/* 8083B7F0  D0 1F 17 58 */	stfs f0, 0x1758(r31)
/* 8083B7F4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8083B7F8  B0 1F 16 EC */	sth r0, 0x16ec(r31)
/* 8083B7FC  48 00 00 14 */	b lbl_8083B810
lbl_8083B800:
/* 8083B800  C0 05 01 50 */	lfs f0, 0x150(r5)
/* 8083B804  D0 1F 17 58 */	stfs f0, 0x1758(r31)
/* 8083B808  38 00 00 00 */	li r0, 0
/* 8083B80C  B0 1F 16 EC */	sth r0, 0x16ec(r31)
lbl_8083B810:
/* 8083B810  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8083B814  83 C1 00 08 */	lwz r30, 8(r1)
/* 8083B818  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8083B81C  7C 08 03 A6 */	mtlr r0
/* 8083B820  38 21 00 10 */	addi r1, r1, 0x10
/* 8083B824  4E 80 00 20 */	blr 
