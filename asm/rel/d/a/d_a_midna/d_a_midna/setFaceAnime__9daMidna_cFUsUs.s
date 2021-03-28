lbl_804C0094:
/* 804C0094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C0098  7C 08 02 A6 */	mflr r0
/* 804C009C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C00A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C00A4  7C 7F 1B 78 */	mr r31, r3
/* 804C00A8  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 804C00AC  28 00 FF FF */	cmplwi r0, 0xffff
/* 804C00B0  40 82 00 14 */	bne lbl_804C00C4
/* 804C00B4  38 7F 06 0C */	addi r3, r31, 0x60c
/* 804C00B8  4B C9 EF B0 */	b loadDataIdx__14daPy_anmHeap_cFUs
/* 804C00BC  7C 64 1B 78 */	mr r4, r3
/* 804C00C0  48 00 00 14 */	b lbl_804C00D4
lbl_804C00C4:
/* 804C00C4  38 7F 06 0C */	addi r3, r31, 0x60c
/* 804C00C8  38 A0 00 00 */	li r5, 0
/* 804C00CC  4B C9 F0 4C */	b loadDataDemoRID__14daPy_anmHeap_cFUsUs
/* 804C00D0  7C 64 1B 78 */	mr r4, r3
lbl_804C00D4:
/* 804C00D4  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C00D8  64 00 00 80 */	oris r0, r0, 0x80
/* 804C00DC  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C00E0  28 04 00 00 */	cmplwi r4, 0
/* 804C00E4  40 82 00 0C */	bne lbl_804C00F0
/* 804C00E8  38 60 00 00 */	li r3, 0
/* 804C00EC  48 00 00 34 */	b lbl_804C0120
lbl_804C00F0:
/* 804C00F0  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 804C00F4  38 A0 00 01 */	li r5, 1
/* 804C00F8  38 C0 FF FF */	li r6, -1
/* 804C00FC  3C E0 80 4C */	lis r7, lit_4303@ha
/* 804C0100  C0 27 65 84 */	lfs f1, lit_4303@l(r7)
/* 804C0104  38 E0 00 00 */	li r7, 0
/* 804C0108  39 00 FF FF */	li r8, -1
/* 804C010C  39 20 00 01 */	li r9, 1
/* 804C0110  4B B4 D6 CC */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 804C0114  38 00 00 14 */	li r0, 0x14
/* 804C0118  98 1F 08 4B */	stb r0, 0x84b(r31)
/* 804C011C  38 60 00 01 */	li r3, 1
lbl_804C0120:
/* 804C0120  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C0124  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C0128  7C 08 03 A6 */	mtlr r0
/* 804C012C  38 21 00 10 */	addi r1, r1, 0x10
/* 804C0130  4E 80 00 20 */	blr 
