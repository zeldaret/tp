lbl_800E6230:
/* 800E6230  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800E6234  7C 08 02 A6 */	mflr r0
/* 800E6238  90 01 00 34 */	stw r0, 0x34(r1)
/* 800E623C  39 61 00 30 */	addi r11, r1, 0x30
/* 800E6240  48 27 BF 9D */	bl _savegpr_29
/* 800E6244  7C 7D 1B 78 */	mr r29, r3
/* 800E6248  3B DD 1F D0 */	addi r30, r29, 0x1fd0
/* 800E624C  83 E3 28 30 */	lwz r31, 0x2830(r3)
/* 800E6250  28 1F 00 00 */	cmplwi r31, 0
/* 800E6254  40 82 00 10 */	bne lbl_800E6264
/* 800E6258  38 80 00 00 */	li r4, 0
/* 800E625C  4B FD 3E 75 */	bl checkNextAction__9daAlink_cFi
/* 800E6260  48 00 01 04 */	b lbl_800E6364
lbl_800E6264:
/* 800E6264  7F C3 F3 78 */	mr r3, r30
/* 800E6268  48 07 82 65 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800E626C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E6270  40 82 00 2C */	bne lbl_800E629C
/* 800E6274  C0 3D 33 AC */	lfs f1, 0x33ac(r29)
/* 800E6278  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800E627C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E6280  40 81 00 50 */	ble lbl_800E62D0
/* 800E6284  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 800E6288  3C 60 80 39 */	lis r3, m__18daAlinkHIO_grab_c0@ha /* 0x8038EC48@ha */
/* 800E628C  38 63 EC 48 */	addi r3, r3, m__18daAlinkHIO_grab_c0@l /* 0x8038EC48@l */
/* 800E6290  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 800E6294  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E6298  40 81 00 38 */	ble lbl_800E62D0
lbl_800E629C:
/* 800E629C  80 1D 05 80 */	lwz r0, 0x580(r29)
/* 800E62A0  60 00 00 20 */	ori r0, r0, 0x20
/* 800E62A4  90 1D 05 80 */	stw r0, 0x580(r29)
/* 800E62A8  88 1F 04 9A */	lbz r0, 0x49a(r31)
/* 800E62AC  70 00 00 43 */	andi. r0, r0, 0x43
/* 800E62B0  41 82 00 14 */	beq lbl_800E62C4
/* 800E62B4  7F A3 EB 78 */	mr r3, r29
/* 800E62B8  38 80 00 00 */	li r4, 0
/* 800E62BC  48 00 0A B1 */	bl procGrabReboundInit__9daAlink_cFi
/* 800E62C0  48 00 00 A0 */	b lbl_800E6360
lbl_800E62C4:
/* 800E62C4  7F A3 EB 78 */	mr r3, r29
/* 800E62C8  4B FF F0 E5 */	bl initGrabNextMode__9daAlink_cFv
/* 800E62CC  48 00 00 94 */	b lbl_800E6360
lbl_800E62D0:
/* 800E62D0  A8 1D 30 0E */	lha r0, 0x300e(r29)
/* 800E62D4  2C 00 00 00 */	cmpwi r0, 0
/* 800E62D8  41 82 00 88 */	beq lbl_800E6360
/* 800E62DC  C0 DE 00 10 */	lfs f6, 0x10(r30)
/* 800E62E0  C0 7D 34 78 */	lfs f3, 0x3478(r29)
/* 800E62E4  FC 06 18 40 */	fcmpo cr0, f6, f3
/* 800E62E8  40 80 00 0C */	bge lbl_800E62F4
/* 800E62EC  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 800E62F0  48 00 00 30 */	b lbl_800E6320
lbl_800E62F4:
/* 800E62F4  EC 46 18 28 */	fsubs f2, f6, f3
/* 800E62F8  A8 1E 00 08 */	lha r0, 8(r30)
/* 800E62FC  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800E6300  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800E6304  90 01 00 0C */	stw r0, 0xc(r1)
/* 800E6308  3C 00 43 30 */	lis r0, 0x4330
/* 800E630C  90 01 00 08 */	stw r0, 8(r1)
/* 800E6310  C8 01 00 08 */	lfd f0, 8(r1)
/* 800E6314  EC 00 08 28 */	fsubs f0, f0, f1
/* 800E6318  EC 00 18 28 */	fsubs f0, f0, f3
/* 800E631C  EC 42 00 24 */	fdivs f2, f2, f0
lbl_800E6320:
/* 800E6320  7F A3 EB 78 */	mr r3, r29
/* 800E6324  C0 A2 92 B8 */	lfs f5, lit_6040(r2)
/* 800E6328  C0 82 93 34 */	lfs f4, lit_7710(r2)
/* 800E632C  EC 66 20 28 */	fsubs f3, f6, f4
/* 800E6330  A8 1E 00 08 */	lha r0, 8(r30)
/* 800E6334  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800E6338  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800E633C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E6340  3C 00 43 30 */	lis r0, 0x4330
/* 800E6344  90 01 00 10 */	stw r0, 0x10(r1)
/* 800E6348  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800E634C  EC 00 08 28 */	fsubs f0, f0, f1
/* 800E6350  EC 00 20 28 */	fsubs f0, f0, f4
/* 800E6354  EC 03 00 24 */	fdivs f0, f3, f0
/* 800E6358  EC 25 00 28 */	fsubs f1, f5, f0
/* 800E635C  4B FF EC 4D */	bl setCarryArmAngle__9daAlink_cFff
lbl_800E6360:
/* 800E6360  38 60 00 01 */	li r3, 1
lbl_800E6364:
/* 800E6364  39 61 00 30 */	addi r11, r1, 0x30
/* 800E6368  48 27 BE C1 */	bl _restgpr_29
/* 800E636C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800E6370  7C 08 03 A6 */	mtlr r0
/* 800E6374  38 21 00 30 */	addi r1, r1, 0x30
/* 800E6378  4E 80 00 20 */	blr 
