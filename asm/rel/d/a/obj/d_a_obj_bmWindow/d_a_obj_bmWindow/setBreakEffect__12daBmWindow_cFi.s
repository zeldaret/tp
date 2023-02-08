lbl_80BB9324:
/* 80BB9324  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80BB9328  7C 08 02 A6 */	mflr r0
/* 80BB932C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80BB9330  39 61 00 70 */	addi r11, r1, 0x70
/* 80BB9334  4B 7A 8E 99 */	bl _savegpr_25
/* 80BB9338  7C 7D 1B 78 */	mr r29, r3
/* 80BB933C  7C 9E 23 79 */	or. r30, r4, r4
/* 80BB9340  3C 60 80 BC */	lis r3, lit_3653@ha /* 0x80BB973C@ha */
/* 80BB9344  3B E3 97 3C */	addi r31, r3, lit_3653@l /* 0x80BB973C@l */
/* 80BB9348  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80BB934C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80BB9350  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80BB9354  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80BB9358  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80BB935C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BB9360  80 1D 04 E4 */	lwz r0, 0x4e4(r29)
/* 80BB9364  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BB9368  A0 1D 04 E8 */	lhz r0, 0x4e8(r29)
/* 80BB936C  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80BB9370  40 82 00 88 */	bne lbl_80BB93F8
/* 80BB9374  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB9378  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB937C  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80BB9380  38 61 00 28 */	addi r3, r1, 0x28
/* 80BB9384  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80BB9388  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80BB938C  4B 6A D7 A9 */	bl __mi__4cXyzCFRC3Vec
/* 80BB9390  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80BB9394  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80BB9398  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80BB939C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BB93A0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80BB93A4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BB93A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB93AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB93B0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80BB93B4  7C 00 00 D0 */	neg r0, r0
/* 80BB93B8  7C 04 07 34 */	extsh r4, r0
/* 80BB93BC  4B 45 30 21 */	bl mDoMtx_YrotS__FPA4_fs
/* 80BB93C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB93C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB93C8  38 81 00 34 */	addi r4, r1, 0x34
/* 80BB93CC  7C 85 23 78 */	mr r5, r4
/* 80BB93D0  4B 78 D9 9D */	bl PSMTXMultVec
/* 80BB93D4  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80BB93D8  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80BB93DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BB93E0  40 80 00 28 */	bge lbl_80BB9408
/* 80BB93E4  A8 61 00 22 */	lha r3, 0x22(r1)
/* 80BB93E8  3C 63 00 01 */	addis r3, r3, 1
/* 80BB93EC  38 03 80 00 */	addi r0, r3, -32768
/* 80BB93F0  B0 01 00 22 */	sth r0, 0x22(r1)
/* 80BB93F4  48 00 00 14 */	b lbl_80BB9408
lbl_80BB93F8:
/* 80BB93F8  A8 61 00 22 */	lha r3, 0x22(r1)
/* 80BB93FC  3C 63 00 01 */	addis r3, r3, 1
/* 80BB9400  38 03 80 00 */	addi r0, r3, -32768
/* 80BB9404  B0 01 00 22 */	sth r0, 0x22(r1)
lbl_80BB9408:
/* 80BB9408  1C 9E 00 03 */	mulli r4, r30, 3
/* 80BB940C  7C 99 23 78 */	mr r25, r4
/* 80BB9410  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB9414  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB9418  3B 7F 00 B8 */	addi r27, r31, 0xb8
/* 80BB941C  3B 84 00 03 */	addi r28, r4, 3
/* 80BB9420  54 9E 08 3C */	slwi r30, r4, 1
/* 80BB9424  48 00 00 50 */	b lbl_80BB9474
lbl_80BB9428:
/* 80BB9428  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80BB942C  38 80 00 00 */	li r4, 0
/* 80BB9430  90 81 00 08 */	stw r4, 8(r1)
/* 80BB9434  38 00 FF FF */	li r0, -1
/* 80BB9438  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BB943C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BB9440  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BB9444  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BB9448  38 80 00 00 */	li r4, 0
/* 80BB944C  7C BB F2 2E */	lhzx r5, r27, r30
/* 80BB9450  38 C1 00 40 */	addi r6, r1, 0x40
/* 80BB9454  38 E0 00 00 */	li r7, 0
/* 80BB9458  39 01 00 20 */	addi r8, r1, 0x20
/* 80BB945C  39 3D 04 EC */	addi r9, r29, 0x4ec
/* 80BB9460  39 40 00 FF */	li r10, 0xff
/* 80BB9464  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80BB9468  4B 49 36 29 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BB946C  3B 39 00 01 */	addi r25, r25, 1
/* 80BB9470  3B DE 00 02 */	addi r30, r30, 2
lbl_80BB9474:
/* 80BB9474  7C 19 E0 00 */	cmpw r25, r28
/* 80BB9478  41 80 FF B0 */	blt lbl_80BB9428
/* 80BB947C  39 61 00 70 */	addi r11, r1, 0x70
/* 80BB9480  4B 7A 8D 99 */	bl _restgpr_25
/* 80BB9484  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80BB9488  7C 08 03 A6 */	mtlr r0
/* 80BB948C  38 21 00 70 */	addi r1, r1, 0x70
/* 80BB9490  4E 80 00 20 */	blr 
