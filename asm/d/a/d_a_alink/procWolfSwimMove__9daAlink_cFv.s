lbl_801387A0:
/* 801387A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801387A4  7C 08 02 A6 */	mflr r0
/* 801387A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801387AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801387B0  7C 7F 1B 78 */	mr r31, r3
/* 801387B4  4B FF F8 4D */	bl setSpeedAndAngleSwimWolf__9daAlink_cFv
/* 801387B8  7F E3 FB 78 */	mr r3, r31
/* 801387BC  38 80 00 39 */	li r4, 0x39
/* 801387C0  4B FF 00 4D */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 801387C4  2C 03 00 00 */	cmpwi r3, 0
/* 801387C8  40 82 00 10 */	bne lbl_801387D8
/* 801387CC  7F E3 FB 78 */	mr r3, r31
/* 801387D0  4B FF F9 B9 */	bl getWolfSwimMoveAnmSpeed__9daAlink_cFv
/* 801387D4  D0 3F 1F DC */	stfs f1, 0x1fdc(r31)
lbl_801387D8:
/* 801387D8  7F E3 FB 78 */	mr r3, r31
/* 801387DC  4B FC A8 7D */	bl checkSwimUpAction__9daAlink_cFv
/* 801387E0  2C 03 00 00 */	cmpwi r3, 0
/* 801387E4  41 82 00 0C */	beq lbl_801387F0
/* 801387E8  38 60 00 01 */	li r3, 1
/* 801387EC  48 00 01 0C */	b lbl_801388F8
lbl_801387F0:
/* 801387F0  7F E3 FB 78 */	mr r3, r31
/* 801387F4  4B FF FA 05 */	bl decideDoStatusSwimWolf__9daAlink_cFv
/* 801387F8  2C 03 00 00 */	cmpwi r3, 0
/* 801387FC  41 82 00 0C */	beq lbl_80138808
/* 80138800  38 60 00 01 */	li r3, 1
/* 80138804  48 00 00 F4 */	b lbl_801388F8
lbl_80138808:
/* 80138808  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 8013880C  48 02 5C C1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80138810  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80138814  41 82 00 8C */	beq lbl_801388A0
/* 80138818  7F E3 FB 78 */	mr r3, r31
/* 8013881C  38 80 00 39 */	li r4, 0x39
/* 80138820  4B FE FF ED */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 80138824  2C 03 00 00 */	cmpwi r3, 0
/* 80138828  41 82 00 78 */	beq lbl_801388A0
/* 8013882C  7F E3 FB 78 */	mr r3, r31
/* 80138830  4B FF F9 59 */	bl getWolfSwimMoveAnmSpeed__9daAlink_cFv
/* 80138834  7F E3 FB 78 */	mr r3, r31
/* 80138838  38 80 00 38 */	li r4, 0x38
/* 8013883C  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlSwim_c0@ha
/* 80138840  38 A5 F8 B4 */	addi r5, r5, m__20daAlinkHIO_wlSwim_c0@l
/* 80138844  C0 45 00 78 */	lfs f2, 0x78(r5)
/* 80138848  4B FF 0E 91 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 8013884C  88 1F 2F C7 */	lbz r0, 0x2fc7(r31)
/* 80138850  28 00 00 01 */	cmplwi r0, 1
/* 80138854  41 82 00 0C */	beq lbl_80138860
/* 80138858  28 00 00 03 */	cmplwi r0, 3
/* 8013885C  40 82 00 18 */	bne lbl_80138874
lbl_80138860:
/* 80138860  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha
/* 80138864  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l
/* 80138868  A8 03 00 5C */	lha r0, 0x5c(r3)
/* 8013886C  B0 1F 30 D2 */	sth r0, 0x30d2(r31)
/* 80138870  48 00 00 30 */	b lbl_801388A0
lbl_80138874:
/* 80138874  28 00 00 02 */	cmplwi r0, 2
/* 80138878  40 82 00 18 */	bne lbl_80138890
/* 8013887C  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha
/* 80138880  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l
/* 80138884  A8 03 00 60 */	lha r0, 0x60(r3)
/* 80138888  B0 1F 30 D2 */	sth r0, 0x30d2(r31)
/* 8013888C  48 00 00 14 */	b lbl_801388A0
lbl_80138890:
/* 80138890  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha
/* 80138894  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l
/* 80138898  A8 03 00 58 */	lha r0, 0x58(r3)
/* 8013889C  B0 1F 30 D2 */	sth r0, 0x30d2(r31)
lbl_801388A0:
/* 801388A0  7F E3 FB 78 */	mr r3, r31
/* 801388A4  4B F7 E1 8D */	bl checkFrontWallTypeAction__9daAlink_cFv
/* 801388A8  2C 03 00 00 */	cmpwi r3, 0
/* 801388AC  41 82 00 18 */	beq lbl_801388C4
/* 801388B0  7F E3 FB 78 */	mr r3, r31
/* 801388B4  38 80 00 01 */	li r4, 1
/* 801388B8  4B FC AA 11 */	bl swimOutAfter__9daAlink_cFi
/* 801388BC  38 60 00 01 */	li r3, 1
/* 801388C0  48 00 00 38 */	b lbl_801388F8
lbl_801388C4:
/* 801388C4  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 801388C8  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 801388CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801388D0  41 81 00 24 */	bgt lbl_801388F4
/* 801388D4  7F E3 FB 78 */	mr r3, r31
/* 801388D8  38 80 00 39 */	li r4, 0x39
/* 801388DC  4B FE FF 31 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 801388E0  2C 03 00 00 */	cmpwi r3, 0
/* 801388E4  40 82 00 10 */	bne lbl_801388F4
/* 801388E8  7F E3 FB 78 */	mr r3, r31
/* 801388EC  38 80 00 00 */	li r4, 0
/* 801388F0  4B FF FC 3D */	bl procWolfSwimWaitInit__9daAlink_cFi
lbl_801388F4:
/* 801388F4  38 60 00 01 */	li r3, 1
lbl_801388F8:
/* 801388F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801388FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80138900  7C 08 03 A6 */	mtlr r0
/* 80138904  38 21 00 10 */	addi r1, r1, 0x10
/* 80138908  4E 80 00 20 */	blr 
