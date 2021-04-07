lbl_80266DC4:
/* 80266DC4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80266DC8  7C 08 02 A6 */	mflr r0
/* 80266DCC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80266DD0  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80266DD4  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80266DD8  7C 7E 1B 78 */	mr r30, r3
/* 80266DDC  7C 9F 23 78 */	mr r31, r4
/* 80266DE0  7F E3 FB 78 */	mr r3, r31
/* 80266DE4  48 0E 03 55 */	bl PSVECSquareMag
/* 80266DE8  C0 02 B6 74 */	lfs f0, lit_2288(r2)
/* 80266DEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80266DF0  7C 00 00 26 */	mfcr r0
/* 80266DF4  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80266DF8  40 82 00 14 */	bne lbl_80266E0C
/* 80266DFC  7F E3 FB 78 */	mr r3, r31
/* 80266E00  38 81 00 44 */	addi r4, r1, 0x44
/* 80266E04  48 0E 02 F1 */	bl PSVECNormalize
/* 80266E08  48 00 00 BC */	b lbl_80266EC4
lbl_80266E0C:
/* 80266E0C  38 61 00 38 */	addi r3, r1, 0x38
/* 80266E10  7F E4 FB 78 */	mr r4, r31
/* 80266E14  C0 22 B6 78 */	lfs f1, lit_2325(r2)
/* 80266E18  4B FF FD 6D */	bl __ml__4cXyzCFf
/* 80266E1C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80266E20  38 81 00 38 */	addi r4, r1, 0x38
/* 80266E24  C0 22 B6 7C */	lfs f1, lit_2326(r2)
/* 80266E28  4B FF FD 5D */	bl __ml__4cXyzCFf
/* 80266E2C  38 61 00 20 */	addi r3, r1, 0x20
/* 80266E30  38 81 00 2C */	addi r4, r1, 0x2c
/* 80266E34  4B FF FE FD */	bl normZP__4cXyzCFv
/* 80266E38  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80266E3C  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80266E40  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80266E44  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80266E48  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80266E4C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80266E50  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80266E54  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80266E58  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80266E5C  38 61 00 14 */	addi r3, r1, 0x14
/* 80266E60  48 0E 02 D9 */	bl PSVECSquareMag
/* 80266E64  C0 02 B6 74 */	lfs f0, lit_2288(r2)
/* 80266E68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80266E6C  7C 00 00 26 */	mfcr r0
/* 80266E70  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80266E74  41 82 00 50 */	beq lbl_80266EC4
/* 80266E78  C0 02 B6 80 */	lfs f0, lit_2327(r2)
/* 80266E7C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80266E80  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80266E84  C0 02 B6 70 */	lfs f0, lit_2201(r2)
/* 80266E88  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80266E8C  3C 60 80 3A */	lis r3, lit_2299@ha /* 0x8039A868@ha */
/* 80266E90  38 83 A8 68 */	addi r4, r3, lit_2299@l /* 0x8039A868@l */
/* 80266E94  80 64 00 00 */	lwz r3, 0(r4)
/* 80266E98  80 04 00 04 */	lwz r0, 4(r4)
/* 80266E9C  90 61 00 08 */	stw r3, 8(r1)
/* 80266EA0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80266EA4  80 04 00 08 */	lwz r0, 8(r4)
/* 80266EA8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80266EAC  C0 01 00 08 */	lfs f0, 8(r1)
/* 80266EB0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80266EB4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80266EB8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80266EBC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80266EC0  D0 01 00 4C */	stfs f0, 0x4c(r1)
lbl_80266EC4:
/* 80266EC4  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80266EC8  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80266ECC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80266ED0  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80266ED4  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80266ED8  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80266EDC  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80266EE0  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80266EE4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80266EE8  7C 08 03 A6 */	mtlr r0
/* 80266EEC  38 21 00 60 */	addi r1, r1, 0x60
/* 80266EF0  4E 80 00 20 */	blr 
