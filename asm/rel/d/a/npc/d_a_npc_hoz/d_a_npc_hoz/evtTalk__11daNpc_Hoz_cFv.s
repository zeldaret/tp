lbl_80A023EC:
/* 80A023EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A023F0  7C 08 02 A6 */	mflr r0
/* 80A023F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A023F8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A023FC  7C 7F 1B 78 */	mr r31, r3
/* 80A02400  3C 80 80 A0 */	lis r4, lit_4712@ha
/* 80A02404  38 A4 76 94 */	addi r5, r4, lit_4712@l
/* 80A02408  80 85 00 00 */	lwz r4, 0(r5)
/* 80A0240C  80 05 00 04 */	lwz r0, 4(r5)
/* 80A02410  90 81 00 14 */	stw r4, 0x14(r1)
/* 80A02414  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A02418  80 05 00 08 */	lwz r0, 8(r5)
/* 80A0241C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A02420  38 81 00 14 */	addi r4, r1, 0x14
/* 80A02424  48 00 0C 85 */	bl chkAction__11daNpc_Hoz_cFM11daNpc_Hoz_cFPCvPvPv_i
/* 80A02428  2C 03 00 00 */	cmpwi r3, 0
/* 80A0242C  41 82 00 1C */	beq lbl_80A02448
/* 80A02430  7F E3 FB 78 */	mr r3, r31
/* 80A02434  38 80 00 00 */	li r4, 0
/* 80A02438  39 9F 0F B8 */	addi r12, r31, 0xfb8
/* 80A0243C  4B 95 FC 48 */	b __ptmf_scall
/* 80A02440  60 00 00 00 */	nop 
/* 80A02444  48 00 00 74 */	b lbl_80A024B8
lbl_80A02448:
/* 80A02448  38 00 00 00 */	li r0, 0
/* 80A0244C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A02450  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A02454  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 80A02458  28 03 00 01 */	cmplwi r3, 1
/* 80A0245C  41 82 00 0C */	beq lbl_80A02468
/* 80A02460  28 03 00 02 */	cmplwi r3, 2
/* 80A02464  40 82 00 08 */	bne lbl_80A0246C
lbl_80A02468:
/* 80A02468  38 00 00 01 */	li r0, 1
lbl_80A0246C:
/* 80A0246C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A02470  41 82 00 1C */	beq lbl_80A0248C
/* 80A02474  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A02478  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A0247C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A02480  4B 64 63 70 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80A02484  2C 03 00 00 */	cmpwi r3, 0
/* 80A02488  41 82 00 30 */	beq lbl_80A024B8
lbl_80A0248C:
/* 80A0248C  3C 60 80 A0 */	lis r3, lit_4720@ha
/* 80A02490  38 83 76 A0 */	addi r4, r3, lit_4720@l
/* 80A02494  80 64 00 00 */	lwz r3, 0(r4)
/* 80A02498  80 04 00 04 */	lwz r0, 4(r4)
/* 80A0249C  90 61 00 08 */	stw r3, 8(r1)
/* 80A024A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A024A4  80 04 00 08 */	lwz r0, 8(r4)
/* 80A024A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A024AC  7F E3 FB 78 */	mr r3, r31
/* 80A024B0  38 81 00 08 */	addi r4, r1, 8
/* 80A024B4  48 00 0C 21 */	bl setAction__11daNpc_Hoz_cFM11daNpc_Hoz_cFPCvPvPv_i
lbl_80A024B8:
/* 80A024B8  38 60 00 01 */	li r3, 1
/* 80A024BC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A024C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A024C4  7C 08 03 A6 */	mtlr r0
/* 80A024C8  38 21 00 30 */	addi r1, r1, 0x30
/* 80A024CC  4E 80 00 20 */	blr 
