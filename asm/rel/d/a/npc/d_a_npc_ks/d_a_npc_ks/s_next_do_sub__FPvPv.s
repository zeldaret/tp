lbl_80A4DBF8:
/* 80A4DBF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A4DBFC  7C 08 02 A6 */	mflr r0
/* 80A4DC00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A4DC04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A4DC08  93 C1 00 08 */	stw r30, 8(r1)
/* 80A4DC0C  7C 7E 1B 78 */	mr r30, r3
/* 80A4DC10  7C 9F 23 78 */	mr r31, r4
/* 80A4DC14  4B 5C B0 CD */	bl fopAc_IsActor__FPv
/* 80A4DC18  2C 03 00 00 */	cmpwi r3, 0
/* 80A4DC1C  41 82 00 48 */	beq lbl_80A4DC64
/* 80A4DC20  A8 1E 00 08 */	lha r0, 8(r30)
/* 80A4DC24  2C 00 00 60 */	cmpwi r0, 0x60
/* 80A4DC28  40 82 00 3C */	bne lbl_80A4DC64
/* 80A4DC2C  88 1E 05 B5 */	lbz r0, 0x5b5(r30)
/* 80A4DC30  28 00 00 00 */	cmplwi r0, 0
/* 80A4DC34  41 82 00 30 */	beq lbl_80A4DC64
/* 80A4DC38  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 80A4DC3C  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80A4DC40  38 03 FF FF */	addi r0, r3, -1
/* 80A4DC44  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80A4DC48  7C 04 00 00 */	cmpw r4, r0
/* 80A4DC4C  40 82 00 18 */	bne lbl_80A4DC64
/* 80A4DC50  A8 7E 05 EA */	lha r3, 0x5ea(r30)
/* 80A4DC54  38 03 00 01 */	addi r0, r3, 1
/* 80A4DC58  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A4DC5C  7F C3 F3 78 */	mr r3, r30
/* 80A4DC60  48 00 00 08 */	b lbl_80A4DC68
lbl_80A4DC64:
/* 80A4DC64  38 60 00 00 */	li r3, 0
lbl_80A4DC68:
/* 80A4DC68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A4DC6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A4DC70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A4DC74  7C 08 03 A6 */	mtlr r0
/* 80A4DC78  38 21 00 10 */	addi r1, r1, 0x10
/* 80A4DC7C  4E 80 00 20 */	blr 
