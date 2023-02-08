lbl_80782BD4:
/* 80782BD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80782BD8  7C 08 02 A6 */	mflr r0
/* 80782BDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80782BE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80782BE4  93 C1 00 08 */	stw r30, 8(r1)
/* 80782BE8  7C 7E 1B 78 */	mr r30, r3
/* 80782BEC  3C 60 80 78 */	lis r3, lit_3658@ha /* 0x80784D68@ha */
/* 80782BF0  3B E3 4D 68 */	addi r31, r3, lit_3658@l /* 0x80784D68@l */
/* 80782BF4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80782BF8  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80782BFC  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 80782C00  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80782C04  4B AE CE 39 */	bl cLib_addCalc2__FPffff
/* 80782C08  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80782C0C  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80782C10  80 1E 05 C0 */	lwz r0, 0x5c0(r30)
/* 80782C14  2C 00 00 01 */	cmpwi r0, 1
/* 80782C18  41 82 00 54 */	beq lbl_80782C6C
/* 80782C1C  40 80 00 10 */	bge lbl_80782C2C
/* 80782C20  2C 00 00 00 */	cmpwi r0, 0
/* 80782C24  40 80 00 14 */	bge lbl_80782C38
/* 80782C28  48 00 00 88 */	b lbl_80782CB0
lbl_80782C2C:
/* 80782C2C  2C 00 00 03 */	cmpwi r0, 3
/* 80782C30  40 80 00 80 */	bge lbl_80782CB0
/* 80782C34  48 00 00 44 */	b lbl_80782C78
lbl_80782C38:
/* 80782C38  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80782C3C  3C 80 80 78 */	lis r4, data_80784FC8@ha /* 0x80784FC8@ha */
/* 80782C40  38 84 4F C8 */	addi r4, r4, data_80784FC8@l /* 0x80784FC8@l */
/* 80782C44  A8 84 00 00 */	lha r4, 0(r4)
/* 80782C48  38 A0 04 00 */	li r5, 0x400
/* 80782C4C  4B AE DF 45 */	bl cLib_chaseAngleS__FPsss
/* 80782C50  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80782C54  3C 80 80 78 */	lis r4, data_80784FC8@ha /* 0x80784FC8@ha */
/* 80782C58  38 84 4F C8 */	addi r4, r4, data_80784FC8@l /* 0x80784FC8@l */
/* 80782C5C  A8 84 00 00 */	lha r4, 0(r4)
/* 80782C60  38 A0 04 00 */	li r5, 0x400
/* 80782C64  4B AE DF 2D */	bl cLib_chaseAngleS__FPsss
/* 80782C68  48 00 00 48 */	b lbl_80782CB0
lbl_80782C6C:
/* 80782C6C  7F C3 F3 78 */	mr r3, r30
/* 80782C70  4B FF FC DD */	bl HomeJumpMotion__8daE_SB_cFv
/* 80782C74  48 00 00 3C */	b lbl_80782CB0
lbl_80782C78:
/* 80782C78  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80782C7C  80 9E 05 EC */	lwz r4, 0x5ec(r30)
/* 80782C80  4B AE DF 85 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80782C84  7C 64 1B 78 */	mr r4, r3
/* 80782C88  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80782C8C  38 A0 04 00 */	li r5, 0x400
/* 80782C90  4B AE DF 01 */	bl cLib_chaseAngleS__FPsss
/* 80782C94  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80782C98  80 9E 05 EC */	lwz r4, 0x5ec(r30)
/* 80782C9C  4B AE DF 69 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80782CA0  7C 64 1B 78 */	mr r4, r3
/* 80782CA4  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80782CA8  38 A0 04 00 */	li r5, 0x400
/* 80782CAC  4B AE DE E5 */	bl cLib_chaseAngleS__FPsss
lbl_80782CB0:
/* 80782CB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80782CB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80782CB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80782CBC  7C 08 03 A6 */	mtlr r0
/* 80782CC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80782CC4  4E 80 00 20 */	blr 
