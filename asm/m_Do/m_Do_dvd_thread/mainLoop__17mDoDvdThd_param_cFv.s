lbl_80015AD8:
/* 80015AD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80015ADC  7C 08 02 A6 */	mflr r0
/* 80015AE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80015AE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80015AE8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80015AEC  7C 7E 1B 78 */	mr r30, r3
/* 80015AF0  3C 60 80 01 */	lis r3, cb__FPv@ha
/* 80015AF4  3B E3 5A 90 */	addi r31, r3, cb__FPv@l
/* 80015AF8  48 00 00 54 */	b lbl_80015B4C
/* 80015AFC  48 00 00 3C */	b lbl_80015B38
lbl_80015B00:
/* 80015B00  7F C3 F3 78 */	mr r3, r30
/* 80015B04  80 81 00 08 */	lwz r4, 8(r1)
/* 80015B08  4B FF FF 35 */	bl cut__17mDoDvdThd_param_cFP19mDoDvdThd_command_c
/* 80015B0C  88 0D 87 00 */	lbz r0, struct_80450C80+0x0(r13)
/* 80015B10  28 00 00 00 */	cmplwi r0, 0
/* 80015B14  41 82 00 1C */	beq lbl_80015B30
/* 80015B18  48 27 A3 E5 */	bl getThreadPointer__6JASDvdFv
/* 80015B1C  7F E4 FB 78 */	mr r4, r31
/* 80015B20  38 A1 00 08 */	addi r5, r1, 8
/* 80015B24  38 C0 00 04 */	li r6, 4
/* 80015B28  48 27 A0 35 */	bl sendCmdMsg__13JASTaskThreadFPFPv_vPCvUl
/* 80015B2C  48 00 00 0C */	b lbl_80015B38
lbl_80015B30:
/* 80015B30  38 61 00 08 */	addi r3, r1, 8
/* 80015B34  4B FF FF 5D */	bl cb__FPv
lbl_80015B38:
/* 80015B38  7F C3 F3 78 */	mr r3, r30
/* 80015B3C  4B FF FE A1 */	bl getFirstCommand__17mDoDvdThd_param_cFv
/* 80015B40  90 61 00 08 */	stw r3, 8(r1)
/* 80015B44  28 03 00 00 */	cmplwi r3, 0
/* 80015B48  40 82 FF B8 */	bne lbl_80015B00
lbl_80015B4C:
/* 80015B4C  7F C3 F3 78 */	mr r3, r30
/* 80015B50  4B FF FE 65 */	bl waitForKick__17mDoDvdThd_param_cFv
/* 80015B54  2C 03 00 00 */	cmpwi r3, 0
/* 80015B58  40 82 FF E0 */	bne lbl_80015B38
/* 80015B5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80015B60  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80015B64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80015B68  7C 08 03 A6 */	mtlr r0
/* 80015B6C  38 21 00 20 */	addi r1, r1, 0x20
/* 80015B70  4E 80 00 20 */	blr 
