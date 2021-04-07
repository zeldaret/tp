lbl_800C6FE4:
/* 800C6FE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C6FE8  7C 08 02 A6 */	mflr r0
/* 800C6FEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C6FF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800C6FF4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800C6FF8  7C 7E 1B 78 */	mr r30, r3
/* 800C6FFC  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800C7000  7F E3 FB 78 */	mr r3, r31
/* 800C7004  48 09 74 C9 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800C7008  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C700C  41 82 00 14 */	beq lbl_800C7020
/* 800C7010  7F C3 F3 78 */	mr r3, r30
/* 800C7014  38 80 00 00 */	li r4, 0
/* 800C7018  4B FF 30 B9 */	bl checkNextAction__9daAlink_cFi
/* 800C701C  48 00 00 C0 */	b lbl_800C70DC
lbl_800C7020:
/* 800C7020  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800C7024  3C 60 80 39 */	lis r3, m__22daAlinkHIO_autoJump_c0@ha /* 0x8038E068@ha */
/* 800C7028  38 63 E0 68 */	addi r3, r3, m__22daAlinkHIO_autoJump_c0@l /* 0x8038E068@l */
/* 800C702C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 800C7030  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C7034  40 81 00 14 */	ble lbl_800C7048
/* 800C7038  7F C3 F3 78 */	mr r3, r30
/* 800C703C  38 80 00 01 */	li r4, 1
/* 800C7040  4B FF 30 91 */	bl checkNextAction__9daAlink_cFi
/* 800C7044  48 00 00 98 */	b lbl_800C70DC
lbl_800C7048:
/* 800C7048  7F E3 FB 78 */	mr r3, r31
/* 800C704C  C0 22 93 24 */	lfs f1, lit_7450(r2)
/* 800C7050  48 26 13 DD */	bl checkPass__12J3DFrameCtrlFf
/* 800C7054  2C 03 00 00 */	cmpwi r3, 0
/* 800C7058  41 82 00 84 */	beq lbl_800C70DC
/* 800C705C  7F C3 F3 78 */	mr r3, r30
/* 800C7060  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800C7064  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 800C7068  7D 89 03 A6 */	mtctr r12
/* 800C706C  4E 80 04 21 */	bctrl 
/* 800C7070  2C 03 00 00 */	cmpwi r3, 0
/* 800C7074  41 82 00 0C */	beq lbl_800C7080
/* 800C7078  38 80 00 03 */	li r4, 3
/* 800C707C  48 00 00 34 */	b lbl_800C70B0
lbl_800C7080:
/* 800C7080  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800C7084  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800C7088  40 82 00 1C */	bne lbl_800C70A4
/* 800C708C  C0 3E 34 78 */	lfs f1, 0x3478(r30)
/* 800C7090  3C 60 80 39 */	lis r3, m__21daAlinkHIO_damFall_c0@ha /* 0x8038E454@ha */
/* 800C7094  38 63 E4 54 */	addi r3, r3, m__21daAlinkHIO_damFall_c0@l /* 0x8038E454@l */
/* 800C7098  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 800C709C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C70A0  40 80 00 0C */	bge lbl_800C70AC
lbl_800C70A4:
/* 800C70A4  38 80 00 01 */	li r4, 1
/* 800C70A8  48 00 00 08 */	b lbl_800C70B0
lbl_800C70AC:
/* 800C70AC  38 80 00 02 */	li r4, 2
lbl_800C70B0:
/* 800C70B0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800C70B4  D0 21 00 08 */	stfs f1, 8(r1)
/* 800C70B8  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800C70BC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800C70C0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800C70C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C70C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C70CC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800C70D0  38 A0 00 0F */	li r5, 0xf
/* 800C70D4  38 C1 00 08 */	addi r6, r1, 8
/* 800C70D8  4B FA 89 4D */	bl StartShock__12dVibration_cFii4cXyz
lbl_800C70DC:
/* 800C70DC  38 60 00 01 */	li r3, 1
/* 800C70E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800C70E4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800C70E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C70EC  7C 08 03 A6 */	mtlr r0
/* 800C70F0  38 21 00 20 */	addi r1, r1, 0x20
/* 800C70F4  4E 80 00 20 */	blr 
