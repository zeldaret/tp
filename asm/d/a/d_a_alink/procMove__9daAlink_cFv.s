lbl_800C3730:
/* 800C3730  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C3734  7C 08 02 A6 */	mflr r0
/* 800C3738  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C373C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C3740  7C 7F 1B 78 */	mr r31, r3
/* 800C3744  38 80 00 03 */	li r4, 3
/* 800C3748  48 05 DA 79 */	bl setFootEffectProcType__9daAlink_cFi
/* 800C374C  7F E3 FB 78 */	mr r3, r31
/* 800C3750  38 80 00 00 */	li r4, 0
/* 800C3754  4B FF 69 7D */	bl checkNextAction__9daAlink_cFi
/* 800C3758  2C 03 00 00 */	cmpwi r3, 0
/* 800C375C  40 82 00 9C */	bne lbl_800C37F8
/* 800C3760  7F E3 FB 78 */	mr r3, r31
/* 800C3764  4B FF 32 CD */	bl checkFrontWallTypeAction__9daAlink_cFv
/* 800C3768  2C 03 00 00 */	cmpwi r3, 0
/* 800C376C  40 82 00 8C */	bne lbl_800C37F8
/* 800C3770  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 800C3774  28 00 00 02 */	cmplwi r0, 2
/* 800C3778  40 82 00 28 */	bne lbl_800C37A0
/* 800C377C  C0 5F 33 98 */	lfs f2, 0x3398(r31)
/* 800C3780  C0 3F 05 94 */	lfs f1, 0x594(r31)
/* 800C3784  3C 60 80 39 */	lis r3, m__18daAlinkHIO_move_c0@ha /* 0x8038D6BC@ha */
/* 800C3788  38 63 D6 BC */	addi r3, r3, m__18daAlinkHIO_move_c0@l /* 0x8038D6BC@l */
/* 800C378C  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 800C3790  EC 01 00 32 */	fmuls f0, f1, f0
/* 800C3794  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800C3798  40 81 00 08 */	ble lbl_800C37A0
/* 800C379C  D0 1F 33 98 */	stfs f0, 0x3398(r31)
lbl_800C37A0:
/* 800C37A0  7F E3 FB 78 */	mr r3, r31
/* 800C37A4  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800C37A8  4B FE A6 6D */	bl setBlendMoveAnime__9daAlink_cFf
/* 800C37AC  80 1F 31 74 */	lwz r0, 0x3174(r31)
/* 800C37B0  2C 00 00 08 */	cmpwi r0, 8
/* 800C37B4  41 82 00 44 */	beq lbl_800C37F8
/* 800C37B8  3C 60 80 39 */	lis r3, m__19daAlinkHIO_basic_c0@ha /* 0x8038D664@ha */
/* 800C37BC  38 63 D6 64 */	addi r3, r3, m__19daAlinkHIO_basic_c0@l /* 0x8038D664@l */
/* 800C37C0  A8 83 00 06 */	lha r4, 6(r3)
/* 800C37C4  A8 63 00 04 */	lha r3, 4(r3)
/* 800C37C8  A8 1F 2F F0 */	lha r0, 0x2ff0(r31)
/* 800C37CC  7C 00 0E 70 */	srawi r0, r0, 1
/* 800C37D0  7C 05 07 34 */	extsh r5, r0
/* 800C37D4  7C 05 18 00 */	cmpw r5, r3
/* 800C37D8  40 80 00 08 */	bge lbl_800C37E0
/* 800C37DC  48 00 00 18 */	b lbl_800C37F4
lbl_800C37E0:
/* 800C37E0  7C 80 07 34 */	extsh r0, r4
/* 800C37E4  7C 05 00 00 */	cmpw r5, r0
/* 800C37E8  40 81 00 08 */	ble lbl_800C37F0
/* 800C37EC  7C 85 23 78 */	mr r5, r4
lbl_800C37F0:
/* 800C37F0  7C A3 2B 78 */	mr r3, r5
lbl_800C37F4:
/* 800C37F4  B0 7F 30 A0 */	sth r3, 0x30a0(r31)
lbl_800C37F8:
/* 800C37F8  38 60 00 01 */	li r3, 1
/* 800C37FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C3800  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C3804  7C 08 03 A6 */	mtlr r0
/* 800C3808  38 21 00 10 */	addi r1, r1, 0x10
/* 800C380C  4E 80 00 20 */	blr 
