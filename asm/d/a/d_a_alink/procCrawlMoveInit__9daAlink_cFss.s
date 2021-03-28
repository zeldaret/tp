lbl_800F9474:
/* 800F9474  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800F9478  7C 08 02 A6 */	mflr r0
/* 800F947C  90 01 00 44 */	stw r0, 0x44(r1)
/* 800F9480  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 800F9484  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 800F9488  39 61 00 30 */	addi r11, r1, 0x30
/* 800F948C  48 26 8D 41 */	bl _savegpr_25
/* 800F9490  7C 7B 1B 78 */	mr r27, r3
/* 800F9494  7C 9C 23 78 */	mr r28, r4
/* 800F9498  7C BD 2B 78 */	mr r29, r5
/* 800F949C  3B 20 00 00 */	li r25, 0
/* 800F94A0  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800F94A4  28 00 00 37 */	cmplwi r0, 0x37
/* 800F94A8  40 82 00 0C */	bne lbl_800F94B4
/* 800F94AC  3B 40 00 00 */	li r26, 0
/* 800F94B0  48 00 00 14 */	b lbl_800F94C4
lbl_800F94B4:
/* 800F94B4  3B 40 00 01 */	li r26, 1
/* 800F94B8  28 00 00 35 */	cmplwi r0, 0x35
/* 800F94BC  40 82 00 08 */	bne lbl_800F94C4
/* 800F94C0  3B 20 00 01 */	li r25, 1
lbl_800F94C4:
/* 800F94C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800F94C8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 800F94CC  80 1F 5F 18 */	lwz r0, 0x5f18(r31)
/* 800F94D0  54 1E 9F FE */	rlwinm r30, r0, 0x13, 0x1f, 0x1f
/* 800F94D4  7F 63 DB 78 */	mr r3, r27
/* 800F94D8  38 80 00 36 */	li r4, 0x36
/* 800F94DC  4B FC 8A 91 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F94E0  38 00 00 00 */	li r0, 0
/* 800F94E4  B0 1B 30 0E */	sth r0, 0x300e(r27)
/* 800F94E8  2C 1A 00 00 */	cmpwi r26, 0
/* 800F94EC  41 82 00 6C */	beq lbl_800F9558
/* 800F94F0  7F 63 DB 78 */	mr r3, r27
/* 800F94F4  4B FF E7 5D */	bl getCrawlMoveAnmSpeed__9daAlink_cFv
/* 800F94F8  FF E0 08 90 */	fmr f31, f1
/* 800F94FC  2C 19 00 00 */	cmpwi r25, 0
/* 800F9500  41 82 00 10 */	beq lbl_800F9510
/* 800F9504  38 00 00 01 */	li r0, 1
/* 800F9508  B0 1B 30 0E */	sth r0, 0x300e(r27)
/* 800F950C  48 00 00 28 */	b lbl_800F9534
lbl_800F9510:
/* 800F9510  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 800F9514  A8 1B 2F E2 */	lha r0, 0x2fe2(r27)
/* 800F9518  7C 03 00 50 */	subf r0, r3, r0
/* 800F951C  7C 03 07 34 */	extsh r3, r0
/* 800F9520  4B FB 9F 75 */	bl getDirectionFromAngle__9daAlink_cFs
/* 800F9524  2C 03 00 01 */	cmpwi r3, 1
/* 800F9528  40 82 00 0C */	bne lbl_800F9534
/* 800F952C  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 800F9530  EF FF 00 32 */	fmuls f31, f31, f0
lbl_800F9534:
/* 800F9534  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 800F9538  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 800F953C  7F 63 DB 78 */	mr r3, r27
/* 800F9540  38 80 00 35 */	li r4, 0x35
/* 800F9544  FC 20 F8 90 */	fmr f1, f31
/* 800F9548  3C A0 80 39 */	lis r5, m__20daAlinkHIO_crouch_c0@ha
/* 800F954C  38 A5 E0 1C */	addi r5, r5, m__20daAlinkHIO_crouch_c0@l
/* 800F9550  C0 45 00 48 */	lfs f2, 0x48(r5)
/* 800F9554  4B FB 3A 8D */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
lbl_800F9558:
/* 800F9558  6B 40 00 01 */	xori r0, r26, 1
/* 800F955C  90 1B 31 98 */	stw r0, 0x3198(r27)
/* 800F9560  B3 9B 04 E4 */	sth r28, 0x4e4(r27)
/* 800F9564  B3 BB 04 E8 */	sth r29, 0x4e8(r27)
/* 800F9568  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800F956C  D0 1B 33 CC */	stfs f0, 0x33cc(r27)
/* 800F9570  38 00 00 0C */	li r0, 0xc
/* 800F9574  98 1B 2F 99 */	stb r0, 0x2f99(r27)
/* 800F9578  80 1F 5F 18 */	lwz r0, 0x5f18(r31)
/* 800F957C  64 00 08 00 */	oris r0, r0, 0x800
/* 800F9580  90 1F 5F 18 */	stw r0, 0x5f18(r31)
/* 800F9584  2C 1E 00 00 */	cmpwi r30, 0
/* 800F9588  41 82 00 0C */	beq lbl_800F9594
/* 800F958C  60 00 20 00 */	ori r0, r0, 0x2000
/* 800F9590  90 1F 5F 18 */	stw r0, 0x5f18(r31)
lbl_800F9594:
/* 800F9594  38 60 00 01 */	li r3, 1
/* 800F9598  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 800F959C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 800F95A0  39 61 00 30 */	addi r11, r1, 0x30
/* 800F95A4  48 26 8C 75 */	bl _restgpr_25
/* 800F95A8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800F95AC  7C 08 03 A6 */	mtlr r0
/* 800F95B0  38 21 00 40 */	addi r1, r1, 0x40
/* 800F95B4  4E 80 00 20 */	blr 
