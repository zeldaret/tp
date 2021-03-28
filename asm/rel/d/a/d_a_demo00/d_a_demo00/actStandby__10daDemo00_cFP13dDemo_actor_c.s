lbl_804A5798:
/* 804A5798  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A579C  7C 08 02 A6 */	mflr r0
/* 804A57A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A57A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804A57A8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804A57AC  7C 7E 1B 78 */	mr r30, r3
/* 804A57B0  7C 9F 23 78 */	mr r31, r4
/* 804A57B4  80 83 05 88 */	lwz r4, 0x588(r3)
/* 804A57B8  3C 04 00 01 */	addis r0, r4, 1
/* 804A57BC  28 00 FF FF */	cmplwi r0, 0xffff
/* 804A57C0  41 82 01 1C */	beq lbl_804A58DC
/* 804A57C4  90 9E 05 AC */	stw r4, 0x5ac(r30)
/* 804A57C8  80 1E 05 8C */	lwz r0, 0x58c(r30)
/* 804A57CC  90 1E 05 B0 */	stw r0, 0x5b0(r30)
/* 804A57D0  80 1E 05 90 */	lwz r0, 0x590(r30)
/* 804A57D4  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 804A57D8  80 1E 05 94 */	lwz r0, 0x594(r30)
/* 804A57DC  90 1E 05 B8 */	stw r0, 0x5b8(r30)
/* 804A57E0  80 1E 05 98 */	lwz r0, 0x598(r30)
/* 804A57E4  90 1E 05 BC */	stw r0, 0x5bc(r30)
/* 804A57E8  80 1E 05 9C */	lwz r0, 0x59c(r30)
/* 804A57EC  90 1E 05 C0 */	stw r0, 0x5c0(r30)
/* 804A57F0  80 1E 05 A0 */	lwz r0, 0x5a0(r30)
/* 804A57F4  90 1E 05 C4 */	stw r0, 0x5c4(r30)
/* 804A57F8  80 1E 05 A4 */	lwz r0, 0x5a4(r30)
/* 804A57FC  90 1E 05 C8 */	stw r0, 0x5c8(r30)
/* 804A5800  80 1E 05 A8 */	lwz r0, 0x5a8(r30)
/* 804A5804  90 1E 05 CC */	stw r0, 0x5cc(r30)
/* 804A5808  3C 80 80 4A */	lis r4, createHeapCallBack__FP10fopAc_ac_c@ha
/* 804A580C  38 84 4F 54 */	addi r4, r4, createHeapCallBack__FP10fopAc_ac_c@l
/* 804A5810  3C A0 90 05 */	lis r5, 0x9005 /* 0x9004C5E0@ha */
/* 804A5814  38 A5 C5 E0 */	addi r5, r5, 0xC5E0 /* 0x9004C5E0@l */
/* 804A5818  4B B7 4C 98 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 804A581C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804A5820  41 82 01 10 */	beq lbl_804A5930
/* 804A5824  80 1E 05 D4 */	lwz r0, 0x5d4(r30)
/* 804A5828  28 00 00 00 */	cmplwi r0, 0
/* 804A582C  41 82 00 78 */	beq lbl_804A58A4
/* 804A5830  7F C3 F3 78 */	mr r3, r30
/* 804A5834  38 80 00 2A */	li r4, 0x2a
/* 804A5838  38 A0 00 00 */	li r5, 0
/* 804A583C  38 C0 00 00 */	li r6, 0
/* 804A5840  38 E0 00 00 */	li r7, 0
/* 804A5844  39 00 00 00 */	li r8, 0
/* 804A5848  39 20 00 00 */	li r9, 0
/* 804A584C  39 40 00 00 */	li r10, 0
/* 804A5850  4B B9 2C C8 */	b dDemo_setDemoData__FP10fopAc_ac_cUcP14mDoExt_McaMorfPCciPUsUlSc
/* 804A5854  7F C3 F3 78 */	mr r3, r30
/* 804A5858  4B FF ED 49 */	bl setBaseMtx__10daDemo00_cFv
/* 804A585C  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 804A5860  38 03 00 24 */	addi r0, r3, 0x24
/* 804A5864  90 1E 05 04 */	stw r0, 0x504(r30)
/* 804A5868  80 1E 05 D4 */	lwz r0, 0x5d4(r30)
/* 804A586C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 804A5870  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 804A5874  28 03 00 00 */	cmplwi r3, 0
/* 804A5878  41 82 00 2C */	beq lbl_804A58A4
/* 804A587C  A8 03 00 14 */	lha r0, 0x14(r3)
/* 804A5880  3C 60 80 4B */	lis r3, lit_4719@ha
/* 804A5884  C8 23 88 B8 */	lfd f1, lit_4719@l(r3)
/* 804A5888  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804A588C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A5890  3C 00 43 30 */	lis r0, 0x4330
/* 804A5894  90 01 00 08 */	stw r0, 8(r1)
/* 804A5898  C8 01 00 08 */	lfd f0, 8(r1)
/* 804A589C  EC 00 08 28 */	fsubs f0, f0, f1
/* 804A58A0  D0 1F 00 38 */	stfs f0, 0x38(r31)
lbl_804A58A4:
/* 804A58A4  3C 60 80 4B */	lis r3, lit_4676@ha
/* 804A58A8  38 83 8A 04 */	addi r4, r3, lit_4676@l
/* 804A58AC  80 64 00 00 */	lwz r3, 0(r4)
/* 804A58B0  80 04 00 04 */	lwz r0, 4(r4)
/* 804A58B4  90 7E 05 7C */	stw r3, 0x57c(r30)
/* 804A58B8  90 1E 05 80 */	stw r0, 0x580(r30)
/* 804A58BC  80 04 00 08 */	lwz r0, 8(r4)
/* 804A58C0  90 1E 05 84 */	stw r0, 0x584(r30)
/* 804A58C4  7F C3 F3 78 */	mr r3, r30
/* 804A58C8  7F E4 FB 78 */	mr r4, r31
/* 804A58CC  39 9E 05 7C */	addi r12, r30, 0x57c
/* 804A58D0  4B EB C7 B4 */	b __ptmf_scall
/* 804A58D4  60 00 00 00 */	nop 
/* 804A58D8  48 00 00 58 */	b lbl_804A5930
lbl_804A58DC:
/* 804A58DC  88 1E 06 AA */	lbz r0, 0x6aa(r30)
/* 804A58E0  2C 00 00 01 */	cmpwi r0, 1
/* 804A58E4  41 82 00 28 */	beq lbl_804A590C
/* 804A58E8  88 1E 06 AB */	lbz r0, 0x6ab(r30)
/* 804A58EC  7C 00 07 75 */	extsb. r0, r0
/* 804A58F0  40 80 00 1C */	bge lbl_804A590C
/* 804A58F4  88 1E 06 B8 */	lbz r0, 0x6b8(r30)
/* 804A58F8  28 00 00 00 */	cmplwi r0, 0
/* 804A58FC  40 82 00 10 */	bne lbl_804A590C
/* 804A5900  88 1E 06 AE */	lbz r0, 0x6ae(r30)
/* 804A5904  28 00 00 00 */	cmplwi r0, 0
/* 804A5908  41 82 00 28 */	beq lbl_804A5930
lbl_804A590C:
/* 804A590C  7F C3 F3 78 */	mr r3, r30
/* 804A5910  38 80 00 8E */	li r4, 0x8e
/* 804A5914  38 A0 00 00 */	li r5, 0
/* 804A5918  38 C0 00 00 */	li r6, 0
/* 804A591C  38 E0 00 00 */	li r7, 0
/* 804A5920  39 00 00 00 */	li r8, 0
/* 804A5924  39 20 00 00 */	li r9, 0
/* 804A5928  39 40 00 00 */	li r10, 0
/* 804A592C  4B B9 2B EC */	b dDemo_setDemoData__FP10fopAc_ac_cUcP14mDoExt_McaMorfPCciPUsUlSc
lbl_804A5930:
/* 804A5930  38 60 00 01 */	li r3, 1
/* 804A5934  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804A5938  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804A593C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A5940  7C 08 03 A6 */	mtlr r0
/* 804A5944  38 21 00 20 */	addi r1, r1, 0x20
/* 804A5948  4E 80 00 20 */	blr 
