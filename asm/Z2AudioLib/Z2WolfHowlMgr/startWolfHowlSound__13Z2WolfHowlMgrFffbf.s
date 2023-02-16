lbl_802CAED4:
/* 802CAED4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802CAED8  7C 08 02 A6 */	mflr r0
/* 802CAEDC  90 01 00 34 */	stw r0, 0x34(r1)
/* 802CAEE0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802CAEE4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 802CAEE8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802CAEEC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802CAEF0  7C 7F 1B 78 */	mr r31, r3
/* 802CAEF4  7C 9E 23 78 */	mr r30, r4
/* 802CAEF8  FF E0 18 90 */	fmr f31, f3
/* 802CAEFC  88 03 00 8E */	lbz r0, 0x8e(r3)
/* 802CAF00  7C 00 07 74 */	extsb r0, r0
/* 802CAF04  2C 00 00 01 */	cmpwi r0, 1
/* 802CAF08  40 81 00 20 */	ble lbl_802CAF28
/* 802CAF0C  80 6D 86 04 */	lwz r3, __OSReport_disable-0x14(r13)
/* 802CAF10  C0 02 C4 60 */	lfs f0, lit_3485(r2)
/* 802CAF14  D0 03 00 94 */	stfs f0, 0x94(r3)
/* 802CAF18  D0 03 00 98 */	stfs f0, 0x98(r3)
/* 802CAF1C  38 00 00 00 */	li r0, 0
/* 802CAF20  90 03 00 A0 */	stw r0, 0xa0(r3)
/* 802CAF24  D0 03 00 9C */	stfs f0, 0x9c(r3)
lbl_802CAF28:
/* 802CAF28  80 8D 86 04 */	lwz r4, __OSReport_disable-0x14(r13)
/* 802CAF2C  38 60 00 00 */	li r3, 0
/* 802CAF30  80 04 00 08 */	lwz r0, 8(r4)
/* 802CAF34  28 00 00 00 */	cmplwi r0, 0
/* 802CAF38  40 82 00 10 */	bne lbl_802CAF48
/* 802CAF3C  88 04 00 BA */	lbz r0, 0xba(r4)
/* 802CAF40  28 00 00 00 */	cmplwi r0, 0
/* 802CAF44  41 82 00 08 */	beq lbl_802CAF4C
lbl_802CAF48:
/* 802CAF48  38 60 00 01 */	li r3, 1
lbl_802CAF4C:
/* 802CAF4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802CAF50  40 82 00 10 */	bne lbl_802CAF60
/* 802CAF54  88 1F 00 8C */	lbz r0, 0x8c(r31)
/* 802CAF58  28 00 00 00 */	cmplwi r0, 0
/* 802CAF5C  41 82 00 0C */	beq lbl_802CAF68
lbl_802CAF60:
/* 802CAF60  3B C0 00 00 */	li r30, 0
/* 802CAF64  48 00 00 70 */	b lbl_802CAFD4
lbl_802CAF68:
/* 802CAF68  C0 0D 83 1C */	lfs f0, sStickCenter(r13)
/* 802CAF6C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802CAF70  40 81 00 28 */	ble lbl_802CAF98
/* 802CAF74  FC 20 10 90 */	fmr f1, f2
/* 802CAF78  FC 40 00 90 */	fmr f2, f0
/* 802CAF7C  C0 6D 83 18 */	lfs f3, sStickHigh(r13)
/* 802CAF80  C0 82 C4 60 */	lfs f4, lit_3485(r2)
/* 802CAF84  C0 A2 C4 64 */	lfs f5, lit_3486(r2)
/* 802CAF88  38 60 00 00 */	li r3, 0
/* 802CAF8C  4B FD E7 01 */	bl linearTransform__6Z2CalcFfffffb
/* 802CAF90  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 802CAF94  48 00 00 40 */	b lbl_802CAFD4
lbl_802CAF98:
/* 802CAF98  C0 A2 C4 7C */	lfs f5, lit_3590(r2)
/* 802CAF9C  EC 05 00 32 */	fmuls f0, f5, f0
/* 802CAFA0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802CAFA4  40 80 00 28 */	bge lbl_802CAFCC
/* 802CAFA8  FC 20 10 90 */	fmr f1, f2
/* 802CAFAC  FC 40 00 90 */	fmr f2, f0
/* 802CAFB0  C0 0D 83 18 */	lfs f0, sStickHigh(r13)
/* 802CAFB4  EC 65 00 32 */	fmuls f3, f5, f0
/* 802CAFB8  C0 82 C4 60 */	lfs f4, lit_3485(r2)
/* 802CAFBC  38 60 00 00 */	li r3, 0
/* 802CAFC0  4B FD E6 CD */	bl linearTransform__6Z2CalcFfffffb
/* 802CAFC4  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 802CAFC8  48 00 00 0C */	b lbl_802CAFD4
lbl_802CAFCC:
/* 802CAFCC  C0 02 C4 60 */	lfs f0, lit_3485(r2)
/* 802CAFD0  D0 1F 00 14 */	stfs f0, 0x14(r31)
lbl_802CAFD4:
/* 802CAFD4  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 802CAFD8  41 82 00 6C */	beq lbl_802CB044
/* 802CAFDC  80 7F 00 88 */	lwz r3, 0x88(r31)
/* 802CAFE0  88 0D 83 0E */	lbz r0, data_8045088E(r13)
/* 802CAFE4  7C 03 00 40 */	cmplw r3, r0
/* 802CAFE8  40 81 00 24 */	ble lbl_802CB00C
/* 802CAFEC  3C 60 00 01 */	lis r3, 0x0001 /* 0x00010035@ha */
/* 802CAFF0  38 03 00 35 */	addi r0, r3, 0x0035 /* 0x00010035@l */
/* 802CAFF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 802CAFF8  80 6D 85 F4 */	lwz r3, __OSReport_disable-0x24(r13)
/* 802CAFFC  38 81 00 0C */	addi r4, r1, 0xc
/* 802CB000  7F E5 FB 78 */	mr r5, r31
/* 802CB004  38 C0 00 00 */	li r6, 0
/* 802CB008  4B FD 7F E5 */	bl func_802A2FEC
lbl_802CB00C:
/* 802CB00C  80 1F 00 00 */	lwz r0, 0(r31)
/* 802CB010  28 00 00 00 */	cmplwi r0, 0
/* 802CB014  41 82 00 20 */	beq lbl_802CB034
/* 802CB018  7F E3 FB 78 */	mr r3, r31
/* 802CB01C  C0 22 C4 60 */	lfs f1, lit_3485(r2)
/* 802CB020  FC 40 08 90 */	fmr f2, f1
/* 802CB024  4B FF FC B1 */	bl calcPitchMod__13Z2WolfHowlMgrFff
/* 802CB028  7F E3 FB 78 */	mr r3, r31
/* 802CB02C  FC 20 F8 90 */	fmr f1, f31
/* 802CB030  4B FF FB BD */	bl calcVolumeMod__13Z2WolfHowlMgrFf
lbl_802CB034:
/* 802CB034  80 7F 00 88 */	lwz r3, 0x88(r31)
/* 802CB038  38 03 00 01 */	addi r0, r3, 1
/* 802CB03C  90 1F 00 88 */	stw r0, 0x88(r31)
/* 802CB040  48 00 00 98 */	b lbl_802CB0D8
lbl_802CB044:
/* 802CB044  80 7F 00 88 */	lwz r3, 0x88(r31)
/* 802CB048  88 0D 83 0E */	lbz r0, data_8045088E(r13)
/* 802CB04C  7C 03 00 40 */	cmplw r3, r0
/* 802CB050  40 81 00 80 */	ble lbl_802CB0D0
/* 802CB054  88 1F 00 8C */	lbz r0, 0x8c(r31)
/* 802CB058  28 00 00 1E */	cmplwi r0, 0x1e
/* 802CB05C  40 80 00 68 */	bge lbl_802CB0C4
/* 802CB060  3C 60 00 01 */	lis r3, 0x0001 /* 0x00010035@ha */
/* 802CB064  38 03 00 35 */	addi r0, r3, 0x0035 /* 0x00010035@l */
/* 802CB068  90 01 00 08 */	stw r0, 8(r1)
/* 802CB06C  80 6D 85 F4 */	lwz r3, __OSReport_disable-0x24(r13)
/* 802CB070  38 81 00 08 */	addi r4, r1, 8
/* 802CB074  7F E5 FB 78 */	mr r5, r31
/* 802CB078  38 C0 00 00 */	li r6, 0
/* 802CB07C  4B FD 7F 71 */	bl func_802A2FEC
/* 802CB080  80 1F 00 00 */	lwz r0, 0(r31)
/* 802CB084  28 00 00 00 */	cmplwi r0, 0
/* 802CB088  41 82 00 20 */	beq lbl_802CB0A8
/* 802CB08C  7F E3 FB 78 */	mr r3, r31
/* 802CB090  C0 22 C4 60 */	lfs f1, lit_3485(r2)
/* 802CB094  FC 40 08 90 */	fmr f2, f1
/* 802CB098  4B FF FC 3D */	bl calcPitchMod__13Z2WolfHowlMgrFff
/* 802CB09C  7F E3 FB 78 */	mr r3, r31
/* 802CB0A0  FC 20 F8 90 */	fmr f1, f31
/* 802CB0A4  4B FF FB 49 */	bl calcVolumeMod__13Z2WolfHowlMgrFf
lbl_802CB0A8:
/* 802CB0A8  88 7F 00 8C */	lbz r3, 0x8c(r31)
/* 802CB0AC  38 03 00 01 */	addi r0, r3, 1
/* 802CB0B0  98 1F 00 8C */	stb r0, 0x8c(r31)
/* 802CB0B4  80 7F 00 88 */	lwz r3, 0x88(r31)
/* 802CB0B8  38 03 00 01 */	addi r0, r3, 1
/* 802CB0BC  90 1F 00 88 */	stw r0, 0x88(r31)
/* 802CB0C0  48 00 00 18 */	b lbl_802CB0D8
lbl_802CB0C4:
/* 802CB0C4  7F E3 FB 78 */	mr r3, r31
/* 802CB0C8  4B FF FA C5 */	bl resetState__13Z2WolfHowlMgrFv
/* 802CB0CC  48 00 00 0C */	b lbl_802CB0D8
lbl_802CB0D0:
/* 802CB0D0  7F E3 FB 78 */	mr r3, r31
/* 802CB0D4  4B FF FA B9 */	bl resetState__13Z2WolfHowlMgrFv
lbl_802CB0D8:
/* 802CB0D8  7F E3 FB 78 */	mr r3, r31
/* 802CB0DC  48 00 02 B1 */	bl checkLine__13Z2WolfHowlMgrFv
/* 802CB0E0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 802CB0E4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 802CB0E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802CB0EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802CB0F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802CB0F4  7C 08 03 A6 */	mtlr r0
/* 802CB0F8  38 21 00 30 */	addi r1, r1, 0x30
/* 802CB0FC  4E 80 00 20 */	blr 
