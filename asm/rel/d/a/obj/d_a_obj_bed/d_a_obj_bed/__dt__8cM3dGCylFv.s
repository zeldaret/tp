lbl_80BADA48:
/* 80BADA48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BADA4C  7C 08 02 A6 */	mflr r0
/* 80BADA50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BADA54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BADA58  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BADA5C  41 82 00 1C */	beq lbl_80BADA78
/* 80BADA60  3C A0 80 BB */	lis r5, __vt__8cM3dGCyl@ha /* 0x80BAE21C@ha */
/* 80BADA64  38 05 E2 1C */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80BAE21C@l */
/* 80BADA68  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80BADA6C  7C 80 07 35 */	extsh. r0, r4
/* 80BADA70  40 81 00 08 */	ble lbl_80BADA78
/* 80BADA74  4B 72 12 C9 */	bl __dl__FPv
lbl_80BADA78:
/* 80BADA78  7F E3 FB 78 */	mr r3, r31
/* 80BADA7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BADA80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BADA84  7C 08 03 A6 */	mtlr r0
/* 80BADA88  38 21 00 10 */	addi r1, r1, 0x10
/* 80BADA8C  4E 80 00 20 */	blr 
