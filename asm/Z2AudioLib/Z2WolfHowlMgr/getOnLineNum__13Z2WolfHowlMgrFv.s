lbl_802CB650:
/* 802CB650  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CB654  7C 08 02 A6 */	mflr r0
/* 802CB658  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CB65C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802CB660  7C 7F 1B 78 */	mr r31, r3
/* 802CB664  88 83 00 BA */	lbz r4, 0xba(r3)
/* 802CB668  4B FF FC B9 */	bl getCorrectLine__13Z2WolfHowlMgrFUc
/* 802CB66C  54 60 84 3E */	srwi r0, r3, 0x10
/* 802CB670  B0 01 00 08 */	sth r0, 8(r1)
/* 802CB674  88 01 00 08 */	lbz r0, 8(r1)
/* 802CB678  28 00 00 01 */	cmplwi r0, 1
/* 802CB67C  40 82 00 14 */	bne lbl_802CB690
/* 802CB680  C0 22 C4 64 */	lfs f1, lit_3486(r2)
/* 802CB684  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 802CB688  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802CB68C  41 82 00 3C */	beq lbl_802CB6C8
lbl_802CB690:
/* 802CB690  88 01 00 08 */	lbz r0, 8(r1)
/* 802CB694  28 00 00 02 */	cmplwi r0, 2
/* 802CB698  40 82 00 14 */	bne lbl_802CB6AC
/* 802CB69C  C0 22 C4 60 */	lfs f1, lit_3485(r2)
/* 802CB6A0  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 802CB6A4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802CB6A8  41 82 00 20 */	beq lbl_802CB6C8
lbl_802CB6AC:
/* 802CB6AC  88 01 00 08 */	lbz r0, 8(r1)
/* 802CB6B0  28 00 00 03 */	cmplwi r0, 3
/* 802CB6B4  40 82 00 20 */	bne lbl_802CB6D4
/* 802CB6B8  C0 22 C4 7C */	lfs f1, lit_3590(r2)
/* 802CB6BC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 802CB6C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802CB6C4  40 82 00 10 */	bne lbl_802CB6D4
lbl_802CB6C8:
/* 802CB6C8  88 1F 00 BA */	lbz r0, 0xba(r31)
/* 802CB6CC  7C 03 07 74 */	extsb r3, r0
/* 802CB6D0  48 00 00 08 */	b lbl_802CB6D8
lbl_802CB6D4:
/* 802CB6D4  38 60 FF FF */	li r3, -1
lbl_802CB6D8:
/* 802CB6D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802CB6DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CB6E0  7C 08 03 A6 */	mtlr r0
/* 802CB6E4  38 21 00 20 */	addi r1, r1, 0x20
/* 802CB6E8  4E 80 00 20 */	blr 
