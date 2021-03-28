lbl_80155854:
/* 80155854  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80155858  7C 08 02 A6 */	mflr r0
/* 8015585C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80155860  39 61 00 20 */	addi r11, r1, 0x20
/* 80155864  48 20 C9 75 */	bl _savegpr_28
/* 80155868  7C 7C 1B 78 */	mr r28, r3
/* 8015586C  3B C0 00 00 */	li r30, 0
/* 80155870  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80155874  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80155878  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8015587C  7F 84 E3 78 */	mr r4, r28
/* 80155880  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80155884  81 8C 01 D8 */	lwz r12, 0x1d8(r12)
/* 80155888  7D 89 03 A6 */	mtctr r12
/* 8015588C  4E 80 04 21 */	bctrl 
/* 80155890  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80155894  41 82 00 B8 */	beq lbl_8015594C
/* 80155898  3B A0 00 00 */	li r29, 0
/* 8015589C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801558A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801558A4  3B E3 56 B8 */	addi r31, r3, 0x56b8
/* 801558A8  48 00 00 44 */	b lbl_801558EC
lbl_801558AC:
/* 801558AC  7F E3 FB 78 */	mr r3, r31
/* 801558B0  7F A4 EB 78 */	mr r4, r29
/* 801558B4  4B F1 DE 81 */	bl ActionTarget__12dAttention_cFl
/* 801558B8  7C 03 E0 40 */	cmplw r3, r28
/* 801558BC  40 82 00 2C */	bne lbl_801558E8
/* 801558C0  7F E3 FB 78 */	mr r3, r31
/* 801558C4  4B F1 AF BD */	bl getActionBtnB__12dAttention_cFv
/* 801558C8  28 03 00 00 */	cmplwi r3, 0
/* 801558CC  41 82 00 1C */	beq lbl_801558E8
/* 801558D0  7F E3 FB 78 */	mr r3, r31
/* 801558D4  4B F1 AF AD */	bl getActionBtnB__12dAttention_cFv
/* 801558D8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801558DC  28 00 00 03 */	cmplwi r0, 3
/* 801558E0  40 82 00 08 */	bne lbl_801558E8
/* 801558E4  3B C0 00 01 */	li r30, 1
lbl_801558E8:
/* 801558E8  3B BD 00 01 */	addi r29, r29, 1
lbl_801558EC:
/* 801558EC  80 1F 04 30 */	lwz r0, 0x430(r31)
/* 801558F0  7C 1D 00 00 */	cmpw r29, r0
/* 801558F4  41 80 FF B8 */	blt lbl_801558AC
/* 801558F8  3B A0 00 00 */	li r29, 0
/* 801558FC  48 00 00 44 */	b lbl_80155940
lbl_80155900:
/* 80155900  7F E3 FB 78 */	mr r3, r31
/* 80155904  7F A4 EB 78 */	mr r4, r29
/* 80155908  4B F1 DC 35 */	bl LockonTarget__12dAttention_cFl
/* 8015590C  7C 03 E0 40 */	cmplw r3, r28
/* 80155910  40 82 00 2C */	bne lbl_8015593C
/* 80155914  7F E3 FB 78 */	mr r3, r31
/* 80155918  4B F1 AF 69 */	bl getActionBtnB__12dAttention_cFv
/* 8015591C  28 03 00 00 */	cmplwi r3, 0
/* 80155920  41 82 00 1C */	beq lbl_8015593C
/* 80155924  7F E3 FB 78 */	mr r3, r31
/* 80155928  4B F1 AF 59 */	bl getActionBtnB__12dAttention_cFv
/* 8015592C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80155930  28 00 00 01 */	cmplwi r0, 1
/* 80155934  40 82 00 08 */	bne lbl_8015593C
/* 80155938  3B C0 00 01 */	li r30, 1
lbl_8015593C:
/* 8015593C  3B BD 00 01 */	addi r29, r29, 1
lbl_80155940:
/* 80155940  80 1F 03 D8 */	lwz r0, 0x3d8(r31)
/* 80155944  7C 1D 00 00 */	cmpw r29, r0
/* 80155948  41 80 FF B8 */	blt lbl_80155900
lbl_8015594C:
/* 8015594C  7F C3 F3 78 */	mr r3, r30
/* 80155950  39 61 00 20 */	addi r11, r1, 0x20
/* 80155954  48 20 C8 D1 */	bl _restgpr_28
/* 80155958  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015595C  7C 08 03 A6 */	mtlr r0
/* 80155960  38 21 00 20 */	addi r1, r1, 0x20
/* 80155964  4E 80 00 20 */	blr 
