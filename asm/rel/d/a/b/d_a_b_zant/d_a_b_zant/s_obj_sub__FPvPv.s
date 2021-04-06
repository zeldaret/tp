lbl_8063F970:
/* 8063F970  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063F974  7C 08 02 A6 */	mflr r0
/* 8063F978  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063F97C  39 61 00 20 */	addi r11, r1, 0x20
/* 8063F980  4B D2 28 5D */	bl _savegpr_29
/* 8063F984  7C 7D 1B 78 */	mr r29, r3
/* 8063F988  7C 9E 23 78 */	mr r30, r4
/* 8063F98C  3C 80 80 65 */	lis r4, lit_3757@ha /* 0x8064EB1C@ha */
/* 8063F990  3B E4 EB 1C */	addi r31, r4, lit_3757@l /* 0x8064EB1C@l */
/* 8063F994  4B 9D 93 4D */	bl fopAc_IsActor__FPv
/* 8063F998  2C 03 00 00 */	cmpwi r3, 0
/* 8063F99C  41 82 00 FC */	beq lbl_8063FA98
/* 8063F9A0  28 1D 00 00 */	cmplwi r29, 0
/* 8063F9A4  41 82 00 0C */	beq lbl_8063F9B0
/* 8063F9A8  80 7D 00 04 */	lwz r3, 4(r29)
/* 8063F9AC  48 00 00 08 */	b lbl_8063F9B4
lbl_8063F9B0:
/* 8063F9B0  38 60 FF FF */	li r3, -1
lbl_8063F9B4:
/* 8063F9B4  4B 9E 27 85 */	bl fpcM_IsCreating__FUi
/* 8063F9B8  2C 03 00 00 */	cmpwi r3, 0
/* 8063F9BC  40 82 00 DC */	bne lbl_8063FA98
/* 8063F9C0  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 8063F9C4  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8063F9C8  40 82 00 D0 */	bne lbl_8063FA98
/* 8063F9CC  7F A3 EB 78 */	mr r3, r29
/* 8063F9D0  7F C4 F3 78 */	mr r4, r30
/* 8063F9D4  4B 9D AF 91 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8063F9D8  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8063F9DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063F9E0  40 80 00 38 */	bge lbl_8063FA18
/* 8063F9E4  C0 5D 04 FC */	lfs f2, 0x4fc(r29)
/* 8063F9E8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8063F9EC  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 8063F9F0  41 82 00 28 */	beq lbl_8063FA18
/* 8063F9F4  A8 1D 00 08 */	lha r0, 8(r29)
/* 8063F9F8  2C 00 02 FC */	cmpwi r0, 0x2fc
/* 8063F9FC  40 82 00 0C */	bne lbl_8063FA08
/* 8063FA00  7F A3 EB 78 */	mr r3, r29
/* 8063FA04  48 00 00 98 */	b lbl_8063FA9C
lbl_8063FA08:
/* 8063FA08  2C 00 02 21 */	cmpwi r0, 0x221
/* 8063FA0C  40 82 00 0C */	bne lbl_8063FA18
/* 8063FA10  7F A3 EB 78 */	mr r3, r29
/* 8063FA14  48 00 00 88 */	b lbl_8063FA9C
lbl_8063FA18:
/* 8063FA18  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8063FA1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063FA20  40 80 00 24 */	bge lbl_8063FA44
/* 8063FA24  A8 1D 00 08 */	lha r0, 8(r29)
/* 8063FA28  2C 00 02 21 */	cmpwi r0, 0x221
/* 8063FA2C  40 82 00 18 */	bne lbl_8063FA44
/* 8063FA30  A8 1D 0B 58 */	lha r0, 0xb58(r29)
/* 8063FA34  2C 00 00 0A */	cmpwi r0, 0xa
/* 8063FA38  40 80 00 0C */	bge lbl_8063FA44
/* 8063FA3C  7F A3 EB 78 */	mr r3, r29
/* 8063FA40  48 00 00 5C */	b lbl_8063FA9C
lbl_8063FA44:
/* 8063FA44  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8063FA48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063FA4C  40 80 00 4C */	bge lbl_8063FA98
/* 8063FA50  A8 1D 00 08 */	lha r0, 8(r29)
/* 8063FA54  2C 00 03 08 */	cmpwi r0, 0x308
/* 8063FA58  40 82 00 40 */	bne lbl_8063FA98
/* 8063FA5C  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 8063FA60  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8063FA64  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8063FA68  41 82 00 30 */	beq lbl_8063FA98
/* 8063FA6C  AB FD 04 DE */	lha r31, 0x4de(r29)
/* 8063FA70  7F A3 EB 78 */	mr r3, r29
/* 8063FA74  7F C4 F3 78 */	mr r4, r30
/* 8063FA78  4B 9D AC 99 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8063FA7C  7C 03 F8 50 */	subf r0, r3, r31
/* 8063FA80  7C 03 07 34 */	extsh r3, r0
/* 8063FA84  4B D2 56 4D */	bl abs
/* 8063FA88  2C 03 20 00 */	cmpwi r3, 0x2000
/* 8063FA8C  40 80 00 0C */	bge lbl_8063FA98
/* 8063FA90  7F A3 EB 78 */	mr r3, r29
/* 8063FA94  48 00 00 08 */	b lbl_8063FA9C
lbl_8063FA98:
/* 8063FA98  38 60 00 00 */	li r3, 0
lbl_8063FA9C:
/* 8063FA9C  39 61 00 20 */	addi r11, r1, 0x20
/* 8063FAA0  4B D2 27 89 */	bl _restgpr_29
/* 8063FAA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063FAA8  7C 08 03 A6 */	mtlr r0
/* 8063FAAC  38 21 00 20 */	addi r1, r1, 0x20
/* 8063FAB0  4E 80 00 20 */	blr 
