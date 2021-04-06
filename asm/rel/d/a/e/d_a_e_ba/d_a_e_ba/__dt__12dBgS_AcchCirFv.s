lbl_80681E48:
/* 80681E48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80681E4C  7C 08 02 A6 */	mflr r0
/* 80681E50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80681E54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80681E58  93 C1 00 08 */	stw r30, 8(r1)
/* 80681E5C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80681E60  7C 9F 23 78 */	mr r31, r4
/* 80681E64  41 82 00 38 */	beq lbl_80681E9C
/* 80681E68  3C 60 80 68 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x806825C0@ha */
/* 80681E6C  38 03 25 C0 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x806825C0@l */
/* 80681E70  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80681E74  38 7E 00 14 */	addi r3, r30, 0x14
/* 80681E78  38 80 FF FF */	li r4, -1
/* 80681E7C  4B BE D0 9D */	bl __dt__8cM3dGCirFv
/* 80681E80  7F C3 F3 78 */	mr r3, r30
/* 80681E84  38 80 00 00 */	li r4, 0
/* 80681E88  4B BE 62 29 */	bl __dt__13cBgS_PolyInfoFv
/* 80681E8C  7F E0 07 35 */	extsh. r0, r31
/* 80681E90  40 81 00 0C */	ble lbl_80681E9C
/* 80681E94  7F C3 F3 78 */	mr r3, r30
/* 80681E98  4B C4 CE A5 */	bl __dl__FPv
lbl_80681E9C:
/* 80681E9C  7F C3 F3 78 */	mr r3, r30
/* 80681EA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80681EA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80681EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80681EAC  7C 08 03 A6 */	mtlr r0
/* 80681EB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80681EB4  4E 80 00 20 */	blr 
