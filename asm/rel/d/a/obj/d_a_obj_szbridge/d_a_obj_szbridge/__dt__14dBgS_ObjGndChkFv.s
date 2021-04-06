lbl_80D0484C:
/* 80D0484C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D04850  7C 08 02 A6 */	mflr r0
/* 80D04854  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D04858  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0485C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D04860  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D04864  7C 9F 23 78 */	mr r31, r4
/* 80D04868  41 82 00 40 */	beq lbl_80D048A8
/* 80D0486C  3C 80 80 D0 */	lis r4, __vt__14dBgS_ObjGndChk@ha /* 0x80D04D10@ha */
/* 80D04870  38 84 4D 10 */	addi r4, r4, __vt__14dBgS_ObjGndChk@l /* 0x80D04D10@l */
/* 80D04874  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80D04878  38 04 00 0C */	addi r0, r4, 0xc
/* 80D0487C  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80D04880  38 04 00 18 */	addi r0, r4, 0x18
/* 80D04884  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80D04888  38 04 00 24 */	addi r0, r4, 0x24
/* 80D0488C  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80D04890  38 80 00 00 */	li r4, 0
/* 80D04894  4B 37 2D 5D */	bl __dt__11dBgS_GndChkFv
/* 80D04898  7F E0 07 35 */	extsh. r0, r31
/* 80D0489C  40 81 00 0C */	ble lbl_80D048A8
/* 80D048A0  7F C3 F3 78 */	mr r3, r30
/* 80D048A4  4B 5C A4 99 */	bl __dl__FPv
lbl_80D048A8:
/* 80D048A8  7F C3 F3 78 */	mr r3, r30
/* 80D048AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D048B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D048B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D048B8  7C 08 03 A6 */	mtlr r0
/* 80D048BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D048C0  4E 80 00 20 */	blr 
