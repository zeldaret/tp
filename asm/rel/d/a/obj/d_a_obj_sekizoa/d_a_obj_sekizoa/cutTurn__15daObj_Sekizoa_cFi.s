lbl_80CD2708:
/* 80CD2708  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CD270C  7C 08 02 A6 */	mflr r0
/* 80CD2710  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CD2714  39 61 00 20 */	addi r11, r1, 0x20
/* 80CD2718  4B 68 FA BC */	b _savegpr_27
/* 80CD271C  7C 7E 1B 78 */	mr r30, r3
/* 80CD2720  7C 9B 23 78 */	mr r27, r4
/* 80CD2724  3B E0 00 00 */	li r31, 0
/* 80CD2728  3B A0 FF FF */	li r29, -1
/* 80CD272C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD2730  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD2734  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80CD2738  7F 83 E3 78 */	mr r3, r28
/* 80CD273C  3C A0 80 CD */	lis r5, struct_80CD5E64+0x0@ha
/* 80CD2740  38 A5 5E 64 */	addi r5, r5, struct_80CD5E64+0x0@l
/* 80CD2744  38 A5 00 5F */	addi r5, r5, 0x5f
/* 80CD2748  38 C0 00 03 */	li r6, 3
/* 80CD274C  4B 37 59 A0 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80CD2750  28 03 00 00 */	cmplwi r3, 0
/* 80CD2754  41 82 00 08 */	beq lbl_80CD275C
/* 80CD2758  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80CD275C:
/* 80CD275C  7F 83 E3 78 */	mr r3, r28
/* 80CD2760  7F 64 DB 78 */	mr r4, r27
/* 80CD2764  4B 37 55 E8 */	b getIsAddvance__16dEvent_manager_cFi
/* 80CD2768  2C 03 00 00 */	cmpwi r3, 0
/* 80CD276C  41 82 00 78 */	beq lbl_80CD27E4
/* 80CD2770  2C 1D 00 01 */	cmpwi r29, 1
/* 80CD2774  41 82 00 50 */	beq lbl_80CD27C4
/* 80CD2778  40 80 00 6C */	bge lbl_80CD27E4
/* 80CD277C  2C 1D 00 00 */	cmpwi r29, 0
/* 80CD2780  40 80 00 08 */	bge lbl_80CD2788
/* 80CD2784  48 00 00 60 */	b lbl_80CD27E4
lbl_80CD2788:
/* 80CD2788  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD278C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD2790  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CD2794  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CD2798  81 8C 02 38 */	lwz r12, 0x238(r12)
/* 80CD279C  7D 89 03 A6 */	mtctr r12
/* 80CD27A0  4E 80 04 21 */	bctrl 
/* 80CD27A4  A8 1E 11 70 */	lha r0, 0x1170(r30)
/* 80CD27A8  7C 00 18 50 */	subf r0, r0, r3
/* 80CD27AC  B0 1E 11 70 */	sth r0, 0x1170(r30)
/* 80CD27B0  A8 7E 11 70 */	lha r3, 0x1170(r30)
/* 80CD27B4  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80CD27B8  7C 03 02 14 */	add r0, r3, r0
/* 80CD27BC  B0 1E 11 70 */	sth r0, 0x1170(r30)
/* 80CD27C0  48 00 00 24 */	b lbl_80CD27E4
lbl_80CD27C4:
/* 80CD27C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD27C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD27CC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CD27D0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CD27D4  81 8C 02 38 */	lwz r12, 0x238(r12)
/* 80CD27D8  7D 89 03 A6 */	mtctr r12
/* 80CD27DC  4E 80 04 21 */	bctrl 
/* 80CD27E0  B0 7E 11 70 */	sth r3, 0x1170(r30)
lbl_80CD27E4:
/* 80CD27E4  2C 1D 00 01 */	cmpwi r29, 1
/* 80CD27E8  41 82 00 D0 */	beq lbl_80CD28B8
/* 80CD27EC  40 80 01 00 */	bge lbl_80CD28EC
/* 80CD27F0  2C 1D 00 00 */	cmpwi r29, 0
/* 80CD27F4  40 80 00 08 */	bge lbl_80CD27FC
/* 80CD27F8  48 00 00 F4 */	b lbl_80CD28EC
lbl_80CD27FC:
/* 80CD27FC  A8 7E 11 70 */	lha r3, 0x1170(r30)
/* 80CD2800  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80CD2804  7C 03 00 00 */	cmpw r3, r0
/* 80CD2808  40 82 00 0C */	bne lbl_80CD2814
/* 80CD280C  3B E0 00 01 */	li r31, 1
/* 80CD2810  48 00 00 DC */	b lbl_80CD28EC
lbl_80CD2814:
/* 80CD2814  7F C3 F3 78 */	mr r3, r30
/* 80CD2818  4B FF E6 C9 */	bl getStepMotionNo__15daObj_Sekizoa_cFv
/* 80CD281C  7C 66 1B 78 */	mr r6, r3
/* 80CD2820  7F C3 F3 78 */	mr r3, r30
/* 80CD2824  A8 9E 11 70 */	lha r4, 0x1170(r30)
/* 80CD2828  38 A0 FF FF */	li r5, -1
/* 80CD282C  38 E0 00 1E */	li r7, 0x1e
/* 80CD2830  39 00 00 00 */	li r8, 0
/* 80CD2834  4B 47 8E 14 */	b step__8daNpcT_cFsiiii
/* 80CD2838  2C 03 00 00 */	cmpwi r3, 0
/* 80CD283C  41 82 00 B0 */	beq lbl_80CD28EC
/* 80CD2840  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80CD2844  2C 00 00 00 */	cmpwi r0, 0
/* 80CD2848  41 82 00 28 */	beq lbl_80CD2870
/* 80CD284C  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80CD2850  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80CD2854  4B 47 30 44 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD2858  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80CD285C  38 00 00 00 */	li r0, 0
/* 80CD2860  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80CD2864  3C 60 80 CD */	lis r3, lit_5307@ha
/* 80CD2868  C0 03 5E 14 */	lfs f0, lit_5307@l(r3)
/* 80CD286C  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80CD2870:
/* 80CD2870  7F C3 F3 78 */	mr r3, r30
/* 80CD2874  4B FF E5 BD */	bl getGameMotionNo__15daObj_Sekizoa_cFv
/* 80CD2878  7C 7D 1B 79 */	or. r29, r3, r3
/* 80CD287C  41 80 00 30 */	blt lbl_80CD28AC
/* 80CD2880  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80CD2884  7C 1D 00 00 */	cmpw r29, r0
/* 80CD2888  41 82 00 24 */	beq lbl_80CD28AC
/* 80CD288C  83 9E 0B 80 */	lwz r28, 0xb80(r30)
/* 80CD2890  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80CD2894  4B 47 30 04 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD2898  93 9E 0B 80 */	stw r28, 0xb80(r30)
/* 80CD289C  93 BE 0B 7C */	stw r29, 0xb7c(r30)
/* 80CD28A0  3C 60 80 CD */	lis r3, lit_5307@ha
/* 80CD28A4  C0 03 5E 14 */	lfs f0, lit_5307@l(r3)
/* 80CD28A8  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80CD28AC:
/* 80CD28AC  38 00 00 00 */	li r0, 0
/* 80CD28B0  98 1E 11 75 */	stb r0, 0x1175(r30)
/* 80CD28B4  48 00 00 38 */	b lbl_80CD28EC
lbl_80CD28B8:
/* 80CD28B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD28BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD28C0  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 80CD28C4  7F 83 E3 78 */	mr r3, r28
/* 80CD28C8  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80CD28CC  81 8C 02 38 */	lwz r12, 0x238(r12)
/* 80CD28D0  7D 89 03 A6 */	mtctr r12
/* 80CD28D4  4E 80 04 21 */	bctrl 
/* 80CD28D8  7C 63 07 34 */	extsh r3, r3
/* 80CD28DC  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80CD28E0  7C 00 18 00 */	cmpw r0, r3
/* 80CD28E4  40 82 00 08 */	bne lbl_80CD28EC
/* 80CD28E8  3B E0 00 01 */	li r31, 1
lbl_80CD28EC:
/* 80CD28EC  7F E3 FB 78 */	mr r3, r31
/* 80CD28F0  39 61 00 20 */	addi r11, r1, 0x20
/* 80CD28F4  4B 68 F9 2C */	b _restgpr_27
/* 80CD28F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CD28FC  7C 08 03 A6 */	mtlr r0
/* 80CD2900  38 21 00 20 */	addi r1, r1, 0x20
/* 80CD2904  4E 80 00 20 */	blr 
