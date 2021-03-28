lbl_80603E54:
/* 80603E54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80603E58  7C 08 02 A6 */	mflr r0
/* 80603E5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80603E60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80603E64  7C 7F 1B 79 */	or. r31, r3, r3
/* 80603E68  41 82 00 1C */	beq lbl_80603E84
/* 80603E6C  3C A0 80 60 */	lis r5, __vt__8cM3dGCyl@ha
/* 80603E70  38 05 40 E4 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80603E74  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80603E78  7C 80 07 35 */	extsh. r0, r4
/* 80603E7C  40 81 00 08 */	ble lbl_80603E84
/* 80603E80  4B CC AE BC */	b __dl__FPv
lbl_80603E84:
/* 80603E84  7F E3 FB 78 */	mr r3, r31
/* 80603E88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80603E8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80603E90  7C 08 03 A6 */	mtlr r0
/* 80603E94  38 21 00 10 */	addi r1, r1, 0x10
/* 80603E98  4E 80 00 20 */	blr 
