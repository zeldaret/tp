lbl_800BF79C:
/* 800BF79C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BF7A0  7C 08 02 A6 */	mflr r0
/* 800BF7A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BF7A8  39 61 00 20 */	addi r11, r1, 0x20
/* 800BF7AC  48 2A 2A 31 */	bl _savegpr_29
/* 800BF7B0  7C 7D 1B 78 */	mr r29, r3
/* 800BF7B4  38 7D 21 D8 */	addi r3, r29, 0x21d8
/* 800BF7B8  20 04 00 00 */	subfic r0, r4, 0
/* 800BF7BC  7C 80 01 10 */	subfe r4, r0, r0
/* 800BF7C0  38 84 02 7D */	addi r4, r4, 0x27d
/* 800BF7C4  48 09 F8 A5 */	bl loadDataIdx__14daPy_anmHeap_cFUs
/* 800BF7C8  7C 7F 1B 78 */	mr r31, r3
/* 800BF7CC  7F A3 EB 78 */	mr r3, r29
/* 800BF7D0  4B FE 44 BD */	bl setItemHeap__9daAlink_cFv
/* 800BF7D4  7C 7E 1B 78 */	mr r30, r3
/* 800BF7D8  7F A3 EB 78 */	mr r3, r29
/* 800BF7DC  38 80 03 1B */	li r4, 0x31b
/* 800BF7E0  38 A0 60 00 */	li r5, 0x6000
/* 800BF7E4  48 00 06 65 */	bl loadAramBmd__9daAlink_cFUsUl
/* 800BF7E8  7C 64 1B 78 */	mr r4, r3
/* 800BF7EC  7F A3 EB 78 */	mr r3, r29
/* 800BF7F0  3C A0 00 08 */	lis r5, 8
/* 800BF7F4  38 C0 00 00 */	li r6, 0
/* 800BF7F8  4B FE 45 85 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 800BF7FC  90 7D 07 08 */	stw r3, 0x708(r29)
/* 800BF800  38 7D 07 30 */	addi r3, r29, 0x730
/* 800BF804  7F E4 FB 78 */	mr r4, r31
/* 800BF808  38 A0 00 00 */	li r5, 0
/* 800BF80C  38 C0 00 02 */	li r6, 2
/* 800BF810  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800BF814  38 E0 00 00 */	li r7, 0
/* 800BF818  39 00 FF FF */	li r8, -1
/* 800BF81C  39 20 00 00 */	li r9, 0
/* 800BF820  4B F4 DF BD */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 800BF824  7F C3 F3 78 */	mr r3, r30
/* 800BF828  4B F4 F9 A5 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 800BF82C  38 00 01 06 */	li r0, 0x106
/* 800BF830  B0 1D 2F DC */	sth r0, 0x2fdc(r29)
/* 800BF834  C0 1D 1F E0 */	lfs f0, 0x1fe0(r29)
/* 800BF838  D0 1D 33 DC */	stfs f0, 0x33dc(r29)
/* 800BF83C  39 61 00 20 */	addi r11, r1, 0x20
/* 800BF840  48 2A 29 E9 */	bl _restgpr_29
/* 800BF844  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BF848  7C 08 03 A6 */	mtlr r0
/* 800BF84C  38 21 00 20 */	addi r1, r1, 0x20
/* 800BF850  4E 80 00 20 */	blr 
