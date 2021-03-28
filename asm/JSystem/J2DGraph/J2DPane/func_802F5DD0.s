lbl_802F5DD0:
/* 802F5DD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F5DD4  7C 08 02 A6 */	mflr r0
/* 802F5DD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F5DDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F5DE0  93 C1 00 08 */	stw r30, 8(r1)
/* 802F5DE4  7C 7E 1B 78 */	mr r30, r3
/* 802F5DE8  7C 9F 23 79 */	or. r31, r4, r4
/* 802F5DEC  3C 60 50 41 */	lis r3, 0x5041 /* 0x50414E31@ha */
/* 802F5DF0  38 03 4E 31 */	addi r0, r3, 0x4E31 /* 0x50414E31@l */
/* 802F5DF4  90 1E 00 08 */	stw r0, 8(r30)
/* 802F5DF8  98 BE 00 B0 */	stb r5, 0xb0(r30)
/* 802F5DFC  91 1E 00 14 */	stw r8, 0x14(r30)
/* 802F5E00  90 FE 00 10 */	stw r7, 0x10(r30)
/* 802F5E04  38 00 00 00 */	li r0, 0
/* 802F5E08  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 802F5E0C  90 1E 00 18 */	stw r0, 0x18(r30)
/* 802F5E10  C0 09 00 00 */	lfs f0, 0(r9)
/* 802F5E14  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 802F5E18  C0 09 00 04 */	lfs f0, 4(r9)
/* 802F5E1C  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 802F5E20  C0 09 00 08 */	lfs f0, 8(r9)
/* 802F5E24  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 802F5E28  C0 09 00 0C */	lfs f0, 0xc(r9)
/* 802F5E2C  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 802F5E30  41 82 00 18 */	beq lbl_802F5E48
/* 802F5E34  34 9E 00 DC */	addic. r4, r30, 0xdc
/* 802F5E38  41 82 00 08 */	beq lbl_802F5E40
/* 802F5E3C  38 84 00 0C */	addi r4, r4, 0xc
lbl_802F5E40:
/* 802F5E40  38 7F 00 DC */	addi r3, r31, 0xdc
/* 802F5E44  4B FE 61 09 */	bl append__10JSUPtrListFP10JSUPtrLink
lbl_802F5E48:
/* 802F5E48  7F C3 F3 78 */	mr r3, r30
/* 802F5E4C  4B FF FE 6D */	bl initiate__7J2DPaneFv
/* 802F5E50  7F C3 F3 78 */	mr r3, r30
/* 802F5E54  7F E4 FB 78 */	mr r4, r31
/* 802F5E58  48 00 05 A1 */	bl changeUseTrans__7J2DPaneFP7J2DPane
/* 802F5E5C  7F C3 F3 78 */	mr r3, r30
/* 802F5E60  81 9E 00 00 */	lwz r12, 0(r30)
/* 802F5E64  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802F5E68  7D 89 03 A6 */	mtctr r12
/* 802F5E6C  4E 80 04 21 */	bctrl 
/* 802F5E70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F5E74  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F5E78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F5E7C  7C 08 03 A6 */	mtlr r0
/* 802F5E80  38 21 00 10 */	addi r1, r1, 0x10
/* 802F5E84  4E 80 00 20 */	blr 
