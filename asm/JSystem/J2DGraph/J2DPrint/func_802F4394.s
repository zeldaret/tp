lbl_802F4394:
/* 802F4394  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F4398  7C 08 02 A6 */	mflr r0
/* 802F439C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F43A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802F43A4  7C 7F 1B 78 */	mr r31, r3
/* 802F43A8  3D 20 80 3D */	lis r9, __vt__8J2DPrint@ha
/* 802F43AC  38 09 CF A0 */	addi r0, r9, __vt__8J2DPrint@l
/* 802F43B0  90 03 00 00 */	stw r0, 0(r3)
/* 802F43B4  38 00 FF FF */	li r0, -1
/* 802F43B8  90 03 00 08 */	stw r0, 8(r3)
/* 802F43BC  90 03 00 0C */	stw r0, 0xc(r3)
/* 802F43C0  90 03 00 38 */	stw r0, 0x38(r3)
/* 802F43C4  90 03 00 3C */	stw r0, 0x3c(r3)
/* 802F43C8  90 03 00 40 */	stw r0, 0x40(r3)
/* 802F43CC  90 03 00 44 */	stw r0, 0x44(r3)
/* 802F43D0  80 08 00 00 */	lwz r0, 0(r8)
/* 802F43D4  90 01 00 08 */	stw r0, 8(r1)
/* 802F43D8  80 07 00 00 */	lwz r0, 0(r7)
/* 802F43DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802F43E0  80 06 00 00 */	lwz r0, 0(r6)
/* 802F43E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 802F43E8  80 05 00 00 */	lwz r0, 0(r5)
/* 802F43EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F43F0  38 A1 00 14 */	addi r5, r1, 0x14
/* 802F43F4  38 C1 00 10 */	addi r6, r1, 0x10
/* 802F43F8  38 E1 00 0C */	addi r7, r1, 0xc
/* 802F43FC  39 01 00 08 */	addi r8, r1, 8
/* 802F4400  39 20 00 00 */	li r9, 0
/* 802F4404  48 00 00 65 */	bl private_initiate__8J2DPrintFP7JUTFontffQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorb
/* 802F4408  7F E3 FB 78 */	mr r3, r31
/* 802F440C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802F4410  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F4414  7C 08 03 A6 */	mtlr r0
/* 802F4418  38 21 00 20 */	addi r1, r1, 0x20
/* 802F441C  4E 80 00 20 */	blr 
