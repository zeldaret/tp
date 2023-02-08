lbl_8096BB68:
/* 8096BB68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8096BB6C  7C 08 02 A6 */	mflr r0
/* 8096BB70  90 01 00 24 */	stw r0, 0x24(r1)
/* 8096BB74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8096BB78  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8096BB7C  7C 7E 1B 78 */	mr r30, r3
/* 8096BB80  3B E0 00 00 */	li r31, 0
/* 8096BB84  80 04 00 00 */	lwz r0, 0(r4)
/* 8096BB88  2C 00 00 14 */	cmpwi r0, 0x14
/* 8096BB8C  41 82 00 5C */	beq lbl_8096BBE8
/* 8096BB90  40 80 00 10 */	bge lbl_8096BBA0
/* 8096BB94  2C 00 00 0A */	cmpwi r0, 0xa
/* 8096BB98  41 82 00 14 */	beq lbl_8096BBAC
/* 8096BB9C  48 00 00 E0 */	b lbl_8096BC7C
lbl_8096BBA0:
/* 8096BBA0  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8096BBA4  41 82 00 88 */	beq lbl_8096BC2C
/* 8096BBA8  48 00 00 D4 */	b lbl_8096BC7C
lbl_8096BBAC:
/* 8096BBAC  80 9E 0E 00 */	lwz r4, 0xe00(r30)
/* 8096BBB0  3C 04 00 01 */	addis r0, r4, 1
/* 8096BBB4  28 00 FF FF */	cmplwi r0, 0xffff
/* 8096BBB8  40 82 00 28 */	bne lbl_8096BBE0
/* 8096BBBC  38 80 00 00 */	li r4, 0
/* 8096BBC0  4B FF D9 45 */	bl create_Yamijin__13daNpcBlueNS_cFi
/* 8096BBC4  90 7E 0E 00 */	stw r3, 0xe00(r30)
/* 8096BBC8  80 7E 0E 00 */	lwz r3, 0xe00(r30)
/* 8096BBCC  3C 03 00 01 */	addis r0, r3, 1
/* 8096BBD0  28 00 FF FF */	cmplwi r0, 0xffff
/* 8096BBD4  41 82 00 A8 */	beq lbl_8096BC7C
/* 8096BBD8  3B E0 00 01 */	li r31, 1
/* 8096BBDC  48 00 00 A0 */	b lbl_8096BC7C
lbl_8096BBE0:
/* 8096BBE0  3B E0 00 01 */	li r31, 1
/* 8096BBE4  48 00 00 98 */	b lbl_8096BC7C
lbl_8096BBE8:
/* 8096BBE8  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 8096BBEC  38 A0 00 01 */	li r5, 1
/* 8096BBF0  88 04 00 11 */	lbz r0, 0x11(r4)
/* 8096BBF4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8096BBF8  40 82 00 1C */	bne lbl_8096BC14
/* 8096BBFC  3C 60 80 97 */	lis r3, lit_4393@ha /* 0x8096C9F4@ha */
/* 8096BC00  C0 23 C9 F4 */	lfs f1, lit_4393@l(r3)  /* 0x8096C9F4@l */
/* 8096BC04  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 8096BC08  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8096BC0C  41 82 00 08 */	beq lbl_8096BC14
/* 8096BC10  38 A0 00 00 */	li r5, 0
lbl_8096BC14:
/* 8096BC14  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8096BC18  41 82 00 64 */	beq lbl_8096BC7C
/* 8096BC1C  7F C3 F3 78 */	mr r3, r30
/* 8096BC20  4B FF F5 E5 */	bl ChgPtclDisp__13daNpcBlueNS_cFv
/* 8096BC24  3B E0 00 01 */	li r31, 1
/* 8096BC28  48 00 00 54 */	b lbl_8096BC7C
lbl_8096BC2C:
/* 8096BC2C  80 1E 0E 00 */	lwz r0, 0xe00(r30)
/* 8096BC30  90 01 00 08 */	stw r0, 8(r1)
/* 8096BC34  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8096BC38  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8096BC3C  38 81 00 08 */	addi r4, r1, 8
/* 8096BC40  4B 6A DB B9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8096BC44  90 7E 0D FC */	stw r3, 0xdfc(r30)
/* 8096BC48  80 7E 0D FC */	lwz r3, 0xdfc(r30)
/* 8096BC4C  28 03 00 00 */	cmplwi r3, 0
/* 8096BC50  41 82 00 2C */	beq lbl_8096BC7C
/* 8096BC54  38 00 00 00 */	li r0, 0
/* 8096BC58  98 03 0F 81 */	stb r0, 0xf81(r3)
/* 8096BC5C  80 7E 0D FC */	lwz r3, 0xdfc(r30)
/* 8096BC60  80 03 0E 70 */	lwz r0, 0xe70(r3)
/* 8096BC64  60 00 00 01 */	ori r0, r0, 1
/* 8096BC68  90 03 0E 70 */	stw r0, 0xe70(r3)
/* 8096BC6C  80 03 0E 5C */	lwz r0, 0xe5c(r3)
/* 8096BC70  60 00 00 01 */	ori r0, r0, 1
/* 8096BC74  90 03 0E 5C */	stw r0, 0xe5c(r3)
/* 8096BC78  3B E0 00 01 */	li r31, 1
lbl_8096BC7C:
/* 8096BC7C  7F E3 FB 78 */	mr r3, r31
/* 8096BC80  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8096BC84  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8096BC88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8096BC8C  7C 08 03 A6 */	mtlr r0
/* 8096BC90  38 21 00 20 */	addi r1, r1, 0x20
/* 8096BC94  4E 80 00 20 */	blr 
