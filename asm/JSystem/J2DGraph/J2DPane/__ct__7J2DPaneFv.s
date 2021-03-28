lbl_802F5BF8:
/* 802F5BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F5BFC  7C 08 02 A6 */	mflr r0
/* 802F5C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F5C04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F5C08  93 C1 00 08 */	stw r30, 8(r1)
/* 802F5C0C  7C 7E 1B 78 */	mr r30, r3
/* 802F5C10  3C 60 80 3D */	lis r3, __vt__7J2DPane@ha
/* 802F5C14  38 03 CF D0 */	addi r0, r3, __vt__7J2DPane@l
/* 802F5C18  90 1E 00 00 */	stw r0, 0(r30)
/* 802F5C1C  3B FE 00 DC */	addi r31, r30, 0xdc
/* 802F5C20  7F E3 FB 78 */	mr r3, r31
/* 802F5C24  4B FE 62 F1 */	bl initiate__10JSUPtrListFv
/* 802F5C28  38 7F 00 0C */	addi r3, r31, 0xc
/* 802F5C2C  7F C4 F3 78 */	mr r4, r30
/* 802F5C30  4B FE 61 CD */	bl __ct__10JSUPtrLinkFPv
/* 802F5C34  38 80 00 00 */	li r4, 0
/* 802F5C38  90 9E 00 F8 */	stw r4, 0xf8(r30)
/* 802F5C3C  3C 60 50 41 */	lis r3, 0x5041 /* 0x50414E31@ha */
/* 802F5C40  38 03 4E 31 */	addi r0, r3, 0x4E31 /* 0x50414E31@l */
/* 802F5C44  90 1E 00 08 */	stw r0, 8(r30)
/* 802F5C48  38 00 00 01 */	li r0, 1
/* 802F5C4C  98 1E 00 B0 */	stb r0, 0xb0(r30)
/* 802F5C50  90 9E 00 14 */	stw r4, 0x14(r30)
/* 802F5C54  90 9E 00 10 */	stw r4, 0x10(r30)
/* 802F5C58  90 9E 00 1C */	stw r4, 0x1c(r30)
/* 802F5C5C  90 9E 00 18 */	stw r4, 0x18(r30)
/* 802F5C60  C0 02 C7 F0 */	lfs f0, lit_1469(r2)
/* 802F5C64  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 802F5C68  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 802F5C6C  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 802F5C70  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 802F5C74  7F C3 F3 78 */	mr r3, r30
/* 802F5C78  48 00 00 41 */	bl initiate__7J2DPaneFv
/* 802F5C7C  7F C3 F3 78 */	mr r3, r30
/* 802F5C80  38 80 00 00 */	li r4, 0
/* 802F5C84  48 00 07 75 */	bl changeUseTrans__7J2DPaneFP7J2DPane
/* 802F5C88  7F C3 F3 78 */	mr r3, r30
/* 802F5C8C  81 9E 00 00 */	lwz r12, 0(r30)
/* 802F5C90  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802F5C94  7D 89 03 A6 */	mtctr r12
/* 802F5C98  4E 80 04 21 */	bctrl 
/* 802F5C9C  7F C3 F3 78 */	mr r3, r30
/* 802F5CA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F5CA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F5CA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F5CAC  7C 08 03 A6 */	mtlr r0
/* 802F5CB0  38 21 00 10 */	addi r1, r1, 0x10
/* 802F5CB4  4E 80 00 20 */	blr 
