lbl_80298CF4:
/* 80298CF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80298CF8  7C 08 02 A6 */	mflr r0
/* 80298CFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80298D00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80298D04  93 C1 00 08 */	stw r30, 8(r1)
/* 80298D08  7C 7E 1B 79 */	or. r30, r3, r3
/* 80298D0C  7C 9F 23 78 */	mr r31, r4
/* 80298D10  41 82 00 58 */	beq lbl_80298D68
/* 80298D14  3C 60 80 3C */	lis r3, __vt__17JASSimpleWaveBank@ha
/* 80298D18  38 63 77 AC */	addi r3, r3, __vt__17JASSimpleWaveBank@l
/* 80298D1C  90 7E 00 00 */	stw r3, 0(r30)
/* 80298D20  38 03 00 18 */	addi r0, r3, 0x18
/* 80298D24  90 1E 00 04 */	stw r0, 4(r30)
/* 80298D28  80 7E 00 78 */	lwz r3, 0x78(r30)
/* 80298D2C  3C 80 80 2A */	lis r4, __dt__Q217JASSimpleWaveBank11TWaveHandleFv@ha
/* 80298D30  38 84 8D 84 */	addi r4, r4, __dt__Q217JASSimpleWaveBank11TWaveHandleFv@l
/* 80298D34  48 0C 8F 39 */	bl __destroy_new_array
/* 80298D38  38 7E 00 04 */	addi r3, r30, 4
/* 80298D3C  38 80 00 00 */	li r4, 0
/* 80298D40  48 00 14 75 */	bl __dt__10JASWaveArcFv
/* 80298D44  28 1E 00 00 */	cmplwi r30, 0
/* 80298D48  41 82 00 10 */	beq lbl_80298D58
/* 80298D4C  3C 60 80 3C */	lis r3, __vt__11JASWaveBank@ha
/* 80298D50  38 03 77 80 */	addi r0, r3, __vt__11JASWaveBank@l
/* 80298D54  90 1E 00 00 */	stw r0, 0(r30)
lbl_80298D58:
/* 80298D58  7F E0 07 35 */	extsh. r0, r31
/* 80298D5C  40 81 00 0C */	ble lbl_80298D68
/* 80298D60  7F C3 F3 78 */	mr r3, r30
/* 80298D64  48 03 5F D9 */	bl __dl__FPv
lbl_80298D68:
/* 80298D68  7F C3 F3 78 */	mr r3, r30
/* 80298D6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80298D70  83 C1 00 08 */	lwz r30, 8(r1)
/* 80298D74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80298D78  7C 08 03 A6 */	mtlr r0
/* 80298D7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80298D80  4E 80 00 20 */	blr 
