lbl_804BFF80:
/* 804BFF80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BFF84  7C 08 02 A6 */	mflr r0
/* 804BFF88  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BFF8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BFF90  7C 7F 1B 78 */	mr r31, r3
/* 804BFF94  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 804BFF98  28 00 FF FF */	cmplwi r0, 0xffff
/* 804BFF9C  40 82 00 14 */	bne lbl_804BFFB0
/* 804BFFA0  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 804BFFA4  4B C9 F0 C4 */	b loadDataIdx__14daPy_anmHeap_cFUs
/* 804BFFA8  7C 64 1B 78 */	mr r4, r3
/* 804BFFAC  48 00 00 14 */	b lbl_804BFFC0
lbl_804BFFB0:
/* 804BFFB0  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 804BFFB4  38 A0 00 00 */	li r5, 0
/* 804BFFB8  4B C9 F1 60 */	b loadDataDemoRID__14daPy_anmHeap_cFUsUs
/* 804BFFBC  7C 64 1B 78 */	mr r4, r3
lbl_804BFFC0:
/* 804BFFC0  28 04 00 00 */	cmplwi r4, 0
/* 804BFFC4  40 82 00 0C */	bne lbl_804BFFD0
/* 804BFFC8  38 60 00 00 */	li r3, 0
/* 804BFFCC  48 00 00 40 */	b lbl_804C000C
lbl_804BFFD0:
/* 804BFFD0  38 7F 05 84 */	addi r3, r31, 0x584
/* 804BFFD4  38 A0 00 01 */	li r5, 1
/* 804BFFD8  38 C0 FF FF */	li r6, -1
/* 804BFFDC  3C E0 80 4C */	lis r7, lit_4303@ha
/* 804BFFE0  C0 27 65 84 */	lfs f1, lit_4303@l(r7)
/* 804BFFE4  38 E0 00 00 */	li r7, 0
/* 804BFFE8  39 00 FF FF */	li r8, -1
/* 804BFFEC  39 20 00 01 */	li r9, 1
/* 804BFFF0  4B B4 D7 EC */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 804BFFF4  38 00 00 00 */	li r0, 0
/* 804BFFF8  90 1F 08 C4 */	stw r0, 0x8c4(r31)
/* 804BFFFC  3C 60 80 4C */	lis r3, lit_4838@ha
/* 804C0000  C0 03 68 60 */	lfs f0, lit_4838@l(r3)
/* 804C0004  D0 1F 08 C8 */	stfs f0, 0x8c8(r31)
/* 804C0008  38 60 00 01 */	li r3, 1
lbl_804C000C:
/* 804C000C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C0010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C0014  7C 08 03 A6 */	mtlr r0
/* 804C0018  38 21 00 10 */	addi r1, r1, 0x10
/* 804C001C  4E 80 00 20 */	blr 
