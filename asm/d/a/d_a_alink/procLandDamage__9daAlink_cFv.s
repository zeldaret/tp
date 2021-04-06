lbl_800DB060:
/* 800DB060  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DB064  7C 08 02 A6 */	mflr r0
/* 800DB068  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DB06C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DB070  93 C1 00 08 */	stw r30, 8(r1)
/* 800DB074  7C 7E 1B 78 */	mr r30, r3
/* 800DB078  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800DB07C  80 03 31 98 */	lwz r0, 0x3198(r3)
/* 800DB080  2C 00 00 00 */	cmpwi r0, 0
/* 800DB084  41 82 00 58 */	beq lbl_800DB0DC
/* 800DB088  7F E3 FB 78 */	mr r3, r31
/* 800DB08C  48 08 34 41 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800DB090  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DB094  41 82 00 14 */	beq lbl_800DB0A8
/* 800DB098  7F C3 F3 78 */	mr r3, r30
/* 800DB09C  38 80 00 00 */	li r4, 0
/* 800DB0A0  4B FD F0 31 */	bl checkNextAction__9daAlink_cFi
/* 800DB0A4  48 00 00 80 */	b lbl_800DB124
lbl_800DB0A8:
/* 800DB0A8  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800DB0AC  3C 60 80 39 */	lis r3, m__21daAlinkHIO_damFall_c0@ha /* 0x8038E454@ha */
/* 800DB0B0  38 63 E4 54 */	addi r3, r3, m__21daAlinkHIO_damFall_c0@l /* 0x8038E454@l */
/* 800DB0B4  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 800DB0B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DB0BC  40 81 00 68 */	ble lbl_800DB124
/* 800DB0C0  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800DB0C4  60 00 00 04 */	ori r0, r0, 4
/* 800DB0C8  90 1E 31 A0 */	stw r0, 0x31a0(r30)
/* 800DB0CC  7F C3 F3 78 */	mr r3, r30
/* 800DB0D0  38 80 00 01 */	li r4, 1
/* 800DB0D4  4B FD EF FD */	bl checkNextAction__9daAlink_cFi
/* 800DB0D8  48 00 00 4C */	b lbl_800DB124
lbl_800DB0DC:
/* 800DB0DC  7F E3 FB 78 */	mr r3, r31
/* 800DB0E0  48 08 33 ED */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800DB0E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DB0E8  41 82 00 3C */	beq lbl_800DB124
/* 800DB0EC  A8 7E 30 08 */	lha r3, 0x3008(r30)
/* 800DB0F0  2C 03 00 00 */	cmpwi r3, 0
/* 800DB0F4  40 81 00 10 */	ble lbl_800DB104
/* 800DB0F8  38 03 FF FF */	addi r0, r3, -1
/* 800DB0FC  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 800DB100  48 00 00 24 */	b lbl_800DB124
lbl_800DB104:
/* 800DB104  7F C3 F3 78 */	mr r3, r30
/* 800DB108  38 80 00 8D */	li r4, 0x8d
/* 800DB10C  3C A0 80 39 */	lis r5, m__21daAlinkHIO_damFall_c0@ha /* 0x8038E454@ha */
/* 800DB110  38 A5 E4 54 */	addi r5, r5, m__21daAlinkHIO_damFall_c0@l /* 0x8038E454@l */
/* 800DB114  38 A5 00 14 */	addi r5, r5, 0x14
/* 800DB118  4B FD 1F DD */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800DB11C  38 00 00 01 */	li r0, 1
/* 800DB120  90 1E 31 98 */	stw r0, 0x3198(r30)
lbl_800DB124:
/* 800DB124  38 60 00 01 */	li r3, 1
/* 800DB128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DB12C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800DB130  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DB134  7C 08 03 A6 */	mtlr r0
/* 800DB138  38 21 00 10 */	addi r1, r1, 0x10
/* 800DB13C  4E 80 00 20 */	blr 
