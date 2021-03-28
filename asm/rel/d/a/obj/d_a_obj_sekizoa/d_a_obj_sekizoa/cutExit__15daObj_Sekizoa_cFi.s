lbl_80CD376C:
/* 80CD376C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CD3770  7C 08 02 A6 */	mflr r0
/* 80CD3774  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CD3778  39 61 00 20 */	addi r11, r1, 0x20
/* 80CD377C  4B 68 EA 58 */	b _savegpr_27
/* 80CD3780  7C 7B 1B 78 */	mr r27, r3
/* 80CD3784  7C 9C 23 78 */	mr r28, r4
/* 80CD3788  3B C0 00 00 */	li r30, 0
/* 80CD378C  3B A0 FF FF */	li r29, -1
/* 80CD3790  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD3794  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD3798  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80CD379C  7F E3 FB 78 */	mr r3, r31
/* 80CD37A0  3C A0 80 CD */	lis r5, struct_80CD5E64+0x0@ha
/* 80CD37A4  38 A5 5E 64 */	addi r5, r5, struct_80CD5E64+0x0@l
/* 80CD37A8  38 A5 00 5F */	addi r5, r5, 0x5f
/* 80CD37AC  38 C0 00 03 */	li r6, 3
/* 80CD37B0  4B 37 49 3C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80CD37B4  28 03 00 00 */	cmplwi r3, 0
/* 80CD37B8  41 82 00 08 */	beq lbl_80CD37C0
/* 80CD37BC  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80CD37C0:
/* 80CD37C0  7F E3 FB 78 */	mr r3, r31
/* 80CD37C4  7F 84 E3 78 */	mr r4, r28
/* 80CD37C8  4B 37 45 84 */	b getIsAddvance__16dEvent_manager_cFi
/* 80CD37CC  2C 03 00 00 */	cmpwi r3, 0
/* 80CD37D0  41 82 00 40 */	beq lbl_80CD3810
/* 80CD37D4  2C 1D 00 01 */	cmpwi r29, 1
/* 80CD37D8  41 82 00 38 */	beq lbl_80CD3810
/* 80CD37DC  40 80 00 34 */	bge lbl_80CD3810
/* 80CD37E0  2C 1D 00 00 */	cmpwi r29, 0
/* 80CD37E4  40 80 00 08 */	bge lbl_80CD37EC
/* 80CD37E8  48 00 00 28 */	b lbl_80CD3810
lbl_80CD37EC:
/* 80CD37EC  88 1B 10 C8 */	lbz r0, 0x10c8(r27)
/* 80CD37F0  28 00 00 00 */	cmplwi r0, 0
/* 80CD37F4  40 82 00 1C */	bne lbl_80CD3810
/* 80CD37F8  38 7B 09 74 */	addi r3, r27, 0x974
/* 80CD37FC  38 80 00 00 */	li r4, 0
/* 80CD3800  38 A0 00 72 */	li r5, 0x72
/* 80CD3804  38 C0 00 00 */	li r6, 0
/* 80CD3808  38 E0 00 00 */	li r7, 0
/* 80CD380C  4B 57 67 84 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_80CD3810:
/* 80CD3810  2C 1D 00 01 */	cmpwi r29, 1
/* 80CD3814  41 82 00 BC */	beq lbl_80CD38D0
/* 80CD3818  40 80 00 BC */	bge lbl_80CD38D4
/* 80CD381C  2C 1D 00 00 */	cmpwi r29, 0
/* 80CD3820  40 80 00 08 */	bge lbl_80CD3828
/* 80CD3824  48 00 00 B0 */	b lbl_80CD38D4
lbl_80CD3828:
/* 80CD3828  88 1B 10 C8 */	lbz r0, 0x10c8(r27)
/* 80CD382C  28 00 00 00 */	cmplwi r0, 0
/* 80CD3830  40 82 00 98 */	bne lbl_80CD38C8
/* 80CD3834  38 00 00 00 */	li r0, 0
/* 80CD3838  98 1B 0E 26 */	stb r0, 0xe26(r27)
/* 80CD383C  38 7B 09 74 */	addi r3, r27, 0x974
/* 80CD3840  38 80 00 00 */	li r4, 0
/* 80CD3844  38 A0 00 00 */	li r5, 0
/* 80CD3848  38 C0 00 00 */	li r6, 0
/* 80CD384C  4B 57 6A 8C */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80CD3850  2C 03 00 00 */	cmpwi r3, 0
/* 80CD3854  41 82 00 80 */	beq lbl_80CD38D4
/* 80CD3858  88 1B 09 9A */	lbz r0, 0x99a(r27)
/* 80CD385C  28 00 00 01 */	cmplwi r0, 1
/* 80CD3860  40 82 00 74 */	bne lbl_80CD38D4
/* 80CD3864  A0 1B 09 AE */	lhz r0, 0x9ae(r27)
/* 80CD3868  7C 00 07 34 */	extsh r0, r0
/* 80CD386C  2C 00 00 01 */	cmpwi r0, 1
/* 80CD3870  41 82 00 34 */	beq lbl_80CD38A4
/* 80CD3874  40 80 00 10 */	bge lbl_80CD3884
/* 80CD3878  2C 00 00 00 */	cmpwi r0, 0
/* 80CD387C  40 80 00 14 */	bge lbl_80CD3890
/* 80CD3880  48 00 00 40 */	b lbl_80CD38C0
lbl_80CD3884:
/* 80CD3884  2C 00 00 03 */	cmpwi r0, 3
/* 80CD3888  40 80 00 38 */	bge lbl_80CD38C0
/* 80CD388C  48 00 00 2C */	b lbl_80CD38B8
lbl_80CD3890:
/* 80CD3890  38 00 00 03 */	li r0, 3
/* 80CD3894  B0 1B 0E 30 */	sth r0, 0xe30(r27)
/* 80CD3898  7F 63 DB 78 */	mr r3, r27
/* 80CD389C  4B 47 69 88 */	b evtChange__8daNpcT_cFv
/* 80CD38A0  48 00 00 34 */	b lbl_80CD38D4
lbl_80CD38A4:
/* 80CD38A4  38 00 00 08 */	li r0, 8
/* 80CD38A8  B0 1B 0E 30 */	sth r0, 0xe30(r27)
/* 80CD38AC  7F 63 DB 78 */	mr r3, r27
/* 80CD38B0  4B 47 69 74 */	b evtChange__8daNpcT_cFv
/* 80CD38B4  48 00 00 20 */	b lbl_80CD38D4
lbl_80CD38B8:
/* 80CD38B8  3B C0 00 01 */	li r30, 1
/* 80CD38BC  48 00 00 18 */	b lbl_80CD38D4
lbl_80CD38C0:
/* 80CD38C0  3B C0 00 01 */	li r30, 1
/* 80CD38C4  48 00 00 10 */	b lbl_80CD38D4
lbl_80CD38C8:
/* 80CD38C8  3B C0 00 01 */	li r30, 1
/* 80CD38CC  48 00 00 08 */	b lbl_80CD38D4
lbl_80CD38D0:
/* 80CD38D0  3B C0 00 01 */	li r30, 1
lbl_80CD38D4:
/* 80CD38D4  7F C3 F3 78 */	mr r3, r30
/* 80CD38D8  39 61 00 20 */	addi r11, r1, 0x20
/* 80CD38DC  4B 68 E9 44 */	b _restgpr_27
/* 80CD38E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CD38E4  7C 08 03 A6 */	mtlr r0
/* 80CD38E8  38 21 00 20 */	addi r1, r1, 0x20
/* 80CD38EC  4E 80 00 20 */	blr 
