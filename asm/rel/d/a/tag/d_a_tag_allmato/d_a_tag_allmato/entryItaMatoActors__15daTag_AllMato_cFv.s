lbl_80488034:
/* 80488034  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80488038  7C 08 02 A6 */	mflr r0
/* 8048803C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80488040  39 61 00 20 */	addi r11, r1, 0x20
/* 80488044  4B ED A1 8C */	b _savegpr_26
/* 80488048  7C 7A 1B 78 */	mr r26, r3
/* 8048804C  3B 80 00 00 */	li r28, 0
/* 80488050  3B C0 00 00 */	li r30, 0
lbl_80488054:
/* 80488054  38 7E 05 70 */	addi r3, r30, 0x570
/* 80488058  7C 7A 1A 14 */	add r3, r26, r3
/* 8048805C  4B CB D6 A0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80488060  3B 9C 00 01 */	addi r28, r28, 1
/* 80488064  2C 1C 00 02 */	cmpwi r28, 2
/* 80488068  3B DE 00 08 */	addi r30, r30, 8
/* 8048806C  41 80 FF E8 */	blt lbl_80488054
/* 80488070  38 00 00 00 */	li r0, 0
/* 80488074  90 1A 1D 04 */	stw r0, 0x1d04(r26)
/* 80488078  3C 60 80 49 */	lis r3, l_findCount@ha
/* 8048807C  90 03 9A 10 */	stw r0, l_findCount@l(r3)
/* 80488080  3C 60 80 48 */	lis r3, srchItaMato__15daTag_AllMato_cFPvPv@ha
/* 80488084  38 63 7D 00 */	addi r3, r3, srchItaMato__15daTag_AllMato_cFPvPv@l
/* 80488088  7F 44 D3 78 */	mr r4, r26
/* 8048808C  4B B9 92 AC */	b fpcEx_Search__FPFPvPv_PvPv
/* 80488090  3B 60 00 00 */	li r27, 0
/* 80488094  3B E0 00 00 */	li r31, 0
/* 80488098  3B C0 00 00 */	li r30, 0
/* 8048809C  3C 60 80 49 */	lis r3, l_findActorPtrs@ha
/* 804880A0  3B 83 98 80 */	addi r28, r3, l_findActorPtrs@l
/* 804880A4  3C 60 80 49 */	lis r3, l_findCount@ha
/* 804880A8  3B A3 9A 10 */	addi r29, r3, l_findCount@l
/* 804880AC  48 00 00 2C */	b lbl_804880D8
lbl_804880B0:
/* 804880B0  38 7E 05 70 */	addi r3, r30, 0x570
/* 804880B4  7C 7A 1A 14 */	add r3, r26, r3
/* 804880B8  7C 9C F8 2E */	lwzx r4, r28, r31
/* 804880BC  4B CB D6 24 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 804880C0  80 7A 1D 04 */	lwz r3, 0x1d04(r26)
/* 804880C4  38 03 00 01 */	addi r0, r3, 1
/* 804880C8  90 1A 1D 04 */	stw r0, 0x1d04(r26)
/* 804880CC  3B 7B 00 01 */	addi r27, r27, 1
/* 804880D0  3B FF 00 04 */	addi r31, r31, 4
/* 804880D4  3B DE 00 08 */	addi r30, r30, 8
lbl_804880D8:
/* 804880D8  80 1D 00 00 */	lwz r0, 0(r29)
/* 804880DC  7C 1B 00 00 */	cmpw r27, r0
/* 804880E0  40 80 00 0C */	bge lbl_804880EC
/* 804880E4  2C 1B 00 02 */	cmpwi r27, 2
/* 804880E8  41 80 FF C8 */	blt lbl_804880B0
lbl_804880EC:
/* 804880EC  39 61 00 20 */	addi r11, r1, 0x20
/* 804880F0  4B ED A1 2C */	b _restgpr_26
/* 804880F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804880F8  7C 08 03 A6 */	mtlr r0
/* 804880FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80488100  4E 80 00 20 */	blr 
