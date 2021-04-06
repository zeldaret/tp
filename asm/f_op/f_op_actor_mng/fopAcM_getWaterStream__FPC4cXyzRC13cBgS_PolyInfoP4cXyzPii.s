lbl_8001D9A8:
/* 8001D9A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001D9AC  7C 08 02 A6 */	mflr r0
/* 8001D9B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8001D9B4  39 61 00 30 */	addi r11, r1, 0x30
/* 8001D9B8  48 34 48 19 */	bl _savegpr_26
/* 8001D9BC  7C 7A 1B 78 */	mr r26, r3
/* 8001D9C0  7C 9B 23 78 */	mr r27, r4
/* 8001D9C4  7C BC 2B 78 */	mr r28, r5
/* 8001D9C8  7C DD 33 78 */	mr r29, r6
/* 8001D9CC  7C FE 3B 78 */	mr r30, r7
/* 8001D9D0  80 0D 88 24 */	lwz r0, m_top__13daTagStream_c(r13)
/* 8001D9D4  28 00 00 00 */	cmplwi r0, 0
/* 8001D9D8  41 82 00 74 */	beq lbl_8001DA4C
/* 8001D9DC  7C 1F 03 78 */	mr r31, r0
/* 8001D9E0  48 00 00 64 */	b lbl_8001DA44
lbl_8001D9E4:
/* 8001D9E4  88 1F 05 69 */	lbz r0, 0x569(r31)
/* 8001D9E8  28 00 00 00 */	cmplwi r0, 0
/* 8001D9EC  41 82 00 54 */	beq lbl_8001DA40
/* 8001D9F0  2C 1E 00 00 */	cmpwi r30, 0
/* 8001D9F4  41 82 00 10 */	beq lbl_8001DA04
/* 8001D9F8  80 1F 05 6C */	lwz r0, 0x56c(r31)
/* 8001D9FC  2C 00 00 00 */	cmpwi r0, 0
/* 8001DA00  41 82 00 40 */	beq lbl_8001DA40
lbl_8001DA04:
/* 8001DA04  7F E3 FB 78 */	mr r3, r31
/* 8001DA08  7F 44 D3 78 */	mr r4, r26
/* 8001DA0C  48 01 3E A9 */	bl checkArea__13daTagStream_cFPC4cXyz
/* 8001DA10  2C 03 00 00 */	cmpwi r3, 0
/* 8001DA14  41 82 00 2C */	beq lbl_8001DA40
/* 8001DA18  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 8001DA1C  D0 1C 00 00 */	stfs f0, 0(r28)
/* 8001DA20  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 8001DA24  D0 1C 00 04 */	stfs f0, 4(r28)
/* 8001DA28  C0 1F 05 00 */	lfs f0, 0x500(r31)
/* 8001DA2C  D0 1C 00 08 */	stfs f0, 8(r28)
/* 8001DA30  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 8001DA34  90 1D 00 00 */	stw r0, 0(r29)
/* 8001DA38  38 60 00 01 */	li r3, 1
/* 8001DA3C  48 00 00 90 */	b lbl_8001DACC
lbl_8001DA40:
/* 8001DA40  83 FF 05 74 */	lwz r31, 0x574(r31)
lbl_8001DA44:
/* 8001DA44  28 1F 00 00 */	cmplwi r31, 0
/* 8001DA48  40 82 FF 9C */	bne lbl_8001D9E4
lbl_8001DA4C:
/* 8001DA4C  2C 1E 00 00 */	cmpwi r30, 0
/* 8001DA50  41 82 00 0C */	beq lbl_8001DA5C
/* 8001DA54  38 60 00 00 */	li r3, 0
/* 8001DA58  48 00 00 74 */	b lbl_8001DACC
lbl_8001DA5C:
/* 8001DA5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001DA60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001DA64  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8001DA68  7F 64 DB 78 */	mr r4, r27
/* 8001DA6C  48 05 6B F5 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 8001DA70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001DA74  41 82 00 30 */	beq lbl_8001DAA4
/* 8001DA78  7F 63 DB 78 */	mr r3, r27
/* 8001DA7C  7F 84 E3 78 */	mr r4, r28
/* 8001DA80  7F A5 EB 78 */	mr r5, r29
/* 8001DA84  48 03 3E D9 */	bl dPath_GetPolyRoomPathVec__FRC13cBgS_PolyInfoP4cXyzPi
/* 8001DA88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001DA8C  41 82 00 3C */	beq lbl_8001DAC8
/* 8001DA90  38 61 00 08 */	addi r3, r1, 8
/* 8001DA94  7F 84 E3 78 */	mr r4, r28
/* 8001DA98  48 24 94 B1 */	bl normalizeZP__4cXyzFv
/* 8001DA9C  38 60 00 01 */	li r3, 1
/* 8001DAA0  48 00 00 2C */	b lbl_8001DACC
lbl_8001DAA4:
/* 8001DAA4  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 8001DAA8  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 8001DAAC  D0 1C 00 00 */	stfs f0, 0(r28)
/* 8001DAB0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8001DAB4  D0 1C 00 04 */	stfs f0, 4(r28)
/* 8001DAB8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8001DABC  D0 1C 00 08 */	stfs f0, 8(r28)
/* 8001DAC0  38 00 00 00 */	li r0, 0
/* 8001DAC4  90 1D 00 00 */	stw r0, 0(r29)
lbl_8001DAC8:
/* 8001DAC8  38 60 00 00 */	li r3, 0
lbl_8001DACC:
/* 8001DACC  39 61 00 30 */	addi r11, r1, 0x30
/* 8001DAD0  48 34 47 4D */	bl _restgpr_26
/* 8001DAD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001DAD8  7C 08 03 A6 */	mtlr r0
/* 8001DADC  38 21 00 30 */	addi r1, r1, 0x30
/* 8001DAE0  4E 80 00 20 */	blr 
