lbl_80C5C6B0:
/* 80C5C6B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C5C6B4  7C 08 02 A6 */	mflr r0
/* 80C5C6B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C5C6BC  39 61 00 30 */	addi r11, r1, 0x30
/* 80C5C6C0  4B 70 5B 0D */	bl _savegpr_25
/* 80C5C6C4  7C 7F 1B 78 */	mr r31, r3
/* 80C5C6C8  4B 54 EB B9 */	bl dKy_camera_water_in_status_check__Fv
/* 80C5C6CC  2C 03 00 00 */	cmpwi r3, 0
/* 80C5C6D0  41 82 00 34 */	beq lbl_80C5C704
/* 80C5C6D4  38 60 00 00 */	li r3, 0
/* 80C5C6D8  38 80 00 FF */	li r4, 0xff
/* 80C5C6DC  38 00 00 04 */	li r0, 4
/* 80C5C6E0  7C 09 03 A6 */	mtctr r0
lbl_80C5C6E4:
/* 80C5C6E4  38 03 05 80 */	addi r0, r3, 0x580
/* 80C5C6E8  7C BF 00 2E */	lwzx r5, r31, r0
/* 80C5C6EC  28 05 00 00 */	cmplwi r5, 0
/* 80C5C6F0  41 82 00 08 */	beq lbl_80C5C6F8
/* 80C5C6F4  98 85 00 BB */	stb r4, 0xbb(r5)
lbl_80C5C6F8:
/* 80C5C6F8  38 63 00 04 */	addi r3, r3, 4
/* 80C5C6FC  42 00 FF E8 */	bdnz lbl_80C5C6E4
/* 80C5C700  48 00 00 30 */	b lbl_80C5C730
lbl_80C5C704:
/* 80C5C704  38 60 00 00 */	li r3, 0
/* 80C5C708  38 80 00 80 */	li r4, 0x80
/* 80C5C70C  38 00 00 04 */	li r0, 4
/* 80C5C710  7C 09 03 A6 */	mtctr r0
lbl_80C5C714:
/* 80C5C714  38 03 05 80 */	addi r0, r3, 0x580
/* 80C5C718  7C BF 00 2E */	lwzx r5, r31, r0
/* 80C5C71C  28 05 00 00 */	cmplwi r5, 0
/* 80C5C720  41 82 00 08 */	beq lbl_80C5C728
/* 80C5C724  98 85 00 BB */	stb r4, 0xbb(r5)
lbl_80C5C728:
/* 80C5C728  38 63 00 04 */	addi r3, r3, 4
/* 80C5C72C  42 00 FF E8 */	bdnz lbl_80C5C714
lbl_80C5C730:
/* 80C5C730  3B 20 00 00 */	li r25, 0
/* 80C5C734  3B C0 00 00 */	li r30, 0
/* 80C5C738  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080299@ha */
/* 80C5C73C  3B 43 02 99 */	addi r26, r3, 0x0299 /* 0x00080299@l */
/* 80C5C740  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C5C744  3B 63 13 68 */	addi r27, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C5C748  3C 60 80 C6 */	lis r3, lit_3637@ha /* 0x80C5C880@ha */
/* 80C5C74C  3B 83 C8 80 */	addi r28, r3, lit_3637@l /* 0x80C5C880@l */
/* 80C5C750  3C 60 80 C6 */	lis r3, lit_3710@ha /* 0x80C5C89C@ha */
/* 80C5C754  3B A3 C8 9C */	addi r29, r3, lit_3710@l /* 0x80C5C89C@l */
lbl_80C5C758:
/* 80C5C758  93 41 00 08 */	stw r26, 8(r1)
/* 80C5C75C  80 7B 00 00 */	lwz r3, 0(r27)
/* 80C5C760  38 81 00 08 */	addi r4, r1, 8
/* 80C5C764  38 BE 05 68 */	addi r5, r30, 0x568
/* 80C5C768  7C BF 2A 14 */	add r5, r31, r5
/* 80C5C76C  38 C0 00 00 */	li r6, 0
/* 80C5C770  38 E0 00 00 */	li r7, 0
/* 80C5C774  C0 3C 00 00 */	lfs f1, 0(r28)
/* 80C5C778  FC 40 08 90 */	fmr f2, f1
/* 80C5C77C  C0 7D 00 00 */	lfs f3, 0(r29)
/* 80C5C780  FC 80 18 90 */	fmr f4, f3
/* 80C5C784  39 00 00 00 */	li r8, 0
/* 80C5C788  4B 64 FD 85 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C5C78C  3B 39 00 01 */	addi r25, r25, 1
/* 80C5C790  2C 19 00 02 */	cmpwi r25, 2
/* 80C5C794  3B DE 00 0C */	addi r30, r30, 0xc
/* 80C5C798  41 80 FF C0 */	blt lbl_80C5C758
/* 80C5C79C  38 60 00 01 */	li r3, 1
/* 80C5C7A0  39 61 00 30 */	addi r11, r1, 0x30
/* 80C5C7A4  4B 70 5A 75 */	bl _restgpr_25
/* 80C5C7A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C5C7AC  7C 08 03 A6 */	mtlr r0
/* 80C5C7B0  38 21 00 30 */	addi r1, r1, 0x30
/* 80C5C7B4  4E 80 00 20 */	blr 
