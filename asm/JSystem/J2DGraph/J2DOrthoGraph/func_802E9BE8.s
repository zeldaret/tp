lbl_802E9BE8:
/* 802E9BE8  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 802E9BEC  7C 08 02 A6 */	mflr r0
/* 802E9BF0  90 01 01 04 */	stw r0, 0x104(r1)
/* 802E9BF4  39 61 01 00 */	addi r11, r1, 0x100
/* 802E9BF8  48 07 85 E5 */	bl _savegpr_29
/* 802E9BFC  7C 7D 1B 78 */	mr r29, r3
/* 802E9C00  7C 9E 23 78 */	mr r30, r4
/* 802E9C04  7C BF 2B 78 */	mr r31, r5
/* 802E9C08  38 61 00 1C */	addi r3, r1, 0x1c
/* 802E9C0C  4B FF FA 65 */	bl __ct__13J2DOrthoGraphFv
/* 802E9C10  80 1E 00 00 */	lwz r0, 0(r30)
/* 802E9C14  90 01 00 18 */	stw r0, 0x18(r1)
/* 802E9C18  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E9C1C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802E9C20  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E9C24  90 01 00 08 */	stw r0, 8(r1)
/* 802E9C28  38 61 00 1C */	addi r3, r1, 0x1c
/* 802E9C2C  38 81 00 08 */	addi r4, r1, 8
/* 802E9C30  38 A1 00 0C */	addi r5, r1, 0xc
/* 802E9C34  38 C1 00 10 */	addi r6, r1, 0x10
/* 802E9C38  38 E1 00 14 */	addi r7, r1, 0x14
/* 802E9C3C  4B FF F4 DD */	bl setColor__14J2DGrafContextFQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
/* 802E9C40  38 61 00 1C */	addi r3, r1, 0x1c
/* 802E9C44  7F E4 FB 78 */	mr r4, r31
/* 802E9C48  4B FF F5 ED */	bl setLineWidth__14J2DGrafContextFUc
/* 802E9C4C  38 61 00 1C */	addi r3, r1, 0x1c
/* 802E9C50  7F A4 EB 78 */	mr r4, r29
/* 802E9C54  4B FF F7 15 */	bl func_802E9368
/* 802E9C58  3C 60 80 3D */	lis r3, __vt__13J2DOrthoGraph@ha /* 0x803CC9E0@ha */
/* 802E9C5C  38 03 C9 E0 */	addi r0, r3, __vt__13J2DOrthoGraph@l /* 0x803CC9E0@l */
/* 802E9C60  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802E9C64  3C 60 80 3D */	lis r3, __vt__14J2DGrafContext@ha /* 0x803CC9B8@ha */
/* 802E9C68  38 03 C9 B8 */	addi r0, r3, __vt__14J2DGrafContext@l /* 0x803CC9B8@l */
/* 802E9C6C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802E9C70  39 61 01 00 */	addi r11, r1, 0x100
/* 802E9C74  48 07 85 B5 */	bl _restgpr_29
/* 802E9C78  80 01 01 04 */	lwz r0, 0x104(r1)
/* 802E9C7C  7C 08 03 A6 */	mtlr r0
/* 802E9C80  38 21 01 00 */	addi r1, r1, 0x100
/* 802E9C84  4E 80 00 20 */	blr 
