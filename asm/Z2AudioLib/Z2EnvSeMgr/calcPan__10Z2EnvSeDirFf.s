lbl_802C5D9C:
/* 802C5D9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C5DA0  7C 08 02 A6 */	mflr r0
/* 802C5DA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C5DA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C5DAC  7C 7F 1B 78 */	mr r31, r3
/* 802C5DB0  80 63 00 04 */	lwz r3, 4(r3)
/* 802C5DB4  28 03 00 00 */	cmplwi r3, 0
/* 802C5DB8  41 82 00 C4 */	beq lbl_802C5E7C
/* 802C5DBC  C0 22 C3 48 */	lfs f1, lit_3503(r2)
/* 802C5DC0  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 802C5DC4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802C5DC8  40 82 00 44 */	bne lbl_802C5E0C
/* 802C5DCC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 802C5DD0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802C5DD4  40 82 00 38 */	bne lbl_802C5E0C
/* 802C5DD8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 802C5DDC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802C5DE0  40 82 00 2C */	bne lbl_802C5E0C
/* 802C5DE4  38 63 00 48 */	addi r3, r3, 0x48
/* 802C5DE8  C0 22 C3 60 */	lfs f1, lit_3574(r2)
/* 802C5DEC  38 80 00 00 */	li r4, 0
/* 802C5DF0  4B FD D0 CD */	bl movePan__18JAISoundParamsMoveFfUl
/* 802C5DF4  80 7F 00 04 */	lwz r3, 4(r31)
/* 802C5DF8  38 63 00 48 */	addi r3, r3, 0x48
/* 802C5DFC  C0 22 C3 60 */	lfs f1, lit_3574(r2)
/* 802C5E00  38 80 00 00 */	li r4, 0
/* 802C5E04  4B FD D1 11 */	bl moveDolby__18JAISoundParamsMoveFfUl
/* 802C5E08  48 00 00 74 */	b lbl_802C5E7C
lbl_802C5E0C:
/* 802C5E0C  80 6D 85 C4 */	lwz r3, data_80450B44(r13)
/* 802C5E10  38 9F 00 10 */	addi r4, r31, 0x10
/* 802C5E14  7C 85 23 78 */	mr r5, r4
/* 802C5E18  38 C0 00 00 */	li r6, 0
/* 802C5E1C  4B FF 7B 11 */	bl convertAbsToRel__10Z2AudienceFR3VecP3Veci
/* 802C5E20  38 7F 00 10 */	addi r3, r31, 0x10
/* 802C5E24  7C 64 1B 78 */	mr r4, r3
/* 802C5E28  48 07 3C 09 */	bl JMAFastVECNormalize__FPC3VecP3Vec
/* 802C5E2C  80 6D 85 C4 */	lwz r3, data_80450B44(r13)
/* 802C5E30  38 9F 00 10 */	addi r4, r31, 0x10
/* 802C5E34  38 A0 00 00 */	li r5, 0
/* 802C5E38  4B FF 7C 0D */	bl calcRelPosPan__10Z2AudienceFRC3Veci
/* 802C5E3C  D0 3F 00 08 */	stfs f1, 8(r31)
/* 802C5E40  80 6D 85 C4 */	lwz r3, data_80450B44(r13)
/* 802C5E44  38 9F 00 10 */	addi r4, r31, 0x10
/* 802C5E48  38 A0 00 00 */	li r5, 0
/* 802C5E4C  4B FF 7C F9 */	bl calcRelPosDolby__10Z2AudienceFRC3Veci
/* 802C5E50  D0 3F 00 0C */	stfs f1, 0xc(r31)
/* 802C5E54  80 7F 00 04 */	lwz r3, 4(r31)
/* 802C5E58  38 63 00 48 */	addi r3, r3, 0x48
/* 802C5E5C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 802C5E60  38 80 00 00 */	li r4, 0
/* 802C5E64  4B FD D0 59 */	bl movePan__18JAISoundParamsMoveFfUl
/* 802C5E68  80 7F 00 04 */	lwz r3, 4(r31)
/* 802C5E6C  38 63 00 48 */	addi r3, r3, 0x48
/* 802C5E70  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 802C5E74  38 80 00 00 */	li r4, 0
/* 802C5E78  4B FD D0 9D */	bl moveDolby__18JAISoundParamsMoveFfUl
lbl_802C5E7C:
/* 802C5E7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C5E80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C5E84  7C 08 03 A6 */	mtlr r0
/* 802C5E88  38 21 00 10 */	addi r1, r1, 0x10
/* 802C5E8C  4E 80 00 20 */	blr 
