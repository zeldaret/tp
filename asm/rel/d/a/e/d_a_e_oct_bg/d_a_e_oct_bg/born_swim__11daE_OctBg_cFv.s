lbl_80736E30:
/* 80736E30  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80736E34  7C 08 02 A6 */	mflr r0
/* 80736E38  90 01 00 44 */	stw r0, 0x44(r1)
/* 80736E3C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80736E40  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80736E44  7C 7F 1B 78 */	mr r31, r3
/* 80736E48  3C 60 80 74 */	lis r3, lit_3768@ha /* 0x80739D60@ha */
/* 80736E4C  3B C3 9D 60 */	addi r30, r3, lit_3768@l /* 0x80739D60@l */
/* 80736E50  80 1F 0B 70 */	lwz r0, 0xb70(r31)
/* 80736E54  2C 00 00 00 */	cmpwi r0, 0
/* 80736E58  40 82 00 98 */	bne lbl_80736EF0
/* 80736E5C  38 00 00 00 */	li r0, 0
/* 80736E60  90 1F 08 E8 */	stw r0, 0x8e8(r31)
/* 80736E64  B0 1F 0B 8C */	sth r0, 0xb8c(r31)
/* 80736E68  38 00 0C 00 */	li r0, 0xc00
/* 80736E6C  B0 1F 0B 82 */	sth r0, 0xb82(r31)
/* 80736E70  38 00 24 00 */	li r0, 0x2400
/* 80736E74  B0 1F 0B 80 */	sth r0, 0xb80(r31)
/* 80736E78  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80736E7C  4B B3 0B 11 */	bl cM_rndFX__Ff
/* 80736E80  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80736E84  EC 00 08 2A */	fadds f0, f0, f1
/* 80736E88  FC 00 00 1E */	fctiwz f0, f0
/* 80736E8C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80736E90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80736E94  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80736E98  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80736E9C  4B B3 0A F1 */	bl cM_rndFX__Ff
/* 80736EA0  FC 00 08 1E */	fctiwz f0, f1
/* 80736EA4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80736EA8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80736EAC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80736EB0  38 00 00 00 */	li r0, 0
/* 80736EB4  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80736EB8  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80736EBC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80736EC0  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 80736EC4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80736EC8  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80736ECC  4B B3 0A 89 */	bl cM_rndF__Ff
/* 80736ED0  FC 00 08 1E */	fctiwz f0, f1
/* 80736ED4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80736ED8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80736EDC  98 1F 0B AE */	stb r0, 0xbae(r31)
/* 80736EE0  80 7F 0B 70 */	lwz r3, 0xb70(r31)
/* 80736EE4  38 03 00 01 */	addi r0, r3, 1
/* 80736EE8  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80736EEC  48 00 01 24 */	b lbl_80737010
lbl_80736EF0:
/* 80736EF0  2C 00 FF FF */	cmpwi r0, -1
/* 80736EF4  40 82 00 1C */	bne lbl_80736F10
/* 80736EF8  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80736EFC  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80736F00  90 1F 08 E8 */	stw r0, 0x8e8(r31)
/* 80736F04  38 00 00 04 */	li r0, 4
/* 80736F08  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80736F0C  48 00 01 04 */	b lbl_80737010
lbl_80736F10:
/* 80736F10  88 1F 0B AE */	lbz r0, 0xbae(r31)
/* 80736F14  28 00 00 00 */	cmplwi r0, 0
/* 80736F18  40 82 00 F8 */	bne lbl_80737010
/* 80736F1C  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 80736F20  38 80 00 00 */	li r4, 0
/* 80736F24  38 A0 00 10 */	li r5, 0x10
/* 80736F28  38 C0 0C 00 */	li r6, 0xc00
/* 80736F2C  38 E0 02 00 */	li r7, 0x200
/* 80736F30  4B B3 96 11 */	bl cLib_addCalcAngleS__FPsssss
/* 80736F34  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80736F38  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80736F3C  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 80736F40  4B B3 98 01 */	bl cLib_chaseF__FPfff
/* 80736F44  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 80736F48  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80736F4C  C0 5E 00 74 */	lfs f2, 0x74(r30)
/* 80736F50  4B B3 97 F1 */	bl cLib_chaseF__FPfff
/* 80736F54  38 7F 0B 80 */	addi r3, r31, 0xb80
/* 80736F58  38 80 04 00 */	li r4, 0x400
/* 80736F5C  38 A0 00 20 */	li r5, 0x20
/* 80736F60  38 C0 04 00 */	li r6, 0x400
/* 80736F64  38 E0 00 80 */	li r7, 0x80
/* 80736F68  4B B3 95 D9 */	bl cLib_addCalcAngleS__FPsssss
/* 80736F6C  7C 60 07 34 */	extsh r0, r3
/* 80736F70  2C 00 00 80 */	cmpwi r0, 0x80
/* 80736F74  40 80 00 8C */	bge lbl_80737000
/* 80736F78  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80736F7C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80736F80  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80736F84  40 82 00 7C */	bne lbl_80737000
/* 80736F88  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 80736F8C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80736F90  40 82 00 70 */	bne lbl_80737000
/* 80736F94  7F E3 FB 78 */	mr r3, r31
/* 80736F98  4B FF FE 15 */	bl checkChase__11daE_OctBg_cFv
/* 80736F9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80736FA0  41 82 00 34 */	beq lbl_80736FD4
/* 80736FA4  3C 60 80 74 */	lis r3, lit_4133@ha /* 0x80739F0C@ha */
/* 80736FA8  38 83 9F 0C */	addi r4, r3, lit_4133@l /* 0x80739F0C@l */
/* 80736FAC  80 64 00 00 */	lwz r3, 0(r4)
/* 80736FB0  80 04 00 04 */	lwz r0, 4(r4)
/* 80736FB4  90 61 00 14 */	stw r3, 0x14(r1)
/* 80736FB8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80736FBC  80 04 00 08 */	lwz r0, 8(r4)
/* 80736FC0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80736FC4  7F E3 FB 78 */	mr r3, r31
/* 80736FC8  38 81 00 14 */	addi r4, r1, 0x14
/* 80736FCC  4B FF F2 A1 */	bl setAction__11daE_OctBg_cFM11daE_OctBg_cFPCvPv_v
/* 80736FD0  48 00 00 30 */	b lbl_80737000
lbl_80736FD4:
/* 80736FD4  3C 60 80 74 */	lis r3, lit_4136@ha /* 0x80739F18@ha */
/* 80736FD8  38 83 9F 18 */	addi r4, r3, lit_4136@l /* 0x80739F18@l */
/* 80736FDC  80 64 00 00 */	lwz r3, 0(r4)
/* 80736FE0  80 04 00 04 */	lwz r0, 4(r4)
/* 80736FE4  90 61 00 08 */	stw r3, 8(r1)
/* 80736FE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80736FEC  80 04 00 08 */	lwz r0, 8(r4)
/* 80736FF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80736FF4  7F E3 FB 78 */	mr r3, r31
/* 80736FF8  38 81 00 08 */	addi r4, r1, 8
/* 80736FFC  4B FF F2 71 */	bl setAction__11daE_OctBg_cFM11daE_OctBg_cFPCvPv_v
lbl_80737000:
/* 80737000  A8 7F 0B 7C */	lha r3, 0xb7c(r31)
/* 80737004  A8 1F 0B 80 */	lha r0, 0xb80(r31)
/* 80737008  7C 03 02 14 */	add r0, r3, r0
/* 8073700C  B0 1F 0B 7C */	sth r0, 0xb7c(r31)
lbl_80737010:
/* 80737010  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80737014  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80737018  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8073701C  7C 08 03 A6 */	mtlr r0
/* 80737020  38 21 00 40 */	addi r1, r1, 0x40
/* 80737024  4E 80 00 20 */	blr 
