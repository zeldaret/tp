lbl_804FBAF8:
/* 804FBAF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FBAFC  7C 08 02 A6 */	mflr r0
/* 804FBB00  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FBB04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FBB08  7C 7F 1B 79 */	or. r31, r3, r3
/* 804FBB0C  41 82 00 1C */	beq lbl_804FBB28
/* 804FBB10  3C A0 80 50 */	lis r5, __vt__12daE_Ga_HIO_c@ha /* 0x804FBC30@ha */
/* 804FBB14  38 05 BC 30 */	addi r0, r5, __vt__12daE_Ga_HIO_c@l /* 0x804FBC30@l */
/* 804FBB18  90 1F 00 00 */	stw r0, 0(r31)
/* 804FBB1C  7C 80 07 35 */	extsh. r0, r4
/* 804FBB20  40 81 00 08 */	ble lbl_804FBB28
/* 804FBB24  4B DD 32 19 */	bl __dl__FPv
lbl_804FBB28:
/* 804FBB28  7F E3 FB 78 */	mr r3, r31
/* 804FBB2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FBB30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FBB34  7C 08 03 A6 */	mtlr r0
/* 804FBB38  38 21 00 10 */	addi r1, r1, 0x10
/* 804FBB3C  4E 80 00 20 */	blr 
