lbl_80043A14:
/* 80043A14  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80043A18  7C 08 02 A6 */	mflr r0
/* 80043A1C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80043A20  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80043A24  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80043A28  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80043A2C  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80043A30  39 61 00 50 */	addi r11, r1, 0x50
/* 80043A34  48 31 E7 81 */	bl _savegpr_19
/* 80043A38  7C 77 1B 78 */	mr r23, r3
/* 80043A3C  3A A0 00 00 */	li r21, 0
/* 80043A40  7C 9B 07 74 */	extsb r27, r4
/* 80043A44  3B 40 00 01 */	li r26, 1
/* 80043A48  3B 20 00 00 */	li r25, 0
/* 80043A4C  C3 E2 84 D0 */	lfs f31, lit_4264(r2)
/* 80043A50  3B 00 00 00 */	li r24, 0
/* 80043A54  FF C0 F8 90 */	fmr f30, f31
/* 80043A58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80043A5C  3A 63 61 C0 */	addi r19, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80043A60  3B F3 4F F8 */	addi r31, r19, 0x4ff8
/* 80043A64  7F E3 FB 78 */	mr r3, r31
/* 80043A68  7E E4 BB 78 */	mr r4, r23
/* 80043A6C  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha /* 0x80379DD0@ha */
/* 80043A70  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l /* 0x80379DD0@l */
/* 80043A74  38 C0 00 03 */	li r6, 3
/* 80043A78  48 00 46 75 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80043A7C  28 03 00 00 */	cmplwi r3, 0
/* 80043A80  41 82 00 E0 */	beq lbl_80043B60
/* 80043A84  82 83 00 00 */	lwz r20, 0(r3)
/* 80043A88  88 0D 87 E4 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 80043A8C  7C 04 07 74 */	extsb r4, r0
/* 80043A90  2C 04 FF FF */	cmpwi r4, -1
/* 80043A94  40 82 00 1C */	bne lbl_80043AB0
/* 80043A98  38 73 4E 20 */	addi r3, r19, 0x4e20
/* 80043A9C  81 93 4E 20 */	lwz r12, 0x4e20(r19)
/* 80043AA0  81 8C 00 C4 */	lwz r12, 0xc4(r12)
/* 80043AA4  7D 89 03 A6 */	mtctr r12
/* 80043AA8  4E 80 04 21 */	bctrl 
/* 80043AAC  48 00 00 1C */	b lbl_80043AC8
lbl_80043AB0:
/* 80043AB0  38 73 4E C4 */	addi r3, r19, 0x4ec4
/* 80043AB4  4B FE 08 D1 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 80043AB8  81 83 00 00 */	lwz r12, 0(r3)
/* 80043ABC  81 8C 00 C4 */	lwz r12, 0xc4(r12)
/* 80043AC0  7D 89 03 A6 */	mtctr r12
/* 80043AC4  4E 80 04 21 */	bctrl 
lbl_80043AC8:
/* 80043AC8  28 03 00 00 */	cmplwi r3, 0
/* 80043ACC  41 82 00 94 */	beq lbl_80043B60
/* 80043AD0  2C 14 00 00 */	cmpwi r20, 0
/* 80043AD4  41 80 00 8C */	blt lbl_80043B60
/* 80043AD8  80 03 00 00 */	lwz r0, 0(r3)
/* 80043ADC  7C 14 00 00 */	cmpw r20, r0
/* 80043AE0  40 80 00 80 */	bge lbl_80043B60
/* 80043AE4  80 63 00 04 */	lwz r3, 4(r3)
/* 80043AE8  1C 14 00 0D */	mulli r0, r20, 0xd
/* 80043AEC  7C 63 02 14 */	add r3, r3, r0
/* 80043AF0  7C 7E 1B 78 */	mr r30, r3
/* 80043AF4  8B A3 00 08 */	lbz r29, 8(r3)
/* 80043AF8  88 03 00 09 */	lbz r0, 9(r3)
/* 80043AFC  7C 16 07 74 */	extsb r22, r0
/* 80043B00  88 83 00 0B */	lbz r4, 0xb(r3)
/* 80043B04  54 80 07 3E */	clrlwi r0, r4, 0x1c
/* 80043B08  7C 1C 03 78 */	mr r28, r0
/* 80043B0C  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80043B10  7C 1B 07 74 */	extsb r27, r0
/* 80043B14  54 99 DF 7E */	rlwinm r25, r4, 0x1b, 0x1d, 0x1f
/* 80043B18  2C 1B 00 0F */	cmpwi r27, 0xf
/* 80043B1C  40 82 00 08 */	bne lbl_80043B24
/* 80043B20  3B 60 00 00 */	li r27, 0
lbl_80043B24:
/* 80043B24  88 03 00 0A */	lbz r0, 0xa(r3)
/* 80043B28  54 03 E7 3E */	rlwinm r3, r0, 0x1c, 0x1c, 0x1f
/* 80043B2C  54 80 06 F6 */	rlwinm r0, r4, 0, 0x1b, 0x1b
/* 80043B30  7C 60 03 79 */	or. r0, r3, r0
/* 80043B34  41 80 00 2C */	blt lbl_80043B60
/* 80043B38  2C 00 00 17 */	cmpwi r0, 0x17
/* 80043B3C  41 81 00 24 */	bgt lbl_80043B60
/* 80043B40  3B 00 00 01 */	li r24, 1
/* 80043B44  C8 22 84 D8 */	lfd f1, lit_4267(r2)
/* 80043B48  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80043B4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80043B50  3C 00 43 30 */	lis r0, 0x4330
/* 80043B54  90 01 00 10 */	stw r0, 0x10(r1)
/* 80043B58  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80043B5C  EF E0 08 28 */	fsubs f31, f0, f1
lbl_80043B60:
/* 80043B60  7F E3 FB 78 */	mr r3, r31
/* 80043B64  7E E4 BB 78 */	mr r4, r23
/* 80043B68  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha /* 0x80379DD0@ha */
/* 80043B6C  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l /* 0x80379DD0@l */
/* 80043B70  38 A5 00 03 */	addi r5, r5, 3
/* 80043B74  38 C0 00 04 */	li r6, 4
/* 80043B78  48 00 45 75 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80043B7C  28 03 00 00 */	cmplwi r3, 0
/* 80043B80  41 82 00 08 */	beq lbl_80043B88
/* 80043B84  7C 7E 1B 78 */	mr r30, r3
lbl_80043B88:
/* 80043B88  7F E3 FB 78 */	mr r3, r31
/* 80043B8C  7E E4 BB 78 */	mr r4, r23
/* 80043B90  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha /* 0x80379DD0@ha */
/* 80043B94  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l /* 0x80379DD0@l */
/* 80043B98  38 A5 00 09 */	addi r5, r5, 9
/* 80043B9C  38 C0 00 03 */	li r6, 3
/* 80043BA0  48 00 45 4D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80043BA4  28 03 00 00 */	cmplwi r3, 0
/* 80043BA8  41 82 00 0C */	beq lbl_80043BB4
/* 80043BAC  80 03 00 00 */	lwz r0, 0(r3)
/* 80043BB0  7C 1D 07 34 */	extsh r29, r0
lbl_80043BB4:
/* 80043BB4  7F E3 FB 78 */	mr r3, r31
/* 80043BB8  7E E4 BB 78 */	mr r4, r23
/* 80043BBC  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha /* 0x80379DD0@ha */
/* 80043BC0  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l /* 0x80379DD0@l */
/* 80043BC4  38 A5 00 13 */	addi r5, r5, 0x13
/* 80043BC8  38 C0 00 03 */	li r6, 3
/* 80043BCC  48 00 45 21 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80043BD0  28 03 00 00 */	cmplwi r3, 0
/* 80043BD4  41 82 00 0C */	beq lbl_80043BE0
/* 80043BD8  80 03 00 00 */	lwz r0, 0(r3)
/* 80043BDC  7C 16 07 74 */	extsb r22, r0
lbl_80043BE0:
/* 80043BE0  7F E3 FB 78 */	mr r3, r31
/* 80043BE4  7E E4 BB 78 */	mr r4, r23
/* 80043BE8  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha /* 0x80379DD0@ha */
/* 80043BEC  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l /* 0x80379DD0@l */
/* 80043BF0  38 A5 00 1A */	addi r5, r5, 0x1a
/* 80043BF4  38 C0 00 03 */	li r6, 3
/* 80043BF8  48 00 44 F5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80043BFC  28 03 00 00 */	cmplwi r3, 0
/* 80043C00  41 82 00 0C */	beq lbl_80043C0C
/* 80043C04  80 03 00 00 */	lwz r0, 0(r3)
/* 80043C08  7C 1C 07 74 */	extsb r28, r0
lbl_80043C0C:
/* 80043C0C  7F E3 FB 78 */	mr r3, r31
/* 80043C10  7E E4 BB 78 */	mr r4, r23
/* 80043C14  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha /* 0x80379DD0@ha */
/* 80043C18  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l /* 0x80379DD0@l */
/* 80043C1C  38 A5 00 20 */	addi r5, r5, 0x20
/* 80043C20  38 C0 00 03 */	li r6, 3
/* 80043C24  48 00 44 C9 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80043C28  28 03 00 00 */	cmplwi r3, 0
/* 80043C2C  41 82 00 0C */	beq lbl_80043C38
/* 80043C30  80 03 00 00 */	lwz r0, 0(r3)
/* 80043C34  7C 1B 07 74 */	extsb r27, r0
lbl_80043C38:
/* 80043C38  7F E3 FB 78 */	mr r3, r31
/* 80043C3C  7E E4 BB 78 */	mr r4, r23
/* 80043C40  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha /* 0x80379DD0@ha */
/* 80043C44  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l /* 0x80379DD0@l */
/* 80043C48  38 A5 00 25 */	addi r5, r5, 0x25
/* 80043C4C  38 C0 00 03 */	li r6, 3
/* 80043C50  48 00 44 9D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80043C54  28 03 00 00 */	cmplwi r3, 0
/* 80043C58  41 82 00 08 */	beq lbl_80043C60
/* 80043C5C  82 A3 00 00 */	lwz r21, 0(r3)
lbl_80043C60:
/* 80043C60  7F E3 FB 78 */	mr r3, r31
/* 80043C64  7E E4 BB 78 */	mr r4, r23
/* 80043C68  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha /* 0x80379DD0@ha */
/* 80043C6C  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l /* 0x80379DD0@l */
/* 80043C70  38 A5 00 2A */	addi r5, r5, 0x2a
/* 80043C74  38 C0 00 00 */	li r6, 0
/* 80043C78  48 00 44 75 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80043C7C  28 03 00 00 */	cmplwi r3, 0
/* 80043C80  41 82 00 08 */	beq lbl_80043C88
/* 80043C84  C3 C3 00 00 */	lfs f30, 0(r3)
lbl_80043C88:
/* 80043C88  7F E3 FB 78 */	mr r3, r31
/* 80043C8C  7E E4 BB 78 */	mr r4, r23
/* 80043C90  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha /* 0x80379DD0@ha */
/* 80043C94  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l /* 0x80379DD0@l */
/* 80043C98  38 A5 00 30 */	addi r5, r5, 0x30
/* 80043C9C  38 C0 00 00 */	li r6, 0
/* 80043CA0  48 00 44 4D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80043CA4  28 03 00 00 */	cmplwi r3, 0
/* 80043CA8  41 82 00 0C */	beq lbl_80043CB4
/* 80043CAC  C3 E3 00 00 */	lfs f31, 0(r3)
/* 80043CB0  3B 00 00 01 */	li r24, 1
lbl_80043CB4:
/* 80043CB4  7F E3 FB 78 */	mr r3, r31
/* 80043CB8  7E E4 BB 78 */	mr r4, r23
/* 80043CBC  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha /* 0x80379DD0@ha */
/* 80043CC0  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l /* 0x80379DD0@l */
/* 80043CC4  38 A5 00 35 */	addi r5, r5, 0x35
/* 80043CC8  38 C0 00 03 */	li r6, 3
/* 80043CCC  48 00 44 21 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80043CD0  28 03 00 00 */	cmplwi r3, 0
/* 80043CD4  41 82 00 08 */	beq lbl_80043CDC
/* 80043CD8  3B 40 00 00 */	li r26, 0
lbl_80043CDC:
/* 80043CDC  28 1E 00 00 */	cmplwi r30, 0
/* 80043CE0  41 82 00 54 */	beq lbl_80043D34
/* 80043CE4  7F A0 07 34 */	extsh r0, r29
/* 80043CE8  2C 00 FF FF */	cmpwi r0, -1
/* 80043CEC  41 82 00 48 */	beq lbl_80043D34
/* 80043CF0  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 80043CF4  41 82 00 10 */	beq lbl_80043D04
/* 80043CF8  C0 02 84 D4 */	lfs f0, lit_4265(r2)
/* 80043CFC  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80043D00  48 16 4E 59 */	bl dKy_set_nexttime__Ff
lbl_80043D04:
/* 80043D04  93 41 00 08 */	stw r26, 8(r1)
/* 80043D08  93 21 00 0C */	stw r25, 0xc(r1)
/* 80043D0C  7F C3 F3 78 */	mr r3, r30
/* 80043D10  7F A4 EB 78 */	mr r4, r29
/* 80043D14  7E C5 B3 78 */	mr r5, r22
/* 80043D18  7F 86 E3 78 */	mr r6, r28
/* 80043D1C  FC 20 F0 90 */	fmr f1, f30
/* 80043D20  7E A7 AB 78 */	mr r7, r21
/* 80043D24  39 00 00 01 */	li r8, 1
/* 80043D28  7F 69 DB 78 */	mr r9, r27
/* 80043D2C  39 40 00 00 */	li r10, 0
/* 80043D30  4B FE 95 CD */	bl dComIfGp_setNextStage__FPCcsScScfUliScsii
lbl_80043D34:
/* 80043D34  38 60 00 01 */	li r3, 1
/* 80043D38  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80043D3C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80043D40  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80043D44  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80043D48  39 61 00 50 */	addi r11, r1, 0x50
/* 80043D4C  48 31 E4 B5 */	bl _restgpr_19
/* 80043D50  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80043D54  7C 08 03 A6 */	mtlr r0
/* 80043D58  38 21 00 70 */	addi r1, r1, 0x70
/* 80043D5C  4E 80 00 20 */	blr 
