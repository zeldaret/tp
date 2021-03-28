lbl_8063A824:
/* 8063A824  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8063A828  7C 08 02 A6 */	mflr r0
/* 8063A82C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8063A830  39 61 00 40 */	addi r11, r1, 0x40
/* 8063A834  4B D2 79 9C */	b _savegpr_26
/* 8063A838  7C 7A 1B 78 */	mr r26, r3
/* 8063A83C  3B 60 00 00 */	li r27, 0
/* 8063A840  3B E0 00 00 */	li r31, 0
/* 8063A844  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8063A848  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 8063A84C  3C 60 80 64 */	lis r3, apper_effect_id@ha
/* 8063A850  3B A3 DE CC */	addi r29, r3, apper_effect_id@l
/* 8063A854  3C 60 80 64 */	lis r3, lit_3776@ha
/* 8063A858  3B C3 DC 84 */	addi r30, r3, lit_3776@l
lbl_8063A85C:
/* 8063A85C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8063A860  38 80 00 00 */	li r4, 0
/* 8063A864  90 81 00 08 */	stw r4, 8(r1)
/* 8063A868  38 00 FF FF */	li r0, -1
/* 8063A86C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8063A870  90 81 00 10 */	stw r4, 0x10(r1)
/* 8063A874  90 81 00 14 */	stw r4, 0x14(r1)
/* 8063A878  90 81 00 18 */	stw r4, 0x18(r1)
/* 8063A87C  38 80 00 00 */	li r4, 0
/* 8063A880  7C BD FA 2E */	lhzx r5, r29, r31
/* 8063A884  38 DA 04 D0 */	addi r6, r26, 0x4d0
/* 8063A888  38 FA 01 0C */	addi r7, r26, 0x10c
/* 8063A88C  39 00 00 00 */	li r8, 0
/* 8063A890  39 20 00 00 */	li r9, 0
/* 8063A894  39 40 00 FF */	li r10, 0xff
/* 8063A898  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8063A89C  4B A1 21 F4 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8063A8A0  3B 7B 00 01 */	addi r27, r27, 1
/* 8063A8A4  2C 1B 00 02 */	cmpwi r27, 2
/* 8063A8A8  3B FF 00 02 */	addi r31, r31, 2
/* 8063A8AC  41 80 FF B0 */	blt lbl_8063A85C
/* 8063A8B0  39 61 00 40 */	addi r11, r1, 0x40
/* 8063A8B4  4B D2 79 68 */	b _restgpr_26
/* 8063A8B8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8063A8BC  7C 08 03 A6 */	mtlr r0
/* 8063A8C0  38 21 00 40 */	addi r1, r1, 0x40
/* 8063A8C4  4E 80 00 20 */	blr 
