lbl_800FC0D8:
/* 800FC0D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FC0DC  7C 08 02 A6 */	mflr r0
/* 800FC0E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FC0E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FC0E8  7C 7F 1B 78 */	mr r31, r3
/* 800FC0EC  4B FF E5 F9 */	bl setHangGroundY__9daAlink_cFv
/* 800FC0F0  C0 5F 33 D8 */	lfs f2, 0x33d8(r31)
/* 800FC0F4  C0 3F 38 38 */	lfs f1, 0x3838(r31)
/* 800FC0F8  C0 02 93 00 */	lfs f0, lit_6895(r2)
/* 800FC0FC  EC 01 00 28 */	fsubs f0, f1, f0
/* 800FC100  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800FC104  40 81 00 14 */	ble lbl_800FC118
/* 800FC108  7F E3 FB 78 */	mr r3, r31
/* 800FC10C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800FC110  4B FC AE 09 */	bl procLandInit__9daAlink_cFf
/* 800FC114  48 00 00 50 */	b lbl_800FC164
lbl_800FC118:
/* 800FC118  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 800FC11C  48 06 23 B1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800FC120  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FC124  41 82 00 3C */	beq lbl_800FC160
/* 800FC128  7F E3 FB 78 */	mr r3, r31
/* 800FC12C  3C 80 80 39 */	lis r4, m__23daAlinkHIO_wallCatch_c0@ha /* 0x8038E164@ha */
/* 800FC130  38 84 E1 64 */	addi r4, r4, m__23daAlinkHIO_wallCatch_c0@l /* 0x8038E164@l */
/* 800FC134  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 800FC138  4B FF FA 91 */	bl procHangClimbInit__9daAlink_cFf
/* 800FC13C  2C 03 00 00 */	cmpwi r3, 0
/* 800FC140  40 82 00 20 */	bne lbl_800FC160
/* 800FC144  7F E3 FB 78 */	mr r3, r31
/* 800FC148  38 80 00 01 */	li r4, 1
/* 800FC14C  3C A0 80 39 */	lis r5, m__22daAlinkHIO_autoJump_c0@ha /* 0x8038E068@ha */
/* 800FC150  38 A5 E0 68 */	addi r5, r5, m__22daAlinkHIO_autoJump_c0@l /* 0x8038E068@l */
/* 800FC154  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 800FC158  4B FC A8 F1 */	bl procFallInit__9daAlink_cFif
/* 800FC15C  48 00 00 08 */	b lbl_800FC164
lbl_800FC160:
/* 800FC160  38 60 00 01 */	li r3, 1
lbl_800FC164:
/* 800FC164  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FC168  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FC16C  7C 08 03 A6 */	mtlr r0
/* 800FC170  38 21 00 10 */	addi r1, r1, 0x10
/* 800FC174  4E 80 00 20 */	blr 
