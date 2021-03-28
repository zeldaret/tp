lbl_80030E3C:
/* 80030E3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80030E40  7C 08 02 A6 */	mflr r0
/* 80030E44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80030E48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80030E4C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80030E50  41 82 00 1C */	beq lbl_80030E6C
/* 80030E54  3C A0 80 3A */	lis r5, __vt__8cM3dGCyl@ha
/* 80030E58  38 05 72 0C */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80030E5C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80030E60  7C 80 07 35 */	extsh. r0, r4
/* 80030E64  40 81 00 08 */	ble lbl_80030E6C
/* 80030E68  48 29 DE D5 */	bl __dl__FPv
lbl_80030E6C:
/* 80030E6C  7F E3 FB 78 */	mr r3, r31
/* 80030E70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80030E74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80030E78  7C 08 03 A6 */	mtlr r0
/* 80030E7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80030E80  4E 80 00 20 */	blr 
