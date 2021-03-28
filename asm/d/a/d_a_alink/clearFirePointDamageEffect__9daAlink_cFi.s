lbl_80124E28:
/* 80124E28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80124E2C  7C 08 02 A6 */	mflr r0
/* 80124E30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80124E34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80124E38  93 C1 00 08 */	stw r30, 8(r1)
/* 80124E3C  7C 7E 1B 78 */	mr r30, r3
/* 80124E40  1C 84 00 30 */	mulli r4, r4, 0x30
/* 80124E44  3B E4 32 D8 */	addi r31, r4, 0x32d8
/* 80124E48  7F FE FA 14 */	add r31, r30, r31
/* 80124E4C  88 1F 00 00 */	lbz r0, 0(r31)
/* 80124E50  28 00 00 00 */	cmplwi r0, 0
/* 80124E54  41 82 00 18 */	beq lbl_80124E6C
/* 80124E58  80 9F 00 04 */	lwz r4, 4(r31)
/* 80124E5C  4B FF B9 1D */	bl stopDrawParticle__9daAlink_cFUl
/* 80124E60  7F C3 F3 78 */	mr r3, r30
/* 80124E64  80 9F 00 08 */	lwz r4, 8(r31)
/* 80124E68  4B FF B9 11 */	bl stopDrawParticle__9daAlink_cFUl
lbl_80124E6C:
/* 80124E6C  38 00 00 00 */	li r0, 0
/* 80124E70  98 1F 00 00 */	stb r0, 0(r31)
/* 80124E74  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 80124E78  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 80124E7C  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 80124E80  C0 03 00 04 */	lfs f0, 4(r3)
/* 80124E84  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 80124E88  C0 03 00 08 */	lfs f0, 8(r3)
/* 80124E8C  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80124E90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80124E94  83 C1 00 08 */	lwz r30, 8(r1)
/* 80124E98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80124E9C  7C 08 03 A6 */	mtlr r0
/* 80124EA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80124EA4  4E 80 00 20 */	blr 
