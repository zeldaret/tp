lbl_80259BFC:
/* 80259BFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80259C00  7C 08 02 A6 */	mflr r0
/* 80259C04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80259C08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80259C0C  7C 7F 1B 78 */	mr r31, r3
/* 80259C10  88 03 01 D4 */	lbz r0, 0x1d4(r3)
/* 80259C14  28 00 00 00 */	cmplwi r0, 0
/* 80259C18  41 82 00 44 */	beq lbl_80259C5C
/* 80259C1C  4B DC 49 3D */	bl fopOvlpM_IsPeek__Fv
/* 80259C20  2C 03 00 00 */	cmpwi r3, 0
/* 80259C24  40 82 00 38 */	bne lbl_80259C5C
/* 80259C28  38 80 00 00 */	li r4, 0
/* 80259C2C  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 80259C30  90 83 00 00 */	stw r4, 0(r3)
/* 80259C34  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 80259C38  90 83 00 04 */	stw r4, 4(r3)
/* 80259C3C  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 80259C40  90 83 00 04 */	stw r4, 4(r3)
/* 80259C44  98 8D 8F 81 */	stb r4, struct_80451500+0x1(r13)
/* 80259C48  3C 60 80 01 */	lis r3, mDoRst_resetCallBack__FiPv@ha /* 0x8001574C@ha */
/* 80259C4C  38 03 57 4C */	addi r0, r3, mDoRst_resetCallBack__FiPv@l /* 0x8001574C@l */
/* 80259C50  90 0D 8F 6C */	stw r0, sCallback__Q210JUTGamePad13C3ButtonReset(r13)
/* 80259C54  90 8D 8F 70 */	stw r4, sCallbackArg__Q210JUTGamePad13C3ButtonReset(r13)
/* 80259C58  98 9F 01 D4 */	stb r4, 0x1d4(r31)
lbl_80259C5C:
/* 80259C5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80259C60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80259C64  7C 08 03 A6 */	mtlr r0
/* 80259C68  38 21 00 10 */	addi r1, r1, 0x10
/* 80259C6C  4E 80 00 20 */	blr 
