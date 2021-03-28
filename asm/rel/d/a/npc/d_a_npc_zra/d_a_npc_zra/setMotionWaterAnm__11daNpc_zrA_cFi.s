lbl_80B7C070:
/* 80B7C070  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B7C074  7C 08 02 A6 */	mflr r0
/* 80B7C078  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B7C07C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B7C080  4B 7E 61 4C */	b _savegpr_25
/* 80B7C084  7C 79 1B 78 */	mr r25, r3
/* 80B7C088  7C 9A 23 78 */	mr r26, r4
/* 80B7C08C  3C 80 80 B9 */	lis r4, cNullVec__6Z2Calc@ha
/* 80B7C090  3B E4 CE 90 */	addi r31, r4, cNullVec__6Z2Calc@l
/* 80B7C094  38 80 00 00 */	li r4, 0
/* 80B7C098  3B C0 00 00 */	li r30, 0
/* 80B7C09C  3B A0 00 00 */	li r29, 0
/* 80B7C0A0  3B 80 00 00 */	li r28, 0
/* 80B7C0A4  3B 60 00 00 */	li r27, 0
/* 80B7C0A8  80 A3 09 9C */	lwz r5, 0x99c(r3)
/* 80B7C0AC  38 00 FF DB */	li r0, -37
/* 80B7C0B0  7C A0 00 38 */	and r0, r5, r0
/* 80B7C0B4  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80B7C0B8  80 A3 14 F8 */	lwz r5, 0x14f8(r3)
/* 80B7C0BC  38 00 9F ED */	li r0, -24595
/* 80B7C0C0  7C A0 00 38 */	and r0, r5, r0
/* 80B7C0C4  90 03 14 F8 */	stw r0, 0x14f8(r3)
/* 80B7C0C8  88 03 09 F4 */	lbz r0, 0x9f4(r3)
/* 80B7C0CC  28 00 00 00 */	cmplwi r0, 0
/* 80B7C0D0  40 82 00 34 */	bne lbl_80B7C104
/* 80B7C0D4  57 40 18 38 */	slwi r0, r26, 3
/* 80B7C0D8  38 DF 02 AC */	addi r6, r31, 0x2ac
/* 80B7C0DC  7C A6 00 2E */	lwzx r5, r6, r0
/* 80B7C0E0  2C 05 00 00 */	cmpwi r5, 0
/* 80B7C0E4  41 80 00 20 */	blt lbl_80B7C104
/* 80B7C0E8  7C 86 02 14 */	add r4, r6, r0
/* 80B7C0EC  80 04 00 04 */	lwz r0, 4(r4)
/* 80B7C0F0  54 00 10 3A */	slwi r0, r0, 2
/* 80B7C0F4  38 9F 04 70 */	addi r4, r31, 0x470
/* 80B7C0F8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B7C0FC  4B 5D 6A E4 */	b getTevRegKeyAnmP__8daNpcF_cFPci
/* 80B7C100  7C 64 1B 78 */	mr r4, r3
lbl_80B7C104:
/* 80B7C104  2C 1A 00 01 */	cmpwi r26, 1
/* 80B7C108  41 82 00 20 */	beq lbl_80B7C128
/* 80B7C10C  40 80 00 28 */	bge lbl_80B7C134
/* 80B7C110  2C 1A 00 00 */	cmpwi r26, 0
/* 80B7C114  40 80 00 08 */	bge lbl_80B7C11C
/* 80B7C118  48 00 00 1C */	b lbl_80B7C134
lbl_80B7C11C:
/* 80B7C11C  3B 80 00 02 */	li r28, 2
/* 80B7C120  7F 5B D3 78 */	mr r27, r26
/* 80B7C124  48 00 00 14 */	b lbl_80B7C138
lbl_80B7C128:
/* 80B7C128  7F 5C D3 78 */	mr r28, r26
/* 80B7C12C  7F 5B D3 78 */	mr r27, r26
/* 80B7C130  48 00 00 08 */	b lbl_80B7C138
lbl_80B7C134:
/* 80B7C134  38 80 00 00 */	li r4, 0
lbl_80B7C138:
/* 80B7C138  93 79 14 F4 */	stw r27, 0x14f4(r25)
/* 80B7C13C  28 04 00 00 */	cmplwi r4, 0
/* 80B7C140  41 82 00 54 */	beq lbl_80B7C194
/* 80B7C144  80 19 05 CC */	lwz r0, 0x5cc(r25)
/* 80B7C148  7C 00 20 40 */	cmplw r0, r4
/* 80B7C14C  40 82 00 14 */	bne lbl_80B7C160
/* 80B7C150  80 19 09 9C */	lwz r0, 0x99c(r25)
/* 80B7C154  60 00 00 20 */	ori r0, r0, 0x20
/* 80B7C158  90 19 09 9C */	stw r0, 0x99c(r25)
/* 80B7C15C  48 00 00 38 */	b lbl_80B7C194
lbl_80B7C160:
/* 80B7C160  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B7C164  80 63 00 04 */	lwz r3, 4(r3)
/* 80B7C168  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B7C16C  7F 23 CB 78 */	mr r3, r25
/* 80B7C170  3C C0 80 B9 */	lis r6, lit_5070@ha
/* 80B7C174  C0 26 C5 48 */	lfs f1, lit_5070@l(r6)
/* 80B7C178  38 C0 00 02 */	li r6, 2
/* 80B7C17C  4B 5D 6B C8 */	b setBrkAnm__8daNpcF_cFP15J3DAnmTevRegKeyP12J3DModelDatafi
/* 80B7C180  2C 03 00 00 */	cmpwi r3, 0
/* 80B7C184  41 82 00 10 */	beq lbl_80B7C194
/* 80B7C188  80 19 09 9C */	lwz r0, 0x99c(r25)
/* 80B7C18C  60 00 00 24 */	ori r0, r0, 0x24
/* 80B7C190  90 19 09 9C */	stw r0, 0x99c(r25)
lbl_80B7C194:
/* 80B7C194  88 19 09 F4 */	lbz r0, 0x9f4(r25)
/* 80B7C198  28 00 00 00 */	cmplwi r0, 0
/* 80B7C19C  40 82 00 38 */	bne lbl_80B7C1D4
/* 80B7C1A0  57 80 18 38 */	slwi r0, r28, 3
/* 80B7C1A4  38 9F 02 8C */	addi r4, r31, 0x28c
/* 80B7C1A8  7C A4 00 2E */	lwzx r5, r4, r0
/* 80B7C1AC  2C 05 00 00 */	cmpwi r5, 0
/* 80B7C1B0  41 80 00 24 */	blt lbl_80B7C1D4
/* 80B7C1B4  7F 23 CB 78 */	mr r3, r25
/* 80B7C1B8  7C 84 02 14 */	add r4, r4, r0
/* 80B7C1BC  80 04 00 04 */	lwz r0, 4(r4)
/* 80B7C1C0  54 00 10 3A */	slwi r0, r0, 2
/* 80B7C1C4  38 9F 04 70 */	addi r4, r31, 0x470
/* 80B7C1C8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B7C1CC  4B 5D 69 D8 */	b getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80B7C1D0  7C 7E 1B 78 */	mr r30, r3
lbl_80B7C1D4:
/* 80B7C1D4  28 1E 00 00 */	cmplwi r30, 0
/* 80B7C1D8  41 82 00 68 */	beq lbl_80B7C240
/* 80B7C1DC  80 19 0B FC */	lwz r0, 0xbfc(r25)
/* 80B7C1E0  7C 00 F0 40 */	cmplw r0, r30
/* 80B7C1E4  40 82 00 14 */	bne lbl_80B7C1F8
/* 80B7C1E8  80 19 14 F8 */	lwz r0, 0x14f8(r25)
/* 80B7C1EC  60 00 00 10 */	ori r0, r0, 0x10
/* 80B7C1F0  90 19 14 F8 */	stw r0, 0x14f8(r25)
/* 80B7C1F4  48 00 00 4C */	b lbl_80B7C240
lbl_80B7C1F8:
/* 80B7C1F8  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B7C1FC  80 63 00 04 */	lwz r3, 4(r3)
/* 80B7C200  80 83 00 04 */	lwz r4, 4(r3)
/* 80B7C204  38 79 0B E8 */	addi r3, r25, 0xbe8
/* 80B7C208  38 84 00 58 */	addi r4, r4, 0x58
/* 80B7C20C  7F C5 F3 78 */	mr r5, r30
/* 80B7C210  38 C0 00 01 */	li r6, 1
/* 80B7C214  38 E0 00 02 */	li r7, 2
/* 80B7C218  3D 00 80 B9 */	lis r8, lit_5070@ha
/* 80B7C21C  C0 28 C5 48 */	lfs f1, lit_5070@l(r8)
/* 80B7C220  39 00 00 00 */	li r8, 0
/* 80B7C224  39 20 FF FF */	li r9, -1
/* 80B7C228  4B 49 14 14 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80B7C22C  2C 03 00 00 */	cmpwi r3, 0
/* 80B7C230  41 82 00 10 */	beq lbl_80B7C240
/* 80B7C234  80 19 14 F8 */	lwz r0, 0x14f8(r25)
/* 80B7C238  60 00 00 12 */	ori r0, r0, 0x12
/* 80B7C23C  90 19 14 F8 */	stw r0, 0x14f8(r25)
lbl_80B7C240:
/* 80B7C240  57 60 18 38 */	slwi r0, r27, 3
/* 80B7C244  38 7F 02 BC */	addi r3, r31, 0x2bc
/* 80B7C248  7C 83 00 2E */	lwzx r4, r3, r0
/* 80B7C24C  2C 04 00 00 */	cmpwi r4, 0
/* 80B7C250  41 80 00 34 */	blt lbl_80B7C284
/* 80B7C254  7C 63 02 14 */	add r3, r3, r0
/* 80B7C258  80 03 00 04 */	lwz r0, 4(r3)
/* 80B7C25C  54 00 10 3A */	slwi r0, r0, 2
/* 80B7C260  38 7F 04 70 */	addi r3, r31, 0x470
/* 80B7C264  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B7C268  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80B7C26C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80B7C270  3C A5 00 02 */	addis r5, r5, 2
/* 80B7C274  38 C0 00 80 */	li r6, 0x80
/* 80B7C278  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80B7C27C  4B 4C 00 70 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B7C280  7C 7D 1B 78 */	mr r29, r3
lbl_80B7C284:
/* 80B7C284  28 1D 00 00 */	cmplwi r29, 0
/* 80B7C288  41 82 00 68 */	beq lbl_80B7C2F0
/* 80B7C28C  80 19 0C 14 */	lwz r0, 0xc14(r25)
/* 80B7C290  7C 00 E8 40 */	cmplw r0, r29
/* 80B7C294  40 82 00 14 */	bne lbl_80B7C2A8
/* 80B7C298  80 19 14 F8 */	lwz r0, 0x14f8(r25)
/* 80B7C29C  60 00 40 00 */	ori r0, r0, 0x4000
/* 80B7C2A0  90 19 14 F8 */	stw r0, 0x14f8(r25)
/* 80B7C2A4  48 00 00 4C */	b lbl_80B7C2F0
lbl_80B7C2A8:
/* 80B7C2A8  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B7C2AC  80 63 00 04 */	lwz r3, 4(r3)
/* 80B7C2B0  80 83 00 04 */	lwz r4, 4(r3)
/* 80B7C2B4  38 79 0C 00 */	addi r3, r25, 0xc00
/* 80B7C2B8  38 84 00 58 */	addi r4, r4, 0x58
/* 80B7C2BC  7F A5 EB 78 */	mr r5, r29
/* 80B7C2C0  38 C0 00 01 */	li r6, 1
/* 80B7C2C4  38 E0 00 02 */	li r7, 2
/* 80B7C2C8  3D 00 80 B9 */	lis r8, lit_5070@ha
/* 80B7C2CC  C0 28 C5 48 */	lfs f1, lit_5070@l(r8)
/* 80B7C2D0  39 00 00 00 */	li r8, 0
/* 80B7C2D4  39 20 FF FF */	li r9, -1
/* 80B7C2D8  4B 49 11 A4 */	b init__13mDoExt_bpkAnmFP16J3DMaterialTableP11J3DAnmColoriifss
/* 80B7C2DC  2C 03 00 00 */	cmpwi r3, 0
/* 80B7C2E0  41 82 00 10 */	beq lbl_80B7C2F0
/* 80B7C2E4  80 19 14 F8 */	lwz r0, 0x14f8(r25)
/* 80B7C2E8  60 00 60 00 */	ori r0, r0, 0x6000
/* 80B7C2EC  90 19 14 F8 */	stw r0, 0x14f8(r25)
lbl_80B7C2F0:
/* 80B7C2F0  39 61 00 30 */	addi r11, r1, 0x30
/* 80B7C2F4  4B 7E 5F 24 */	b _restgpr_25
/* 80B7C2F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B7C2FC  7C 08 03 A6 */	mtlr r0
/* 80B7C300  38 21 00 30 */	addi r1, r1, 0x30
/* 80B7C304  4E 80 00 20 */	blr 
