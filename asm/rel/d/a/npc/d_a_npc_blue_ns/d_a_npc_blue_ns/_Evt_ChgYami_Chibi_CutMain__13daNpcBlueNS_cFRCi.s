lbl_8096B688:
/* 8096B688  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8096B68C  7C 08 02 A6 */	mflr r0
/* 8096B690  90 01 00 24 */	stw r0, 0x24(r1)
/* 8096B694  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8096B698  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8096B69C  7C 7E 1B 78 */	mr r30, r3
/* 8096B6A0  3B E0 00 00 */	li r31, 0
/* 8096B6A4  80 04 00 00 */	lwz r0, 0(r4)
/* 8096B6A8  2C 00 00 14 */	cmpwi r0, 0x14
/* 8096B6AC  41 82 00 5C */	beq lbl_8096B708
/* 8096B6B0  40 80 00 10 */	bge lbl_8096B6C0
/* 8096B6B4  2C 00 00 0A */	cmpwi r0, 0xa
/* 8096B6B8  41 82 00 14 */	beq lbl_8096B6CC
/* 8096B6BC  48 00 00 E0 */	b lbl_8096B79C
lbl_8096B6C0:
/* 8096B6C0  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8096B6C4  41 82 00 88 */	beq lbl_8096B74C
/* 8096B6C8  48 00 00 D4 */	b lbl_8096B79C
lbl_8096B6CC:
/* 8096B6CC  80 9E 0E 00 */	lwz r4, 0xe00(r30)
/* 8096B6D0  3C 04 00 01 */	addis r0, r4, 1
/* 8096B6D4  28 00 FF FF */	cmplwi r0, 0xffff
/* 8096B6D8  40 82 00 28 */	bne lbl_8096B700
/* 8096B6DC  38 80 00 00 */	li r4, 0
/* 8096B6E0  4B FF DE 25 */	bl create_Yamijin__13daNpcBlueNS_cFi
/* 8096B6E4  90 7E 0E 00 */	stw r3, 0xe00(r30)
/* 8096B6E8  80 7E 0E 00 */	lwz r3, 0xe00(r30)
/* 8096B6EC  3C 03 00 01 */	addis r0, r3, 1
/* 8096B6F0  28 00 FF FF */	cmplwi r0, 0xffff
/* 8096B6F4  41 82 00 A8 */	beq lbl_8096B79C
/* 8096B6F8  3B E0 00 01 */	li r31, 1
/* 8096B6FC  48 00 00 A0 */	b lbl_8096B79C
lbl_8096B700:
/* 8096B700  3B E0 00 01 */	li r31, 1
/* 8096B704  48 00 00 98 */	b lbl_8096B79C
lbl_8096B708:
/* 8096B708  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 8096B70C  38 A0 00 01 */	li r5, 1
/* 8096B710  88 04 00 11 */	lbz r0, 0x11(r4)
/* 8096B714  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8096B718  40 82 00 1C */	bne lbl_8096B734
/* 8096B71C  3C 60 80 97 */	lis r3, lit_4393@ha
/* 8096B720  C0 23 C9 F4 */	lfs f1, lit_4393@l(r3)
/* 8096B724  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 8096B728  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8096B72C  41 82 00 08 */	beq lbl_8096B734
/* 8096B730  38 A0 00 00 */	li r5, 0
lbl_8096B734:
/* 8096B734  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8096B738  41 82 00 64 */	beq lbl_8096B79C
/* 8096B73C  7F C3 F3 78 */	mr r3, r30
/* 8096B740  4B FF FA C5 */	bl ChgPtclDisp__13daNpcBlueNS_cFv
/* 8096B744  3B E0 00 01 */	li r31, 1
/* 8096B748  48 00 00 54 */	b lbl_8096B79C
lbl_8096B74C:
/* 8096B74C  80 1E 0E 00 */	lwz r0, 0xe00(r30)
/* 8096B750  90 01 00 08 */	stw r0, 8(r1)
/* 8096B754  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8096B758  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8096B75C  38 81 00 08 */	addi r4, r1, 8
/* 8096B760  4B 6A E0 98 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8096B764  90 7E 0D FC */	stw r3, 0xdfc(r30)
/* 8096B768  80 7E 0D FC */	lwz r3, 0xdfc(r30)
/* 8096B76C  28 03 00 00 */	cmplwi r3, 0
/* 8096B770  41 82 00 2C */	beq lbl_8096B79C
/* 8096B774  38 00 00 00 */	li r0, 0
/* 8096B778  98 03 0F 81 */	stb r0, 0xf81(r3)
/* 8096B77C  80 7E 0D FC */	lwz r3, 0xdfc(r30)
/* 8096B780  80 03 0E 70 */	lwz r0, 0xe70(r3)
/* 8096B784  60 00 00 01 */	ori r0, r0, 1
/* 8096B788  90 03 0E 70 */	stw r0, 0xe70(r3)
/* 8096B78C  80 03 0E 5C */	lwz r0, 0xe5c(r3)
/* 8096B790  60 00 00 01 */	ori r0, r0, 1
/* 8096B794  90 03 0E 5C */	stw r0, 0xe5c(r3)
/* 8096B798  3B E0 00 01 */	li r31, 1
lbl_8096B79C:
/* 8096B79C  7F E3 FB 78 */	mr r3, r31
/* 8096B7A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8096B7A4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8096B7A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8096B7AC  7C 08 03 A6 */	mtlr r0
/* 8096B7B0  38 21 00 20 */	addi r1, r1, 0x20
/* 8096B7B4  4E 80 00 20 */	blr 
