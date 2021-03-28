lbl_8012F9C0:
/* 8012F9C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8012F9C4  7C 08 02 A6 */	mflr r0
/* 8012F9C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8012F9CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8012F9D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8012F9D4  7C 7E 1B 78 */	mr r30, r3
/* 8012F9D8  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8012F9DC  38 00 00 05 */	li r0, 5
/* 8012F9E0  98 03 2F 99 */	stb r0, 0x2f99(r3)
/* 8012F9E4  C0 A2 93 14 */	lfs f5, lit_7307(r2)
/* 8012F9E8  C0 82 92 98 */	lfs f4, lit_5943(r2)
/* 8012F9EC  C0 63 34 78 */	lfs f3, 0x3478(r3)
/* 8012F9F0  C0 43 1F E0 */	lfs f2, 0x1fe0(r3)
/* 8012F9F4  A8 03 1F D6 */	lha r0, 0x1fd6(r3)
/* 8012F9F8  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 8012F9FC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8012FA00  90 01 00 0C */	stw r0, 0xc(r1)
/* 8012FA04  3C 00 43 30 */	lis r0, 0x4330
/* 8012FA08  90 01 00 08 */	stw r0, 8(r1)
/* 8012FA0C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8012FA10  EC 00 08 28 */	fsubs f0, f0, f1
/* 8012FA14  EC 02 00 28 */	fsubs f0, f2, f0
/* 8012FA18  EC 03 00 32 */	fmuls f0, f3, f0
/* 8012FA1C  EC 04 00 28 */	fsubs f0, f4, f0
/* 8012FA20  EC 25 00 32 */	fmuls f1, f5, f0
/* 8012FA24  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha
/* 8012FA28  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)
/* 8012FA2C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8012FA30  D0 1E 35 88 */	stfs f0, 0x3588(r30)
/* 8012FA34  C0 03 00 08 */	lfs f0, 8(r3)
/* 8012FA38  EC 00 00 72 */	fmuls f0, f0, f1
/* 8012FA3C  D0 1E 35 90 */	stfs f0, 0x3590(r30)
/* 8012FA40  7F E3 FB 78 */	mr r3, r31
/* 8012FA44  48 02 EA 89 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8012FA48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012FA4C  41 82 00 1C */	beq lbl_8012FA68
/* 8012FA50  80 1E 19 9C */	lwz r0, 0x199c(r30)
/* 8012FA54  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8012FA58  41 82 00 10 */	beq lbl_8012FA68
/* 8012FA5C  7F C3 F3 78 */	mr r3, r30
/* 8012FA60  48 00 00 B9 */	bl procWolfSlipTurnLandInit__9daAlink_cFv
/* 8012FA64  48 00 00 9C */	b lbl_8012FB00
lbl_8012FA68:
/* 8012FA68  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 8012FA6C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8012FA70  40 82 00 28 */	bne lbl_8012FA98
/* 8012FA74  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8012FA78  C0 02 95 48 */	lfs f0, lit_23416(r2)
/* 8012FA7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012FA80  40 81 00 18 */	ble lbl_8012FA98
/* 8012FA84  C0 1E 34 7C */	lfs f0, 0x347c(r30)
/* 8012FA88  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 8012FA8C  7F C3 F3 78 */	mr r3, r30
/* 8012FA90  4B F8 4E 41 */	bl setJumpMode__9daAlink_cFv
/* 8012FA94  48 00 00 68 */	b lbl_8012FAFC
lbl_8012FA98:
/* 8012FA98  28 00 00 00 */	cmplwi r0, 0
/* 8012FA9C  41 82 00 60 */	beq lbl_8012FAFC
/* 8012FAA0  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8012FAA4  C0 3E 34 FC */	lfs f1, 0x34fc(r30)
/* 8012FAA8  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha
/* 8012FAAC  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l
/* 8012FAB0  C0 03 00 C0 */	lfs f0, 0xc0(r3)
/* 8012FAB4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8012FAB8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8012FABC  40 80 00 40 */	bge lbl_8012FAFC
/* 8012FAC0  7F C3 F3 78 */	mr r3, r30
/* 8012FAC4  38 80 00 00 */	li r4, 0
/* 8012FAC8  38 A0 80 00 */	li r5, -32768
/* 8012FACC  38 C0 00 00 */	li r6, 0
/* 8012FAD0  4B F7 E0 A9 */	bl setOldRootQuaternion__9daAlink_cFsss
/* 8012FAD4  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8012FAD8  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8012FADC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8012FAE0  B0 1E 2F E6 */	sth r0, 0x2fe6(r30)
/* 8012FAE4  7F C3 F3 78 */	mr r3, r30
/* 8012FAE8  38 80 00 02 */	li r4, 2
/* 8012FAEC  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlMove_c0@ha
/* 8012FAF0  38 A5 EE 28 */	addi r5, r5, m__20daAlinkHIO_wlMove_c0@l
/* 8012FAF4  C0 25 00 C4 */	lfs f1, 0xc4(r5)
/* 8012FAF8  4B FF F2 D9 */	bl procWolfFallInit__9daAlink_cFif
lbl_8012FAFC:
/* 8012FAFC  38 60 00 01 */	li r3, 1
lbl_8012FB00:
/* 8012FB00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8012FB04  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8012FB08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8012FB0C  7C 08 03 A6 */	mtlr r0
/* 8012FB10  38 21 00 20 */	addi r1, r1, 0x20
/* 8012FB14  4E 80 00 20 */	blr 
