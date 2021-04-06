lbl_800E6FE0:
/* 800E6FE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E6FE4  7C 08 02 A6 */	mflr r0
/* 800E6FE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E6FEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E6FF0  93 C1 00 08 */	stw r30, 8(r1)
/* 800E6FF4  7C 7E 1B 78 */	mr r30, r3
/* 800E6FF8  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800E6FFC  7F E3 FB 78 */	mr r3, r31
/* 800E7000  48 07 74 CD */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800E7004  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E7008  41 82 00 38 */	beq lbl_800E7040
/* 800E700C  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 800E7010  28 00 00 0D */	cmplwi r0, 0xd
/* 800E7014  40 82 00 1C */	bne lbl_800E7030
/* 800E7018  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800E701C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800E7020  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800E7024  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 800E7028  4B F6 11 55 */	bl cutEnd__16dEvent_manager_cFi
/* 800E702C  48 00 00 78 */	b lbl_800E70A4
lbl_800E7030:
/* 800E7030  7F C3 F3 78 */	mr r3, r30
/* 800E7034  38 80 00 00 */	li r4, 0
/* 800E7038  4B FD 30 99 */	bl checkNextAction__9daAlink_cFi
/* 800E703C  48 00 00 68 */	b lbl_800E70A4
lbl_800E7040:
/* 800E7040  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800E7044  C0 1E 34 78 */	lfs f0, 0x3478(r30)
/* 800E7048  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E704C  40 80 00 58 */	bge lbl_800E70A4
/* 800E7050  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800E7054  60 00 00 04 */	ori r0, r0, 4
/* 800E7058  90 1E 31 A0 */	stw r0, 0x31a0(r30)
/* 800E705C  7F C3 F3 78 */	mr r3, r30
/* 800E7060  38 80 00 01 */	li r4, 1
/* 800E7064  4B FD 30 6D */	bl checkNextAction__9daAlink_cFi
/* 800E7068  2C 03 00 00 */	cmpwi r3, 0
/* 800E706C  40 82 00 38 */	bne lbl_800E70A4
/* 800E7070  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 800E7074  2C 00 00 00 */	cmpwi r0, 0
/* 800E7078  41 82 00 2C */	beq lbl_800E70A4
/* 800E707C  7F C3 F3 78 */	mr r3, r30
/* 800E7080  C0 5E 34 7C */	lfs f2, 0x347c(r30)
/* 800E7084  C0 3E 1F E0 */	lfs f1, 0x1fe0(r30)
/* 800E7088  3C 80 80 39 */	lis r4, m__18daAlinkHIO_grab_c0@ha /* 0x8038EC48@ha */
/* 800E708C  38 84 EC 48 */	addi r4, r4, m__18daAlinkHIO_grab_c0@l /* 0x8038EC48@l */
/* 800E7090  C0 04 00 A8 */	lfs f0, 0xa8(r4)
/* 800E7094  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E7098  EC 22 00 32 */	fmuls f1, f2, f0
/* 800E709C  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 800E70A0  4B FF DF 09 */	bl setCarryArmAngle__9daAlink_cFff
lbl_800E70A4:
/* 800E70A4  38 60 00 01 */	li r3, 1
/* 800E70A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E70AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E70B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E70B4  7C 08 03 A6 */	mtlr r0
/* 800E70B8  38 21 00 10 */	addi r1, r1, 0x10
/* 800E70BC  4E 80 00 20 */	blr 
