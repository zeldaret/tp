lbl_80135F00:
/* 80135F00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80135F04  7C 08 02 A6 */	mflr r0
/* 80135F08  90 01 00 24 */	stw r0, 0x24(r1)
/* 80135F0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80135F10  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80135F14  7C 7E 1B 78 */	mr r30, r3
/* 80135F18  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 80135F1C  80 83 20 60 */	lwz r4, 0x2060(r3)
/* 80135F20  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 80135F24  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 80135F28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80135F2C  40 80 00 18 */	bge lbl_80135F44
/* 80135F30  4B FF F5 99 */	bl changeWolfHangEndProc__9daAlink_cFv
/* 80135F34  2C 03 00 00 */	cmpwi r3, 0
/* 80135F38  41 82 00 0C */	beq lbl_80135F44
/* 80135F3C  38 60 00 01 */	li r3, 1
/* 80135F40  48 00 01 0C */	b lbl_8013604C
lbl_80135F44:
/* 80135F44  7F E3 FB 78 */	mr r3, r31
/* 80135F48  C0 22 93 44 */	lfs f1, lit_7977(r2)
/* 80135F4C  48 1F 24 E1 */	bl checkPass__12J3DFrameCtrlFf
/* 80135F50  2C 03 00 00 */	cmpwi r3, 0
/* 80135F54  41 82 00 34 */	beq lbl_80135F88
/* 80135F58  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80135F5C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80135F60  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80135F64  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80135F68  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80135F6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80135F70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80135F74  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80135F78  38 80 00 01 */	li r4, 1
/* 80135F7C  38 A0 00 01 */	li r5, 1
/* 80135F80  38 C1 00 08 */	addi r6, r1, 8
/* 80135F84  4B F3 9A A1 */	bl StartShock__12dVibration_cFii4cXyz
lbl_80135F88:
/* 80135F88  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 80135F8C  2C 00 00 00 */	cmpwi r0, 0
/* 80135F90  40 82 00 64 */	bne lbl_80135FF4
/* 80135F94  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 80135F98  2C 00 00 00 */	cmpwi r0, 0
/* 80135F9C  40 82 00 58 */	bne lbl_80135FF4
/* 80135FA0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80135FA4  C0 02 96 50 */	lfs f0, lit_34957(r2)
/* 80135FA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80135FAC  40 81 00 9C */	ble lbl_80136048
/* 80135FB0  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80135FB4  80 7E 1F 2C */	lwz r3, 0x1f2c(r30)
/* 80135FB8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80135FBC  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 80135FC0  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 80135FC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80135FC8  40 81 00 80 */	ble lbl_80136048
/* 80135FCC  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80135FD0  A8 1E 2F E2 */	lha r0, 0x2fe2(r30)
/* 80135FD4  7C 03 00 50 */	subf r0, r3, r0
/* 80135FD8  7C 03 07 34 */	extsh r3, r0
/* 80135FDC  4B F7 D4 B9 */	bl getDirectionFromAngle__9daAlink_cFs
/* 80135FE0  2C 03 00 00 */	cmpwi r3, 0
/* 80135FE4  40 82 00 64 */	bne lbl_80136048
/* 80135FE8  38 00 00 01 */	li r0, 1
/* 80135FEC  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 80135FF0  48 00 00 58 */	b lbl_80136048
lbl_80135FF4:
/* 80135FF4  38 7E 1F D0 */	addi r3, r30, 0x1fd0
/* 80135FF8  48 02 84 D5 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80135FFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80136000  41 82 00 48 */	beq lbl_80136048
/* 80136004  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 80136008  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 8013600C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80136010  40 81 00 20 */	ble lbl_80136030
/* 80136014  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80136018  A8 1E 2F E2 */	lha r0, 0x2fe2(r30)
/* 8013601C  7C 03 00 50 */	subf r0, r3, r0
/* 80136020  7C 03 07 34 */	extsh r3, r0
/* 80136024  4B F7 D4 71 */	bl getDirectionFromAngle__9daAlink_cFs
/* 80136028  2C 03 00 00 */	cmpwi r3, 0
/* 8013602C  41 82 00 10 */	beq lbl_8013603C
lbl_80136030:
/* 80136030  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 80136034  2C 00 00 00 */	cmpwi r0, 0
/* 80136038  41 82 00 10 */	beq lbl_80136048
lbl_8013603C:
/* 8013603C  7F C3 F3 78 */	mr r3, r30
/* 80136040  38 80 00 08 */	li r4, 8
/* 80136044  4B FF F6 AD */	bl procWolfHangWallCatchInit__9daAlink_cFi
lbl_80136048:
/* 80136048  38 60 00 01 */	li r3, 1
lbl_8013604C:
/* 8013604C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80136050  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80136054  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80136058  7C 08 03 A6 */	mtlr r0
/* 8013605C  38 21 00 20 */	addi r1, r1, 0x20
/* 80136060  4E 80 00 20 */	blr 
