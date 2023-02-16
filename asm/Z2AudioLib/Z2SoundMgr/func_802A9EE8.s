lbl_802A9EE8:
/* 802A9EE8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802A9EEC  7C 08 02 A6 */	mflr r0
/* 802A9EF0  90 01 00 74 */	stw r0, 0x74(r1)
/* 802A9EF4  39 61 00 70 */	addi r11, r1, 0x70
/* 802A9EF8  48 0B 82 DD */	bl _savegpr_27
/* 802A9EFC  7C 7C 1B 78 */	mr r28, r3
/* 802A9F00  7C 9D 23 78 */	mr r29, r4
/* 802A9F04  7C BE 2B 78 */	mr r30, r5
/* 802A9F08  7C DF 33 78 */	mr r31, r6
/* 802A9F0C  80 04 00 00 */	lwz r0, 0(r4)
/* 802A9F10  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A9F14  80 6D 85 CC */	lwz r3, __OSReport_disable-0x4C(r13)
/* 802A9F18  38 81 00 24 */	addi r4, r1, 0x24
/* 802A9F1C  81 83 00 00 */	lwz r12, 0(r3)
/* 802A9F20  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A9F24  7D 89 03 A6 */	mtctr r12
/* 802A9F28  4E 80 04 21 */	bctrl 
/* 802A9F2C  2C 03 00 01 */	cmpwi r3, 1
/* 802A9F30  41 82 00 A4 */	beq lbl_802A9FD4
/* 802A9F34  40 80 00 10 */	bge lbl_802A9F44
/* 802A9F38  2C 03 00 00 */	cmpwi r3, 0
/* 802A9F3C  40 80 00 14 */	bge lbl_802A9F50
/* 802A9F40  48 00 02 3C */	b lbl_802AA17C
lbl_802A9F44:
/* 802A9F44  2C 03 00 03 */	cmpwi r3, 3
/* 802A9F48  40 80 02 34 */	bge lbl_802AA17C
/* 802A9F4C  48 00 01 A4 */	b lbl_802AA0F0
lbl_802A9F50:
/* 802A9F50  80 1D 00 00 */	lwz r0, 0(r29)
/* 802A9F54  90 01 00 20 */	stw r0, 0x20(r1)
/* 802A9F58  80 6D 85 CC */	lwz r3, __OSReport_disable-0x4C(r13)
/* 802A9F5C  38 81 00 20 */	addi r4, r1, 0x20
/* 802A9F60  48 01 1B 69 */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802A9F64  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 802A9F68  41 82 00 4C */	beq lbl_802A9FB4
/* 802A9F6C  80 6D 86 04 */	lwz r3, __OSReport_disable-0x14(r13)
/* 802A9F70  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 802A9F74  38 00 00 03 */	li r0, 3
/* 802A9F78  90 03 00 80 */	stw r0, 0x80(r3)
/* 802A9F7C  C0 62 BE 40 */	lfs f3, lit_3904(r2)
/* 802A9F80  EC 43 00 28 */	fsubs f2, f3, f0
/* 802A9F84  80 03 00 80 */	lwz r0, 0x80(r3)
/* 802A9F88  C8 22 BE 48 */	lfd f1, lit_3909(r2)
/* 802A9F8C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 802A9F90  3C 00 43 30 */	lis r0, 0x4330
/* 802A9F94  90 01 00 48 */	stw r0, 0x48(r1)
/* 802A9F98  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 802A9F9C  EC 00 08 28 */	fsubs f0, f0, f1
/* 802A9FA0  EC 02 00 24 */	fdivs f0, f2, f0
/* 802A9FA4  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 802A9FA8  D0 63 00 7C */	stfs f3, 0x7c(r3)
/* 802A9FAC  80 1D 00 00 */	lwz r0, 0(r29)
/* 802A9FB0  90 1C 08 0C */	stw r0, 0x80c(r28)
lbl_802A9FB4:
/* 802A9FB4  80 1D 00 00 */	lwz r0, 0(r29)
/* 802A9FB8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802A9FBC  38 7C 00 04 */	addi r3, r28, 4
/* 802A9FC0  38 81 00 1C */	addi r4, r1, 0x1c
/* 802A9FC4  7F C5 F3 78 */	mr r5, r30
/* 802A9FC8  7F E6 FB 78 */	mr r6, r31
/* 802A9FCC  4B FF 67 9D */	bl func_802A0768
/* 802A9FD0  48 00 01 C8 */	b lbl_802AA198
lbl_802A9FD4:
/* 802A9FD4  80 9D 00 00 */	lwz r4, 0(r29)
/* 802A9FD8  3C 04 FF 00 */	addis r0, r4, 0xff00
/* 802A9FDC  28 00 00 6A */	cmplwi r0, 0x6a
/* 802A9FE0  40 82 00 78 */	bne lbl_802AA058
/* 802A9FE4  80 6D 86 04 */	lwz r3, __OSReport_disable-0x14(r13)
/* 802A9FE8  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000048@ha */
/* 802A9FEC  38 84 00 48 */	addi r4, r4, 0x0048 /* 0x01000048@l */
/* 802A9FF0  38 A0 00 00 */	li r5, 0
/* 802A9FF4  38 C0 00 00 */	li r6, 0
/* 802A9FF8  48 00 50 19 */	bl bgmStart__8Z2SeqMgrFUlUll
/* 802A9FFC  80 6D 86 04 */	lwz r3, __OSReport_disable-0x14(r13)
/* 802AA000  C0 22 BE 38 */	lfs f1, lit_3688(r2)
/* 802AA004  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 802AA008  C0 02 BE 44 */	lfs f0, lit_3905(r2)
/* 802AA00C  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 802AA010  38 00 00 00 */	li r0, 0
/* 802AA014  90 03 00 40 */	stw r0, 0x40(r3)
/* 802AA018  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 802AA01C  D0 23 00 44 */	stfs f1, 0x44(r3)
/* 802AA020  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 802AA024  90 03 00 50 */	stw r0, 0x50(r3)
/* 802AA028  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 802AA02C  80 6D 86 04 */	lwz r3, __OSReport_disable-0x14(r13)
/* 802AA030  38 80 00 00 */	li r4, 0
/* 802AA034  48 00 5F 59 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802AA038  38 00 00 0B */	li r0, 0xb
/* 802AA03C  90 01 00 18 */	stw r0, 0x18(r1)
/* 802AA040  38 7C 00 04 */	addi r3, r28, 4
/* 802AA044  38 81 00 18 */	addi r4, r1, 0x18
/* 802AA048  7F C5 F3 78 */	mr r5, r30
/* 802AA04C  7F E6 FB 78 */	mr r6, r31
/* 802AA050  4B FF 67 19 */	bl func_802A0768
/* 802AA054  48 00 01 44 */	b lbl_802AA198
lbl_802AA058:
/* 802AA058  38 A0 00 00 */	li r5, 0
/* 802AA05C  83 6D 87 40 */	lwz r27, data_80450CC0(r13)
/* 802AA060  80 DB 05 14 */	lwz r6, 0x514(r27)
/* 802AA064  48 00 00 20 */	b lbl_802AA084
lbl_802AA068:
/* 802AA068  80 66 00 00 */	lwz r3, 0(r6)
/* 802AA06C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 802AA070  7C 00 20 40 */	cmplw r0, r4
/* 802AA074  40 82 00 0C */	bne lbl_802AA080
/* 802AA078  38 A0 00 01 */	li r5, 1
/* 802AA07C  48 00 00 10 */	b lbl_802AA08C
lbl_802AA080:
/* 802AA080  80 C6 00 0C */	lwz r6, 0xc(r6)
lbl_802AA084:
/* 802AA084  28 06 00 00 */	cmplwi r6, 0
/* 802AA088  40 82 FF E0 */	bne lbl_802AA068
lbl_802AA08C:
/* 802AA08C  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 802AA090  40 82 00 40 */	bne lbl_802AA0D0
/* 802AA094  7F 63 DB 78 */	mr r3, r27
/* 802AA098  4B FF BE 61 */	bl releaseIdleDynamicSeqDataBlock__14JAUSectionHeapFv
/* 802AA09C  80 1D 00 00 */	lwz r0, 0(r29)
/* 802AA0A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AA0A4  7F 63 DB 78 */	mr r3, r27
/* 802AA0A8  38 81 00 14 */	addi r4, r1, 0x14
/* 802AA0AC  38 A0 00 01 */	li r5, 1
/* 802AA0B0  4B FF BE 11 */	bl loadDynamicSeq__14JAUSectionHeapF10JAISoundIDb
/* 802AA0B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802AA0B8  40 82 00 18 */	bne lbl_802AA0D0
/* 802AA0BC  80 7B 04 FC */	lwz r3, 0x4fc(r27)
/* 802AA0C0  48 00 00 08 */	b lbl_802AA0C8
lbl_802AA0C4:
/* 802AA0C4  80 63 00 0C */	lwz r3, 0xc(r3)
lbl_802AA0C8:
/* 802AA0C8  28 03 00 00 */	cmplwi r3, 0
/* 802AA0CC  40 82 FF F8 */	bne lbl_802AA0C4
lbl_802AA0D0:
/* 802AA0D0  80 1D 00 00 */	lwz r0, 0(r29)
/* 802AA0D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 802AA0D8  38 7C 07 28 */	addi r3, r28, 0x728
/* 802AA0DC  38 81 00 10 */	addi r4, r1, 0x10
/* 802AA0E0  7F C5 F3 78 */	mr r5, r30
/* 802AA0E4  7F E6 FB 78 */	mr r6, r31
/* 802AA0E8  4B FF 7A 61 */	bl func_802A1B48
/* 802AA0EC  48 00 00 AC */	b lbl_802AA198
lbl_802AA0F0:
/* 802AA0F0  80 7D 00 00 */	lwz r3, 0(r29)
/* 802AA0F4  3C 03 FE 00 */	addis r0, r3, 0xfe00
/* 802AA0F8  28 00 00 01 */	cmplwi r0, 1
/* 802AA0FC  41 82 00 0C */	beq lbl_802AA108
/* 802AA100  28 00 00 4D */	cmplwi r0, 0x4d
/* 802AA104  40 82 00 30 */	bne lbl_802AA134
lbl_802AA108:
/* 802AA108  38 7C 07 9C */	addi r3, r28, 0x79c
/* 802AA10C  38 80 00 B4 */	li r4, 0xb4
/* 802AA110  4B FF 9F 59 */	bl stop__12JAIStreamMgrFUl
/* 802AA114  38 00 00 0B */	li r0, 0xb
/* 802AA118  90 01 00 0C */	stw r0, 0xc(r1)
/* 802AA11C  38 7C 00 04 */	addi r3, r28, 4
/* 802AA120  38 81 00 0C */	addi r4, r1, 0xc
/* 802AA124  7F C5 F3 78 */	mr r5, r30
/* 802AA128  7F E6 FB 78 */	mr r6, r31
/* 802AA12C  4B FF 66 3D */	bl func_802A0768
/* 802AA130  48 00 00 68 */	b lbl_802AA198
lbl_802AA134:
/* 802AA134  28 00 00 05 */	cmplwi r0, 5
/* 802AA138  40 82 00 24 */	bne lbl_802AA15C
/* 802AA13C  3B 7C 03 E4 */	addi r27, r28, 0x3e4
/* 802AA140  7F 63 DB 78 */	mr r3, r27
/* 802AA144  38 80 00 00 */	li r4, 0
/* 802AA148  4B FF 5D A5 */	bl pause__16JAISeCategoryMgrFb
/* 802AA14C  38 7B 00 08 */	addi r3, r27, 8
/* 802AA150  C0 22 BE 38 */	lfs f1, lit_3688(r2)
/* 802AA154  38 80 00 2D */	li r4, 0x2d
/* 802AA158  4B FF 8C 5D */	bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802AA15C:
/* 802AA15C  80 1D 00 00 */	lwz r0, 0(r29)
/* 802AA160  90 01 00 08 */	stw r0, 8(r1)
/* 802AA164  38 7C 07 9C */	addi r3, r28, 0x79c
/* 802AA168  38 81 00 08 */	addi r4, r1, 8
/* 802AA16C  7F C5 F3 78 */	mr r5, r30
/* 802AA170  7F E6 FB 78 */	mr r6, r31
/* 802AA174  4B FF 9A C9 */	bl func_802A3C3C
/* 802AA178  48 00 00 20 */	b lbl_802AA198
lbl_802AA17C:
/* 802AA17C  38 61 00 28 */	addi r3, r1, 0x28
/* 802AA180  3C 80 80 3A */	lis r4, Z2SoundMgr__stringBase0@ha /* 0x8039B9D0@ha */
/* 802AA184  38 84 B9 D0 */	addi r4, r4, Z2SoundMgr__stringBase0@l /* 0x8039B9D0@l */
/* 802AA188  80 BD 00 00 */	lwz r5, 0(r29)
/* 802AA18C  4C C6 31 82 */	crclr 6
/* 802AA190  48 0B C3 4D */	bl sprintf
/* 802AA194  38 60 00 00 */	li r3, 0
lbl_802AA198:
/* 802AA198  39 61 00 70 */	addi r11, r1, 0x70
/* 802AA19C  48 0B 80 85 */	bl _restgpr_27
/* 802AA1A0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802AA1A4  7C 08 03 A6 */	mtlr r0
/* 802AA1A8  38 21 00 70 */	addi r1, r1, 0x70
/* 802AA1AC  4E 80 00 20 */	blr 
