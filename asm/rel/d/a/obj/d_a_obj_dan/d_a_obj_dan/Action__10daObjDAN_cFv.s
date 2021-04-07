lbl_80BDAFDC:
/* 80BDAFDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDAFE0  7C 08 02 A6 */	mflr r0
/* 80BDAFE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDAFE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDAFEC  7C 7F 1B 78 */	mr r31, r3
/* 80BDAFF0  38 60 00 00 */	li r3, 0
/* 80BDAFF4  7C 64 1B 78 */	mr r4, r3
/* 80BDAFF8  38 00 00 03 */	li r0, 3
/* 80BDAFFC  7C 09 03 A6 */	mtctr r0
lbl_80BDB000:
/* 80BDB000  38 C3 07 6A */	addi r6, r3, 0x76a
/* 80BDB004  7C BF 32 AE */	lhax r5, r31, r6
/* 80BDB008  38 05 FF FF */	addi r0, r5, -1
/* 80BDB00C  7C 1F 33 2E */	sthx r0, r31, r6
/* 80BDB010  7C 1F 32 AE */	lhax r0, r31, r6
/* 80BDB014  2C 00 00 00 */	cmpwi r0, 0
/* 80BDB018  41 81 00 08 */	bgt lbl_80BDB020
/* 80BDB01C  7C 9F 33 2E */	sthx r4, r31, r6
lbl_80BDB020:
/* 80BDB020  38 63 00 02 */	addi r3, r3, 2
/* 80BDB024  42 00 FF DC */	bdnz lbl_80BDB000
/* 80BDB028  88 1F 07 68 */	lbz r0, 0x768(r31)
/* 80BDB02C  2C 00 00 02 */	cmpwi r0, 2
/* 80BDB030  41 82 00 20 */	beq lbl_80BDB050
/* 80BDB034  40 80 00 24 */	bge lbl_80BDB058
/* 80BDB038  2C 00 00 01 */	cmpwi r0, 1
/* 80BDB03C  40 80 00 08 */	bge lbl_80BDB044
/* 80BDB040  48 00 00 18 */	b lbl_80BDB058
lbl_80BDB044:
/* 80BDB044  7F E3 FB 78 */	mr r3, r31
/* 80BDB048  4B FF FA CD */	bl MoveAction__10daObjDAN_cFv
/* 80BDB04C  48 00 00 0C */	b lbl_80BDB058
lbl_80BDB050:
/* 80BDB050  7F E3 FB 78 */	mr r3, r31
/* 80BDB054  4B FF FB BD */	bl DamageAction__10daObjDAN_cFv
lbl_80BDB058:
/* 80BDB058  7F E3 FB 78 */	mr r3, r31
/* 80BDB05C  4B 58 30 1D */	bl Insect_GetDemoMain__9dInsect_cFv
/* 80BDB060  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDB064  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDB068  7C 08 03 A6 */	mtlr r0
/* 80BDB06C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDB070  4E 80 00 20 */	blr 
