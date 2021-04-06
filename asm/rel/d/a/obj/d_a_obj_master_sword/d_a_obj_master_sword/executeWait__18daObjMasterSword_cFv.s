lbl_80C90B50:
/* 80C90B50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C90B54  7C 08 02 A6 */	mflr r0
/* 80C90B58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C90B5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C90B60  4B 6D 16 71 */	bl _savegpr_26
/* 80C90B64  7C 7A 1B 78 */	mr r26, r3
/* 80C90B68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C90B6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C90B70  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80C90B74  7F 44 D3 78 */	mr r4, r26
/* 80C90B78  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80C90B7C  81 8C 01 D8 */	lwz r12, 0x1d8(r12)
/* 80C90B80  7D 89 03 A6 */	mtctr r12
/* 80C90B84  4E 80 04 21 */	bctrl 
/* 80C90B88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C90B8C  41 82 00 70 */	beq lbl_80C90BFC
/* 80C90B90  3B 60 00 00 */	li r27, 0
/* 80C90B94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C90B98  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C90B9C  3B 9D 56 B8 */	addi r28, r29, 0x56b8
/* 80C90BA0  3B C0 00 08 */	li r30, 8
/* 80C90BA4  3B E0 00 00 */	li r31, 0
/* 80C90BA8  48 00 00 48 */	b lbl_80C90BF0
lbl_80C90BAC:
/* 80C90BAC  7F 83 E3 78 */	mr r3, r28
/* 80C90BB0  7F 64 DB 78 */	mr r4, r27
/* 80C90BB4  4B 3E 2B 81 */	bl ActionTarget__12dAttention_cFl
/* 80C90BB8  7C 03 D0 40 */	cmplw r3, r26
/* 80C90BBC  40 82 00 30 */	bne lbl_80C90BEC
/* 80C90BC0  7F 83 E3 78 */	mr r3, r28
/* 80C90BC4  4B 3D FC BD */	bl getActionBtnB__12dAttention_cFv
/* 80C90BC8  28 03 00 00 */	cmplwi r3, 0
/* 80C90BCC  41 82 00 20 */	beq lbl_80C90BEC
/* 80C90BD0  7F 83 E3 78 */	mr r3, r28
/* 80C90BD4  4B 3D FC AD */	bl getActionBtnB__12dAttention_cFv
/* 80C90BD8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80C90BDC  28 00 00 04 */	cmplwi r0, 4
/* 80C90BE0  40 82 00 0C */	bne lbl_80C90BEC
/* 80C90BE4  9B DD 5E 3C */	stb r30, 0x5e3c(r29)
/* 80C90BE8  9B FD 5E 57 */	stb r31, 0x5e57(r29)
lbl_80C90BEC:
/* 80C90BEC  3B 7B 00 01 */	addi r27, r27, 1
lbl_80C90BF0:
/* 80C90BF0  80 1C 04 30 */	lwz r0, 0x430(r28)
/* 80C90BF4  7C 1B 00 00 */	cmpw r27, r0
/* 80C90BF8  41 80 FF B4 */	blt lbl_80C90BAC
lbl_80C90BFC:
/* 80C90BFC  80 1A 04 9C */	lwz r0, 0x49c(r26)
/* 80C90C00  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80C90C04  41 82 00 34 */	beq lbl_80C90C38
/* 80C90C08  38 60 00 2F */	li r3, 0x2f
/* 80C90C0C  38 80 00 00 */	li r4, 0
/* 80C90C10  4B 58 D8 A1 */	bl dMeter2Info_setCloth__FUcb
/* 80C90C14  7F 43 D3 78 */	mr r3, r26
/* 80C90C18  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80C90C1C  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80C90C20  38 A0 00 FF */	li r5, 0xff
/* 80C90C24  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80C90C28  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80C90C2C  38 E0 00 01 */	li r7, 1
/* 80C90C30  39 00 00 00 */	li r8, 0
/* 80C90C34  4B 38 AB 81 */	bl fopAcM_orderMapToolEvent__FP10fopAc_ac_cUcsUsUsUs
lbl_80C90C38:
/* 80C90C38  39 61 00 20 */	addi r11, r1, 0x20
/* 80C90C3C  4B 6D 15 E1 */	bl _restgpr_26
/* 80C90C40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C90C44  7C 08 03 A6 */	mtlr r0
/* 80C90C48  38 21 00 20 */	addi r1, r1, 0x20
/* 80C90C4C  4E 80 00 20 */	blr 
