lbl_80A60894:
/* 80A60894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A60898  7C 08 02 A6 */	mflr r0
/* 80A6089C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A608A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A608A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A608A8  41 82 00 1C */	beq lbl_80A608C4
/* 80A608AC  3C A0 80 A6 */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x80A640A0@ha */
/* 80A608B0  38 05 40 A0 */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x80A640A0@l */
/* 80A608B4  90 1F 00 00 */	stw r0, 0(r31)
/* 80A608B8  7C 80 07 35 */	extsh. r0, r4
/* 80A608BC  40 81 00 08 */	ble lbl_80A608C4
/* 80A608C0  4B 86 E4 7D */	bl __dl__FPv
lbl_80A608C4:
/* 80A608C4  7F E3 FB 78 */	mr r3, r31
/* 80A608C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A608CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A608D0  7C 08 03 A6 */	mtlr r0
/* 80A608D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A608D8  4E 80 00 20 */	blr 
