lbl_80298A0C:
/* 80298A0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80298A10  7C 08 02 A6 */	mflr r0
/* 80298A14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80298A18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80298A1C  93 C1 00 08 */	stw r30, 8(r1)
/* 80298A20  7C 7E 1B 79 */	or. r30, r3, r3
/* 80298A24  7C 9F 23 78 */	mr r31, r4
/* 80298A28  41 82 00 40 */	beq lbl_80298A68
/* 80298A2C  3C 60 80 3C */	lis r3, __vt__Q216JASBasicWaveBank10TWaveGroup@ha
/* 80298A30  38 03 77 3C */	addi r0, r3, __vt__Q216JASBasicWaveBank10TWaveGroup@l
/* 80298A34  90 1E 00 00 */	stw r0, 0(r30)
/* 80298A38  80 7E 00 78 */	lwz r3, 0x78(r30)
/* 80298A3C  28 03 00 00 */	cmplwi r3, 0
/* 80298A40  41 82 00 0C */	beq lbl_80298A4C
/* 80298A44  38 63 FF F0 */	addi r3, r3, -16
/* 80298A48  48 03 63 19 */	bl __dla__FPv
lbl_80298A4C:
/* 80298A4C  7F C3 F3 78 */	mr r3, r30
/* 80298A50  38 80 00 00 */	li r4, 0
/* 80298A54  48 00 17 61 */	bl __dt__10JASWaveArcFv
/* 80298A58  7F E0 07 35 */	extsh. r0, r31
/* 80298A5C  40 81 00 0C */	ble lbl_80298A68
/* 80298A60  7F C3 F3 78 */	mr r3, r30
/* 80298A64  48 03 62 D9 */	bl __dl__FPv
lbl_80298A68:
/* 80298A68  7F C3 F3 78 */	mr r3, r30
/* 80298A6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80298A70  83 C1 00 08 */	lwz r30, 8(r1)
/* 80298A74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80298A78  7C 08 03 A6 */	mtlr r0
/* 80298A7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80298A80  4E 80 00 20 */	blr 
