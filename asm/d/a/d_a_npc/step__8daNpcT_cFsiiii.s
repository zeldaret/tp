lbl_8014B648:
/* 8014B648  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8014B64C  7C 08 02 A6 */	mflr r0
/* 8014B650  90 01 00 34 */	stw r0, 0x34(r1)
/* 8014B654  39 61 00 30 */	addi r11, r1, 0x30
/* 8014B658  48 21 6B 81 */	bl _savegpr_28
/* 8014B65C  7C 7D 1B 78 */	mr r29, r3
/* 8014B660  7C BE 2B 78 */	mr r30, r5
/* 8014B664  7C DF 33 78 */	mr r31, r6
/* 8014B668  A8 03 0D D8 */	lha r0, 0xdd8(r3)
/* 8014B66C  2C 00 00 02 */	cmpwi r0, 2
/* 8014B670  41 80 00 1C */	blt lbl_8014B68C
/* 8014B674  7C 83 07 34 */	extsh r3, r4
/* 8014B678  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 8014B67C  7C 03 00 00 */	cmpw r3, r0
/* 8014B680  41 82 00 0C */	beq lbl_8014B68C
/* 8014B684  38 00 00 00 */	li r0, 0
/* 8014B688  B0 1D 0D D8 */	sth r0, 0xdd8(r29)
lbl_8014B68C:
/* 8014B68C  A8 7D 0D D8 */	lha r3, 0xdd8(r29)
/* 8014B690  7C 60 07 35 */	extsh. r0, r3
/* 8014B694  40 82 00 E4 */	bne lbl_8014B778
/* 8014B698  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 8014B69C  7C 00 20 50 */	subf r0, r0, r4
/* 8014B6A0  7C 03 07 35 */	extsh. r3, r0
/* 8014B6A4  40 82 00 10 */	bne lbl_8014B6B4
/* 8014B6A8  38 00 00 02 */	li r0, 2
/* 8014B6AC  B0 1D 0D D8 */	sth r0, 0xdd8(r29)
/* 8014B6B0  48 00 01 24 */	b lbl_8014B7D4
lbl_8014B6B4:
/* 8014B6B4  B0 9D 0D D6 */	sth r4, 0xdd6(r29)
/* 8014B6B8  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 8014B6BC  B0 1D 0D D4 */	sth r0, 0xdd4(r29)
/* 8014B6C0  38 00 00 00 */	li r0, 0
/* 8014B6C4  B0 1D 0D DA */	sth r0, 0xdda(r29)
/* 8014B6C8  C0 42 9A 68 */	lfs f2, lit_7089(r2)
/* 8014B6CC  C8 22 99 E0 */	lfd f1, lit_4142(r2)
/* 8014B6D0  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8014B6D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8014B6D8  3C 00 43 30 */	lis r0, 0x4330
/* 8014B6DC  90 01 00 08 */	stw r0, 8(r1)
/* 8014B6E0  C8 01 00 08 */	lfd f0, 8(r1)
/* 8014B6E4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8014B6E8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8014B6EC  FC 00 02 10 */	fabs f0, f0
/* 8014B6F0  FC 00 00 18 */	frsp f0, f0
/* 8014B6F4  FC 00 00 1E */	fctiwz f0, f0
/* 8014B6F8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8014B6FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014B700  2C 00 00 40 */	cmpwi r0, 0x40
/* 8014B704  40 81 00 54 */	ble lbl_8014B758
/* 8014B708  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 8014B70C  2C 1E 00 00 */	cmpwi r30, 0
/* 8014B710  41 80 00 20 */	blt lbl_8014B730
/* 8014B714  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 8014B718  4B FF A1 81 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8014B71C  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 8014B720  7C 1E E2 14 */	add r0, r30, r28
/* 8014B724  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 8014B728  C0 02 99 E8 */	lfs f0, lit_4148(r2)
/* 8014B72C  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_8014B730:
/* 8014B730  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 8014B734  2C 1F 00 00 */	cmpwi r31, 0
/* 8014B738  41 80 00 20 */	blt lbl_8014B758
/* 8014B73C  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 8014B740  4B FF A1 59 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8014B744  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 8014B748  7C 1F E2 14 */	add r0, r31, r28
/* 8014B74C  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 8014B750  C0 02 99 E8 */	lfs f0, lit_4148(r2)
/* 8014B754  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_8014B758:
/* 8014B758  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 8014B75C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8014B760  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8014B764  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8014B768  A8 7D 0D D8 */	lha r3, 0xdd8(r29)
/* 8014B76C  38 03 00 01 */	addi r0, r3, 1
/* 8014B770  B0 1D 0D D8 */	sth r0, 0xdd8(r29)
/* 8014B774  48 00 00 60 */	b lbl_8014B7D4
lbl_8014B778:
/* 8014B778  2C 03 00 01 */	cmpwi r3, 1
/* 8014B77C  40 82 00 58 */	bne lbl_8014B7D4
/* 8014B780  7F A3 EB 78 */	mr r3, r29
/* 8014B784  A8 9D 0D D6 */	lha r4, 0xdd6(r29)
/* 8014B788  7C E5 3B 78 */	mr r5, r7
/* 8014B78C  7D 06 43 78 */	mr r6, r8
/* 8014B790  4B FF FD 15 */	bl turn__8daNpcT_cFsii
/* 8014B794  2C 03 00 00 */	cmpwi r3, 0
/* 8014B798  41 82 00 2C */	beq lbl_8014B7C4
/* 8014B79C  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 8014B7A0  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8014B7A4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8014B7A8  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8014B7AC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8014B7B0  B0 1D 0D 80 */	sth r0, 0xd80(r29)
/* 8014B7B4  A8 7D 0D D8 */	lha r3, 0xdd8(r29)
/* 8014B7B8  38 03 00 01 */	addi r0, r3, 1
/* 8014B7BC  B0 1D 0D D8 */	sth r0, 0xdd8(r29)
/* 8014B7C0  48 00 00 14 */	b lbl_8014B7D4
lbl_8014B7C4:
/* 8014B7C4  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 8014B7C8  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8014B7CC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8014B7D0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
lbl_8014B7D4:
/* 8014B7D4  A8 9D 0D D8 */	lha r4, 0xdd8(r29)
/* 8014B7D8  38 00 00 01 */	li r0, 1
/* 8014B7DC  7C 80 02 78 */	xor r0, r4, r0
/* 8014B7E0  7C 03 0E 70 */	srawi r3, r0, 1
/* 8014B7E4  7C 00 20 38 */	and r0, r0, r4
/* 8014B7E8  7C 00 18 50 */	subf r0, r0, r3
/* 8014B7EC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8014B7F0  39 61 00 30 */	addi r11, r1, 0x30
/* 8014B7F4  48 21 6A 31 */	bl _restgpr_28
/* 8014B7F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8014B7FC  7C 08 03 A6 */	mtlr r0
/* 8014B800  38 21 00 30 */	addi r1, r1, 0x30
/* 8014B804  4E 80 00 20 */	blr 
