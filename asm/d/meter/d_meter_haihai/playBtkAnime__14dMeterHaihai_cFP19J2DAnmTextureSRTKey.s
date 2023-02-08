lbl_8020C078:
/* 8020C078  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8020C07C  7C 08 02 A6 */	mflr r0
/* 8020C080  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020C084  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8020C088  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8020C08C  7C 7E 1B 78 */	mr r30, r3
/* 8020C090  7C 9F 23 78 */	mr r31, r4
/* 8020C094  88 03 00 29 */	lbz r0, 0x29(r3)
/* 8020C098  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8020C09C  41 82 01 18 */	beq lbl_8020C1B4
/* 8020C0A0  28 1F 00 00 */	cmplwi r31, 0
/* 8020C0A4  41 82 00 98 */	beq lbl_8020C13C
/* 8020C0A8  88 1E 00 28 */	lbz r0, 0x28(r30)
/* 8020C0AC  28 00 00 04 */	cmplwi r0, 4
/* 8020C0B0  40 82 00 20 */	bne lbl_8020C0D0
/* 8020C0B4  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 8020C0B8  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020C0BC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020C0C0  C0 03 05 38 */	lfs f0, 0x538(r3)
/* 8020C0C4  EC 01 00 2A */	fadds f0, f1, f0
/* 8020C0C8  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 8020C0CC  48 00 00 1C */	b lbl_8020C0E8
lbl_8020C0D0:
/* 8020C0D0  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 8020C0D4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020C0D8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020C0DC  C0 03 05 08 */	lfs f0, 0x508(r3)
/* 8020C0E0  EC 01 00 2A */	fadds f0, f1, f0
/* 8020C0E4  D0 1E 00 1C */	stfs f0, 0x1c(r30)
lbl_8020C0E8:
/* 8020C0E8  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 8020C0EC  A8 9F 00 06 */	lha r4, 6(r31)
/* 8020C0F0  C8 22 AD F8 */	lfd f1, lit_4189(r2)
/* 8020C0F4  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8020C0F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8020C0FC  3C 60 43 30 */	lis r3, 0x4330
/* 8020C100  90 61 00 08 */	stw r3, 8(r1)
/* 8020C104  C8 01 00 08 */	lfd f0, 8(r1)
/* 8020C108  EC 00 08 28 */	fsubs f0, f0, f1
/* 8020C10C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8020C110  4C 41 13 82 */	cror 2, 1, 2
/* 8020C114  40 82 00 30 */	bne lbl_8020C144
/* 8020C118  7C 80 07 34 */	extsh r0, r4
/* 8020C11C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8020C120  90 01 00 0C */	stw r0, 0xc(r1)
/* 8020C124  90 61 00 08 */	stw r3, 8(r1)
/* 8020C128  C8 01 00 08 */	lfd f0, 8(r1)
/* 8020C12C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8020C130  EC 02 00 28 */	fsubs f0, f2, f0
/* 8020C134  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 8020C138  48 00 00 0C */	b lbl_8020C144
lbl_8020C13C:
/* 8020C13C  C0 02 AD F0 */	lfs f0, lit_4165(r2)
/* 8020C140  D0 1E 00 1C */	stfs f0, 0x1c(r30)
lbl_8020C144:
/* 8020C144  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8020C148  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8020C14C  80 7E 00 04 */	lwz r3, 4(r30)
/* 8020C150  3C 80 6A 69 */	lis r4, 0x6A69 /* 0x6A693030@ha */
/* 8020C154  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x6A693030@l */
/* 8020C158  38 A0 79 61 */	li r5, 0x7961
/* 8020C15C  81 83 00 00 */	lwz r12, 0(r3)
/* 8020C160  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020C164  7D 89 03 A6 */	mtctr r12
/* 8020C168  4E 80 04 21 */	bctrl 
/* 8020C16C  7F E4 FB 78 */	mr r4, r31
/* 8020C170  81 83 00 00 */	lwz r12, 0(r3)
/* 8020C174  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8020C178  7D 89 03 A6 */	mtctr r12
/* 8020C17C  4E 80 04 21 */	bctrl 
/* 8020C180  80 7E 00 04 */	lwz r3, 4(r30)
/* 8020C184  3C 80 6A 69 */	lis r4, 0x6A69 /* 0x6A693031@ha */
/* 8020C188  38 C4 30 31 */	addi r6, r4, 0x3031 /* 0x6A693031@l */
/* 8020C18C  38 A0 79 61 */	li r5, 0x7961
/* 8020C190  81 83 00 00 */	lwz r12, 0(r3)
/* 8020C194  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020C198  7D 89 03 A6 */	mtctr r12
/* 8020C19C  4E 80 04 21 */	bctrl 
/* 8020C1A0  7F E4 FB 78 */	mr r4, r31
/* 8020C1A4  81 83 00 00 */	lwz r12, 0(r3)
/* 8020C1A8  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8020C1AC  7D 89 03 A6 */	mtctr r12
/* 8020C1B0  4E 80 04 21 */	bctrl 
lbl_8020C1B4:
/* 8020C1B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8020C1B8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8020C1BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8020C1C0  7C 08 03 A6 */	mtlr r0
/* 8020C1C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8020C1C8  4E 80 00 20 */	blr 
