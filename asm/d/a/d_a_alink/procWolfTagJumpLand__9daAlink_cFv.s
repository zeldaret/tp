lbl_80134EBC:
/* 80134EBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80134EC0  7C 08 02 A6 */	mflr r0
/* 80134EC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80134EC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80134ECC  93 C1 00 08 */	stw r30, 8(r1)
/* 80134ED0  7C 7F 1B 78 */	mr r31, r3
/* 80134ED4  3B DF 1F D0 */	addi r30, r31, 0x1fd0
/* 80134ED8  80 63 28 10 */	lwz r3, 0x2810(r3)
/* 80134EDC  28 03 00 00 */	cmplwi r3, 0
/* 80134EE0  41 82 00 A0 */	beq lbl_80134F80
/* 80134EE4  88 03 05 68 */	lbz r0, 0x568(r3)
/* 80134EE8  7C 00 07 75 */	extsb. r0, r0
/* 80134EEC  40 80 00 0C */	bge lbl_80134EF8
/* 80134EF0  38 00 00 00 */	li r0, 0
/* 80134EF4  48 00 00 08 */	b lbl_80134EFC
lbl_80134EF8:
/* 80134EF8  38 03 05 38 */	addi r0, r3, 0x538
lbl_80134EFC:
/* 80134EFC  28 00 00 00 */	cmplwi r0, 0
/* 80134F00  41 82 00 80 */	beq lbl_80134F80
/* 80134F04  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 80134F08  64 00 00 02 */	oris r0, r0, 2
/* 80134F0C  90 1F 05 80 */	stw r0, 0x580(r31)
/* 80134F10  88 03 05 68 */	lbz r0, 0x568(r3)
/* 80134F14  7C 00 07 75 */	extsb. r0, r0
/* 80134F18  40 80 00 0C */	bge lbl_80134F24
/* 80134F1C  38 60 00 00 */	li r3, 0
/* 80134F20  48 00 00 08 */	b lbl_80134F28
lbl_80134F24:
/* 80134F24  38 63 05 38 */	addi r3, r3, 0x538
lbl_80134F28:
/* 80134F28  C0 03 00 00 */	lfs f0, 0(r3)
/* 80134F2C  D0 1F 37 38 */	stfs f0, 0x3738(r31)
/* 80134F30  C0 03 00 04 */	lfs f0, 4(r3)
/* 80134F34  D0 1F 37 3C */	stfs f0, 0x373c(r31)
/* 80134F38  C0 03 00 08 */	lfs f0, 8(r3)
/* 80134F3C  D0 1F 37 40 */	stfs f0, 0x3740(r31)
/* 80134F40  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80134F44  3C 60 80 39 */	lis r3, m__21daAlinkHIO_wlPoint_c0@ha /* 0x8038F7DC@ha */
/* 80134F48  38 63 F7 DC */	addi r3, r3, m__21daAlinkHIO_wlPoint_c0@l /* 0x8038F7DC@l */
/* 80134F4C  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 80134F50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80134F54  40 81 00 2C */	ble lbl_80134F80
/* 80134F58  7F E3 FB 78 */	mr r3, r31
/* 80134F5C  38 80 00 93 */	li r4, 0x93
/* 80134F60  4B F7 E2 F1 */	bl setDoStatus__9daAlink_cFUc
/* 80134F64  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 80134F68  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80134F6C  41 82 00 14 */	beq lbl_80134F80
/* 80134F70  7F E3 FB 78 */	mr r3, r31
/* 80134F74  80 9F 28 10 */	lwz r4, 0x2810(r31)
/* 80134F78  4B FF F0 89 */	bl procWolfTagJumpInit__9daAlink_cFP10fopAc_ac_c
/* 80134F7C  48 00 00 BC */	b lbl_80135038
lbl_80134F80:
/* 80134F80  38 00 00 04 */	li r0, 4
/* 80134F84  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 80134F88  38 7F 33 98 */	addi r3, r31, 0x3398
/* 80134F8C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80134F90  3C 80 80 39 */	lis r4, m__21daAlinkHIO_wlPoint_c0@ha /* 0x8038F7DC@ha */
/* 80134F94  38 84 F7 DC */	addi r4, r4, m__21daAlinkHIO_wlPoint_c0@l /* 0x8038F7DC@l */
/* 80134F98  C0 44 00 70 */	lfs f2, 0x70(r4)
/* 80134F9C  C0 64 00 74 */	lfs f3, 0x74(r4)
/* 80134FA0  C0 84 00 78 */	lfs f4, 0x78(r4)
/* 80134FA4  48 13 A9 D9 */	bl cLib_addCalc__FPfffff
/* 80134FA8  C0 02 92 C4 */	lfs f0, lit_6109(r2)
/* 80134FAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80134FB0  40 80 00 6C */	bge lbl_8013501C
/* 80134FB4  7F C3 F3 78 */	mr r3, r30
/* 80134FB8  48 02 95 15 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80134FBC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80134FC0  41 82 00 14 */	beq lbl_80134FD4
/* 80134FC4  7F E3 FB 78 */	mr r3, r31
/* 80134FC8  38 80 00 00 */	li r4, 0
/* 80134FCC  4B FF 4B 79 */	bl checkNextActionWolf__9daAlink_cFi
/* 80134FD0  48 00 00 64 */	b lbl_80135034
lbl_80134FD4:
/* 80134FD4  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80134FD8  3C 60 80 39 */	lis r3, m__21daAlinkHIO_wlPoint_c0@ha /* 0x8038F7DC@ha */
/* 80134FDC  38 63 F7 DC */	addi r3, r3, m__21daAlinkHIO_wlPoint_c0@l /* 0x8038F7DC@l */
/* 80134FE0  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 80134FE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80134FE8  40 81 00 18 */	ble lbl_80135000
/* 80134FEC  7F E3 FB 78 */	mr r3, r31
/* 80134FF0  38 80 00 01 */	li r4, 1
/* 80134FF4  4B FF 4B 51 */	bl checkNextActionWolf__9daAlink_cFi
/* 80134FF8  2C 03 00 00 */	cmpwi r3, 0
/* 80134FFC  40 82 00 38 */	bne lbl_80135034
lbl_80135000:
/* 80135000  38 00 00 78 */	li r0, 0x78
/* 80135004  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
/* 80135008  7F E3 FB 78 */	mr r3, r31
/* 8013500C  3C 80 00 03 */	lis r4, 0x0003 /* 0x00030018@ha */
/* 80135010  38 84 00 18 */	addi r4, r4, 0x0018 /* 0x00030018@l */
/* 80135014  4B F8 A1 B9 */	bl seStartMapInfoLevel__9daAlink_cFUl
/* 80135018  48 00 00 1C */	b lbl_80135034
lbl_8013501C:
/* 8013501C  38 00 00 78 */	li r0, 0x78
/* 80135020  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
/* 80135024  7F E3 FB 78 */	mr r3, r31
/* 80135028  3C 80 00 03 */	lis r4, 0x0003 /* 0x00030018@ha */
/* 8013502C  38 84 00 18 */	addi r4, r4, 0x0018 /* 0x00030018@l */
/* 80135030  4B F8 A1 9D */	bl seStartMapInfoLevel__9daAlink_cFUl
lbl_80135034:
/* 80135034  38 60 00 01 */	li r3, 1
lbl_80135038:
/* 80135038  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013503C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80135040  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80135044  7C 08 03 A6 */	mtlr r0
/* 80135048  38 21 00 10 */	addi r1, r1, 0x10
/* 8013504C  4E 80 00 20 */	blr 
