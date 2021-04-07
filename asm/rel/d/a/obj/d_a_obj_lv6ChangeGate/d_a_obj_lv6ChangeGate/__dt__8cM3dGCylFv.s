lbl_80C711BC:
/* 80C711BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C711C0  7C 08 02 A6 */	mflr r0
/* 80C711C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C711C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C711CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C711D0  41 82 00 1C */	beq lbl_80C711EC
/* 80C711D4  3C A0 80 C7 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80C722E4@ha */
/* 80C711D8  38 05 22 E4 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80C722E4@l */
/* 80C711DC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80C711E0  7C 80 07 35 */	extsh. r0, r4
/* 80C711E4  40 81 00 08 */	ble lbl_80C711EC
/* 80C711E8  4B 65 DB 55 */	bl __dl__FPv
lbl_80C711EC:
/* 80C711EC  7F E3 FB 78 */	mr r3, r31
/* 80C711F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C711F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C711F8  7C 08 03 A6 */	mtlr r0
/* 80C711FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C71200  4E 80 00 20 */	blr 
