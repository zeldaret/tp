lbl_80130138:
/* 80130138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013013C  7C 08 02 A6 */	mflr r0
/* 80130140  90 01 00 14 */	stw r0, 0x14(r1)
/* 80130144  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80130148  93 C1 00 08 */	stw r30, 8(r1)
/* 8013014C  7C 7E 1B 78 */	mr r30, r3
/* 80130150  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 80130154  38 7E 33 98 */	addi r3, r30, 0x3398
/* 80130158  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013015C  C0 42 93 24 */	lfs f2, lit_7450(r2)
/* 80130160  48 14 05 E1 */	bl cLib_chaseF__FPfff
/* 80130164  7F E3 FB 78 */	mr r3, r31
/* 80130168  48 02 E3 65 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013016C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80130170  41 82 00 1C */	beq lbl_8013018C
/* 80130174  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80130178  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8013017C  7F C3 F3 78 */	mr r3, r30
/* 80130180  38 80 00 00 */	li r4, 0
/* 80130184  4B FF 99 C1 */	bl checkNextActionWolf__9daAlink_cFi
/* 80130188  48 00 00 40 */	b lbl_801301C8
lbl_8013018C:
/* 8013018C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80130190  3C 60 80 39 */	lis r3, m__21daAlinkHIO_wlSlide_c0@ha
/* 80130194  38 63 F3 F0 */	addi r3, r3, m__21daAlinkHIO_wlSlide_c0@l
/* 80130198  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 8013019C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801301A0  40 81 00 28 */	ble lbl_801301C8
/* 801301A4  AB FE 04 DE */	lha r31, 0x4de(r30)
/* 801301A8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 801301AC  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 801301B0  7F C3 F3 78 */	mr r3, r30
/* 801301B4  38 80 00 01 */	li r4, 1
/* 801301B8  4B FF 99 8D */	bl checkNextActionWolf__9daAlink_cFi
/* 801301BC  2C 03 00 00 */	cmpwi r3, 0
/* 801301C0  40 82 00 08 */	bne lbl_801301C8
/* 801301C4  B3 FE 04 DE */	sth r31, 0x4de(r30)
lbl_801301C8:
/* 801301C8  38 60 00 01 */	li r3, 1
/* 801301CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801301D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 801301D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801301D8  7C 08 03 A6 */	mtlr r0
/* 801301DC  38 21 00 10 */	addi r1, r1, 0x10
/* 801301E0  4E 80 00 20 */	blr 
