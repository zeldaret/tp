lbl_80A1B920:
/* 80A1B920  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A1B924  7C 08 02 A6 */	mflr r0
/* 80A1B928  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A1B92C  39 61 00 60 */	addi r11, r1, 0x60
/* 80A1B930  4B 94 68 A4 */	b _savegpr_27
/* 80A1B934  7C 7B 1B 78 */	mr r27, r3
/* 80A1B938  3C 80 80 A2 */	lis r4, lit_3908@ha
/* 80A1B93C  3B E4 10 80 */	addi r31, r4, lit_3908@l
/* 80A1B940  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 80A1B944  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 80A1B948  90 81 00 3C */	stw r4, 0x3c(r1)
/* 80A1B94C  90 01 00 40 */	stw r0, 0x40(r1)
/* 80A1B950  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 80A1B954  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A1B958  4B 73 4D 94 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1B95C  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80A1B960  38 7B 00 08 */	addi r3, r27, 8
/* 80A1B964  4B 73 4D 88 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1B968  90 61 00 40 */	stw r3, 0x40(r1)
/* 80A1B96C  38 7B 00 10 */	addi r3, r27, 0x10
/* 80A1B970  4B 73 4D 7C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1B974  90 61 00 44 */	stw r3, 0x44(r1)
/* 80A1B978  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A1B97C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A1B980  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80A1B984  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A1B988  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80A1B98C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A1B990  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A1B994  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A1B998  3B 60 00 00 */	li r27, 0
/* 80A1B99C  3B C0 00 00 */	li r30, 0
/* 80A1B9A0  3B 81 00 3C */	addi r28, r1, 0x3c
lbl_80A1B9A4:
/* 80A1B9A4  7F BC F0 2E */	lwzx r29, r28, r30
/* 80A1B9A8  28 1D 00 00 */	cmplwi r29, 0
/* 80A1B9AC  41 82 00 D4 */	beq lbl_80A1BA80
/* 80A1B9B0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A1B9B4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A1B9B8  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80A1B9BC  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80A1B9C0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A1B9C4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A1B9C8  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80A1B9CC  EC 01 00 2A */	fadds f0, f1, f0
/* 80A1B9D0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A1B9D4  38 60 00 00 */	li r3, 0
/* 80A1B9D8  38 80 00 07 */	li r4, 7
/* 80A1B9DC  48 00 55 29 */	bl func_80A20F04
/* 80A1B9E0  54 60 68 24 */	slwi r0, r3, 0xd
/* 80A1B9E4  7C 05 07 34 */	extsh r5, r0
/* 80A1B9E8  38 61 00 1C */	addi r3, r1, 0x1c
/* 80A1B9EC  38 80 00 00 */	li r4, 0
/* 80A1B9F0  38 C0 00 00 */	li r6, 0
/* 80A1B9F4  4B 84 BA 00 */	b __ct__5csXyzFsss
/* 80A1B9F8  38 00 00 00 */	li r0, 0
/* 80A1B9FC  90 01 00 08 */	stw r0, 8(r1)
/* 80A1BA00  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A1BA04  38 61 00 24 */	addi r3, r1, 0x24
/* 80A1BA08  38 80 00 00 */	li r4, 0
/* 80A1BA0C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80A1BA10  7C 05 07 74 */	extsb r5, r0
/* 80A1BA14  38 C1 00 1C */	addi r6, r1, 0x1c
/* 80A1BA18  38 E1 00 30 */	addi r7, r1, 0x30
/* 80A1BA1C  39 01 00 18 */	addi r8, r1, 0x18
/* 80A1BA20  39 21 00 14 */	addi r9, r1, 0x14
/* 80A1BA24  39 40 FF FF */	li r10, -1
/* 80A1BA28  4B 60 0B 88 */	b fopAcM_fastCreateItem__FPC4cXyziiPC5csXyzPC4cXyzPfPfiiPFPv_i
/* 80A1BA2C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80A1BA30  41 82 00 50 */	beq lbl_80A1BA80
/* 80A1BA34  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600D2@ha */
/* 80A1BA38  38 03 00 D2 */	addi r0, r3, 0x00D2 /* 0x000600D2@l */
/* 80A1BA3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A1BA40  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80A1BA44  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80A1BA48  80 63 00 00 */	lwz r3, 0(r3)
/* 80A1BA4C  38 81 00 10 */	addi r4, r1, 0x10
/* 80A1BA50  38 A1 00 24 */	addi r5, r1, 0x24
/* 80A1BA54  38 C0 00 00 */	li r6, 0
/* 80A1BA58  38 E0 00 00 */	li r7, 0
/* 80A1BA5C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80A1BA60  FC 40 08 90 */	fmr f2, f1
/* 80A1BA64  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80A1BA68  FC 80 18 90 */	fmr f4, f3
/* 80A1BA6C  39 00 00 00 */	li r8, 0
/* 80A1BA70  4B 88 FF 14 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80A1BA74  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80A1BA78  60 00 40 00 */	ori r0, r0, 0x4000
/* 80A1BA7C  90 1D 04 9C */	stw r0, 0x49c(r29)
lbl_80A1BA80:
/* 80A1BA80  3B 7B 00 01 */	addi r27, r27, 1
/* 80A1BA84  2C 1B 00 03 */	cmpwi r27, 3
/* 80A1BA88  3B DE 00 04 */	addi r30, r30, 4
/* 80A1BA8C  41 80 FF 18 */	blt lbl_80A1B9A4
/* 80A1BA90  38 60 00 01 */	li r3, 1
/* 80A1BA94  39 61 00 60 */	addi r11, r1, 0x60
/* 80A1BA98  4B 94 67 88 */	b _restgpr_27
/* 80A1BA9C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A1BAA0  7C 08 03 A6 */	mtlr r0
/* 80A1BAA4  38 21 00 60 */	addi r1, r1, 0x60
/* 80A1BAA8  4E 80 00 20 */	blr 
