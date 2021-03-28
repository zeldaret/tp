lbl_805552DC:
/* 805552DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805552E0  7C 08 02 A6 */	mflr r0
/* 805552E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805552E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805552EC  7C 7F 1B 78 */	mr r31, r3
/* 805552F0  88 03 0F 84 */	lbz r0, 0xf84(r3)
/* 805552F4  2C 00 00 03 */	cmpwi r0, 3
/* 805552F8  41 82 00 E8 */	beq lbl_805553E0
/* 805552FC  40 80 00 1C */	bge lbl_80555318
/* 80555300  2C 00 00 01 */	cmpwi r0, 1
/* 80555304  41 82 00 58 */	beq lbl_8055535C
/* 80555308  40 80 01 2C */	bge lbl_80555434
/* 8055530C  2C 00 00 00 */	cmpwi r0, 0
/* 80555310  40 80 00 1C */	bge lbl_8055532C
/* 80555314  48 00 01 20 */	b lbl_80555434
lbl_80555318:
/* 80555318  2C 00 00 0D */	cmpwi r0, 0xd
/* 8055531C  40 80 01 18 */	bge lbl_80555434
/* 80555320  2C 00 00 05 */	cmpwi r0, 5
/* 80555324  40 80 01 10 */	bge lbl_80555434
/* 80555328  48 00 00 E4 */	b lbl_8055540C
lbl_8055532C:
/* 8055532C  38 7F 0F 88 */	addi r3, r31, 0xf88
/* 80555330  4B BF 03 D8 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80555334  28 03 00 00 */	cmplwi r3, 0
/* 80555338  40 82 00 FC */	bne lbl_80555434
/* 8055533C  7F E3 FB 78 */	mr r3, r31
/* 80555340  38 80 00 07 */	li r4, 7
/* 80555344  38 A0 00 00 */	li r5, 0
/* 80555348  4B BF 6B 9C */	b getEvtAreaTagP__8daNpcT_cFii
/* 8055534C  7C 64 1B 78 */	mr r4, r3
/* 80555350  38 7F 0F 88 */	addi r3, r31, 0xf88
/* 80555354  4B BF 03 8C */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80555358  48 00 00 DC */	b lbl_80555434
lbl_8055535C:
/* 8055535C  38 7F 0F 88 */	addi r3, r31, 0xf88
/* 80555360  4B BF 03 A8 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80555364  28 03 00 00 */	cmplwi r3, 0
/* 80555368  40 82 00 20 */	bne lbl_80555388
/* 8055536C  7F E3 FB 78 */	mr r3, r31
/* 80555370  38 80 00 08 */	li r4, 8
/* 80555374  38 A0 00 00 */	li r5, 0
/* 80555378  4B BF 6B 6C */	b getEvtAreaTagP__8daNpcT_cFii
/* 8055537C  7C 64 1B 78 */	mr r4, r3
/* 80555380  38 7F 0F 88 */	addi r3, r31, 0xf88
/* 80555384  4B BF 03 5C */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80555388:
/* 80555388  38 7F 0F 90 */	addi r3, r31, 0xf90
/* 8055538C  4B BF 03 7C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80555390  28 03 00 00 */	cmplwi r3, 0
/* 80555394  40 82 00 20 */	bne lbl_805553B4
/* 80555398  7F E3 FB 78 */	mr r3, r31
/* 8055539C  38 80 00 09 */	li r4, 9
/* 805553A0  38 A0 00 00 */	li r5, 0
/* 805553A4  4B BF 6B 40 */	b getEvtAreaTagP__8daNpcT_cFii
/* 805553A8  7C 64 1B 78 */	mr r4, r3
/* 805553AC  38 7F 0F 90 */	addi r3, r31, 0xf90
/* 805553B0  4B BF 03 30 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_805553B4:
/* 805553B4  38 7F 0F 98 */	addi r3, r31, 0xf98
/* 805553B8  4B BF 03 50 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 805553BC  28 03 00 00 */	cmplwi r3, 0
/* 805553C0  40 82 00 74 */	bne lbl_80555434
/* 805553C4  7F E3 FB 78 */	mr r3, r31
/* 805553C8  38 80 00 61 */	li r4, 0x61
/* 805553CC  4B BF 6A 60 */	b getNearestActorP__8daNpcT_cFs
/* 805553D0  7C 64 1B 78 */	mr r4, r3
/* 805553D4  38 7F 0F 98 */	addi r3, r31, 0xf98
/* 805553D8  4B BF 03 08 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 805553DC  48 00 00 58 */	b lbl_80555434
lbl_805553E0:
/* 805553E0  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 805553E4  4B BF 03 24 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 805553E8  28 03 00 00 */	cmplwi r3, 0
/* 805553EC  40 82 00 48 */	bne lbl_80555434
/* 805553F0  7F E3 FB 78 */	mr r3, r31
/* 805553F4  38 80 02 7A */	li r4, 0x27a
/* 805553F8  4B BF 6A 34 */	b getNearestActorP__8daNpcT_cFs
/* 805553FC  7C 64 1B 78 */	mr r4, r3
/* 80555400  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 80555404  4B BF 02 DC */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80555408  48 00 00 2C */	b lbl_80555434
lbl_8055540C:
/* 8055540C  38 7F 0F A8 */	addi r3, r31, 0xfa8
/* 80555410  4B BF 02 F8 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80555414  28 03 00 00 */	cmplwi r3, 0
/* 80555418  40 82 00 1C */	bne lbl_80555434
/* 8055541C  7F E3 FB 78 */	mr r3, r31
/* 80555420  38 80 02 50 */	li r4, 0x250
/* 80555424  4B BF 6A 08 */	b getNearestActorP__8daNpcT_cFs
/* 80555428  7C 64 1B 78 */	mr r4, r3
/* 8055542C  38 7F 0F A8 */	addi r3, r31, 0xfa8
/* 80555430  4B BF 02 B0 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80555434:
/* 80555434  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80555438  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055543C  7C 08 03 A6 */	mtlr r0
/* 80555440  38 21 00 10 */	addi r1, r1, 0x10
/* 80555444  4E 80 00 20 */	blr 
