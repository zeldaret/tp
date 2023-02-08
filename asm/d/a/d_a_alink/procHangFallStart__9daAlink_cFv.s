lbl_800FB1A4:
/* 800FB1A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800FB1A8  7C 08 02 A6 */	mflr r0
/* 800FB1AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 800FB1B0  39 61 00 30 */	addi r11, r1, 0x30
/* 800FB1B4  48 26 70 29 */	bl _savegpr_29
/* 800FB1B8  7C 7D 1B 78 */	mr r29, r3
/* 800FB1BC  3B FD 1F D0 */	addi r31, r29, 0x1fd0
/* 800FB1C0  7F E3 FB 78 */	mr r3, r31
/* 800FB1C4  48 06 33 09 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800FB1C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FB1CC  40 82 00 1C */	bne lbl_800FB1E8
/* 800FB1D0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800FB1D4  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wallFall_c0@ha /* 0x8038E1B8@ha */
/* 800FB1D8  38 63 E1 B8 */	addi r3, r3, m__22daAlinkHIO_wallFall_c0@l /* 0x8038E1B8@l */
/* 800FB1DC  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 800FB1E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FB1E4  40 81 00 0C */	ble lbl_800FB1F0
lbl_800FB1E8:
/* 800FB1E8  3B C0 00 01 */	li r30, 1
/* 800FB1EC  48 00 00 08 */	b lbl_800FB1F4
lbl_800FB1F0:
/* 800FB1F0  3B C0 00 00 */	li r30, 0
lbl_800FB1F4:
/* 800FB1F4  7F A3 EB 78 */	mr r3, r29
/* 800FB1F8  4B FF F5 95 */	bl changeHangEndProc__9daAlink_cFv
/* 800FB1FC  2C 03 00 00 */	cmpwi r3, 0
/* 800FB200  41 82 00 0C */	beq lbl_800FB20C
/* 800FB204  38 60 00 01 */	li r3, 1
/* 800FB208  48 00 00 80 */	b lbl_800FB288
lbl_800FB20C:
/* 800FB20C  7F E3 FB 78 */	mr r3, r31
/* 800FB210  C0 22 93 3C */	lfs f1, lit_7808(r2)
/* 800FB214  48 22 D2 19 */	bl checkPass__12J3DFrameCtrlFf
/* 800FB218  2C 03 00 00 */	cmpwi r3, 0
/* 800FB21C  41 82 00 34 */	beq lbl_800FB250
/* 800FB220  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800FB224  D0 21 00 08 */	stfs f1, 8(r1)
/* 800FB228  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800FB22C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800FB230  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800FB234  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800FB238  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800FB23C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800FB240  38 80 00 01 */	li r4, 1
/* 800FB244  38 A0 00 01 */	li r5, 1
/* 800FB248  38 C1 00 08 */	addi r6, r1, 8
/* 800FB24C  4B F7 47 D9 */	bl StartShock__12dVibration_cFii4cXyz
lbl_800FB250:
/* 800FB250  2C 1E 00 00 */	cmpwi r30, 0
/* 800FB254  41 82 00 30 */	beq lbl_800FB284
/* 800FB258  7F A3 EB 78 */	mr r3, r29
/* 800FB25C  4B FF ED A1 */	bl getHangDirectionFromAngle__9daAlink_cFv
/* 800FB260  7C 64 1B 78 */	mr r4, r3
/* 800FB264  C0 3D 33 AC */	lfs f1, 0x33ac(r29)
/* 800FB268  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800FB26C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FB270  40 81 00 14 */	ble lbl_800FB284
/* 800FB274  2C 04 00 01 */	cmpwi r4, 1
/* 800FB278  41 82 00 0C */	beq lbl_800FB284
/* 800FB27C  7F A3 EB 78 */	mr r3, r29
/* 800FB280  48 00 00 21 */	bl procHangUpInit__9daAlink_cFi
lbl_800FB284:
/* 800FB284  38 60 00 01 */	li r3, 1
lbl_800FB288:
/* 800FB288  39 61 00 30 */	addi r11, r1, 0x30
/* 800FB28C  48 26 6F 9D */	bl _restgpr_29
/* 800FB290  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800FB294  7C 08 03 A6 */	mtlr r0
/* 800FB298  38 21 00 30 */	addi r1, r1, 0x30
/* 800FB29C  4E 80 00 20 */	blr 
