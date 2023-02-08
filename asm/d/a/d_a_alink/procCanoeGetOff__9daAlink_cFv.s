lbl_800F5048:
/* 800F5048  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F504C  7C 08 02 A6 */	mflr r0
/* 800F5050  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F5054  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F5058  7C 7F 1B 78 */	mr r31, r3
/* 800F505C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800F5060  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800F5064  7D 89 03 A6 */	mtctr r12
/* 800F5068  4E 80 04 21 */	bctrl 
/* 800F506C  28 03 00 00 */	cmplwi r3, 0
/* 800F5070  41 82 00 34 */	beq lbl_800F50A4
/* 800F5074  80 7F 28 18 */	lwz r3, 0x2818(r31)
/* 800F5078  28 03 00 00 */	cmplwi r3, 0
/* 800F507C  40 82 00 14 */	bne lbl_800F5090
/* 800F5080  7F E3 FB 78 */	mr r3, r31
/* 800F5084  38 80 00 00 */	li r4, 0
/* 800F5088  4B FC 50 49 */	bl checkNextAction__9daAlink_cFi
/* 800F508C  48 00 01 44 */	b lbl_800F51D0
lbl_800F5090:
/* 800F5090  80 63 05 70 */	lwz r3, 0x570(r3)
/* 800F5094  38 63 00 24 */	addi r3, r3, 0x24
/* 800F5098  38 9F 37 C8 */	addi r4, r31, 0x37c8
/* 800F509C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 800F50A0  48 25 1C CD */	bl PSMTXMultVec
lbl_800F50A4:
/* 800F50A4  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800F50A8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800F50AC  41 82 00 5C */	beq lbl_800F5108
/* 800F50B0  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 800F50B4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800F50B8  41 82 00 14 */	beq lbl_800F50CC
/* 800F50BC  7F E3 FB 78 */	mr r3, r31
/* 800F50C0  38 80 00 00 */	li r4, 0
/* 800F50C4  4B FC 0C 09 */	bl checkLandAction__9daAlink_cFi
/* 800F50C8  48 00 01 04 */	b lbl_800F51CC
lbl_800F50CC:
/* 800F50CC  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 800F50D0  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 800F50D4  FC 00 00 50 */	fneg f0, f0
/* 800F50D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F50DC  40 80 00 20 */	bge lbl_800F50FC
/* 800F50E0  7F E3 FB 78 */	mr r3, r31
/* 800F50E4  38 80 00 02 */	li r4, 2
/* 800F50E8  3C A0 80 39 */	lis r5, m__23daAlinkHIO_smallJump_c0@ha /* 0x8038E11C@ha */
/* 800F50EC  38 A5 E1 1C */	addi r5, r5, m__23daAlinkHIO_smallJump_c0@l /* 0x8038E11C@l */
/* 800F50F0  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 800F50F4  4B FD 19 55 */	bl procFallInit__9daAlink_cFif
/* 800F50F8  48 00 00 D4 */	b lbl_800F51CC
lbl_800F50FC:
/* 800F50FC  38 00 00 07 */	li r0, 7
/* 800F5100  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 800F5104  48 00 00 C8 */	b lbl_800F51CC
lbl_800F5108:
/* 800F5108  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 800F510C  2C 00 00 00 */	cmpwi r0, 0
/* 800F5110  40 82 00 60 */	bne lbl_800F5170
/* 800F5114  80 7F 20 60 */	lwz r3, 0x2060(r31)
/* 800F5118  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 800F511C  C0 02 93 88 */	lfs f0, lit_8782(r2)
/* 800F5120  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F5124  40 80 00 A8 */	bge lbl_800F51CC
/* 800F5128  38 00 00 01 */	li r0, 1
/* 800F512C  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800F5130  7F E3 FB 78 */	mr r3, r31
/* 800F5134  38 80 00 D7 */	li r4, 0xd7
/* 800F5138  3C A0 80 39 */	lis r5, m__23daAlinkHIO_smallJump_c0@ha /* 0x8038E11C@ha */
/* 800F513C  38 A5 E1 1C */	addi r5, r5, m__23daAlinkHIO_smallJump_c0@l /* 0x8038E11C@l */
/* 800F5140  4B FB 7F B5 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800F5144  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha /* 0x80425514@ha */
/* 800F5148  38 63 55 14 */	addi r3, r3, l_waitBaseAnime@l /* 0x80425514@l */
/* 800F514C  C0 03 00 04 */	lfs f0, 4(r3)
/* 800F5150  D0 1F 33 B0 */	stfs f0, 0x33b0(r31)
/* 800F5154  C0 03 00 00 */	lfs f0, 0(r3)
/* 800F5158  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 800F515C  C0 03 00 04 */	lfs f0, 4(r3)
/* 800F5160  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 800F5164  C0 03 00 08 */	lfs f0, 8(r3)
/* 800F5168  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 800F516C  48 00 00 60 */	b lbl_800F51CC
lbl_800F5170:
/* 800F5170  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 800F5174  C0 22 93 44 */	lfs f1, lit_7977(r2)
/* 800F5178  48 23 32 B5 */	bl checkPass__12J3DFrameCtrlFf
/* 800F517C  2C 03 00 00 */	cmpwi r3, 0
/* 800F5180  41 82 00 4C */	beq lbl_800F51CC
/* 800F5184  7F E3 FB 78 */	mr r3, r31
/* 800F5188  4B FF 7A 49 */	bl rideGetOff__9daAlink_cFv
/* 800F518C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800F5190  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 800F5194  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 800F5198  7F E3 FB 78 */	mr r3, r31
/* 800F519C  4B FB F7 35 */	bl setJumpMode__9daAlink_cFv
/* 800F51A0  7F E3 FB 78 */	mr r3, r31
/* 800F51A4  3C 80 80 39 */	lis r4, m__22daAlinkHIO_autoJump_c0@ha /* 0x8038E068@ha */
/* 800F51A8  38 84 E0 68 */	addi r4, r4, m__22daAlinkHIO_autoJump_c0@l /* 0x8038E068@l */
/* 800F51AC  C0 24 00 74 */	lfs f1, 0x74(r4)
/* 800F51B0  C0 5F 05 34 */	lfs f2, 0x534(r31)
/* 800F51B4  38 80 00 00 */	li r4, 0
/* 800F51B8  4B FC 65 B9 */	bl setSpecialGravity__9daAlink_cFffi
/* 800F51BC  C0 02 94 64 */	lfs f0, lit_14954(r2)
/* 800F51C0  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800F51C4  C0 02 93 78 */	lfs f0, lit_8676(r2)
/* 800F51C8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_800F51CC:
/* 800F51CC  38 60 00 01 */	li r3, 1
lbl_800F51D0:
/* 800F51D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F51D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F51D8  7C 08 03 A6 */	mtlr r0
/* 800F51DC  38 21 00 10 */	addi r1, r1, 0x10
/* 800F51E0  4E 80 00 20 */	blr 
