lbl_80023BC4:
/* 80023BC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80023BC8  7C 08 02 A6 */	mflr r0
/* 80023BCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80023BD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80023BD4  7C 7F 1B 78 */	mr r31, r3
/* 80023BD8  80 63 00 44 */	lwz r3, 0x44(r3)
/* 80023BDC  4B FF DB 11 */	bl fpcLy_SetCurrentLayer__FP11layer_class
/* 80023BE0  A8 7F 00 50 */	lha r3, 0x50(r31)
/* 80023BE4  80 9F 00 3C */	lwz r4, 0x3c(r31)
/* 80023BE8  80 BF 00 54 */	lwz r5, 0x54(r31)
/* 80023BEC  4B FF CC 35 */	bl fpcBs_Create__FsUiPv
/* 80023BF0  90 7F 00 40 */	stw r3, 0x40(r31)
/* 80023BF4  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 80023BF8  28 03 00 00 */	cmplwi r3, 0
/* 80023BFC  40 82 00 14 */	bne lbl_80023C10
/* 80023C00  A8 7F 00 50 */	lha r3, 0x50(r31)
/* 80023C04  4B FF E4 29 */	bl fpcLd_Free__Fs
/* 80023C08  38 60 00 05 */	li r3, 5
/* 80023C0C  48 00 00 0C */	b lbl_80023C18
lbl_80023C10:
/* 80023C10  93 E3 00 14 */	stw r31, 0x14(r3)
/* 80023C14  38 60 00 02 */	li r3, 2
lbl_80023C18:
/* 80023C18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80023C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80023C20  7C 08 03 A6 */	mtlr r0
/* 80023C24  38 21 00 10 */	addi r1, r1, 0x10
/* 80023C28  4E 80 00 20 */	blr 
