lbl_802C0FC4:
/* 802C0FC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C0FC8  7C 08 02 A6 */	mflr r0
/* 802C0FCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C0FD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C0FD4  7C 7F 1B 78 */	mr r31, r3
/* 802C0FD8  88 03 00 A0 */	lbz r0, 0xa0(r3)
/* 802C0FDC  28 00 00 2C */	cmplwi r0, 0x2c
/* 802C0FE0  40 82 00 5C */	bne lbl_802C103C
/* 802C0FE4  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802C0FE8  C0 62 C2 20 */	lfs f3, lit_3669(r2)
/* 802C0FEC  D0 63 00 34 */	stfs f3, 0x34(r3)
/* 802C0FF0  C0 02 C2 34 */	lfs f0, lit_3717(r2)
/* 802C0FF4  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 802C0FF8  38 00 00 00 */	li r0, 0
/* 802C0FFC  90 03 00 40 */	stw r0, 0x40(r3)
/* 802C1000  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 802C1004  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 802C1008  38 00 00 21 */	li r0, 0x21
/* 802C100C  90 03 00 50 */	stw r0, 0x50(r3)
/* 802C1010  EC 43 00 28 */	fsubs f2, f3, f0
/* 802C1014  80 03 00 50 */	lwz r0, 0x50(r3)
/* 802C1018  C8 22 C2 28 */	lfd f1, lit_3672(r2)
/* 802C101C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C1020  3C 00 43 30 */	lis r0, 0x4330
/* 802C1024  90 01 00 08 */	stw r0, 8(r1)
/* 802C1028  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C102C  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C1030  EC 02 00 24 */	fdivs f0, f2, f0
/* 802C1034  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 802C1038  D0 63 00 4C */	stfs f3, 0x4c(r3)
lbl_802C103C:
/* 802C103C  80 1F 00 94 */	lwz r0, 0x94(r31)
/* 802C1040  28 00 00 00 */	cmplwi r0, 0
/* 802C1044  41 82 00 1C */	beq lbl_802C1060
/* 802C1048  7F E4 FB 78 */	mr r4, r31
/* 802C104C  28 1F 00 00 */	cmplwi r31, 0
/* 802C1050  41 82 00 08 */	beq lbl_802C1058
/* 802C1054  38 9F 00 90 */	addi r4, r31, 0x90
lbl_802C1058:
/* 802C1058  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802C105C  4B FF F1 35 */	bl func_802C0190
lbl_802C1060:
/* 802C1060  38 00 00 00 */	li r0, 0
/* 802C1064  90 1F 00 28 */	stw r0, 0x28(r31)
/* 802C1068  38 7F 00 08 */	addi r3, r31, 8
/* 802C106C  4B FF CF 8D */	bl deleteObject__14Z2SoundObjBaseFv
/* 802C1070  38 7F 00 50 */	addi r3, r31, 0x50
/* 802C1074  4B FF CF 85 */	bl deleteObject__14Z2SoundObjBaseFv
/* 802C1078  38 7F 00 70 */	addi r3, r31, 0x70
/* 802C107C  4B FF CF 7D */	bl deleteObject__14Z2SoundObjBaseFv
/* 802C1080  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C1084  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C1088  7C 08 03 A6 */	mtlr r0
/* 802C108C  38 21 00 20 */	addi r1, r1, 0x20
/* 802C1090  4E 80 00 20 */	blr 
