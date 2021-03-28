lbl_80497BD0:
/* 80497BD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80497BD4  7C 08 02 A6 */	mflr r0
/* 80497BD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80497BDC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80497BE0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80497BE4  88 03 07 18 */	lbz r0, 0x718(r3)
/* 80497BE8  28 00 00 00 */	cmplwi r0, 0
/* 80497BEC  41 82 00 28 */	beq lbl_80497C14
/* 80497BF0  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80497BF4  38 A0 00 01 */	li r5, 1
/* 80497BF8  38 C0 FF FF */	li r6, -1
/* 80497BFC  38 E0 FF FF */	li r7, -1
/* 80497C00  39 00 00 00 */	li r8, 0
/* 80497C04  39 20 00 00 */	li r9, 0
/* 80497C08  4B B8 3F E0 */	b fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80497C0C  7C 64 1B 78 */	mr r4, r3
/* 80497C10  48 00 00 20 */	b lbl_80497C30
lbl_80497C14:
/* 80497C14  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80497C18  38 A0 FF FF */	li r5, -1
/* 80497C1C  38 C0 FF FF */	li r6, -1
/* 80497C20  38 E0 00 00 */	li r7, 0
/* 80497C24  39 00 00 00 */	li r8, 0
/* 80497C28  4B B8 40 4C */	b fopAcM_createItemForTrBoxDemo__FPC4cXyziiiPC5csXyzPC4cXyz
/* 80497C2C  7C 64 1B 78 */	mr r4, r3
lbl_80497C30:
/* 80497C30  3C 04 00 01 */	addis r0, r4, 1
/* 80497C34  28 00 FF FF */	cmplwi r0, 0xffff
/* 80497C38  41 82 00 14 */	beq lbl_80497C4C
/* 80497C3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80497C40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80497C44  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80497C48  4B BA BA A4 */	b setPtI_Id__14dEvt_control_cFUi
lbl_80497C4C:
/* 80497C4C  38 60 00 01 */	li r3, 1
/* 80497C50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80497C54  7C 08 03 A6 */	mtlr r0
/* 80497C58  38 21 00 10 */	addi r1, r1, 0x10
/* 80497C5C  4E 80 00 20 */	blr 
