lbl_804AC1C0:
/* 804AC1C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804AC1C4  7C 08 02 A6 */	mflr r0
/* 804AC1C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804AC1CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804AC1D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804AC1D4  7C 7E 1B 78 */	mr r30, r3
/* 804AC1D8  7C 9F 23 78 */	mr r31, r4
/* 804AC1DC  4B B6 CB 04 */	b fopAc_IsActor__FPv
/* 804AC1E0  2C 03 00 00 */	cmpwi r3, 0
/* 804AC1E4  41 82 00 28 */	beq lbl_804AC20C
/* 804AC1E8  A8 1E 00 08 */	lha r0, 8(r30)
/* 804AC1EC  2C 00 00 ED */	cmpwi r0, 0xed
/* 804AC1F0  40 82 00 1C */	bne lbl_804AC20C
/* 804AC1F4  38 61 00 08 */	addi r3, r1, 8
/* 804AC1F8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804AC1FC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804AC200  4B DB A9 34 */	b __mi__4cXyzCFRC3Vec
/* 804AC204  7F C3 F3 78 */	mr r3, r30
/* 804AC208  48 00 00 08 */	b lbl_804AC210
lbl_804AC20C:
/* 804AC20C  38 60 00 00 */	li r3, 0
lbl_804AC210:
/* 804AC210  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804AC214  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804AC218  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804AC21C  7C 08 03 A6 */	mtlr r0
/* 804AC220  38 21 00 20 */	addi r1, r1, 0x20
/* 804AC224  4E 80 00 20 */	blr 
