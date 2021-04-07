lbl_80C92650:
/* 80C92650  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C92654  7C 08 02 A6 */	mflr r0
/* 80C92658  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C9265C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80C92660  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80C92664  39 61 00 40 */	addi r11, r1, 0x40
/* 80C92668  4B 6C FB 61 */	bl _savegpr_24
/* 80C9266C  7C 7D 1B 78 */	mr r29, r3
/* 80C92670  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C92674  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80C92678  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80C9267C  7C 04 07 74 */	extsb r4, r0
/* 80C92680  4B 3B F1 6D */	bl dPath_GetRoomPath__Fii
/* 80C92684  90 7D 05 70 */	stw r3, 0x570(r29)
/* 80C92688  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80C9268C  28 03 00 00 */	cmplwi r3, 0
/* 80C92690  40 82 00 0C */	bne lbl_80C9269C
/* 80C92694  38 60 00 00 */	li r3, 0
/* 80C92698  48 00 00 F4 */	b lbl_80C9278C
lbl_80C9269C:
/* 80C9269C  83 E3 00 08 */	lwz r31, 8(r3)
/* 80C926A0  3B C0 00 00 */	li r30, 0
/* 80C926A4  3B 80 00 00 */	li r28, 0
/* 80C926A8  3C 60 80 C9 */	lis r3, lit_3878@ha /* 0x80C92C6C@ha */
/* 80C926AC  C3 E3 2C 6C */	lfs f31, lit_3878@l(r3)  /* 0x80C92C6C@l */
/* 80C926B0  3C 60 80 C9 */	lis r3, data_80C92CDC@ha /* 0x80C92CDC@ha */
/* 80C926B4  3B 43 2C DC */	addi r26, r3, data_80C92CDC@l /* 0x80C92CDC@l */
/* 80C926B8  3C 60 80 C9 */	lis r3, lit_4104@ha /* 0x80C92D50@ha */
/* 80C926BC  3B 63 2D 50 */	addi r27, r3, lit_4104@l /* 0x80C92D50@l */
/* 80C926C0  48 00 00 B8 */	b lbl_80C92778
lbl_80C926C4:
/* 80C926C4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C926C8  7F 3D E2 14 */	add r25, r29, r28
/* 80C926CC  D0 19 06 F0 */	stfs f0, 0x6f0(r25)
/* 80C926D0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C926D4  D0 19 06 F4 */	stfs f0, 0x6f4(r25)
/* 80C926D8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80C926DC  D0 19 06 F8 */	stfs f0, 0x6f8(r25)
/* 80C926E0  D3 F9 06 FC */	stfs f31, 0x6fc(r25)
/* 80C926E4  D3 F9 07 00 */	stfs f31, 0x700(r25)
/* 80C926E8  D3 F9 07 04 */	stfs f31, 0x704(r25)
/* 80C926EC  38 60 00 00 */	li r3, 0
/* 80C926F0  98 79 07 2F */	stb r3, 0x72f(r25)
/* 80C926F4  98 79 07 30 */	stb r3, 0x730(r25)
/* 80C926F8  B0 79 07 08 */	sth r3, 0x708(r25)
/* 80C926FC  B0 79 07 0A */	sth r3, 0x70a(r25)
/* 80C92700  B0 79 07 0C */	sth r3, 0x70c(r25)
/* 80C92704  88 1F 00 03 */	lbz r0, 3(r31)
/* 80C92708  98 19 07 2E */	stb r0, 0x72e(r25)
/* 80C9270C  88 19 07 2E */	lbz r0, 0x72e(r25)
/* 80C92710  28 00 00 06 */	cmplwi r0, 6
/* 80C92714  40 81 00 08 */	ble lbl_80C9271C
/* 80C92718  98 79 07 2E */	stb r3, 0x72e(r25)
lbl_80C9271C:
/* 80C9271C  3B 19 05 78 */	addi r24, r25, 0x578
/* 80C92720  7F 03 C3 78 */	mr r3, r24
/* 80C92724  38 80 00 FF */	li r4, 0xff
/* 80C92728  38 A0 00 00 */	li r5, 0
/* 80C9272C  7F A6 EB 78 */	mr r6, r29
/* 80C92730  4B 3F 11 31 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C92734  38 79 05 B4 */	addi r3, r25, 0x5b4
/* 80C92738  7F 44 D3 78 */	mr r4, r26
/* 80C9273C  4B 3F 21 79 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C92740  93 19 05 F8 */	stw r24, 0x5f8(r25)
/* 80C92744  80 7B 00 00 */	lwz r3, 0(r27)
/* 80C92748  80 1B 00 04 */	lwz r0, 4(r27)
/* 80C9274C  90 61 00 08 */	stw r3, 8(r1)
/* 80C92750  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C92754  80 1B 00 08 */	lwz r0, 8(r27)
/* 80C92758  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C9275C  7F A3 EB 78 */	mr r3, r29
/* 80C92760  38 81 00 08 */	addi r4, r1, 8
/* 80C92764  7F C5 F3 78 */	mr r5, r30
/* 80C92768  4B FF F3 F1 */	bl setAction__11daObjMATO_cFM11daObjMATO_cFPCvPvi_vi
/* 80C9276C  3B FF 00 10 */	addi r31, r31, 0x10
/* 80C92770  3B DE 00 01 */	addi r30, r30, 1
/* 80C92774  3B 9C 01 C0 */	addi r28, r28, 0x1c0
lbl_80C92778:
/* 80C92778  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80C9277C  A0 03 00 00 */	lhz r0, 0(r3)
/* 80C92780  7C 1E 00 00 */	cmpw r30, r0
/* 80C92784  41 80 FF 40 */	blt lbl_80C926C4
/* 80C92788  38 60 00 01 */	li r3, 1
lbl_80C9278C:
/* 80C9278C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80C92790  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80C92794  39 61 00 40 */	addi r11, r1, 0x40
/* 80C92798  4B 6C FA 7D */	bl _restgpr_24
/* 80C9279C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C927A0  7C 08 03 A6 */	mtlr r0
/* 80C927A4  38 21 00 50 */	addi r1, r1, 0x50
/* 80C927A8  4E 80 00 20 */	blr 
