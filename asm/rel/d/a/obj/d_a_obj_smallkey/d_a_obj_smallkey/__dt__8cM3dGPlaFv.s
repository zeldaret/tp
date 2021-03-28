lbl_80CD9E3C:
/* 80CD9E3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD9E40  7C 08 02 A6 */	mflr r0
/* 80CD9E44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD9E48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD9E4C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CD9E50  41 82 00 1C */	beq lbl_80CD9E6C
/* 80CD9E54  3C A0 80 CE */	lis r5, __vt__8cM3dGPla@ha
/* 80CD9E58  38 05 BA A0 */	addi r0, r5, __vt__8cM3dGPla@l
/* 80CD9E5C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80CD9E60  7C 80 07 35 */	extsh. r0, r4
/* 80CD9E64  40 81 00 08 */	ble lbl_80CD9E6C
/* 80CD9E68  4B 5F 4E D4 */	b __dl__FPv
lbl_80CD9E6C:
/* 80CD9E6C  7F E3 FB 78 */	mr r3, r31
/* 80CD9E70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD9E74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD9E78  7C 08 03 A6 */	mtlr r0
/* 80CD9E7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD9E80  4E 80 00 20 */	blr 
