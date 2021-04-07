lbl_80CD4D14:
/* 80CD4D14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD4D18  7C 08 02 A6 */	mflr r0
/* 80CD4D1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD4D20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD4D24  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CD4D28  41 82 00 1C */	beq lbl_80CD4D44
/* 80CD4D2C  3C A0 80 CD */	lis r5, __vt__8cM3dGCyl@ha /* 0x80CD67F0@ha */
/* 80CD4D30  38 05 67 F0 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80CD67F0@l */
/* 80CD4D34  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80CD4D38  7C 80 07 35 */	extsh. r0, r4
/* 80CD4D3C  40 81 00 08 */	ble lbl_80CD4D44
/* 80CD4D40  4B 5F 9F FD */	bl __dl__FPv
lbl_80CD4D44:
/* 80CD4D44  7F E3 FB 78 */	mr r3, r31
/* 80CD4D48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD4D4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD4D50  7C 08 03 A6 */	mtlr r0
/* 80CD4D54  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD4D58  4E 80 00 20 */	blr 
