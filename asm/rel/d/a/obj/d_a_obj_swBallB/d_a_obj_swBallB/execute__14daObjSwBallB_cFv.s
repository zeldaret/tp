lbl_80CF4E08:
/* 80CF4E08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF4E0C  7C 08 02 A6 */	mflr r0
/* 80CF4E10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF4E14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF4E18  7C 7F 1B 78 */	mr r31, r3
/* 80CF4E1C  3C 60 80 CF */	lis r3, cNullVec__6Z2Calc@ha
/* 80CF4E20  38 C3 5A 20 */	addi r6, r3, cNullVec__6Z2Calc@l
/* 80CF4E24  3C 60 80 CF */	lis r3, data_80CF5B1C@ha
/* 80CF4E28  38 A3 5B 1C */	addi r5, r3, data_80CF5B1C@l
/* 80CF4E2C  88 05 00 00 */	lbz r0, 0(r5)
/* 80CF4E30  7C 00 07 75 */	extsb. r0, r0
/* 80CF4E34  40 82 00 40 */	bne lbl_80CF4E74
/* 80CF4E38  80 66 00 24 */	lwz r3, 0x24(r6)
/* 80CF4E3C  80 06 00 28 */	lwz r0, 0x28(r6)
/* 80CF4E40  90 66 00 3C */	stw r3, 0x3c(r6)
/* 80CF4E44  90 06 00 40 */	stw r0, 0x40(r6)
/* 80CF4E48  80 06 00 2C */	lwz r0, 0x2c(r6)
/* 80CF4E4C  90 06 00 44 */	stw r0, 0x44(r6)
/* 80CF4E50  38 86 00 3C */	addi r4, r6, 0x3c
/* 80CF4E54  80 66 00 30 */	lwz r3, 0x30(r6)
/* 80CF4E58  80 06 00 34 */	lwz r0, 0x34(r6)
/* 80CF4E5C  90 64 00 0C */	stw r3, 0xc(r4)
/* 80CF4E60  90 04 00 10 */	stw r0, 0x10(r4)
/* 80CF4E64  80 06 00 38 */	lwz r0, 0x38(r6)
/* 80CF4E68  90 04 00 14 */	stw r0, 0x14(r4)
/* 80CF4E6C  38 00 00 01 */	li r0, 1
/* 80CF4E70  98 05 00 00 */	stb r0, 0(r5)
lbl_80CF4E74:
/* 80CF4E74  7F E3 FB 78 */	mr r3, r31
/* 80CF4E78  88 1F 05 95 */	lbz r0, 0x595(r31)
/* 80CF4E7C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80CF4E80  39 86 00 3C */	addi r12, r6, 0x3c
/* 80CF4E84  7D 8C 02 14 */	add r12, r12, r0
/* 80CF4E88  4B 66 D1 FC */	b __ptmf_scall
/* 80CF4E8C  60 00 00 00 */	nop 
/* 80CF4E90  38 7F 05 68 */	addi r3, r31, 0x568
/* 80CF4E94  4B 35 39 D8 */	b eventUpdate__17dEvLib_callback_cFv
/* 80CF4E98  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80CF4E9C  4B 31 85 8C */	b play__14mDoExt_baseAnmFv
/* 80CF4EA0  38 60 00 01 */	li r3, 1
/* 80CF4EA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF4EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF4EAC  7C 08 03 A6 */	mtlr r0
/* 80CF4EB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF4EB4  4E 80 00 20 */	blr 
