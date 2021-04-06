lbl_80D21BC0:
/* 80D21BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D21BC4  7C 08 02 A6 */	mflr r0
/* 80D21BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D21BCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D21BD0  7C 7F 1B 78 */	mr r31, r3
/* 80D21BD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D21BD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D21BDC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80D21BE0  88 1F 06 00 */	lbz r0, 0x600(r31)
/* 80D21BE4  28 00 00 00 */	cmplwi r0, 0
/* 80D21BE8  40 82 00 1C */	bne lbl_80D21C04
/* 80D21BEC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80D21BF0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80D21BF4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80D21BF8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80D21BFC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80D21C00  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_80D21C04:
/* 80D21C04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D21C08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D21C0C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D21C10  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D21C14  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D21C18  4B 62 4C D1 */	bl PSMTXTrans
/* 80D21C1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D21C20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D21C24  38 9F 28 EC */	addi r4, r31, 0x28ec
/* 80D21C28  4B 62 48 89 */	bl PSMTXCopy
/* 80D21C2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D21C30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D21C34  7C 08 03 A6 */	mtlr r0
/* 80D21C38  38 21 00 10 */	addi r1, r1, 0x10
/* 80D21C3C  4E 80 00 20 */	blr 
