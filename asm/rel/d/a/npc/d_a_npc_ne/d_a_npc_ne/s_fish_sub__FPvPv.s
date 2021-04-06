lbl_80A8AAE8:
/* 80A8AAE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A8AAEC  7C 08 02 A6 */	mflr r0
/* 80A8AAF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A8AAF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A8AAF8  93 C1 00 08 */	stw r30, 8(r1)
/* 80A8AAFC  7C 7E 1B 78 */	mr r30, r3
/* 80A8AB00  7C 9F 23 78 */	mr r31, r4
/* 80A8AB04  4B 58 E1 DD */	bl fopAc_IsActor__FPv
/* 80A8AB08  2C 03 00 00 */	cmpwi r3, 0
/* 80A8AB0C  41 82 00 48 */	beq lbl_80A8AB54
/* 80A8AB10  A8 1E 00 08 */	lha r0, 8(r30)
/* 80A8AB14  2C 00 01 36 */	cmpwi r0, 0x136
/* 80A8AB18  40 82 00 3C */	bne lbl_80A8AB54
/* 80A8AB1C  A8 1E 05 B6 */	lha r0, 0x5b6(r30)
/* 80A8AB20  2C 00 00 35 */	cmpwi r0, 0x35
/* 80A8AB24  40 82 00 30 */	bne lbl_80A8AB54
/* 80A8AB28  A8 1E 05 B8 */	lha r0, 0x5b8(r30)
/* 80A8AB2C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A8AB30  41 80 00 24 */	blt lbl_80A8AB54
/* 80A8AB34  28 1E 00 00 */	cmplwi r30, 0
/* 80A8AB38  41 82 00 0C */	beq lbl_80A8AB44
/* 80A8AB3C  80 1E 00 04 */	lwz r0, 4(r30)
/* 80A8AB40  48 00 00 08 */	b lbl_80A8AB48
lbl_80A8AB44:
/* 80A8AB44  38 00 FF FF */	li r0, -1
lbl_80A8AB48:
/* 80A8AB48  90 1F 0C BC */	stw r0, 0xcbc(r31)
/* 80A8AB4C  7F C3 F3 78 */	mr r3, r30
/* 80A8AB50  48 00 00 08 */	b lbl_80A8AB58
lbl_80A8AB54:
/* 80A8AB54  38 60 00 00 */	li r3, 0
lbl_80A8AB58:
/* 80A8AB58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A8AB5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A8AB60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A8AB64  7C 08 03 A6 */	mtlr r0
/* 80A8AB68  38 21 00 10 */	addi r1, r1, 0x10
/* 80A8AB6C  4E 80 00 20 */	blr 
