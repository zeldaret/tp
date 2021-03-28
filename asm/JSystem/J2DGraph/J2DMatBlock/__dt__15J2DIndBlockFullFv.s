lbl_802F1C7C:
/* 802F1C7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F1C80  7C 08 02 A6 */	mflr r0
/* 802F1C84  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F1C88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F1C8C  93 C1 00 08 */	stw r30, 8(r1)
/* 802F1C90  7C 7E 1B 79 */	or. r30, r3, r3
/* 802F1C94  7C 9F 23 78 */	mr r31, r4
/* 802F1C98  41 82 00 64 */	beq lbl_802F1CFC
/* 802F1C9C  3C 60 80 3D */	lis r3, __vt__15J2DIndBlockFull@ha
/* 802F1CA0  38 03 CA 90 */	addi r0, r3, __vt__15J2DIndBlockFull@l
/* 802F1CA4  90 1E 00 00 */	stw r0, 0(r30)
/* 802F1CA8  38 7E 00 64 */	addi r3, r30, 0x64
/* 802F1CAC  3C 80 80 2F */	lis r4, __dt__19J2DIndTexCoordScaleFv@ha
/* 802F1CB0  38 84 B2 90 */	addi r4, r4, __dt__19J2DIndTexCoordScaleFv@l
/* 802F1CB4  38 A0 00 02 */	li r5, 2
/* 802F1CB8  38 C0 00 04 */	li r6, 4
/* 802F1CBC  48 07 00 2D */	bl __destroy_arr
/* 802F1CC0  38 7E 00 10 */	addi r3, r30, 0x10
/* 802F1CC4  3C 80 80 2F */	lis r4, __dt__12J2DIndTexMtxFv@ha
/* 802F1CC8  38 84 B2 E4 */	addi r4, r4, __dt__12J2DIndTexMtxFv@l
/* 802F1CCC  38 A0 00 1C */	li r5, 0x1c
/* 802F1CD0  38 C0 00 03 */	li r6, 3
/* 802F1CD4  48 07 00 15 */	bl __destroy_arr
/* 802F1CD8  28 1E 00 00 */	cmplwi r30, 0
/* 802F1CDC  41 82 00 10 */	beq lbl_802F1CEC
/* 802F1CE0  3C 60 80 3D */	lis r3, __vt__11J2DIndBlock@ha
/* 802F1CE4  38 03 CA 40 */	addi r0, r3, __vt__11J2DIndBlock@l
/* 802F1CE8  90 1E 00 00 */	stw r0, 0(r30)
lbl_802F1CEC:
/* 802F1CEC  7F E0 07 35 */	extsh. r0, r31
/* 802F1CF0  40 81 00 0C */	ble lbl_802F1CFC
/* 802F1CF4  7F C3 F3 78 */	mr r3, r30
/* 802F1CF8  4B FD D0 45 */	bl __dl__FPv
lbl_802F1CFC:
/* 802F1CFC  7F C3 F3 78 */	mr r3, r30
/* 802F1D00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F1D04  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F1D08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F1D0C  7C 08 03 A6 */	mtlr r0
/* 802F1D10  38 21 00 10 */	addi r1, r1, 0x10
/* 802F1D14  4E 80 00 20 */	blr 
