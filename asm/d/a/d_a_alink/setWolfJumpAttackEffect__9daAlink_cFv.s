lbl_80123D88:
/* 80123D88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80123D8C  7C 08 02 A6 */	mflr r0
/* 80123D90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80123D94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80123D98  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80123D9C  7C 7E 1B 78 */	mr r30, r3
/* 80123DA0  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 80123DA4  28 00 01 1C */	cmplwi r0, 0x11c
/* 80123DA8  40 82 00 68 */	bne lbl_80123E10
/* 80123DAC  A8 1E 30 10 */	lha r0, 0x3010(r30)
/* 80123DB0  2C 00 00 00 */	cmpwi r0, 0
/* 80123DB4  41 82 00 5C */	beq lbl_80123E10
/* 80123DB8  80 9E 06 50 */	lwz r4, 0x650(r30)
/* 80123DBC  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80123DC0  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80123DC4  C0 04 00 9C */	lfs f0, 0x9c(r4)
/* 80123DC8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80123DCC  C0 04 00 AC */	lfs f0, 0xac(r4)
/* 80123DD0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80123DD4  C0 04 00 BC */	lfs f0, 0xbc(r4)
/* 80123DD8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80123DDC  38 9E 32 88 */	addi r4, r30, 0x3288
/* 80123DE0  38 A0 0A 9F */	li r5, 0xa9f
/* 80123DE4  38 C1 00 08 */	addi r6, r1, 8
/* 80123DE8  38 FE 04 E4 */	addi r7, r30, 0x4e4
/* 80123DEC  4B FF C7 95 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 80123DF0  7F C3 F3 78 */	mr r3, r30
/* 80123DF4  38 9E 32 8C */	addi r4, r30, 0x328c
/* 80123DF8  38 A0 0A A0 */	li r5, 0xaa0
/* 80123DFC  38 C1 00 08 */	addi r6, r1, 8
/* 80123E00  38 FE 04 E4 */	addi r7, r30, 0x4e4
/* 80123E04  4B FF C7 7D */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 80123E08  3B E0 00 FF */	li r31, 0xff
/* 80123E0C  48 00 00 5C */	b lbl_80123E68
lbl_80123E10:
/* 80123E10  7F C3 F3 78 */	mr r3, r30
/* 80123E14  80 9E 32 88 */	lwz r4, 0x3288(r30)
/* 80123E18  4B FF C9 61 */	bl stopDrawParticle__9daAlink_cFUl
/* 80123E1C  7F C3 F3 78 */	mr r3, r30
/* 80123E20  80 9E 32 8C */	lwz r4, 0x328c(r30)
/* 80123E24  4B FF C9 55 */	bl stopDrawParticle__9daAlink_cFUl
/* 80123E28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80123E2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80123E30  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80123E34  38 63 02 10 */	addi r3, r3, 0x210
/* 80123E38  80 9E 32 90 */	lwz r4, 0x3290(r30)
/* 80123E3C  4B F2 7A DD */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80123E40  28 03 00 00 */	cmplwi r3, 0
/* 80123E44  41 82 00 20 */	beq lbl_80123E64
/* 80123E48  88 63 00 BB */	lbz r3, 0xbb(r3)
/* 80123E4C  28 03 00 33 */	cmplwi r3, 0x33
/* 80123E50  41 80 00 0C */	blt lbl_80123E5C
/* 80123E54  3B E3 FF CD */	addi r31, r3, -51
/* 80123E58  48 00 00 10 */	b lbl_80123E68
lbl_80123E5C:
/* 80123E5C  3B E0 00 00 */	li r31, 0
/* 80123E60  48 00 00 08 */	b lbl_80123E68
lbl_80123E64:
/* 80123E64  3B E0 00 00 */	li r31, 0
lbl_80123E68:
/* 80123E68  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80123E6C  41 82 00 4C */	beq lbl_80123EB8
/* 80123E70  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 80123E74  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80123E78  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80123E7C  C0 03 06 FC */	lfs f0, 0x6fc(r3)
/* 80123E80  D0 01 00 08 */	stfs f0, 8(r1)
/* 80123E84  C0 03 07 0C */	lfs f0, 0x70c(r3)
/* 80123E88  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80123E8C  C0 03 07 1C */	lfs f0, 0x71c(r3)
/* 80123E90  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80123E94  7F C3 F3 78 */	mr r3, r30
/* 80123E98  38 9E 32 90 */	addi r4, r30, 0x3290
/* 80123E9C  38 A0 0B 6F */	li r5, 0xb6f
/* 80123EA0  38 C1 00 08 */	addi r6, r1, 8
/* 80123EA4  38 FE 04 E4 */	addi r7, r30, 0x4e4
/* 80123EA8  4B FF C6 D9 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 80123EAC  28 03 00 00 */	cmplwi r3, 0
/* 80123EB0  41 82 00 08 */	beq lbl_80123EB8
/* 80123EB4  9B E3 00 BB */	stb r31, 0xbb(r3)
lbl_80123EB8:
/* 80123EB8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80123EBC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80123EC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80123EC4  7C 08 03 A6 */	mtlr r0
/* 80123EC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80123ECC  4E 80 00 20 */	blr 
