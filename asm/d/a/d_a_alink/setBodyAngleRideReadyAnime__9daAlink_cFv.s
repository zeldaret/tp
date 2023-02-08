lbl_800EF050:
/* 800EF050  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EF054  7C 08 02 A6 */	mflr r0
/* 800EF058  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EF05C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EF060  7C 7F 1B 78 */	mr r31, r3
/* 800EF064  38 80 00 00 */	li r4, 0
/* 800EF068  4B FC C2 49 */	bl setBodyAngleXReadyAnime__9daAlink_cFi
/* 800EF06C  80 9F 27 EC */	lwz r4, 0x27ec(r31)
/* 800EF070  28 04 00 00 */	cmplwi r4, 0
/* 800EF074  41 82 00 48 */	beq lbl_800EF0BC
/* 800EF078  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 800EF07C  38 84 05 38 */	addi r4, r4, 0x538
/* 800EF080  48 18 1B 85 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 800EF084  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800EF088  7C 00 18 50 */	subf r0, r0, r3
/* 800EF08C  7C 03 07 34 */	extsh r3, r0
/* 800EF090  2C 03 C8 00 */	cmpwi r3, -14336
/* 800EF094  40 80 00 0C */	bge lbl_800EF0A0
/* 800EF098  38 00 C8 00 */	li r0, -14336
/* 800EF09C  48 00 00 14 */	b lbl_800EF0B0
lbl_800EF0A0:
/* 800EF0A0  2C 03 38 00 */	cmpwi r3, 0x3800
/* 800EF0A4  38 00 38 00 */	li r0, 0x3800
/* 800EF0A8  41 81 00 08 */	bgt lbl_800EF0B0
/* 800EF0AC  7C 60 1B 78 */	mr r0, r3
lbl_800EF0B0:
/* 800EF0B0  7C 00 07 34 */	extsh r0, r0
/* 800EF0B4  7C 04 03 78 */	mr r4, r0
/* 800EF0B8  48 00 00 08 */	b lbl_800EF0C0
lbl_800EF0BC:
/* 800EF0BC  38 80 00 00 */	li r4, 0
lbl_800EF0C0:
/* 800EF0C0  38 7F 05 9E */	addi r3, r31, 0x59e
/* 800EF0C4  38 A0 00 04 */	li r5, 4
/* 800EF0C8  38 C0 0C 00 */	li r6, 0xc00
/* 800EF0CC  38 E0 01 80 */	li r7, 0x180
/* 800EF0D0  48 07 08 AD */	bl daPy_addCalcShort__FPsssss
/* 800EF0D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EF0D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EF0DC  7C 08 03 A6 */	mtlr r0
/* 800EF0E0  38 21 00 10 */	addi r1, r1, 0x10
/* 800EF0E4  4E 80 00 20 */	blr 
