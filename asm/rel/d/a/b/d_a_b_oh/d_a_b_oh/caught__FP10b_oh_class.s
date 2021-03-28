lbl_8061C070:
/* 8061C070  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8061C074  7C 08 02 A6 */	mflr r0
/* 8061C078  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061C07C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8061C080  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8061C084  7C 7E 1B 78 */	mr r30, r3
/* 8061C088  3C 60 80 62 */	lis r3, lit_3650@ha
/* 8061C08C  3B E3 D9 D4 */	addi r31, r3, lit_3650@l
/* 8061C090  38 00 00 06 */	li r0, 6
/* 8061C094  B0 1E 05 F4 */	sth r0, 0x5f4(r30)
/* 8061C098  A8 1E 05 D0 */	lha r0, 0x5d0(r30)
/* 8061C09C  2C 00 00 01 */	cmpwi r0, 1
/* 8061C0A0  41 82 00 2C */	beq lbl_8061C0CC
/* 8061C0A4  40 80 01 3C */	bge lbl_8061C1E0
/* 8061C0A8  2C 00 00 00 */	cmpwi r0, 0
/* 8061C0AC  40 80 00 08 */	bge lbl_8061C0B4
/* 8061C0B0  48 00 01 30 */	b lbl_8061C1E0
lbl_8061C0B4:
/* 8061C0B4  38 00 00 01 */	li r0, 1
/* 8061C0B8  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 8061C0BC  38 00 00 0A */	li r0, 0xa
/* 8061C0C0  B0 1E 05 EC */	sth r0, 0x5ec(r30)
/* 8061C0C4  38 00 00 32 */	li r0, 0x32
/* 8061C0C8  B0 1E 05 EE */	sth r0, 0x5ee(r30)
lbl_8061C0CC:
/* 8061C0CC  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8061C0D0  D0 1E 06 0C */	stfs f0, 0x60c(r30)
/* 8061C0D4  38 7E 0C A2 */	addi r3, r30, 0xca2
/* 8061C0D8  38 80 00 06 */	li r4, 6
/* 8061C0DC  38 A0 00 01 */	li r5, 1
/* 8061C0E0  38 C0 00 01 */	li r6, 1
/* 8061C0E4  4B C5 45 24 */	b cLib_addCalcAngleS2__FPssss
/* 8061C0E8  38 7E 0C A4 */	addi r3, r30, 0xca4
/* 8061C0EC  80 1E 0C 88 */	lwz r0, 0xc88(r30)
/* 8061C0F0  1C 00 23 28 */	mulli r0, r0, 0x2328
/* 8061C0F4  7C 04 07 34 */	extsh r4, r0
/* 8061C0F8  38 A0 00 01 */	li r5, 1
/* 8061C0FC  38 C0 01 F4 */	li r6, 0x1f4
/* 8061C100  4B C5 45 08 */	b cLib_addCalcAngleS2__FPssss
/* 8061C104  A8 1E 05 EC */	lha r0, 0x5ec(r30)
/* 8061C108  2C 00 00 01 */	cmpwi r0, 1
/* 8061C10C  40 82 00 4C */	bne lbl_8061C158
/* 8061C110  38 00 00 15 */	li r0, 0x15
/* 8061C114  3C 60 80 62 */	lis r3, boss@ha
/* 8061C118  38 83 DB D4 */	addi r4, r3, boss@l
/* 8061C11C  80 64 00 00 */	lwz r3, 0(r4)
/* 8061C120  90 03 47 38 */	stw r0, 0x4738(r3)
/* 8061C124  38 00 00 00 */	li r0, 0
/* 8061C128  80 64 00 00 */	lwz r3, 0(r4)
/* 8061C12C  98 03 47 3C */	stb r0, 0x473c(r3)
/* 8061C130  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007034D@ha */
/* 8061C134  38 03 03 4D */	addi r0, r3, 0x034D /* 0x0007034D@l */
/* 8061C138  90 01 00 08 */	stw r0, 8(r1)
/* 8061C13C  80 64 00 00 */	lwz r3, 0(r4)
/* 8061C140  38 81 00 08 */	addi r4, r1, 8
/* 8061C144  38 A0 FF FF */	li r5, -1
/* 8061C148  85 83 59 E0 */	lwzu r12, 0x59e0(r3)
/* 8061C14C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8061C150  7D 89 03 A6 */	mtctr r12
/* 8061C154  4E 80 04 21 */	bctrl 
lbl_8061C158:
/* 8061C158  A8 1E 05 CC */	lha r0, 0x5cc(r30)
/* 8061C15C  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8061C160  40 82 00 34 */	bne lbl_8061C194
/* 8061C164  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8061C168  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8061C16C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8061C170  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8061C174  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8061C178  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8061C17C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8061C180  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8061C184  38 80 00 03 */	li r4, 3
/* 8061C188  38 A0 00 1F */	li r5, 0x1f
/* 8061C18C  38 C1 00 0C */	addi r6, r1, 0xc
/* 8061C190  4B A5 38 94 */	b StartShock__12dVibration_cFii4cXyz
lbl_8061C194:
/* 8061C194  A8 1E 05 EE */	lha r0, 0x5ee(r30)
/* 8061C198  2C 00 00 00 */	cmpwi r0, 0
/* 8061C19C  40 82 00 44 */	bne lbl_8061C1E0
/* 8061C1A0  3C 60 80 62 */	lis r3, boss@ha
/* 8061C1A4  38 83 DB D4 */	addi r4, r3, boss@l
/* 8061C1A8  80 64 00 00 */	lwz r3, 0(r4)
/* 8061C1AC  A8 03 5C 80 */	lha r0, 0x5c80(r3)
/* 8061C1B0  2C 00 00 00 */	cmpwi r0, 0
/* 8061C1B4  41 82 00 18 */	beq lbl_8061C1CC
/* 8061C1B8  38 00 00 03 */	li r0, 3
/* 8061C1BC  B0 03 5C 80 */	sth r0, 0x5c80(r3)
/* 8061C1C0  38 00 00 00 */	li r0, 0
/* 8061C1C4  80 64 00 00 */	lwz r3, 0(r4)
/* 8061C1C8  B0 03 5C 82 */	sth r0, 0x5c82(r3)
lbl_8061C1CC:
/* 8061C1CC  38 00 00 01 */	li r0, 1
/* 8061C1D0  B0 1E 05 CE */	sth r0, 0x5ce(r30)
/* 8061C1D4  38 00 00 00 */	li r0, 0
/* 8061C1D8  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 8061C1DC  B0 1E 0C 98 */	sth r0, 0xc98(r30)
lbl_8061C1E0:
/* 8061C1E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8061C1E4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8061C1E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061C1EC  7C 08 03 A6 */	mtlr r0
/* 8061C1F0  38 21 00 20 */	addi r1, r1, 0x20
/* 8061C1F4  4E 80 00 20 */	blr 
