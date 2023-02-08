lbl_800F6874:
/* 800F6874  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F6878  7C 08 02 A6 */	mflr r0
/* 800F687C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F6880  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F6884  7C 7F 1B 78 */	mr r31, r3
/* 800F6888  4B FF DF 51 */	bl canoeCommon__9daAlink_cFv
/* 800F688C  2C 03 00 00 */	cmpwi r3, 0
/* 800F6890  41 82 00 14 */	beq lbl_800F68A4
/* 800F6894  38 00 00 01 */	li r0, 1
/* 800F6898  B0 1F 30 18 */	sth r0, 0x3018(r31)
/* 800F689C  38 60 00 01 */	li r3, 1
/* 800F68A0  48 00 01 20 */	b lbl_800F69C0
lbl_800F68A4:
/* 800F68A4  7F E3 FB 78 */	mr r3, r31
/* 800F68A8  4B FF DB E9 */	bl setFishGetFace__9daAlink_cFv
/* 800F68AC  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 800F68B0  54 60 03 5B */	rlwinm. r0, r3, 0, 0xd, 0xd
/* 800F68B4  41 82 00 10 */	beq lbl_800F68C4
/* 800F68B8  7F E3 FB 78 */	mr r3, r31
/* 800F68BC  48 00 01 19 */	bl procCanoeFishingGetInit__9daAlink_cFv
/* 800F68C0  48 00 00 FC */	b lbl_800F69BC
lbl_800F68C4:
/* 800F68C4  54 60 03 9D */	rlwinm. r0, r3, 0, 0xe, 0xe
/* 800F68C8  41 82 00 20 */	beq lbl_800F68E8
/* 800F68CC  7F E3 FB 78 */	mr r3, r31
/* 800F68D0  38 80 00 02 */	li r4, 2
/* 800F68D4  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800F68D8  4B FB 6E 4D */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800F68DC  7F E3 FB 78 */	mr r3, r31
/* 800F68E0  4B FF FB 85 */	bl procCanoeFishingWaitInit__9daAlink_cFv
/* 800F68E4  48 00 00 D8 */	b lbl_800F69BC
lbl_800F68E8:
/* 800F68E8  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 800F68EC  41 82 00 14 */	beq lbl_800F6900
/* 800F68F0  7F E3 FB 78 */	mr r3, r31
/* 800F68F4  38 80 01 7C */	li r4, 0x17c
/* 800F68F8  4B FB 6A 49 */	bl setUpperAnimeBase__9daAlink_cFUs
/* 800F68FC  48 00 00 C0 */	b lbl_800F69BC
lbl_800F6900:
/* 800F6900  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800F6904  28 00 01 7C */	cmplwi r0, 0x17c
/* 800F6908  40 82 00 34 */	bne lbl_800F693C
/* 800F690C  38 7F 20 48 */	addi r3, r31, 0x2048
/* 800F6910  48 06 7B BD */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800F6914  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F6918  41 82 00 A4 */	beq lbl_800F69BC
/* 800F691C  7F E3 FB 78 */	mr r3, r31
/* 800F6920  4B FF D7 C5 */	bl setArmReelAnime__9daAlink_cFv
/* 800F6924  80 7F 20 60 */	lwz r3, 0x2060(r31)
/* 800F6928  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800F692C  A0 9F 30 A8 */	lhz r4, 0x30a8(r31)
/* 800F6930  A0 BF 30 AA */	lhz r5, 0x30aa(r31)
/* 800F6934  4B F1 8F 15 */	bl initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
/* 800F6938  48 00 00 84 */	b lbl_800F69BC
lbl_800F693C:
/* 800F693C  80 7F 28 28 */	lwz r3, 0x2828(r31)
/* 800F6940  80 03 14 F0 */	lwz r0, 0x14f0(r3)
/* 800F6944  2C 00 00 00 */	cmpwi r0, 0
/* 800F6948  41 82 00 10 */	beq lbl_800F6958
/* 800F694C  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 800F6950  64 00 00 08 */	oris r0, r0, 8
/* 800F6954  90 1F 05 80 */	stw r0, 0x580(r31)
lbl_800F6958:
/* 800F6958  7F E3 FB 78 */	mr r3, r31
/* 800F695C  4B FF D7 E5 */	bl setFishingWaitAction__9daAlink_cFv
/* 800F6960  80 9F 28 28 */	lwz r4, 0x2828(r31)
/* 800F6964  28 04 00 00 */	cmplwi r4, 0
/* 800F6968  41 82 00 54 */	beq lbl_800F69BC
/* 800F696C  38 7F 38 34 */	addi r3, r31, 0x3834
/* 800F6970  38 84 05 38 */	addi r4, r4, 0x538
/* 800F6974  48 17 A2 91 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 800F6978  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800F697C  7C 00 18 50 */	subf r0, r0, r3
/* 800F6980  7C 03 07 34 */	extsh r3, r0
/* 800F6984  2C 03 C8 00 */	cmpwi r3, -14336
/* 800F6988  40 80 00 0C */	bge lbl_800F6994
/* 800F698C  38 00 C8 00 */	li r0, -14336
/* 800F6990  48 00 00 14 */	b lbl_800F69A4
lbl_800F6994:
/* 800F6994  2C 03 38 00 */	cmpwi r3, 0x3800
/* 800F6998  38 00 38 00 */	li r0, 0x3800
/* 800F699C  41 81 00 08 */	bgt lbl_800F69A4
/* 800F69A0  7C 60 1B 78 */	mr r0, r3
lbl_800F69A4:
/* 800F69A4  7C 04 07 34 */	extsh r4, r0
/* 800F69A8  38 7F 05 9E */	addi r3, r31, 0x59e
/* 800F69AC  38 A0 00 05 */	li r5, 5
/* 800F69B0  38 C0 04 00 */	li r6, 0x400
/* 800F69B4  38 E0 00 01 */	li r7, 1
/* 800F69B8  48 06 8F C5 */	bl daPy_addCalcShort__FPsssss
lbl_800F69BC:
/* 800F69BC  38 60 00 01 */	li r3, 1
lbl_800F69C0:
/* 800F69C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F69C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F69C8  7C 08 03 A6 */	mtlr r0
/* 800F69CC  38 21 00 10 */	addi r1, r1, 0x10
/* 800F69D0  4E 80 00 20 */	blr 
