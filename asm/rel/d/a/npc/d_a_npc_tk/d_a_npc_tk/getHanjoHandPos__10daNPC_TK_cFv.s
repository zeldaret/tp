lbl_80B05BD0:
/* 80B05BD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B05BD4  7C 08 02 A6 */	mflr r0
/* 80B05BD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B05BDC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B05BE0  7C 7F 1B 78 */	mr r31, r3
/* 80B05BE4  3C 60 80 B1 */	lis r3, lit_3999@ha
/* 80B05BE8  38 A3 C1 C4 */	addi r5, r3, lit_3999@l
/* 80B05BEC  C0 25 00 30 */	lfs f1, 0x30(r5)
/* 80B05BF0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B05BF4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80B05BF8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80B05BFC  80 64 06 38 */	lwz r3, 0x638(r4)
/* 80B05C00  28 03 00 00 */	cmplwi r3, 0
/* 80B05C04  41 82 00 4C */	beq lbl_80B05C50
/* 80B05C08  C0 05 01 28 */	lfs f0, 0x128(r5)
/* 80B05C0C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B05C10  C0 05 00 68 */	lfs f0, 0x68(r5)
/* 80B05C14  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B05C18  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B05C1C  80 63 05 78 */	lwz r3, 0x578(r3)
/* 80B05C20  80 63 00 04 */	lwz r3, 4(r3)
/* 80B05C24  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B05C28  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B05C2C  38 63 02 10 */	addi r3, r3, 0x210
/* 80B05C30  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B05C34  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B05C38  4B 84 08 78 */	b PSMTXCopy
/* 80B05C3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B05C40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B05C44  38 81 00 08 */	addi r4, r1, 8
/* 80B05C48  38 A1 00 14 */	addi r5, r1, 0x14
/* 80B05C4C  4B 84 11 20 */	b PSMTXMultVec
lbl_80B05C50:
/* 80B05C50  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B05C54  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80B05C58  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B05C5C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80B05C60  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B05C64  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80B05C68  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B05C6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B05C70  7C 08 03 A6 */	mtlr r0
/* 80B05C74  38 21 00 30 */	addi r1, r1, 0x30
/* 80B05C78  4E 80 00 20 */	blr 
