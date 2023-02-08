lbl_80291444:
/* 80291444  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80291448  7C 08 02 A6 */	mflr r0
/* 8029144C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80291450  39 61 00 30 */	addi r11, r1, 0x30
/* 80291454  48 0D 0D 7D */	bl _savegpr_26
/* 80291458  7C 7F 1B 78 */	mr r31, r3
/* 8029145C  7C 9C 23 78 */	mr r28, r4
/* 80291460  38 00 00 01 */	li r0, 1
/* 80291464  90 03 01 D0 */	stw r0, 0x1d0(r3)
/* 80291468  3B A0 00 01 */	li r29, 1
/* 8029146C  3B 60 00 04 */	li r27, 4
/* 80291470  48 00 00 B0 */	b lbl_80291520
lbl_80291474:
/* 80291474  3B DB 01 70 */	addi r30, r27, 0x170
/* 80291478  7C 1F F0 2E */	lwzx r0, r31, r30
/* 8029147C  28 00 00 00 */	cmplwi r0, 0
/* 80291480  40 82 00 8C */	bne lbl_8029150C
/* 80291484  88 0D 8C B0 */	lbz r0, struct_80451230+0x0(r13)
/* 80291488  7C 00 07 75 */	extsb. r0, r0
/* 8029148C  40 82 00 34 */	bne lbl_802914C0
/* 80291490  3C 60 80 43 */	lis r3, data_80431AF4@ha /* 0x80431AF4@ha */
/* 80291494  38 63 1A F4 */	addi r3, r3, data_80431AF4@l /* 0x80431AF4@l */
/* 80291498  4B FF F3 B1 */	bl __ct__17JASGenericMemPoolFv
/* 8029149C  3C 60 80 43 */	lis r3, data_80431AF4@ha /* 0x80431AF4@ha */
/* 802914A0  38 63 1A F4 */	addi r3, r3, data_80431AF4@l /* 0x80431AF4@l */
/* 802914A4  3C 80 80 29 */	lis r4, func_80293334@ha /* 0x80293334@ha */
/* 802914A8  38 84 33 34 */	addi r4, r4, func_80293334@l /* 0x80293334@l */
/* 802914AC  3C A0 80 43 */	lis r5, lit_470@ha /* 0x80431ADC@ha */
/* 802914B0  38 A5 1A DC */	addi r5, r5, lit_470@l /* 0x80431ADC@l */
/* 802914B4  48 0D 07 71 */	bl __register_global_object
/* 802914B8  38 00 00 01 */	li r0, 1
/* 802914BC  98 0D 8C B0 */	stb r0, struct_80451230+0x0(r13)
lbl_802914C0:
/* 802914C0  48 0A C2 35 */	bl OSDisableInterrupts
/* 802914C4  90 61 00 0C */	stw r3, 0xc(r1)
/* 802914C8  3C 60 80 43 */	lis r3, data_80431AF4@ha /* 0x80431AF4@ha */
/* 802914CC  38 63 1A F4 */	addi r3, r3, data_80431AF4@l /* 0x80431AF4@l */
/* 802914D0  38 80 00 50 */	li r4, 0x50
/* 802914D4  4B FF F4 75 */	bl alloc__17JASGenericMemPoolFUl
/* 802914D8  7C 7A 1B 78 */	mr r26, r3
/* 802914DC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802914E0  48 0A C2 3D */	bl OSRestoreInterrupts
/* 802914E4  28 1A 00 00 */	cmplwi r26, 0
/* 802914E8  41 82 00 14 */	beq lbl_802914FC
/* 802914EC  7F 43 D3 78 */	mr r3, r26
/* 802914F0  7F E4 FB 78 */	mr r4, r31
/* 802914F4  48 00 1B E9 */	bl __ct__Q28JASTrack11TChannelMgrFP8JASTrack
/* 802914F8  7C 7A 1B 78 */	mr r26, r3
lbl_802914FC:
/* 802914FC  7F 5F F1 2E */	stwx r26, r31, r30
/* 80291500  7C 1F F0 2E */	lwzx r0, r31, r30
/* 80291504  28 00 00 00 */	cmplwi r0, 0
/* 80291508  41 82 00 B4 */	beq lbl_802915BC
lbl_8029150C:
/* 8029150C  80 7F 01 D0 */	lwz r3, 0x1d0(r31)
/* 80291510  38 03 00 01 */	addi r0, r3, 1
/* 80291514  90 1F 01 D0 */	stw r0, 0x1d0(r31)
/* 80291518  3B BD 00 01 */	addi r29, r29, 1
/* 8029151C  3B 7B 00 04 */	addi r27, r27, 4
lbl_80291520:
/* 80291520  7C 1D E0 40 */	cmplw r29, r28
/* 80291524  41 80 FF 50 */	blt lbl_80291474
/* 80291528  83 9F 01 D0 */	lwz r28, 0x1d0(r31)
/* 8029152C  57 9B 10 3A */	slwi r27, r28, 2
/* 80291530  48 00 00 84 */	b lbl_802915B4
lbl_80291534:
/* 80291534  3B BB 01 70 */	addi r29, r27, 0x170
/* 80291538  7F DF E8 2E */	lwzx r30, r31, r29
/* 8029153C  28 1E 00 00 */	cmplwi r30, 0
/* 80291540  41 82 00 6C */	beq lbl_802915AC
/* 80291544  88 0D 8C B0 */	lbz r0, struct_80451230+0x0(r13)
/* 80291548  7C 00 07 75 */	extsb. r0, r0
/* 8029154C  40 82 00 34 */	bne lbl_80291580
/* 80291550  3C 60 80 43 */	lis r3, data_80431AF4@ha /* 0x80431AF4@ha */
/* 80291554  38 63 1A F4 */	addi r3, r3, data_80431AF4@l /* 0x80431AF4@l */
/* 80291558  4B FF F2 F1 */	bl __ct__17JASGenericMemPoolFv
/* 8029155C  3C 60 80 43 */	lis r3, data_80431AF4@ha /* 0x80431AF4@ha */
/* 80291560  38 63 1A F4 */	addi r3, r3, data_80431AF4@l /* 0x80431AF4@l */
/* 80291564  3C 80 80 29 */	lis r4, func_80293334@ha /* 0x80293334@ha */
/* 80291568  38 84 33 34 */	addi r4, r4, func_80293334@l /* 0x80293334@l */
/* 8029156C  3C A0 80 43 */	lis r5, lit_470@ha /* 0x80431ADC@ha */
/* 80291570  38 A5 1A DC */	addi r5, r5, lit_470@l /* 0x80431ADC@l */
/* 80291574  48 0D 06 B1 */	bl __register_global_object
/* 80291578  38 00 00 01 */	li r0, 1
/* 8029157C  98 0D 8C B0 */	stb r0, struct_80451230+0x0(r13)
lbl_80291580:
/* 80291580  48 0A C1 75 */	bl OSDisableInterrupts
/* 80291584  90 61 00 08 */	stw r3, 8(r1)
/* 80291588  3C 60 80 43 */	lis r3, data_80431AF4@ha /* 0x80431AF4@ha */
/* 8029158C  38 63 1A F4 */	addi r3, r3, data_80431AF4@l /* 0x80431AF4@l */
/* 80291590  7F C4 F3 78 */	mr r4, r30
/* 80291594  38 A0 00 50 */	li r5, 0x50
/* 80291598  4B FF F3 FD */	bl free__17JASGenericMemPoolFPvUl
/* 8029159C  80 61 00 08 */	lwz r3, 8(r1)
/* 802915A0  48 0A C1 7D */	bl OSRestoreInterrupts
/* 802915A4  38 00 00 00 */	li r0, 0
/* 802915A8  7C 1F E9 2E */	stwx r0, r31, r29
lbl_802915AC:
/* 802915AC  3B 9C 00 01 */	addi r28, r28, 1
/* 802915B0  3B 7B 00 04 */	addi r27, r27, 4
lbl_802915B4:
/* 802915B4  28 1C 00 04 */	cmplwi r28, 4
/* 802915B8  41 80 FF 7C */	blt lbl_80291534
lbl_802915BC:
/* 802915BC  39 61 00 30 */	addi r11, r1, 0x30
/* 802915C0  48 0D 0C 5D */	bl _restgpr_26
/* 802915C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802915C8  7C 08 03 A6 */	mtlr r0
/* 802915CC  38 21 00 30 */	addi r1, r1, 0x30
/* 802915D0  4E 80 00 20 */	blr 
