lbl_80D4DE08:
/* 80D4DE08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4DE0C  7C 08 02 A6 */	mflr r0
/* 80D4DE10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4DE14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4DE18  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D4DE1C  41 82 00 34 */	beq lbl_80D4DE50
/* 80D4DE20  3C 60 80 D5 */	lis r3, __vt__13daNpcF_Path_c@ha
/* 80D4DE24  38 03 DF 4C */	addi r0, r3, __vt__13daNpcF_Path_c@l
/* 80D4DE28  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80D4DE2C  34 1F 00 20 */	addic. r0, r31, 0x20
/* 80D4DE30  41 82 00 10 */	beq lbl_80D4DE40
/* 80D4DE34  3C 60 80 D5 */	lis r3, __vt__16daNpcF_SPCurve_c@ha
/* 80D4DE38  38 03 DF 40 */	addi r0, r3, __vt__16daNpcF_SPCurve_c@l
/* 80D4DE3C  90 1F 06 28 */	stw r0, 0x628(r31)
lbl_80D4DE40:
/* 80D4DE40  7C 80 07 35 */	extsh. r0, r4
/* 80D4DE44  40 81 00 0C */	ble lbl_80D4DE50
/* 80D4DE48  7F E3 FB 78 */	mr r3, r31
/* 80D4DE4C  4B 58 0E F0 */	b __dl__FPv
lbl_80D4DE50:
/* 80D4DE50  7F E3 FB 78 */	mr r3, r31
/* 80D4DE54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4DE58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4DE5C  7C 08 03 A6 */	mtlr r0
/* 80D4DE60  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4DE64  4E 80 00 20 */	blr 
