lbl_80200DE8:
/* 80200DE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80200DEC  7C 08 02 A6 */	mflr r0
/* 80200DF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80200DF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80200DF8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80200DFC  41 82 00 1C */	beq lbl_80200E18
/* 80200E00  3C A0 80 3C */	lis r5, __vt__24dMeter_drawMiniGameHIO_c@ha /* 0x803BF130@ha */
/* 80200E04  38 05 F1 30 */	addi r0, r5, __vt__24dMeter_drawMiniGameHIO_c@l /* 0x803BF130@l */
/* 80200E08  90 1F 00 00 */	stw r0, 0(r31)
/* 80200E0C  7C 80 07 35 */	extsh. r0, r4
/* 80200E10  40 81 00 08 */	ble lbl_80200E18
/* 80200E14  48 0C DF 29 */	bl __dl__FPv
lbl_80200E18:
/* 80200E18  7F E3 FB 78 */	mr r3, r31
/* 80200E1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80200E20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80200E24  7C 08 03 A6 */	mtlr r0
/* 80200E28  38 21 00 10 */	addi r1, r1, 0x10
/* 80200E2C  4E 80 00 20 */	blr 
