lbl_80A9F188:
/* 80A9F188  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A9F18C  7C 08 02 A6 */	mflr r0
/* 80A9F190  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A9F194  39 61 00 40 */	addi r11, r1, 0x40
/* 80A9F198  4B 8C 30 3C */	b _savegpr_27
/* 80A9F19C  7C 7E 1B 78 */	mr r30, r3
/* 80A9F1A0  7C 9B 23 78 */	mr r27, r4
/* 80A9F1A4  7C BF 2B 78 */	mr r31, r5
/* 80A9F1A8  3C 60 80 AA */	lis r3, lit_5647@ha
/* 80A9F1AC  38 83 17 78 */	addi r4, r3, lit_5647@l
/* 80A9F1B0  80 64 00 00 */	lwz r3, 0(r4)
/* 80A9F1B4  80 04 00 04 */	lwz r0, 4(r4)
/* 80A9F1B8  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A9F1BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9F1C0  80 04 00 08 */	lwz r0, 8(r4)
/* 80A9F1C4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A9F1C8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80A9F1CC  38 7E 0F 8C */	addi r3, r30, 0xf8c
/* 80A9F1D0  4B 6A 65 38 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A9F1D4  90 61 00 14 */	stw r3, 0x14(r1)
/* 80A9F1D8  38 7E 0F 94 */	addi r3, r30, 0xf94
/* 80A9F1DC  4B 6A 65 2C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A9F1E0  90 61 00 18 */	stw r3, 0x18(r1)
/* 80A9F1E4  38 7E 0F 8C */	addi r3, r30, 0xf8c
/* 80A9F1E8  4B 6A 65 20 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A9F1EC  7C 7D 1B 78 */	mr r29, r3
/* 80A9F1F0  38 7E 0F 94 */	addi r3, r30, 0xf94
/* 80A9F1F4  4B 6A 65 14 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A9F1F8  3C 60 80 AA */	lis r3, lit_5648@ha
/* 80A9F1FC  38 83 17 84 */	addi r4, r3, lit_5648@l
/* 80A9F200  80 64 00 00 */	lwz r3, 0(r4)
/* 80A9F204  80 04 00 04 */	lwz r0, 4(r4)
/* 80A9F208  90 61 00 08 */	stw r3, 8(r1)
/* 80A9F20C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A9F210  3B 80 00 00 */	li r28, 0
/* 80A9F214  80 7B 00 00 */	lwz r3, 0(r27)
/* 80A9F218  38 03 FF FB */	addi r0, r3, -5
/* 80A9F21C  28 00 00 19 */	cmplwi r0, 0x19
/* 80A9F220  41 81 00 E4 */	bgt lbl_80A9F304
/* 80A9F224  3C 60 80 AA */	lis r3, lit_5675@ha
/* 80A9F228  38 63 28 8C */	addi r3, r3, lit_5675@l
/* 80A9F22C  54 00 10 3A */	slwi r0, r0, 2
/* 80A9F230  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A9F234  7C 09 03 A6 */	mtctr r0
/* 80A9F238  4E 80 04 20 */	bctr 
lbl_80A9F23C:
/* 80A9F23C  7F C3 F3 78 */	mr r3, r30
/* 80A9F240  38 80 08 00 */	li r4, 0x800
/* 80A9F244  4B FF EF E1 */	bl _turn_to_link__18daNpc_Pachi_Taro_cFs
/* 80A9F248  2C 03 00 00 */	cmpwi r3, 0
/* 80A9F24C  41 82 00 BC */	beq lbl_80A9F308
/* 80A9F250  3B 80 00 01 */	li r28, 1
/* 80A9F254  48 00 00 B4 */	b lbl_80A9F308
lbl_80A9F258:
/* 80A9F258  80 1F 00 00 */	lwz r0, 0(r31)
/* 80A9F25C  90 01 00 08 */	stw r0, 8(r1)
/* 80A9F260  7F C3 F3 78 */	mr r3, r30
/* 80A9F264  38 81 00 08 */	addi r4, r1, 8
/* 80A9F268  38 A0 00 00 */	li r5, 0
/* 80A9F26C  38 C1 00 10 */	addi r6, r1, 0x10
/* 80A9F270  38 E0 00 00 */	li r7, 0
/* 80A9F274  4B 6A CA 04 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A9F278  2C 03 00 00 */	cmpwi r3, 0
/* 80A9F27C  41 82 00 8C */	beq lbl_80A9F308
/* 80A9F280  3B 80 00 01 */	li r28, 1
/* 80A9F284  48 00 00 84 */	b lbl_80A9F308
lbl_80A9F288:
/* 80A9F288  80 1F 00 00 */	lwz r0, 0(r31)
/* 80A9F28C  90 01 00 08 */	stw r0, 8(r1)
/* 80A9F290  7F C3 F3 78 */	mr r3, r30
/* 80A9F294  38 81 00 08 */	addi r4, r1, 8
/* 80A9F298  38 A0 00 00 */	li r5, 0
/* 80A9F29C  38 C1 00 10 */	addi r6, r1, 0x10
/* 80A9F2A0  38 E0 00 00 */	li r7, 0
/* 80A9F2A4  4B 6A C9 D4 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A9F2A8  2C 03 00 00 */	cmpwi r3, 0
/* 80A9F2AC  41 82 00 5C */	beq lbl_80A9F308
/* 80A9F2B0  3B 80 00 01 */	li r28, 1
/* 80A9F2B4  48 00 00 54 */	b lbl_80A9F308
lbl_80A9F2B8:
/* 80A9F2B8  7F C3 F3 78 */	mr r3, r30
/* 80A9F2BC  38 80 00 00 */	li r4, 0
/* 80A9F2C0  38 A0 00 00 */	li r5, 0
/* 80A9F2C4  38 C1 00 10 */	addi r6, r1, 0x10
/* 80A9F2C8  38 E0 00 00 */	li r7, 0
/* 80A9F2CC  4B 6A C9 AC */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A9F2D0  2C 03 00 00 */	cmpwi r3, 0
/* 80A9F2D4  41 82 00 0C */	beq lbl_80A9F2E0
/* 80A9F2D8  3B 80 00 01 */	li r28, 1
/* 80A9F2DC  48 00 00 2C */	b lbl_80A9F308
lbl_80A9F2E0:
/* 80A9F2E0  38 7E 09 74 */	addi r3, r30, 0x974
/* 80A9F2E4  4B 7A B2 5C */	b getNowMsgNo__10dMsgFlow_cFv
/* 80A9F2E8  28 03 16 98 */	cmplwi r3, 0x1698
/* 80A9F2EC  41 82 00 0C */	beq lbl_80A9F2F8
/* 80A9F2F0  28 03 16 7C */	cmplwi r3, 0x167c
/* 80A9F2F4  40 82 00 14 */	bne lbl_80A9F308
lbl_80A9F2F8:
/* 80A9F2F8  38 00 00 01 */	li r0, 1
/* 80A9F2FC  98 1D 0F 86 */	stb r0, 0xf86(r29)
/* 80A9F300  48 00 00 08 */	b lbl_80A9F308
lbl_80A9F304:
/* 80A9F304  3B 80 00 01 */	li r28, 1
lbl_80A9F308:
/* 80A9F308  7F 83 E3 78 */	mr r3, r28
/* 80A9F30C  39 61 00 40 */	addi r11, r1, 0x40
/* 80A9F310  4B 8C 2F 10 */	b _restgpr_27
/* 80A9F314  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A9F318  7C 08 03 A6 */	mtlr r0
/* 80A9F31C  38 21 00 40 */	addi r1, r1, 0x40
/* 80A9F320  4E 80 00 20 */	blr 
