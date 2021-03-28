lbl_80A24F38:
/* 80A24F38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A24F3C  7C 08 02 A6 */	mflr r0
/* 80A24F40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A24F44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A24F48  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A24F4C  41 82 00 34 */	beq lbl_80A24F80
/* 80A24F50  3C 60 80 A2 */	lis r3, __vt__13daNpcF_Path_c@ha
/* 80A24F54  38 03 5F E0 */	addi r0, r3, __vt__13daNpcF_Path_c@l
/* 80A24F58  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80A24F5C  34 1F 00 20 */	addic. r0, r31, 0x20
/* 80A24F60  41 82 00 10 */	beq lbl_80A24F70
/* 80A24F64  3C 60 80 A2 */	lis r3, __vt__16daNpcF_SPCurve_c@ha
/* 80A24F68  38 03 5F D4 */	addi r0, r3, __vt__16daNpcF_SPCurve_c@l
/* 80A24F6C  90 1F 06 28 */	stw r0, 0x628(r31)
lbl_80A24F70:
/* 80A24F70  7C 80 07 35 */	extsh. r0, r4
/* 80A24F74  40 81 00 0C */	ble lbl_80A24F80
/* 80A24F78  7F E3 FB 78 */	mr r3, r31
/* 80A24F7C  4B 8A 9D C0 */	b __dl__FPv
lbl_80A24F80:
/* 80A24F80  7F E3 FB 78 */	mr r3, r31
/* 80A24F84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A24F88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A24F8C  7C 08 03 A6 */	mtlr r0
/* 80A24F90  38 21 00 10 */	addi r1, r1, 0x10
/* 80A24F94  4E 80 00 20 */	blr 
