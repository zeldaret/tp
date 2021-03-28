lbl_804C4444:
/* 804C4444  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C4448  7C 08 02 A6 */	mflr r0
/* 804C444C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C4450  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C4454  93 C1 00 08 */	stw r30, 8(r1)
/* 804C4458  7C 9E 23 78 */	mr r30, r4
/* 804C445C  3C 60 80 4C */	lis r3, l_arcName@ha
/* 804C4460  38 63 64 D4 */	addi r3, r3, l_arcName@l
/* 804C4464  54 A4 04 3E */	clrlwi r4, r5, 0x10
/* 804C4468  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804C446C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804C4470  3C A5 00 02 */	addis r5, r5, 2
/* 804C4474  38 C0 00 80 */	li r6, 0x80
/* 804C4478  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804C447C  4B B7 7E 70 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804C4480  7C 7F 1B 79 */	or. r31, r3, r3
/* 804C4484  40 82 00 0C */	bne lbl_804C4490
/* 804C4488  38 60 00 00 */	li r3, 0
/* 804C448C  48 00 00 28 */	b lbl_804C44B4
lbl_804C4490:
/* 804C4490  7F C4 F3 78 */	mr r4, r30
/* 804C4494  4B E6 6D 40 */	b searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP12J3DModelData
/* 804C4498  38 7E 00 58 */	addi r3, r30, 0x58
/* 804C449C  7F E4 FB 78 */	mr r4, r31
/* 804C44A0  4B E6 B8 24 */	b entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 804C44A4  3C 60 80 4C */	lis r3, lit_4278@ha
/* 804C44A8  C0 03 65 80 */	lfs f0, lit_4278@l(r3)
/* 804C44AC  D0 1F 00 08 */	stfs f0, 8(r31)
/* 804C44B0  7F E3 FB 78 */	mr r3, r31
lbl_804C44B4:
/* 804C44B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C44B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804C44BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C44C0  7C 08 03 A6 */	mtlr r0
/* 804C44C4  38 21 00 10 */	addi r1, r1, 0x10
/* 804C44C8  4E 80 00 20 */	blr 
