lbl_80200E30:
/* 80200E30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80200E34  7C 08 02 A6 */	mflr r0
/* 80200E38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80200E3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80200E40  7C 7F 1B 79 */	or. r31, r3, r3
/* 80200E44  41 82 00 1C */	beq lbl_80200E60
/* 80200E48  3C A0 80 3C */	lis r5, __vt__21dMeter_drawSkillHIO_c@ha /* 0x803BF148@ha */
/* 80200E4C  38 05 F1 48 */	addi r0, r5, __vt__21dMeter_drawSkillHIO_c@l /* 0x803BF148@l */
/* 80200E50  90 1F 00 00 */	stw r0, 0(r31)
/* 80200E54  7C 80 07 35 */	extsh. r0, r4
/* 80200E58  40 81 00 08 */	ble lbl_80200E60
/* 80200E5C  48 0C DE E1 */	bl __dl__FPv
lbl_80200E60:
/* 80200E60  7F E3 FB 78 */	mr r3, r31
/* 80200E64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80200E68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80200E6C  7C 08 03 A6 */	mtlr r0
/* 80200E70  38 21 00 10 */	addi r1, r1, 0x10
/* 80200E74  4E 80 00 20 */	blr 
