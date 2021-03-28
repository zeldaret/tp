lbl_80030BDC:
/* 80030BDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80030BE0  7C 08 02 A6 */	mflr r0
/* 80030BE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80030BE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80030BEC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80030BF0  41 82 00 48 */	beq lbl_80030C38
/* 80030BF4  3C 60 80 3C */	lis r3, __vt__4cCcS@ha
/* 80030BF8  38 03 37 48 */	addi r0, r3, __vt__4cCcS@l
/* 80030BFC  90 1F 28 48 */	stw r0, 0x2848(r31)
/* 80030C00  34 1F 28 08 */	addic. r0, r31, 0x2808
/* 80030C04  41 82 00 24 */	beq lbl_80030C28
/* 80030C08  3C 60 80 3A */	lis r3, __vt__15cCcD_DivideArea@ha
/* 80030C0C  38 03 72 00 */	addi r0, r3, __vt__15cCcD_DivideArea@l
/* 80030C10  90 1F 28 20 */	stw r0, 0x2820(r31)
/* 80030C14  34 1F 28 08 */	addic. r0, r31, 0x2808
/* 80030C18  41 82 00 10 */	beq lbl_80030C28
/* 80030C1C  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha
/* 80030C20  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80030C24  90 1F 28 20 */	stw r0, 0x2820(r31)
lbl_80030C28:
/* 80030C28  7C 80 07 35 */	extsh. r0, r4
/* 80030C2C  40 81 00 0C */	ble lbl_80030C38
/* 80030C30  7F E3 FB 78 */	mr r3, r31
/* 80030C34  48 29 E1 09 */	bl __dl__FPv
lbl_80030C38:
/* 80030C38  7F E3 FB 78 */	mr r3, r31
/* 80030C3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80030C40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80030C44  7C 08 03 A6 */	mtlr r0
/* 80030C48  38 21 00 10 */	addi r1, r1, 0x10
/* 80030C4C  4E 80 00 20 */	blr 
