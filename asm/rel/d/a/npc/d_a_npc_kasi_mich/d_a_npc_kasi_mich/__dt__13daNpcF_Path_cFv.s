lbl_80A296CC:
/* 80A296CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A296D0  7C 08 02 A6 */	mflr r0
/* 80A296D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A296D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A296DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A296E0  41 82 00 34 */	beq lbl_80A29714
/* 80A296E4  3C 60 80 A3 */	lis r3, __vt__13daNpcF_Path_c@ha
/* 80A296E8  38 03 A7 70 */	addi r0, r3, __vt__13daNpcF_Path_c@l
/* 80A296EC  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80A296F0  34 1F 00 20 */	addic. r0, r31, 0x20
/* 80A296F4  41 82 00 10 */	beq lbl_80A29704
/* 80A296F8  3C 60 80 A3 */	lis r3, __vt__16daNpcF_SPCurve_c@ha
/* 80A296FC  38 03 A7 64 */	addi r0, r3, __vt__16daNpcF_SPCurve_c@l
/* 80A29700  90 1F 06 28 */	stw r0, 0x628(r31)
lbl_80A29704:
/* 80A29704  7C 80 07 35 */	extsh. r0, r4
/* 80A29708  40 81 00 0C */	ble lbl_80A29714
/* 80A2970C  7F E3 FB 78 */	mr r3, r31
/* 80A29710  4B 8A 56 2C */	b __dl__FPv
lbl_80A29714:
/* 80A29714  7F E3 FB 78 */	mr r3, r31
/* 80A29718  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A2971C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A29720  7C 08 03 A6 */	mtlr r0
/* 80A29724  38 21 00 10 */	addi r1, r1, 0x10
/* 80A29728  4E 80 00 20 */	blr 
