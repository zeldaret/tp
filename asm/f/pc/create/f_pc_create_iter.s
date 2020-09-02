.include "macros.inc"

.section .text, "ax" # 800209c8


.global fpcCtIt_Method
fpcCtIt_Method:
/* 800209C8 0001D908  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800209CC 0001D90C  7C 08 02 A6 */	mflr r0
/* 800209D0 0001D910  90 01 00 14 */	stw r0, 0x14(r1)
/* 800209D4 0001D914  90 61 00 08 */	stw r3, 8(r1)
/* 800209D8 0001D918  90 81 00 0C */	stw r4, 0xc(r1)
/* 800209DC 0001D91C  3C 60 80 3A */	lis r3, lbl_803A3990@ha
/* 800209E0 0001D920  38 63 39 90 */	addi r3, r3, lbl_803A3990@l
/* 800209E4 0001D924  3C 80 80 26 */	lis r4, cTgIt_MethodCall@ha
/* 800209E8 0001D928  38 84 6A 7C */	addi r4, r4, cTgIt_MethodCall@l
/* 800209EC 0001D92C  38 A1 00 08 */	addi r5, r1, 8
/* 800209F0 0001D930  48 24 56 71 */	bl cLsIt_Method
/* 800209F4 0001D934  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800209F8 0001D938  7C 08 03 A6 */	mtlr r0
/* 800209FC 0001D93C  38 21 00 10 */	addi r1, r1, 0x10
/* 80020A00 0001D940  4E 80 00 20 */	blr 

.global fpcCtIt_Judge
fpcCtIt_Judge:
/* 80020A04 0001D944  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020A08 0001D948  7C 08 02 A6 */	mflr r0
/* 80020A0C 0001D94C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020A10 0001D950  90 61 00 08 */	stw r3, 8(r1)
/* 80020A14 0001D954  90 81 00 0C */	stw r4, 0xc(r1)
/* 80020A18 0001D958  3C 60 80 3A */	lis r3, lbl_803A3990@ha
/* 80020A1C 0001D95C  38 63 39 90 */	addi r3, r3, lbl_803A3990@l
.global cTgIt_JudgeFilter
/* 80020A20 0001D960  3C 80 80 26 */	lis r4, cTgIt_JudgeFilter@ha
.global cTgIt_JudgeFilter
/* 80020A24 0001D964  38 84 6A B0 */	addi r4, r4, cTgIt_JudgeFilter@l
/* 80020A28 0001D968  38 A1 00 08 */	addi r5, r1, 8
/* 80020A2C 0001D96C  48 24 56 6D */	bl cLsIt_Judge
/* 80020A30 0001D970  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020A34 0001D974  7C 08 03 A6 */	mtlr r0
/* 80020A38 0001D978  38 21 00 10 */	addi r1, r1, 0x10
/* 80020A3C 0001D97C  4E 80 00 20 */	blr 
.global fpcCtIt_filter_JudgeInLayer
fpcCtIt_filter_JudgeInLayer:
/* 80020A40 0001D980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020A44 0001D984  7C 08 02 A6 */	mflr r0
/* 80020A48 0001D988  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020A4C 0001D98C  7C 85 23 78 */	mr r5, r4
/* 80020A50 0001D990  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80020A54 0001D994  80 64 00 44 */	lwz r3, 0x44(r4)
/* 80020A58 0001D998  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80020A5C 0001D99C  80 05 00 00 */	lwz r0, 0(r5)
/* 80020A60 0001D9A0  7C 03 00 40 */	cmplw r3, r0
/* 80020A64 0001D9A4  40 82 00 1C */	bne lbl_80020A80
/* 80020A68 0001D9A8  80 64 00 40 */	lwz r3, 0x40(r4)
/* 80020A6C 0001D9AC  80 85 00 08 */	lwz r4, 8(r5)
/* 80020A70 0001D9B0  81 85 00 04 */	lwz r12, 4(r5)
/* 80020A74 0001D9B4  7D 89 03 A6 */	mtctr r12
/* 80020A78 0001D9B8  4E 80 04 21 */	bctrl 
/* 80020A7C 0001D9BC  48 00 00 08 */	b lbl_80020A84
lbl_80020A80:
/* 80020A80 0001D9C0  38 60 00 00 */	li r3, 0
lbl_80020A84:
/* 80020A84 0001D9C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020A88 0001D9C8  7C 08 03 A6 */	mtlr r0
/* 80020A8C 0001D9CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80020A90 0001D9D0  4E 80 00 20 */	blr 

.global fpcCtIt_JudgeInLayer
fpcCtIt_JudgeInLayer:
/* 80020A94 0001D9D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80020A98 0001D9D8  7C 08 02 A6 */	mflr r0
/* 80020A9C 0001D9DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80020AA0 0001D9E0  90 61 00 08 */	stw r3, 8(r1)
/* 80020AA4 0001D9E4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80020AA8 0001D9E8  90 A1 00 10 */	stw r5, 0x10(r1)
.global fpcCtIt_filter_JudgeInLayer
/* 80020AAC 0001D9EC  3C 60 80 02 */	lis r3, fpcCtIt_filter_JudgeInLayer@ha
.global fpcCtIt_filter_JudgeInLayer
/* 80020AB0 0001D9F0  38 63 0A 40 */	addi r3, r3, fpcCtIt_filter_JudgeInLayer@l
/* 80020AB4 0001D9F4  38 81 00 08 */	addi r4, r1, 8
/* 80020AB8 0001D9F8  4B FF FF 4D */	bl fpcCtIt_Judge
/* 80020ABC 0001D9FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80020AC0 0001DA00  7C 08 03 A6 */	mtlr r0
/* 80020AC4 0001DA04  38 21 00 20 */	addi r1, r1, 0x20
/* 80020AC8 0001DA08  4E 80 00 20 */	blr 
