lbl_803525D0:
/* 803525D0  7C 08 02 A6 */	mflr r0
/* 803525D4  90 01 00 04 */	stw r0, 4(r1)
/* 803525D8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 803525DC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 803525E0  3B E4 00 00 */	addi r31, r4, 0
/* 803525E4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 803525E8  7C 7E 1B 79 */	or. r30, r3, r3
/* 803525EC  41 82 00 44 */	beq lbl_80352630
/* 803525F0  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 803525F4  4B FF FE 75 */	bl DSPSendMailToDSP
lbl_803525F8:
/* 803525F8  4B FF FE 39 */	bl DSPCheckMailToDSP
/* 803525FC  28 03 00 00 */	cmplwi r3, 0
/* 80352600  40 82 FF F8 */	bne lbl_803525F8
/* 80352604  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80352608  4B FF FE 61 */	bl DSPSendMailToDSP
lbl_8035260C:
/* 8035260C  4B FF FE 25 */	bl DSPCheckMailToDSP
/* 80352610  28 03 00 00 */	cmplwi r3, 0
/* 80352614  40 82 FF F8 */	bne lbl_8035260C
/* 80352618  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8035261C  4B FF FE 4D */	bl DSPSendMailToDSP
lbl_80352620:
/* 80352620  4B FF FE 11 */	bl DSPCheckMailToDSP
/* 80352624  28 03 00 00 */	cmplwi r3, 0
/* 80352628  40 82 FF F8 */	bne lbl_80352620
/* 8035262C  48 00 00 40 */	b lbl_8035266C
lbl_80352630:
/* 80352630  38 60 00 00 */	li r3, 0
/* 80352634  4B FF FE 35 */	bl DSPSendMailToDSP
lbl_80352638:
/* 80352638  4B FF FD F9 */	bl DSPCheckMailToDSP
/* 8035263C  28 03 00 00 */	cmplwi r3, 0
/* 80352640  40 82 FF F8 */	bne lbl_80352638
/* 80352644  38 60 00 00 */	li r3, 0
/* 80352648  4B FF FE 21 */	bl DSPSendMailToDSP
lbl_8035264C:
/* 8035264C  4B FF FD E5 */	bl DSPCheckMailToDSP
/* 80352650  28 03 00 00 */	cmplwi r3, 0
/* 80352654  40 82 FF F8 */	bne lbl_8035264C
/* 80352658  38 60 00 00 */	li r3, 0
/* 8035265C  4B FF FE 0D */	bl DSPSendMailToDSP
lbl_80352660:
/* 80352660  4B FF FD D1 */	bl DSPCheckMailToDSP
/* 80352664  28 03 00 00 */	cmplwi r3, 0
/* 80352668  40 82 FF F8 */	bne lbl_80352660
lbl_8035266C:
/* 8035266C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80352670  4B FF FD F9 */	bl DSPSendMailToDSP
lbl_80352674:
/* 80352674  4B FF FD BD */	bl DSPCheckMailToDSP
/* 80352678  28 03 00 00 */	cmplwi r3, 0
/* 8035267C  40 82 FF F8 */	bne lbl_80352674
/* 80352680  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80352684  4B FF FD E5 */	bl DSPSendMailToDSP
lbl_80352688:
/* 80352688  4B FF FD A9 */	bl DSPCheckMailToDSP
/* 8035268C  28 03 00 00 */	cmplwi r3, 0
/* 80352690  40 82 FF F8 */	bne lbl_80352688
/* 80352694  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80352698  4B FF FD D1 */	bl DSPSendMailToDSP
lbl_8035269C:
/* 8035269C  4B FF FD 95 */	bl DSPCheckMailToDSP
/* 803526A0  28 03 00 00 */	cmplwi r3, 0
/* 803526A4  40 82 FF F8 */	bne lbl_8035269C
/* 803526A8  80 1F 00 00 */	lwz r0, 0(r31)
/* 803526AC  28 00 00 00 */	cmplwi r0, 0
/* 803526B0  40 82 00 58 */	bne lbl_80352708
/* 803526B4  A0 7F 00 24 */	lhz r3, 0x24(r31)
/* 803526B8  4B FF FD B1 */	bl DSPSendMailToDSP
lbl_803526BC:
/* 803526BC  4B FF FD 75 */	bl DSPCheckMailToDSP
/* 803526C0  28 03 00 00 */	cmplwi r3, 0
/* 803526C4  40 82 FF F8 */	bne lbl_803526BC
/* 803526C8  38 60 00 00 */	li r3, 0
/* 803526CC  4B FF FD 9D */	bl DSPSendMailToDSP
lbl_803526D0:
/* 803526D0  4B FF FD 61 */	bl DSPCheckMailToDSP
/* 803526D4  28 03 00 00 */	cmplwi r3, 0
/* 803526D8  40 82 FF F8 */	bne lbl_803526D0
/* 803526DC  38 60 00 00 */	li r3, 0
/* 803526E0  4B FF FD 89 */	bl DSPSendMailToDSP
lbl_803526E4:
/* 803526E4  4B FF FD 4D */	bl DSPCheckMailToDSP
/* 803526E8  28 03 00 00 */	cmplwi r3, 0
/* 803526EC  40 82 FF F8 */	bne lbl_803526E4
/* 803526F0  38 60 00 00 */	li r3, 0
/* 803526F4  4B FF FD 75 */	bl DSPSendMailToDSP
lbl_803526F8:
/* 803526F8  4B FF FD 39 */	bl DSPCheckMailToDSP
/* 803526FC  28 03 00 00 */	cmplwi r3, 0
/* 80352700  40 82 FF F8 */	bne lbl_803526F8
/* 80352704  48 00 00 54 */	b lbl_80352758
lbl_80352708:
/* 80352708  A0 7F 00 26 */	lhz r3, 0x26(r31)
/* 8035270C  4B FF FD 5D */	bl DSPSendMailToDSP
lbl_80352710:
/* 80352710  4B FF FD 21 */	bl DSPCheckMailToDSP
/* 80352714  28 03 00 00 */	cmplwi r3, 0
/* 80352718  40 82 FF F8 */	bne lbl_80352710
/* 8035271C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80352720  4B FF FD 49 */	bl DSPSendMailToDSP
lbl_80352724:
/* 80352724  4B FF FD 0D */	bl DSPCheckMailToDSP
/* 80352728  28 03 00 00 */	cmplwi r3, 0
/* 8035272C  40 82 FF F8 */	bne lbl_80352724
/* 80352730  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80352734  4B FF FD 35 */	bl DSPSendMailToDSP
lbl_80352738:
/* 80352738  4B FF FC F9 */	bl DSPCheckMailToDSP
/* 8035273C  28 03 00 00 */	cmplwi r3, 0
/* 80352740  40 82 FF F8 */	bne lbl_80352738
/* 80352744  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80352748  4B FF FD 21 */	bl DSPSendMailToDSP
lbl_8035274C:
/* 8035274C  4B FF FC E5 */	bl DSPCheckMailToDSP
/* 80352750  28 03 00 00 */	cmplwi r3, 0
/* 80352754  40 82 FF F8 */	bne lbl_8035274C
lbl_80352758:
/* 80352758  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8035275C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80352760  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80352764  38 21 00 18 */	addi r1, r1, 0x18
/* 80352768  7C 08 03 A6 */	mtlr r0
/* 8035276C  4E 80 00 20 */	blr 
