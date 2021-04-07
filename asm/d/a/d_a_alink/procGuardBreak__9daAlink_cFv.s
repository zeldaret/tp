lbl_800DDF2C:
/* 800DDF2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DDF30  7C 08 02 A6 */	mflr r0
/* 800DDF34  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DDF38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DDF3C  93 C1 00 08 */	stw r30, 8(r1)
/* 800DDF40  7C 7E 1B 78 */	mr r30, r3
/* 800DDF44  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800DDF48  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800DDF4C  4B FF F0 BD */	bl setUpperGuardAnime__9daAlink_cFf
/* 800DDF50  80 1E 05 88 */	lwz r0, 0x588(r30)
/* 800DDF54  64 00 08 00 */	oris r0, r0, 0x800
/* 800DDF58  90 1E 05 88 */	stw r0, 0x588(r30)
/* 800DDF5C  38 00 00 04 */	li r0, 4
/* 800DDF60  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800DDF64  7F E3 FB 78 */	mr r3, r31
/* 800DDF68  48 08 05 65 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800DDF6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DDF70  41 82 00 30 */	beq lbl_800DDFA0
/* 800DDF74  7F C3 F3 78 */	mr r3, r30
/* 800DDF78  4B FF E7 01 */	bl checkGuardActionChange__9daAlink_cFv
/* 800DDF7C  2C 03 00 00 */	cmpwi r3, 0
/* 800DDF80  40 82 00 10 */	bne lbl_800DDF90
/* 800DDF84  80 1E 05 8C */	lwz r0, 0x58c(r30)
/* 800DDF88  60 00 00 20 */	ori r0, r0, 0x20
/* 800DDF8C  90 1E 05 8C */	stw r0, 0x58c(r30)
lbl_800DDF90:
/* 800DDF90  7F C3 F3 78 */	mr r3, r30
/* 800DDF94  38 80 00 00 */	li r4, 0
/* 800DDF98  4B FD C1 39 */	bl checkNextAction__9daAlink_cFi
/* 800DDF9C  48 00 00 50 */	b lbl_800DDFEC
lbl_800DDFA0:
/* 800DDFA0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800DDFA4  3C 60 80 39 */	lis r3, m__19daAlinkHIO_guard_c0@ha /* 0x8038DF9C@ha */
/* 800DDFA8  38 63 DF 9C */	addi r3, r3, m__19daAlinkHIO_guard_c0@l /* 0x8038DF9C@l */
/* 800DDFAC  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 800DDFB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DDFB4  40 81 00 38 */	ble lbl_800DDFEC
/* 800DDFB8  7F C3 F3 78 */	mr r3, r30
/* 800DDFBC  4B FF E6 BD */	bl checkGuardActionChange__9daAlink_cFv
/* 800DDFC0  2C 03 00 00 */	cmpwi r3, 0
/* 800DDFC4  40 82 00 10 */	bne lbl_800DDFD4
/* 800DDFC8  80 1E 05 8C */	lwz r0, 0x58c(r30)
/* 800DDFCC  60 00 00 20 */	ori r0, r0, 0x20
/* 800DDFD0  90 1E 05 8C */	stw r0, 0x58c(r30)
lbl_800DDFD4:
/* 800DDFD4  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800DDFD8  60 00 00 04 */	ori r0, r0, 4
/* 800DDFDC  90 1E 31 A0 */	stw r0, 0x31a0(r30)
/* 800DDFE0  7F C3 F3 78 */	mr r3, r30
/* 800DDFE4  38 80 00 01 */	li r4, 1
/* 800DDFE8  4B FD C0 E9 */	bl checkNextAction__9daAlink_cFi
lbl_800DDFEC:
/* 800DDFEC  38 60 00 01 */	li r3, 1
/* 800DDFF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DDFF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800DDFF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DDFFC  7C 08 03 A6 */	mtlr r0
/* 800DE000  38 21 00 10 */	addi r1, r1, 0x10
/* 800DE004  4E 80 00 20 */	blr 
