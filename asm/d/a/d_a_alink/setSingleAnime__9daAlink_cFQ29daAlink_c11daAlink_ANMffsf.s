lbl_800AD00C:
/* 800AD00C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800AD010  7C 08 02 A6 */	mflr r0
/* 800AD014  90 01 00 54 */	stw r0, 0x54(r1)
/* 800AD018  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 800AD01C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 800AD020  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 800AD024  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 800AD028  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 800AD02C  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 800AD030  39 61 00 20 */	addi r11, r1, 0x20
/* 800AD034  48 2B 51 A9 */	bl _savegpr_29
/* 800AD038  7C 7D 1B 78 */	mr r29, r3
/* 800AD03C  7C 9E 23 78 */	mr r30, r4
/* 800AD040  FF A0 08 90 */	fmr f29, f1
/* 800AD044  FF C0 10 90 */	fmr f30, f2
/* 800AD048  7C BF 2B 78 */	mr r31, r5
/* 800AD04C  FF E0 18 90 */	fmr f31, f3
/* 800AD050  38 A1 00 0C */	addi r5, r1, 0xc
/* 800AD054  38 C1 00 08 */	addi r6, r1, 8
/* 800AD058  38 E0 00 00 */	li r7, 0
/* 800AD05C  3D 00 00 01 */	lis r8, 0x0001 /* 0x00010800@ha */
/* 800AD060  39 08 08 00 */	addi r8, r8, 0x0800 /* 0x00010800@l */
/* 800AD064  4B FF F5 AD */	bl getUnderUpperAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMPP15J3DAnmTransformPP15J3DAnmTransformiUl
/* 800AD068  7F A3 EB 78 */	mr r3, r29
/* 800AD06C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 800AD070  80 A1 00 08 */	lwz r5, 8(r1)
/* 800AD074  FC 20 E8 90 */	fmr f1, f29
/* 800AD078  FC 40 F0 90 */	fmr f2, f30
/* 800AD07C  7F E6 FB 78 */	mr r6, r31
/* 800AD080  4B FF FC C1 */	bl commonSingleAnime__9daAlink_cFP15J3DAnmTransformP15J3DAnmTransformffs
/* 800AD084  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800AD088  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800AD08C  4C 41 13 82 */	cror 2, 1, 2
/* 800AD090  40 82 00 18 */	bne lbl_800AD0A8
/* 800AD094  80 7D 20 60 */	lwz r3, 0x2060(r29)
/* 800AD098  FC 20 F8 90 */	fmr f1, f31
/* 800AD09C  38 80 00 00 */	li r4, 0
/* 800AD0A0  38 A0 00 23 */	li r5, 0x23
/* 800AD0A4  4B F6 27 A5 */	bl initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
lbl_800AD0A8:
/* 800AD0A8  7F A3 EB 78 */	mr r3, r29
/* 800AD0AC  7F C4 F3 78 */	mr r4, r30
/* 800AD0B0  4B FF D2 0D */	bl setHandIndex__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800AD0B4  7F A3 EB 78 */	mr r3, r29
/* 800AD0B8  7F C4 F3 78 */	mr r4, r30
/* 800AD0BC  48 00 28 ED */	bl setFaceBasicAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800AD0C0  38 60 00 01 */	li r3, 1
/* 800AD0C4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 800AD0C8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 800AD0CC  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 800AD0D0  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 800AD0D4  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 800AD0D8  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 800AD0DC  39 61 00 20 */	addi r11, r1, 0x20
/* 800AD0E0  48 2B 51 49 */	bl _restgpr_29
/* 800AD0E4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800AD0E8  7C 08 03 A6 */	mtlr r0
/* 800AD0EC  38 21 00 50 */	addi r1, r1, 0x50
/* 800AD0F0  4E 80 00 20 */	blr 
