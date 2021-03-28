lbl_8029655C:
/* 8029655C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80296560  7C 08 02 A6 */	mflr r0
/* 80296564  90 01 00 24 */	stw r0, 0x24(r1)
/* 80296568  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8029656C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80296570  7C 7E 1B 78 */	mr r30, r3
/* 80296574  7C BF 2B 78 */	mr r31, r5
/* 80296578  7C 83 23 78 */	mr r3, r4
/* 8029657C  38 9E 00 CC */	addi r4, r30, 0xcc
/* 80296580  48 0B 22 9D */	bl DVDFastOpen
/* 80296584  2C 03 00 00 */	cmpwi r3, 0
/* 80296588  40 82 00 0C */	bne lbl_80296594
/* 8029658C  38 60 00 00 */	li r3, 0
/* 80296590  48 00 00 70 */	b lbl_80296600
lbl_80296594:
/* 80296594  3C 60 80 29 */	lis r3, channelProcCallback__13JASAramStreamFPv@ha
/* 80296598  38 63 6D 74 */	addi r3, r3, channelProcCallback__13JASAramStreamFPv@l
/* 8029659C  7F C4 F3 78 */	mr r4, r30
/* 802965A0  48 00 7C D5 */	bl registerSubFrameCallback__9JASDriverFPFPv_lPv
/* 802965A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802965A8  40 82 00 0C */	bne lbl_802965B4
/* 802965AC  38 60 00 00 */	li r3, 0
/* 802965B0  48 00 00 50 */	b lbl_80296600
lbl_802965B4:
/* 802965B4  93 C1 00 08 */	stw r30, 8(r1)
/* 802965B8  80 1E 01 4C */	lwz r0, 0x14c(r30)
/* 802965BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802965C0  93 E1 00 10 */	stw r31, 0x10(r1)
/* 802965C4  80 6D 8C D0 */	lwz r3, sLoadThread__13JASAramStream(r13)
/* 802965C8  3C 80 80 29 */	lis r4, headerLoadTask__13JASAramStreamFPv@ha
/* 802965CC  38 84 67 3C */	addi r4, r4, headerLoadTask__13JASAramStreamFPv@l
/* 802965D0  38 A1 00 08 */	addi r5, r1, 8
/* 802965D4  38 C0 00 0C */	li r6, 0xc
/* 802965D8  4B FF 95 85 */	bl sendCmdMsg__13JASTaskThreadFPFPv_vPCvUl
/* 802965DC  2C 03 00 00 */	cmpwi r3, 0
/* 802965E0  40 82 00 1C */	bne lbl_802965FC
/* 802965E4  3C 60 80 29 */	lis r3, channelProcCallback__13JASAramStreamFPv@ha
/* 802965E8  38 63 6D 74 */	addi r3, r3, channelProcCallback__13JASAramStreamFPv@l
/* 802965EC  7F C4 F3 78 */	mr r4, r30
/* 802965F0  48 00 7B D5 */	bl rejectCallback__9JASDriverFPFPv_lPv
/* 802965F4  38 60 00 00 */	li r3, 0
/* 802965F8  48 00 00 08 */	b lbl_80296600
lbl_802965FC:
/* 802965FC  38 60 00 01 */	li r3, 1
lbl_80296600:
/* 80296600  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80296604  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80296608  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029660C  7C 08 03 A6 */	mtlr r0
/* 80296610  38 21 00 20 */	addi r1, r1, 0x20
/* 80296614  4E 80 00 20 */	blr 
