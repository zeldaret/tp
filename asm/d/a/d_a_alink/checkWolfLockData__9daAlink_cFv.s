lbl_80139048:
/* 80139048  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8013904C  7C 08 02 A6 */	mflr r0
/* 80139050  90 01 00 24 */	stw r0, 0x24(r1)
/* 80139054  39 61 00 20 */	addi r11, r1, 0x20
/* 80139058  48 22 91 81 */	bl _savegpr_28
/* 8013905C  7C 7C 1B 78 */	mr r28, r3
/* 80139060  3B C0 00 00 */	li r30, 0
/* 80139064  3B E0 00 00 */	li r31, 0
lbl_80139068:
/* 80139068  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 8013906C  7C 7C 1A 14 */	add r3, r28, r3
/* 80139070  48 02 5B D9 */	bl setActor__16daPy_actorKeep_cFv
/* 80139074  3B DE 00 01 */	addi r30, r30, 1
/* 80139078  2C 1E 00 0A */	cmpwi r30, 0xa
/* 8013907C  3B FF 00 08 */	addi r31, r31, 8
/* 80139080  41 80 FF E8 */	blt lbl_80139068
/* 80139084  3B C0 00 00 */	li r30, 0
/* 80139088  48 00 00 70 */	b lbl_801390F8
lbl_8013908C:
/* 8013908C  57 C3 18 38 */	slwi r3, r30, 3
/* 80139090  38 03 07 C8 */	addi r0, r3, 0x7c8
/* 80139094  7C 1C 00 2E */	lwzx r0, r28, r0
/* 80139098  28 00 00 00 */	cmplwi r0, 0
/* 8013909C  40 82 00 58 */	bne lbl_801390F4
/* 801390A0  7F DD F3 78 */	mr r29, r30
/* 801390A4  7C 7F 1B 78 */	mr r31, r3
/* 801390A8  48 00 00 1C */	b lbl_801390C4
lbl_801390AC:
/* 801390AC  7C 9C FA 14 */	add r4, r28, r31
/* 801390B0  38 64 07 C4 */	addi r3, r4, 0x7c4
/* 801390B4  80 84 07 D0 */	lwz r4, 0x7d0(r4)
/* 801390B8  48 02 5C 01 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 801390BC  3B BD 00 01 */	addi r29, r29, 1
/* 801390C0  3B FF 00 08 */	addi r31, r31, 8
lbl_801390C4:
/* 801390C4  88 7C 2F B1 */	lbz r3, 0x2fb1(r28)
/* 801390C8  38 03 FF FF */	addi r0, r3, -1
/* 801390CC  7C 1D 00 00 */	cmpw r29, r0
/* 801390D0  41 80 FF DC */	blt lbl_801390AC
/* 801390D4  57 A3 18 38 */	slwi r3, r29, 3
/* 801390D8  38 63 07 C4 */	addi r3, r3, 0x7c4
/* 801390DC  7C 7C 1A 14 */	add r3, r28, r3
/* 801390E0  48 02 5C 1D */	bl clearData__16daPy_actorKeep_cFv
/* 801390E4  88 7C 2F B1 */	lbz r3, 0x2fb1(r28)
/* 801390E8  38 03 FF FF */	addi r0, r3, -1
/* 801390EC  98 1C 2F B1 */	stb r0, 0x2fb1(r28)
/* 801390F0  3B DE FF FF */	addi r30, r30, -1
lbl_801390F4:
/* 801390F4  3B DE 00 01 */	addi r30, r30, 1
lbl_801390F8:
/* 801390F8  88 1C 2F B1 */	lbz r0, 0x2fb1(r28)
/* 801390FC  7C 1E 00 00 */	cmpw r30, r0
/* 80139100  41 80 FF 8C */	blt lbl_8013908C
/* 80139104  39 61 00 20 */	addi r11, r1, 0x20
/* 80139108  48 22 91 1D */	bl _restgpr_28
/* 8013910C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80139110  7C 08 03 A6 */	mtlr r0
/* 80139114  38 21 00 20 */	addi r1, r1, 0x20
/* 80139118  4E 80 00 20 */	blr 
