lbl_80AFBB68:
/* 80AFBB68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFBB6C  7C 08 02 A6 */	mflr r0
/* 80AFBB70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFBB74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AFBB78  93 C1 00 08 */	stw r30, 8(r1)
/* 80AFBB7C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AFBB80  7C 9F 23 78 */	mr r31, r4
/* 80AFBB84  41 82 00 38 */	beq lbl_80AFBBBC
/* 80AFBB88  3C 60 80 B0 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80AFC620@ha */
/* 80AFBB8C  38 03 C6 20 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80AFC620@l */
/* 80AFBB90  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80AFBB94  38 7E 00 14 */	addi r3, r30, 0x14
/* 80AFBB98  38 80 FF FF */	li r4, -1
/* 80AFBB9C  4B 77 33 7D */	bl __dt__8cM3dGCirFv
/* 80AFBBA0  7F C3 F3 78 */	mr r3, r30
/* 80AFBBA4  38 80 00 00 */	li r4, 0
/* 80AFBBA8  4B 76 C5 09 */	bl __dt__13cBgS_PolyInfoFv
/* 80AFBBAC  7F E0 07 35 */	extsh. r0, r31
/* 80AFBBB0  40 81 00 0C */	ble lbl_80AFBBBC
/* 80AFBBB4  7F C3 F3 78 */	mr r3, r30
/* 80AFBBB8  4B 7D 31 85 */	bl __dl__FPv
lbl_80AFBBBC:
/* 80AFBBBC  7F C3 F3 78 */	mr r3, r30
/* 80AFBBC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AFBBC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AFBBC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFBBCC  7C 08 03 A6 */	mtlr r0
/* 80AFBBD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFBBD4  4E 80 00 20 */	blr 
