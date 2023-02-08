lbl_80A2972C:
/* 80A2972C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A29730  7C 08 02 A6 */	mflr r0
/* 80A29734  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A29738  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A2973C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A29740  41 82 00 1C */	beq lbl_80A2975C
/* 80A29744  3C A0 80 A3 */	lis r5, __vt__16daNpcF_SPCurve_c@ha /* 0x80A2A764@ha */
/* 80A29748  38 05 A7 64 */	addi r0, r5, __vt__16daNpcF_SPCurve_c@l /* 0x80A2A764@l */
/* 80A2974C  90 1F 06 08 */	stw r0, 0x608(r31)
/* 80A29750  7C 80 07 35 */	extsh. r0, r4
/* 80A29754  40 81 00 08 */	ble lbl_80A2975C
/* 80A29758  4B 8A 55 E5 */	bl __dl__FPv
lbl_80A2975C:
/* 80A2975C  7F E3 FB 78 */	mr r3, r31
/* 80A29760  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A29764  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A29768  7C 08 03 A6 */	mtlr r0
/* 80A2976C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A29770  4E 80 00 20 */	blr 
