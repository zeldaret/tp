lbl_80352770:
/* 80352770  7C 08 02 A6 */	mflr r0
/* 80352774  3C 80 80 3D */	lis r4, lit_266@ha
/* 80352778  90 01 00 04 */	stw r0, 4(r1)
/* 8035277C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80352780  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80352784  3B E4 1C F8 */	addi r31, r4, lit_266@l
/* 80352788  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8035278C  3B C3 00 00 */	addi r30, r3, 0
lbl_80352790:
/* 80352790  4B FF FC B1 */	bl DSPCheckMailFromDSP
/* 80352794  28 03 00 00 */	cmplwi r3, 0
/* 80352798  41 82 FF F8 */	beq lbl_80352790
/* 8035279C  4B FF FC B5 */	bl DSPReadMailFromDSP
/* 803527A0  90 61 00 0C */	stw r3, 0xc(r1)
/* 803527A4  3C 60 80 F4 */	lis r3, 0x80F4 /* 0x80F3A001@ha */
/* 803527A8  38 63 A0 01 */	addi r3, r3, 0xA001 /* 0x80F3A001@l */
/* 803527AC  4B FF FC BD */	bl DSPSendMailToDSP
lbl_803527B0:
/* 803527B0  4B FF FC 81 */	bl DSPCheckMailToDSP
/* 803527B4  28 03 00 00 */	cmplwi r3, 0
/* 803527B8  40 82 FF F8 */	bne lbl_803527B0
/* 803527BC  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 803527C0  4B FF FC A9 */	bl DSPSendMailToDSP
lbl_803527C4:
/* 803527C4  4B FF FC 6D */	bl DSPCheckMailToDSP
/* 803527C8  28 03 00 00 */	cmplwi r3, 0
/* 803527CC  40 82 FF F8 */	bne lbl_803527C4
/* 803527D0  3C 60 80 F4 */	lis r3, 0x80F4 /* 0x80F3C002@ha */
/* 803527D4  38 63 C0 02 */	addi r3, r3, 0xC002 /* 0x80F3C002@l */
/* 803527D8  4B FF FC 91 */	bl DSPSendMailToDSP
lbl_803527DC:
/* 803527DC  4B FF FC 55 */	bl DSPCheckMailToDSP
/* 803527E0  28 03 00 00 */	cmplwi r3, 0
/* 803527E4  40 82 FF F8 */	bne lbl_803527DC
/* 803527E8  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 803527EC  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803527F0  4B FF FC 79 */	bl DSPSendMailToDSP
lbl_803527F4:
/* 803527F4  4B FF FC 3D */	bl DSPCheckMailToDSP
/* 803527F8  28 03 00 00 */	cmplwi r3, 0
/* 803527FC  40 82 FF F8 */	bne lbl_803527F4
/* 80352800  3C 60 80 F4 */	lis r3, 0x80F4 /* 0x80F3A002@ha */
/* 80352804  38 63 A0 02 */	addi r3, r3, 0xA002 /* 0x80F3A002@l */
/* 80352808  4B FF FC 61 */	bl DSPSendMailToDSP
lbl_8035280C:
/* 8035280C  4B FF FC 25 */	bl DSPCheckMailToDSP
/* 80352810  28 03 00 00 */	cmplwi r3, 0
/* 80352814  40 82 FF F8 */	bne lbl_8035280C
/* 80352818  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8035281C  4B FF FC 4D */	bl DSPSendMailToDSP
lbl_80352820:
/* 80352820  4B FF FC 11 */	bl DSPCheckMailToDSP
/* 80352824  28 03 00 00 */	cmplwi r3, 0
/* 80352828  40 82 FF F8 */	bne lbl_80352820
/* 8035282C  3C 60 80 F4 */	lis r3, 0x80F4 /* 0x80F3B002@ha */
/* 80352830  38 63 B0 02 */	addi r3, r3, 0xB002 /* 0x80F3B002@l */
/* 80352834  4B FF FC 35 */	bl DSPSendMailToDSP
lbl_80352838:
/* 80352838  4B FF FB F9 */	bl DSPCheckMailToDSP
/* 8035283C  28 03 00 00 */	cmplwi r3, 0
/* 80352840  40 82 FF F8 */	bne lbl_80352838
/* 80352844  38 60 00 00 */	li r3, 0
/* 80352848  4B FF FC 21 */	bl DSPSendMailToDSP
lbl_8035284C:
/* 8035284C  4B FF FB E5 */	bl DSPCheckMailToDSP
/* 80352850  28 03 00 00 */	cmplwi r3, 0
/* 80352854  40 82 FF F8 */	bne lbl_8035284C
/* 80352858  3C 60 80 F4 */	lis r3, 0x80F4 /* 0x80F3D001@ha */
/* 8035285C  38 63 D0 01 */	addi r3, r3, 0xD001 /* 0x80F3D001@l */
/* 80352860  4B FF FC 09 */	bl DSPSendMailToDSP
lbl_80352864:
/* 80352864  4B FF FB CD */	bl DSPCheckMailToDSP
/* 80352868  28 03 00 00 */	cmplwi r3, 0
/* 8035286C  40 82 FF F8 */	bne lbl_80352864
/* 80352870  A0 7E 00 24 */	lhz r3, 0x24(r30)
/* 80352874  4B FF FB F5 */	bl DSPSendMailToDSP
lbl_80352878:
/* 80352878  4B FF FB B9 */	bl DSPCheckMailToDSP
/* 8035287C  28 03 00 00 */	cmplwi r3, 0
/* 80352880  40 82 FF F8 */	bne lbl_80352878
/* 80352884  38 7F 00 00 */	addi r3, r31, 0
/* 80352888  4C C6 31 82 */	crclr 6
/* 8035288C  38 9E 00 00 */	addi r4, r30, 0
/* 80352890  4B FF FC F1 */	bl __DSP_debug_printf
/* 80352894  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 80352898  38 7F 00 20 */	addi r3, r31, 0x20
/* 8035289C  4C C6 31 82 */	crclr 6
/* 803528A0  4B FF FC E1 */	bl __DSP_debug_printf
/* 803528A4  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 803528A8  38 7F 00 50 */	addi r3, r31, 0x50
/* 803528AC  4C C6 31 82 */	crclr 6
/* 803528B0  4B FF FC D1 */	bl __DSP_debug_printf
/* 803528B4  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 803528B8  38 7F 00 80 */	addi r3, r31, 0x80
/* 803528BC  4C C6 31 82 */	crclr 6
/* 803528C0  4B FF FC C1 */	bl __DSP_debug_printf
/* 803528C4  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 803528C8  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 803528CC  4C C6 31 82 */	crclr 6
/* 803528D0  4B FF FC B1 */	bl __DSP_debug_printf
/* 803528D4  A0 9E 00 24 */	lhz r4, 0x24(r30)
/* 803528D8  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 803528DC  4C C6 31 82 */	crclr 6
/* 803528E0  4B FF FC A1 */	bl __DSP_debug_printf
/* 803528E4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803528E8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 803528EC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 803528F0  38 21 00 18 */	addi r1, r1, 0x18
/* 803528F4  7C 08 03 A6 */	mtlr r0
/* 803528F8  4E 80 00 20 */	blr 
