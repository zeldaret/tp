lbl_804881C0:
/* 804881C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804881C4  7C 08 02 A6 */	mflr r0
/* 804881C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804881CC  7C 64 1B 78 */	mr r4, r3
/* 804881D0  38 00 00 00 */	li r0, 0
/* 804881D4  3C 60 80 49 */	lis r3, l_findCount@ha /* 0x80489A10@ha */
/* 804881D8  90 03 9A 10 */	stw r0, l_findCount@l(r3)  /* 0x80489A10@l */
/* 804881DC  3C 60 80 48 */	lis r3, srchArrow__15daTag_AllMato_cFPvPv@ha /* 0x80487E38@ha */
/* 804881E0  38 63 7E 38 */	addi r3, r3, srchArrow__15daTag_AllMato_cFPvPv@l /* 0x80487E38@l */
/* 804881E4  4B B9 91 55 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 804881E8  38 80 00 00 */	li r4, 0
/* 804881EC  3C 60 80 49 */	lis r3, l_findCount@ha /* 0x80489A10@ha */
/* 804881F0  80 03 9A 10 */	lwz r0, l_findCount@l(r3)  /* 0x80489A10@l */
/* 804881F4  3C 60 80 49 */	lis r3, l_findActorPtrs@ha /* 0x80489880@ha */
/* 804881F8  38 A3 98 80 */	addi r5, r3, l_findActorPtrs@l /* 0x80489880@l */
/* 804881FC  7C 09 03 A6 */	mtctr r0
/* 80488200  2C 00 00 00 */	cmpwi r0, 0
/* 80488204  40 81 00 20 */	ble lbl_80488224
lbl_80488208:
/* 80488208  7C 65 20 2E */	lwzx r3, r5, r4
/* 8048820C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80488210  28 00 00 00 */	cmplwi r0, 0
/* 80488214  40 82 00 08 */	bne lbl_8048821C
/* 80488218  48 00 00 10 */	b lbl_80488228
lbl_8048821C:
/* 8048821C  38 84 00 04 */	addi r4, r4, 4
/* 80488220  42 00 FF E8 */	bdnz lbl_80488208
lbl_80488224:
/* 80488224  38 60 00 00 */	li r3, 0
lbl_80488228:
/* 80488228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048822C  7C 08 03 A6 */	mtlr r0
/* 80488230  38 21 00 10 */	addi r1, r1, 0x10
/* 80488234  4E 80 00 20 */	blr 
