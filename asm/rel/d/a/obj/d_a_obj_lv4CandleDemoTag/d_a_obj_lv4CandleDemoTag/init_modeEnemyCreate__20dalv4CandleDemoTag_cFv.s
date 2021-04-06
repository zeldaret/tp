lbl_80C5CDC0:
/* 80C5CDC0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C5CDC4  7C 08 02 A6 */	mflr r0
/* 80C5CDC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C5CDCC  39 61 00 30 */	addi r11, r1, 0x30
/* 80C5CDD0  4B 70 54 09 */	bl _savegpr_28
/* 80C5CDD4  7C 7C 1B 78 */	mr r28, r3
/* 80C5CDD8  88 63 05 85 */	lbz r3, 0x585(r3)
/* 80C5CDDC  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80C5CDE0  7C 04 07 74 */	extsb r4, r0
/* 80C5CDE4  4B 3F 4A 09 */	bl dPath_GetRoomPath__Fii
/* 80C5CDE8  7C 7E 1B 78 */	mr r30, r3
/* 80C5CDEC  3B A0 00 00 */	li r29, 0
/* 80C5CDF0  3B E0 00 00 */	li r31, 0
/* 80C5CDF4  48 00 00 50 */	b lbl_80C5CE44
lbl_80C5CDF8:
/* 80C5CDF8  80 1E 00 08 */	lwz r0, 8(r30)
/* 80C5CDFC  7C 60 FA 14 */	add r3, r0, r31
/* 80C5CE00  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C5CE04  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C5CE08  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C5CE0C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C5CE10  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C5CE14  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C5CE18  38 60 01 B7 */	li r3, 0x1b7
/* 80C5CE1C  38 80 FE FF */	li r4, -257
/* 80C5CE20  38 A1 00 08 */	addi r5, r1, 8
/* 80C5CE24  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80C5CE28  7C 06 07 74 */	extsb r6, r0
/* 80C5CE2C  38 E0 00 00 */	li r7, 0
/* 80C5CE30  39 00 00 00 */	li r8, 0
/* 80C5CE34  39 20 FF FF */	li r9, -1
/* 80C5CE38  4B 3B CF 61 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80C5CE3C  3B BD 00 01 */	addi r29, r29, 1
/* 80C5CE40  3B FF 00 10 */	addi r31, r31, 0x10
lbl_80C5CE44:
/* 80C5CE44  A0 1E 00 00 */	lhz r0, 0(r30)
/* 80C5CE48  7C 1D 00 00 */	cmpw r29, r0
/* 80C5CE4C  41 80 FF AC */	blt lbl_80C5CDF8
/* 80C5CE50  38 00 00 01 */	li r0, 1
/* 80C5CE54  98 1C 05 84 */	stb r0, 0x584(r28)
/* 80C5CE58  39 61 00 30 */	addi r11, r1, 0x30
/* 80C5CE5C  4B 70 53 C9 */	bl _restgpr_28
/* 80C5CE60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C5CE64  7C 08 03 A6 */	mtlr r0
/* 80C5CE68  38 21 00 30 */	addi r1, r1, 0x30
/* 80C5CE6C  4E 80 00 20 */	blr 
