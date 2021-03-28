lbl_802339BC:
/* 802339BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802339C0  7C 08 02 A6 */	mflr r0
/* 802339C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802339C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802339CC  93 C1 00 08 */	stw r30, 8(r1)
/* 802339D0  7C 7E 1B 78 */	mr r30, r3
/* 802339D4  48 00 2F 25 */	bl getStatusLocal__12dMsgObject_cFv
/* 802339D8  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 802339DC  41 82 00 98 */	beq lbl_80233A74
/* 802339E0  28 00 00 01 */	cmplwi r0, 1
/* 802339E4  41 82 00 90 */	beq lbl_80233A74
/* 802339E8  28 00 00 0B */	cmplwi r0, 0xb
/* 802339EC  41 82 00 88 */	beq lbl_80233A74
/* 802339F0  7F C3 F3 78 */	mr r3, r30
/* 802339F4  48 00 41 75 */	bl isDraw__12dMsgObject_cFv
/* 802339F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802339FC  41 82 00 0C */	beq lbl_80233A08
/* 80233A00  80 7E 01 14 */	lwz r3, 0x114(r30)
/* 80233A04  48 07 3C B9 */	bl render__Q28JMessage8TControlFv
lbl_80233A08:
/* 80233A08  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 80233A0C  28 03 00 00 */	cmplwi r3, 0
/* 80233A10  41 82 00 64 */	beq lbl_80233A74
/* 80233A14  80 9E 01 20 */	lwz r4, 0x120(r30)
/* 80233A18  83 E4 00 04 */	lwz r31, 4(r4)
/* 80233A1C  38 9F 0A 1C */	addi r4, r31, 0xa1c
/* 80233A20  38 BF 0C 1C */	addi r5, r31, 0xc1c
/* 80233A24  48 00 89 3D */	bl setString__14dMsgScrnBase_cFPcPc
/* 80233A28  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 80233A2C  38 9F 0E 1C */	addi r4, r31, 0xe1c
/* 80233A30  48 00 89 BD */	bl setRubyString__14dMsgScrnBase_cFPc
/* 80233A34  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 80233A38  38 9F 10 1C */	addi r4, r31, 0x101c
/* 80233A3C  38 BF 10 4E */	addi r5, r31, 0x104e
/* 80233A40  38 DF 10 80 */	addi r6, r31, 0x1080
/* 80233A44  81 83 00 00 */	lwz r12, 0(r3)
/* 80233A48  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80233A4C  7D 89 03 A6 */	mtctr r12
/* 80233A50  4E 80 04 21 */	bctrl 
/* 80233A54  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 80233A58  38 9F 10 B2 */	addi r4, r31, 0x10b2
/* 80233A5C  38 BF 11 02 */	addi r5, r31, 0x1102
/* 80233A60  38 DF 11 52 */	addi r6, r31, 0x1152
/* 80233A64  81 83 00 00 */	lwz r12, 0(r3)
/* 80233A68  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80233A6C  7D 89 03 A6 */	mtctr r12
/* 80233A70  4E 80 04 21 */	bctrl 
lbl_80233A74:
/* 80233A74  80 DE 01 04 */	lwz r6, 0x104(r30)
/* 80233A78  28 06 00 00 */	cmplwi r6, 0
/* 80233A7C  41 82 00 50 */	beq lbl_80233ACC
/* 80233A80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80233A84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80233A88  88 03 5E B5 */	lbz r0, 0x5eb5(r3)
/* 80233A8C  28 00 00 00 */	cmplwi r0, 0
/* 80233A90  41 82 00 18 */	beq lbl_80233AA8
/* 80233A94  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 80233A98  38 83 00 AC */	addi r4, r3, 0xac
/* 80233A9C  38 A3 00 B0 */	addi r5, r3, 0xb0
/* 80233AA0  4B E2 2C F5 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 80233AA4  48 00 00 14 */	b lbl_80233AB8
lbl_80233AA8:
/* 80233AA8  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 80233AAC  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 80233AB0  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 80233AB4  4B E2 2C E1 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_80233AB8:
/* 80233AB8  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 80233ABC  81 83 00 00 */	lwz r12, 0(r3)
/* 80233AC0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80233AC4  7D 89 03 A6 */	mtctr r12
/* 80233AC8  4E 80 04 21 */	bctrl 
lbl_80233ACC:
/* 80233ACC  38 60 00 01 */	li r3, 1
/* 80233AD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80233AD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80233AD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80233ADC  7C 08 03 A6 */	mtlr r0
/* 80233AE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80233AE4  4E 80 00 20 */	blr 
