lbl_8000FA20:
/* 8000FA20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000FA24  7C 08 02 A6 */	mflr r0
/* 8000FA28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000FA2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000FA30  7C 7F 1B 79 */	or. r31, r3, r3
/* 8000FA34  41 82 00 40 */	beq lbl_8000FA74
/* 8000FA38  3C 60 80 3A */	lis r3, data_803A3360@ha
/* 8000FA3C  38 03 33 60 */	addi r0, r3, data_803A3360@l
/* 8000FA40  90 1F 00 00 */	stw r0, 0(r31)
/* 8000FA44  41 82 00 20 */	beq lbl_8000FA64
/* 8000FA48  3C 60 80 3A */	lis r3, __vt__19J3DMtxCalcNoAnmBase@ha
/* 8000FA4C  38 03 33 8C */	addi r0, r3, __vt__19J3DMtxCalcNoAnmBase@l
/* 8000FA50  90 1F 00 00 */	stw r0, 0(r31)
/* 8000FA54  41 82 00 10 */	beq lbl_8000FA64
/* 8000FA58  3C 60 80 3A */	lis r3, __vt__10J3DMtxCalc@ha
/* 8000FA5C  38 03 34 68 */	addi r0, r3, __vt__10J3DMtxCalc@l
/* 8000FA60  90 1F 00 00 */	stw r0, 0(r31)
lbl_8000FA64:
/* 8000FA64  7C 80 07 35 */	extsh. r0, r4
/* 8000FA68  40 81 00 0C */	ble lbl_8000FA74
/* 8000FA6C  7F E3 FB 78 */	mr r3, r31
/* 8000FA70  48 2B F2 CD */	bl __dl__FPv
lbl_8000FA74:
/* 8000FA74  7F E3 FB 78 */	mr r3, r31
/* 8000FA78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000FA7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000FA80  7C 08 03 A6 */	mtlr r0
/* 8000FA84  38 21 00 10 */	addi r1, r1, 0x10
/* 8000FA88  4E 80 00 20 */	blr 
