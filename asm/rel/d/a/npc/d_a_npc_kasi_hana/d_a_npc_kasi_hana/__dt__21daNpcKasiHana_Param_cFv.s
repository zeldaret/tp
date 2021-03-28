lbl_80A2067C:
/* 80A2067C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A20680  7C 08 02 A6 */	mflr r0
/* 80A20684  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A20688  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A2068C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A20690  41 82 00 1C */	beq lbl_80A206AC
/* 80A20694  3C A0 80 A2 */	lis r5, __vt__21daNpcKasiHana_Param_c@ha
/* 80A20698  38 05 17 F4 */	addi r0, r5, __vt__21daNpcKasiHana_Param_c@l
/* 80A2069C  90 1F 00 00 */	stw r0, 0(r31)
/* 80A206A0  7C 80 07 35 */	extsh. r0, r4
/* 80A206A4  40 81 00 08 */	ble lbl_80A206AC
/* 80A206A8  4B 8A E6 94 */	b __dl__FPv
lbl_80A206AC:
/* 80A206AC  7F E3 FB 78 */	mr r3, r31
/* 80A206B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A206B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A206B8  7C 08 03 A6 */	mtlr r0
/* 80A206BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A206C0  4E 80 00 20 */	blr 
