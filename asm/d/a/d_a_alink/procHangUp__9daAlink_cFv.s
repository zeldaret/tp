lbl_800FB328:
/* 800FB328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FB32C  7C 08 02 A6 */	mflr r0
/* 800FB330  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FB334  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FB338  93 C1 00 08 */	stw r30, 8(r1)
/* 800FB33C  7C 7E 1B 78 */	mr r30, r3
/* 800FB340  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800FB344  4B FF F4 49 */	bl changeHangEndProc__9daAlink_cFv
/* 800FB348  2C 03 00 00 */	cmpwi r3, 0
/* 800FB34C  41 82 00 60 */	beq lbl_800FB3AC
/* 800FB350  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800FB354  28 00 00 18 */	cmplwi r0, 0x18
/* 800FB358  40 82 00 4C */	bne lbl_800FB3A4
/* 800FB35C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800FB360  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FB364  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800FB368  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800FB36C  7C 03 04 2E */	lfsx f0, r3, r0
/* 800FB370  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 800FB374  C0 42 93 8C */	lfs f2, lit_8783(r2)
/* 800FB378  EC 02 00 32 */	fmuls f0, f2, f0
/* 800FB37C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800FB380  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 800FB384  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800FB388  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FB38C  7C 63 02 14 */	add r3, r3, r0
/* 800FB390  C0 03 00 04 */	lfs f0, 4(r3)
/* 800FB394  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 800FB398  EC 02 00 32 */	fmuls f0, f2, f0
/* 800FB39C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800FB3A0  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_800FB3A4:
/* 800FB3A4  38 60 00 01 */	li r3, 1
/* 800FB3A8  48 00 00 7C */	b lbl_800FB424
lbl_800FB3AC:
/* 800FB3AC  7F E3 FB 78 */	mr r3, r31
/* 800FB3B0  48 06 31 1D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800FB3B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FB3B8  40 82 00 1C */	bne lbl_800FB3D4
/* 800FB3BC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800FB3C0  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wallFall_c0@ha /* 0x8038E1B8@ha */
/* 800FB3C4  38 63 E1 B8 */	addi r3, r3, m__22daAlinkHIO_wallFall_c0@l /* 0x8038E1B8@l */
/* 800FB3C8  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 800FB3CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FB3D0  40 81 00 50 */	ble lbl_800FB420
lbl_800FB3D4:
/* 800FB3D4  80 9E 31 98 */	lwz r4, 0x3198(r30)
/* 800FB3D8  2C 04 00 00 */	cmpwi r4, 0
/* 800FB3DC  40 82 00 1C */	bne lbl_800FB3F8
/* 800FB3E0  7F C3 F3 78 */	mr r3, r30
/* 800FB3E4  3C 80 80 39 */	lis r4, m__23daAlinkHIO_wallCatch_c0@ha /* 0x8038E164@ha */
/* 800FB3E8  38 84 E1 64 */	addi r4, r4, m__23daAlinkHIO_wallCatch_c0@l /* 0x8038E164@l */
/* 800FB3EC  C0 24 00 30 */	lfs f1, 0x30(r4)
/* 800FB3F0  48 00 07 D9 */	bl procHangClimbInit__9daAlink_cFf
/* 800FB3F4  48 00 00 2C */	b lbl_800FB420
lbl_800FB3F8:
/* 800FB3F8  7F C3 F3 78 */	mr r3, r30
/* 800FB3FC  4B FF EF 3D */	bl changeHangMoveProc__9daAlink_cFi
/* 800FB400  2C 03 00 00 */	cmpwi r3, 0
/* 800FB404  41 82 00 14 */	beq lbl_800FB418
/* 800FB408  7F C3 F3 78 */	mr r3, r30
/* 800FB40C  80 9E 31 98 */	lwz r4, 0x3198(r30)
/* 800FB410  48 00 02 41 */	bl procHangMoveInit__9daAlink_cFi
/* 800FB414  48 00 00 0C */	b lbl_800FB420
lbl_800FB418:
/* 800FB418  7F C3 F3 78 */	mr r3, r30
/* 800FB41C  48 00 00 21 */	bl procHangWaitInit__9daAlink_cFv
lbl_800FB420:
/* 800FB420  38 60 00 01 */	li r3, 1
lbl_800FB424:
/* 800FB424  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FB428  83 C1 00 08 */	lwz r30, 8(r1)
/* 800FB42C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FB430  7C 08 03 A6 */	mtlr r0
/* 800FB434  38 21 00 10 */	addi r1, r1, 0x10
/* 800FB438  4E 80 00 20 */	blr 
