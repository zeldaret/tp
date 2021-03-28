lbl_80AEB9BC:
/* 80AEB9BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AEB9C0  7C 08 02 A6 */	mflr r0
/* 80AEB9C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AEB9C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AEB9CC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AEB9D0  7C 7E 1B 78 */	mr r30, r3
/* 80AEB9D4  3B E0 00 00 */	li r31, 0
/* 80AEB9D8  80 03 09 D8 */	lwz r0, 0x9d8(r3)
/* 80AEB9DC  2C 00 00 01 */	cmpwi r0, 1
/* 80AEB9E0  41 82 00 30 */	beq lbl_80AEBA10
/* 80AEB9E4  40 80 00 10 */	bge lbl_80AEB9F4
/* 80AEB9E8  2C 00 00 00 */	cmpwi r0, 0
/* 80AEB9EC  40 80 00 14 */	bge lbl_80AEBA00
/* 80AEB9F0  48 00 00 80 */	b lbl_80AEBA70
lbl_80AEB9F4:
/* 80AEB9F4  2C 00 00 03 */	cmpwi r0, 3
/* 80AEB9F8  40 80 00 78 */	bge lbl_80AEBA70
/* 80AEB9FC  48 00 00 60 */	b lbl_80AEBA5C
lbl_80AEBA00:
/* 80AEBA00  38 80 FF FF */	li r4, -1
/* 80AEBA04  38 A0 00 01 */	li r5, 1
/* 80AEBA08  4B FF FD 79 */	bl cut_alert__13daNpc_Shop0_cFii
/* 80AEBA0C  48 00 00 64 */	b lbl_80AEBA70
lbl_80AEBA10:
/* 80AEBA10  38 80 FF FF */	li r4, -1
/* 80AEBA14  38 A0 00 00 */	li r5, 0
/* 80AEBA18  4B FF FD 69 */	bl cut_alert__13daNpc_Shop0_cFii
/* 80AEBA1C  2C 03 00 00 */	cmpwi r3, 0
/* 80AEBA20  41 82 00 50 */	beq lbl_80AEBA70
/* 80AEBA24  3C 60 80 AF */	lis r3, lit_4268@ha
/* 80AEBA28  38 83 BC A4 */	addi r4, r3, lit_4268@l
/* 80AEBA2C  80 64 00 00 */	lwz r3, 0(r4)
/* 80AEBA30  80 04 00 04 */	lwz r0, 4(r4)
/* 80AEBA34  90 61 00 08 */	stw r3, 8(r1)
/* 80AEBA38  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AEBA3C  80 04 00 08 */	lwz r0, 8(r4)
/* 80AEBA40  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AEBA44  7F C3 F3 78 */	mr r3, r30
/* 80AEBA48  38 81 00 08 */	addi r4, r1, 8
/* 80AEBA4C  38 A0 00 00 */	li r5, 0
/* 80AEBA50  38 C0 00 00 */	li r6, 0
/* 80AEBA54  4B FF FD D1 */	bl setProcess__13daNpc_Shop0_cFM13daNpc_Shop0_cFPCvPvPv_iPvi
/* 80AEBA58  48 00 00 18 */	b lbl_80AEBA70
lbl_80AEBA5C:
/* 80AEBA5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AEBA60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AEBA64  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80AEBA68  4B 55 6A 00 */	b reset__14dEvt_control_cFv
/* 80AEBA6C  3B E0 00 01 */	li r31, 1
lbl_80AEBA70:
/* 80AEBA70  7F E3 FB 78 */	mr r3, r31
/* 80AEBA74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AEBA78  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AEBA7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AEBA80  7C 08 03 A6 */	mtlr r0
/* 80AEBA84  38 21 00 20 */	addi r1, r1, 0x20
/* 80AEBA88  4E 80 00 20 */	blr 
