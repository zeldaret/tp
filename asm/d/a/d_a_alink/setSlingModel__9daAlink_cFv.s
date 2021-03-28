lbl_800DE7D4:
/* 800DE7D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DE7D8  7C 08 02 A6 */	mflr r0
/* 800DE7DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DE7E0  39 61 00 20 */	addi r11, r1, 0x20
/* 800DE7E4  48 28 39 F9 */	bl _savegpr_29
/* 800DE7E8  7C 7D 1B 78 */	mr r29, r3
/* 800DE7EC  38 7D 21 D8 */	addi r3, r29, 0x21d8
/* 800DE7F0  38 80 01 F9 */	li r4, 0x1f9
/* 800DE7F4  48 08 08 75 */	bl loadDataIdx__14daPy_anmHeap_cFUs
/* 800DE7F8  7C 7F 1B 78 */	mr r31, r3
/* 800DE7FC  7F A3 EB 78 */	mr r3, r29
/* 800DE800  4B FC 54 8D */	bl setItemHeap__9daAlink_cFv
/* 800DE804  7C 7E 1B 78 */	mr r30, r3
/* 800DE808  7F A3 EB 78 */	mr r3, r29
/* 800DE80C  38 80 03 19 */	li r4, 0x319
/* 800DE810  38 A0 2C 00 */	li r5, 0x2c00
/* 800DE814  4B FE 16 35 */	bl loadAramBmd__9daAlink_cFUsUl
/* 800DE818  7C 64 1B 78 */	mr r4, r3
/* 800DE81C  7F A3 EB 78 */	mr r3, r29
/* 800DE820  3C A0 00 08 */	lis r5, 8
/* 800DE824  38 C0 00 00 */	li r6, 0
/* 800DE828  4B FC 55 55 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 800DE82C  90 7D 07 08 */	stw r3, 0x708(r29)
/* 800DE830  38 7D 07 30 */	addi r3, r29, 0x730
/* 800DE834  7F E4 FB 78 */	mr r4, r31
/* 800DE838  38 A0 00 00 */	li r5, 0
/* 800DE83C  38 C0 00 02 */	li r6, 2
/* 800DE840  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800DE844  38 E0 00 00 */	li r7, 0
/* 800DE848  39 00 FF FF */	li r8, -1
/* 800DE84C  39 20 00 00 */	li r9, 0
/* 800DE850  4B F2 EF 8D */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 800DE854  7F C3 F3 78 */	mr r3, r30
/* 800DE858  4B F3 09 75 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 800DE85C  38 00 00 05 */	li r0, 5
/* 800DE860  98 1D 2F 95 */	stb r0, 0x2f95(r29)
/* 800DE864  38 00 00 67 */	li r0, 0x67
/* 800DE868  98 1D 2F 94 */	stb r0, 0x2f94(r29)
/* 800DE86C  39 61 00 20 */	addi r11, r1, 0x20
/* 800DE870  48 28 39 B9 */	bl _restgpr_29
/* 800DE874  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DE878  7C 08 03 A6 */	mtlr r0
/* 800DE87C  38 21 00 20 */	addi r1, r1, 0x20
/* 800DE880  4E 80 00 20 */	blr 
