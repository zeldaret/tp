lbl_80AAFCF8:
/* 80AAFCF8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AAFCFC  7C 08 02 A6 */	mflr r0
/* 80AAFD00  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AAFD04  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80AAFD08  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80AAFD0C  7C 7F 1B 78 */	mr r31, r3
/* 80AAFD10  3C 60 80 AB */	lis r3, lit_4414@ha
/* 80AAFD14  C0 03 20 C8 */	lfs f0, lit_4414@l(r3)
/* 80AAFD18  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80AAFD1C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80AAFD20  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AAFD24  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80AAFD28  80 63 00 04 */	lwz r3, 4(r3)
/* 80AAFD2C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AAFD30  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AAFD34  38 63 00 60 */	addi r3, r3, 0x60
/* 80AAFD38  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80AAFD3C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80AAFD40  4B 89 67 70 */	b PSMTXCopy
/* 80AAFD44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AAFD48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AAFD4C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80AAFD50  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80AAFD54  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80AAFD58  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80AAFD5C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80AAFD60  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80AAFD64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AAFD68  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80AAFD6C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80AAFD70  38 00 00 FF */	li r0, 0xff
/* 80AAFD74  90 01 00 08 */	stw r0, 8(r1)
/* 80AAFD78  38 80 00 00 */	li r4, 0
/* 80AAFD7C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80AAFD80  38 00 FF FF */	li r0, -1
/* 80AAFD84  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AAFD88  90 81 00 14 */	stw r4, 0x14(r1)
/* 80AAFD8C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80AAFD90  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80AAFD94  80 9F 0F C8 */	lwz r4, 0xfc8(r31)
/* 80AAFD98  38 A0 00 00 */	li r5, 0
/* 80AAFD9C  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008BFC@ha */
/* 80AAFDA0  38 C6 8B FC */	addi r6, r6, 0x8BFC /* 0x00008BFC@l */
/* 80AAFDA4  38 E1 00 2C */	addi r7, r1, 0x2c
/* 80AAFDA8  39 00 00 00 */	li r8, 0
/* 80AAFDAC  39 3F 0D 78 */	addi r9, r31, 0xd78
/* 80AAFDB0  39 41 00 20 */	addi r10, r1, 0x20
/* 80AAFDB4  3D 60 80 AB */	lis r11, lit_4414@ha
/* 80AAFDB8  C0 2B 20 C8 */	lfs f1, lit_4414@l(r11)
/* 80AAFDBC  4B 59 D7 10 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80AAFDC0  90 7F 0F C8 */	stw r3, 0xfc8(r31)
/* 80AAFDC4  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80AAFDC8  38 63 02 10 */	addi r3, r3, 0x210
/* 80AAFDCC  80 9F 0F C8 */	lwz r4, 0xfc8(r31)
/* 80AAFDD0  4B 59 BB 48 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80AAFDD4  7C 66 1B 79 */	or. r6, r3, r3
/* 80AAFDD8  41 82 00 18 */	beq lbl_80AAFDF0
/* 80AAFDDC  A8 7F 0D 78 */	lha r3, 0xd78(r31)
/* 80AAFDE0  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80AAFDE4  A8 BF 0D 7C */	lha r5, 0xd7c(r31)
/* 80AAFDE8  38 C6 00 68 */	addi r6, r6, 0x68
/* 80AAFDEC  4B 7D 09 48 */	b JPAGetXYZRotateMtx__FsssPA4_f
lbl_80AAFDF0:
/* 80AAFDF0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80AAFDF4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80AAFDF8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AAFDFC  7C 08 03 A6 */	mtlr r0
/* 80AAFE00  38 21 00 40 */	addi r1, r1, 0x40
/* 80AAFE04  4E 80 00 20 */	blr 
